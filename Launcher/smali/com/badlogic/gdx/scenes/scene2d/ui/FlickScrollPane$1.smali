.class Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/badlogic/gdx/input/GestureDetector$GestureListener;


# instance fields
.field final synthetic this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;)V
    .locals 0

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fling(FF)Z
    .locals 3

    const/high16 v2, 0x4316

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;

    iget v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->flingTime:F

    iput v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->flingTimer:F

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;

    iput p1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->velocityX:F

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->cancelTouchFocusedChild()V

    :cond_0
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;

    iget v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->flingTime:F

    iput v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->flingTimer:F

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;

    neg-float v1, p2

    iput v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->velocityY:F

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->cancelTouchFocusedChild()V

    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;

    iget v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->flingTimer:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public longPress(II)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public pan(IIII)Z
    .locals 3

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;

    iget v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->amountX:F

    int-to-float v2, p3

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->amountX:F

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;

    iget v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->amountY:F

    int-to-float v2, p4

    add-float/2addr v1, v2

    iput v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->amountY:F

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->clamp()V

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->cancelTouchFocusedChild()V

    const/4 v0, 0x1

    return v0
.end method

.method public pinch(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public tap(III)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public touchDown(III)Z
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;

    const/4 v1, 0x0

    iput v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->flingTimer:F

    const/4 v0, 0x1

    return v0
.end method

.method public zoom(FF)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
