.class public Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;


# instance fields
.field amountX:F

.field amountY:F

.field private clamp:Z

.field private disableX:Z

.field private disableY:Z

.field private emptySpaceOnlyScroll:Z

.field flingTime:F

.field flingTimer:F

.field private forceOverscrollX:Z

.field private forceOverscrollY:Z

.field private final gestureDetector:Lcom/badlogic/gdx/input/GestureDetector;

.field private maxX:F

.field private maxY:F

.field private overscroll:Z

.field private overscrollDistance:F

.field private overscrollInterpolation:Lcom/badlogic/gdx/math/Interpolation;

.field private overscrollSpeedMax:F

.field private overscrollSpeedMin:F

.field private final scissorBounds:Lcom/badlogic/gdx/math/Rectangle;

.field private scrollX:Z

.field private scrollY:Z

.field private touchFocusedChild:Lcom/badlogic/gdx/scenes/scene2d/Actor;

.field velocityX:F

.field velocityY:F

.field private widget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

.field private final widgetAreaBounds:Lcom/badlogic/gdx/math/Rectangle;

.field private final widgetCullingArea:Lcom/badlogic/gdx/math/Rectangle;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;-><init>(Lcom/badlogic/gdx/scenes/scene2d/Actor;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;-><init>(Lcom/badlogic/gdx/scenes/scene2d/Actor;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/Actor;Ljava/lang/String;)V
    .locals 3

    const/4 v1, 0x1

    const/high16 v2, 0x4316

    invoke-direct {p0, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/badlogic/gdx/math/Rectangle;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Rectangle;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->widgetAreaBounds:Lcom/badlogic/gdx/math/Rectangle;

    new-instance v0, Lcom/badlogic/gdx/math/Rectangle;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Rectangle;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->widgetCullingArea:Lcom/badlogic/gdx/math/Rectangle;

    new-instance v0, Lcom/badlogic/gdx/math/Rectangle;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Rectangle;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->scissorBounds:Lcom/badlogic/gdx/math/Rectangle;

    iput-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->overscroll:Z

    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->flingTime:F

    const/high16 v0, 0x4248

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->overscrollDistance:F

    const/high16 v0, 0x41f0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->overscrollSpeedMin:F

    const/high16 v0, 0x4348

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->overscrollSpeedMax:F

    sget-object v0, Lcom/badlogic/gdx/math/Interpolation;->elasticOut:Lcom/badlogic/gdx/math/Interpolation$Elastic;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->overscrollInterpolation:Lcom/badlogic/gdx/math/Interpolation;

    iput-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->clamp:Z

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->widget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->setWidget(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    :cond_0
    new-instance v0, Lcom/badlogic/gdx/input/GestureDetector;

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane$1;

    invoke-direct {v1, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane$1;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;)V

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/input/GestureDetector;-><init>(Lcom/badlogic/gdx/input/GestureDetector$GestureListener;)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->gestureDetector:Lcom/badlogic/gdx/input/GestureDetector;

    iput v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->width:F

    iput v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->height:F

    return-void
.end method


# virtual methods
.method public act(F)V
    .locals 6

    const/4 v5, 0x0

    invoke-super {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->act(F)V

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->flingTimer:F

    cmpl-float v0, v0, v5

    if-lez v0, :cond_4

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->flingTimer:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->flingTime:F

    div-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->amountX:F

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->velocityX:F

    mul-float/2addr v2, v0

    mul-float/2addr v2, p1

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->amountX:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->amountY:F

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->velocityY:F

    mul-float/2addr v0, v2

    mul-float/2addr v0, p1

    sub-float v0, v1, v0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->amountY:F

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->clamp()V

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->amountX:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->overscrollDistance:F

    neg-float v1, v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iput v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->velocityX:F

    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->amountX:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->maxX:F

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->overscrollDistance:F

    add-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    iput v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->velocityX:F

    :cond_1
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->amountY:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->overscrollDistance:F

    neg-float v1, v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    iput v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->velocityY:F

    :cond_2
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->amountY:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->maxY:F

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->overscrollDistance:F

    add-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_3

    iput v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->velocityY:F

    :cond_3
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->flingTimer:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->flingTimer:F

    :cond_4
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->overscroll:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->gestureDetector:Lcom/badlogic/gdx/input/GestureDetector;

    invoke-virtual {v0}, Lcom/badlogic/gdx/input/GestureDetector;->isPanning()Z

    move-result v0

    if-nez v0, :cond_6

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->amountX:F

    cmpg-float v0, v0, v5

    if-gez v0, :cond_7

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->amountX:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->overscrollSpeedMin:F

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->overscrollSpeedMax:F

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->overscrollSpeedMin:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->amountX:F

    neg-float v3, v3

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->overscrollDistance:F

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->amountX:F

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->amountX:F

    cmpl-float v0, v0, v5

    if-lez v0, :cond_5

    iput v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->amountX:F

    :cond_5
    :goto_0
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->amountY:F

    cmpg-float v0, v0, v5

    if-gez v0, :cond_8

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->amountY:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->overscrollSpeedMin:F

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->overscrollSpeedMax:F

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->overscrollSpeedMin:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->amountY:F

    neg-float v3, v3

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->overscrollDistance:F

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->amountY:F

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->amountY:F

    cmpl-float v0, v0, v5

    if-lez v0, :cond_6

    iput v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->amountY:F

    :cond_6
    :goto_1
    return-void

    :cond_7
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->amountX:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->maxX:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_5

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->amountX:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->overscrollSpeedMin:F

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->overscrollSpeedMax:F

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->overscrollSpeedMin:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->maxX:F

    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->amountX:F

    sub-float/2addr v3, v4

    neg-float v3, v3

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->overscrollDistance:F

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->amountX:F

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->amountX:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->maxX:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_5

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->maxX:F

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->amountX:F

    goto :goto_0

    :cond_8
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->amountY:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->maxY:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_6

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->amountY:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->overscrollSpeedMin:F

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->overscrollSpeedMax:F

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->overscrollSpeedMin:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->maxY:F

    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->amountY:F

    sub-float/2addr v3, v4

    neg-float v3, v3

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->overscrollDistance:F

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->amountY:F

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->amountY:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->maxY:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_6

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->maxY:F

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->amountY:F

    goto :goto_1
.end method

.method public addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Use FlickScrollPane#setWidget."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addActorAt(ILcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Use FlickScrollPane#setWidget."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addActorBefore(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Use FlickScrollPane#setWidget."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method cancelTouchFocusedChild()V
    .locals 3

    const/high16 v2, -0x3100

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->touchFocusedChild:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->touchFocusedChild:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->touchUp(FFI)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->touchFocusedChild:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    goto :goto_0
.end method

.method clamp()V
    .locals 4

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->clamp:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->overscroll:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->amountX:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->overscrollDistance:F

    neg-float v1, v1

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->maxX:F

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->overscrollDistance:F

    add-float/2addr v2, v3

    invoke-static {v0, v1, v2}, Lcom/badlogic/gdx/math/MathUtils;->clamp(FFF)F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->amountX:F

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->amountY:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->overscrollDistance:F

    neg-float v1, v1

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->maxY:F

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->overscrollDistance:F

    add-float/2addr v2, v3

    invoke-static {v0, v1, v2}, Lcom/badlogic/gdx/math/MathUtils;->clamp(FFF)F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->amountY:F

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->amountX:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->maxX:F

    invoke-static {v0, v2, v1}, Lcom/badlogic/gdx/math/MathUtils;->clamp(FFF)F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->amountX:F

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->amountY:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->maxY:F

    invoke-static {v0, v2, v1}, Lcom/badlogic/gdx/math/MathUtils;->clamp(FFF)F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->amountY:F

    goto :goto_0
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->widget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->validate()V

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->applyTransform(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->widget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->scrollY:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->amountY:F

    :goto_1
    float-to-int v0, v0

    int-to-float v0, v0

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->widget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget v3, v3, Lcom/badlogic/gdx/scenes/scene2d/Actor;->height:F

    sub-float/2addr v0, v3

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->height:F

    add-float/2addr v0, v3

    iput v0, v2, Lcom/badlogic/gdx/scenes/scene2d/Actor;->y:F

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->widget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->scrollX:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->amountX:F

    :goto_2
    float-to-int v0, v0

    neg-int v0, v0

    int-to-float v0, v0

    iput v0, v2, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->widget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    instance-of v0, v0, Lcom/badlogic/gdx/scenes/scene2d/Cullable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->widgetCullingArea:Lcom/badlogic/gdx/math/Rectangle;

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->widget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget v2, v2, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    neg-float v2, v2

    iput v2, v0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->widgetCullingArea:Lcom/badlogic/gdx/math/Rectangle;

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->widget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget v2, v2, Lcom/badlogic/gdx/scenes/scene2d/Actor;->y:F

    neg-float v2, v2

    iput v2, v0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->widgetCullingArea:Lcom/badlogic/gdx/math/Rectangle;

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->width:F

    iput v2, v0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->widgetCullingArea:Lcom/badlogic/gdx/math/Rectangle;

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->height:F

    iput v2, v0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->widget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/Cullable;

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->widgetCullingArea:Lcom/badlogic/gdx/math/Rectangle;

    invoke-interface {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/Cullable;->setCullingArea(Lcom/badlogic/gdx/math/Rectangle;)V

    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->widgetAreaBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->width:F

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->height:F

    invoke-virtual {v0, v1, v1, v2, v3}, Lcom/badlogic/gdx/math/Rectangle;->set(FFFF)V

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getCamera()Lcom/badlogic/gdx/graphics/Camera;

    move-result-object v0

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->getTransformMatrix()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v1

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->widgetAreaBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->scissorBounds:Lcom/badlogic/gdx/math/Rectangle;

    invoke-static {v0, v1, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/utils/ScissorStack;->calculateScissors(Lcom/badlogic/gdx/graphics/Camera;Lcom/badlogic/gdx/math/Matrix4;Lcom/badlogic/gdx/math/Rectangle;Lcom/badlogic/gdx/math/Rectangle;)V

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->scissorBounds:Lcom/badlogic/gdx/math/Rectangle;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/utils/ScissorStack;->pushScissors(Lcom/badlogic/gdx/math/Rectangle;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->drawChildren(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/ui/utils/ScissorStack;->popScissors()V

    :cond_2
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->resetTransform(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->maxY:F

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_2
.end method

.method public getMaxX()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->maxX:F

    return v0
.end method

.method public getMaxY()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->maxY:F

    return v0
.end method

.method public getMinHeight()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getMinWidth()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPrefHeight()F
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->widget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    instance-of v0, v0, Lcom/badlogic/gdx/scenes/scene2d/Layout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->widget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/Layout;

    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/Layout;->getPrefHeight()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x4316

    goto :goto_0
.end method

.method public getPrefWidth()F
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->widget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    instance-of v0, v0, Lcom/badlogic/gdx/scenes/scene2d/Layout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->widget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/Layout;

    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/Layout;->getPrefWidth()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x4316

    goto :goto_0
.end method

.method public getScrollPercentX()F
    .locals 2

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->amountX:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->maxX:F

    div-float/2addr v0, v1

    return v0
.end method

.method public getScrollPercentY()F
    .locals 2

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->amountY:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->maxY:F

    div-float/2addr v0, v1

    return v0
.end method

.method public getScrollX()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->amountX:F

    return v0
.end method

.method public getScrollY()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->amountY:F

    return v0
.end method

.method public getVelocityX()F
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->flingTimer:F

    cmpg-float v1, v1, v0

    if-gtz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->flingTimer:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->flingTime:F

    div-float/2addr v0, v1

    mul-float v1, v0, v0

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->velocityX:F

    mul-float/2addr v1, v0

    mul-float/2addr v1, v0

    mul-float/2addr v0, v1

    goto :goto_0
.end method

.method public getVelocityY()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->velocityY:F

    return v0
.end method

.method public getWidget()Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->widget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    return-object v0
.end method

.method public hit(FF)Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 2

    const/4 v1, 0x0

    cmpl-float v0, p1, v1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->width:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    cmpl-float v0, p2, v1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->height:F

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->hit(FF)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFlinging()Z
    .locals 2

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->flingTimer:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPanning()Z
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->gestureDetector:Lcom/badlogic/gdx/input/GestureDetector;

    invoke-virtual {v0}, Lcom/badlogic/gdx/input/GestureDetector;->isPanning()Z

    move-result v0

    return v0
.end method

.method public layout()V
    .locals 5

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->widget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->widget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    instance-of v0, v0, Lcom/badlogic/gdx/scenes/scene2d/Layout;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->widget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/Layout;

    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/Layout;->getPrefWidth()F

    move-result v1

    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/Layout;->getPrefHeight()F

    move-result v0

    :goto_1
    iget-boolean v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->disableX:Z

    if-nez v2, :cond_5

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->width:F

    cmpl-float v2, v1, v2

    if-gtz v2, :cond_2

    iget-boolean v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->forceOverscrollX:Z

    if-eqz v2, :cond_5

    :cond_2
    move v2, v3

    :goto_2
    iput-boolean v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->scrollX:Z

    iget-boolean v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->disableY:Z

    if-nez v2, :cond_6

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->height:F

    cmpl-float v2, v0, v2

    if-gtz v2, :cond_3

    iget-boolean v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->forceOverscrollY:Z

    if-eqz v2, :cond_6

    :cond_3
    :goto_3
    iput-boolean v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->scrollY:Z

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->widget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget-boolean v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->disableX:Z

    if-eqz v3, :cond_7

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->width:F

    :goto_4
    iput v1, v2, Lcom/badlogic/gdx/scenes/scene2d/Actor;->width:F

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->widget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget-boolean v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->disableY:Z

    if-eqz v2, :cond_8

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->height:F

    :goto_5
    iput v0, v1, Lcom/badlogic/gdx/scenes/scene2d/Actor;->height:F

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->widget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget v0, v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->width:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->width:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->maxX:F

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->widget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget v0, v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->height:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->height:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->maxY:F

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->widget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    instance-of v0, v0, Lcom/badlogic/gdx/scenes/scene2d/Layout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->widget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/Layout;

    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/Layout;->invalidate()V

    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/Layout;->validate()V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->widget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget v1, v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->width:F

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->widget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget v0, v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->height:F

    goto :goto_1

    :cond_5
    move v2, v4

    goto :goto_2

    :cond_6
    move v3, v4

    goto :goto_3

    :cond_7
    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->width:F

    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    goto :goto_4

    :cond_8
    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->height:F

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    goto :goto_5
.end method

.method public removeActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Use ScrollPane#setWidget(null)."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeActorRecursive(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->widget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-ne p1, v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->setWidget(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->widget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    instance-of v0, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->widget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->removeActorRecursive(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    goto :goto_0
.end method

.method public setClamp(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->clamp:Z

    return-void
.end method

.method public setEmptySpaceOnlyScroll(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->emptySpaceOnlyScroll:Z

    return-void
.end method

.method public setFlingTime(F)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->flingTime:F

    return-void
.end method

.method public setForceOverscroll(ZZ)V
    .locals 0

    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->forceOverscrollX:Z

    iput-boolean p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->forceOverscrollY:Z

    return-void
.end method

.method public setOverscroll(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->overscroll:Z

    return-void
.end method

.method public setScrollPercentX(F)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->maxX:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->amountX:F

    return-void
.end method

.method public setScrollPercentY(F)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->maxY:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->amountY:F

    return-void
.end method

.method public setScrollX(F)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->amountX:F

    return-void
.end method

.method public setScrollY(F)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->amountY:F

    return-void
.end method

.method public setScrollingDisabled(ZZ)V
    .locals 0

    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->disableX:Z

    iput-boolean p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->disableY:Z

    return-void
.end method

.method public setVelocityX(F)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->velocityX:F

    return-void
.end method

.method public setVelocityY(F)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->velocityY:F

    return-void
.end method

.method public setWidget(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "widget cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->widget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->widget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-super {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->removeActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    :cond_1
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->widget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-eqz p1, :cond_2

    invoke-super {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    :cond_2
    return-void
.end method

.method public setupOverscroll(FFF)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->overscrollDistance:F

    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->overscrollSpeedMin:F

    iput p3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->overscrollSpeedMax:F

    return-void
.end method

.method public touchDown(FFI)Z
    .locals 4

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->touchDown(FFI)Z

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getTouchFocus(I)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v0

    if-eq v0, p0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getTouchFocus(I)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->touchFocusedChild:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->emptySpaceOnlyScroll:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->touchFocusedChild:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->gestureDetector:Lcom/badlogic/gdx/input/GestureDetector;

    float-to-int v2, p1

    float-to-int v3, p2

    invoke-virtual {v0, v2, v3, p3, v1}, Lcom/badlogic/gdx/input/GestureDetector;->touchDown(IIII)Z

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-virtual {v0, p0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->setTouchFocus(Lcom/badlogic/gdx/scenes/scene2d/Actor;I)V

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public touchDragged(FFI)V
    .locals 3

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->gestureDetector:Lcom/badlogic/gdx/input/GestureDetector;

    float-to-int v1, p1

    float-to-int v2, p2

    invoke-virtual {v0, v1, v2, p3}, Lcom/badlogic/gdx/input/GestureDetector;->touchDragged(III)Z

    return-void
.end method

.method public touchUp(FFI)V
    .locals 5

    const/4 v4, 0x0

    const/high16 v0, -0x3100

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->clamp()V

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->gestureDetector:Lcom/badlogic/gdx/input/GestureDetector;

    float-to-int v2, p1

    float-to-int v3, p2

    invoke-virtual {v1, v2, v3, p3, v4}, Lcom/badlogic/gdx/input/GestureDetector;->touchUp(IIII)Z

    move-result v1

    if-eqz v1, :cond_1

    move p2, v0

    :goto_0
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->touchFocusedChild:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->touchFocusedChild:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->isDescendant(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->point:Lcom/badlogic/gdx/math/Vector2;

    iput v0, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->point:Lcom/badlogic/gdx/math/Vector2;

    iput p2, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->touchFocusedChild:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->point:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->toLocalCoordinates(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/math/Vector2;)V

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->touchFocusedChild:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->point:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->point:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v0, v1, v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->touchUp(FFI)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->touchFocusedChild:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    :cond_0
    return-void

    :cond_1
    move v0, p1

    goto :goto_0
.end method
