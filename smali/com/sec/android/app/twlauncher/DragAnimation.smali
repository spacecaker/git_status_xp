.class public Lcom/sec/android/app/twlauncher/DragAnimation;
.super Ljava/lang/Object;
.source "DragAnimation.java"


# instance fields
.field mAnimationDuration:I

.field mAnimationFromX:F

.field mAnimationFromY:F

.field mAnimationStartTime:J

.field mAnimationState:I

.field mAnimationToX:F

.field mAnimationToY:F

.field mAnimationView:Landroid/view/View;

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field mXOffset:F

.field mYOffset:F


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/twlauncher/DragAnimation;->mAnimationState:I

    .line 29
    return-void
.end method

.method constructor <init>(Landroid/view/animation/Interpolator;)V
    .locals 1
    .parameter "interpolator"

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/twlauncher/DragAnimation;->mAnimationState:I

    .line 32
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/DragAnimation;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 33
    return-void
.end method


# virtual methods
.method draw(Landroid/graphics/Canvas;)Z
    .locals 9
    .parameter "canvas"

    .prologue
    const/4 v8, 0x3

    const/4 v6, 0x2

    .line 36
    const/4 v1, 0x0

    .line 38
    .local v1, ret:Z
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/DragAnimation;->mAnimationView:Landroid/view/View;

    if-eqz v4, :cond_2

    .line 39
    iget v4, p0, Lcom/sec/android/app/twlauncher/DragAnimation;->mAnimationState:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 40
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/sec/android/app/twlauncher/DragAnimation;->mAnimationStartTime:J

    .line 41
    iput v6, p0, Lcom/sec/android/app/twlauncher/DragAnimation;->mAnimationState:I

    .line 44
    :cond_0
    iget v4, p0, Lcom/sec/android/app/twlauncher/DragAnimation;->mAnimationState:I

    if-ne v4, v6, :cond_2

    .line 45
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/sec/android/app/twlauncher/DragAnimation;->mAnimationStartTime:J

    sub-long/2addr v4, v6

    long-to-float v4, v4

    iget v5, p0, Lcom/sec/android/app/twlauncher/DragAnimation;->mAnimationDuration:I

    int-to-float v5, v5

    div-float v0, v4, v5

    .line 46
    .local v0, normalized:F
    const/high16 v4, 0x3f80

    cmpl-float v4, v0, v4

    if-ltz v4, :cond_3

    .line 47
    iput v8, p0, Lcom/sec/android/app/twlauncher/DragAnimation;->mAnimationState:I

    .line 48
    const/high16 v0, 0x3f80

    .line 53
    :cond_1
    :goto_0
    iget v4, p0, Lcom/sec/android/app/twlauncher/DragAnimation;->mAnimationFromX:F

    iget v5, p0, Lcom/sec/android/app/twlauncher/DragAnimation;->mAnimationToX:F

    iget v6, p0, Lcom/sec/android/app/twlauncher/DragAnimation;->mAnimationFromX:F

    sub-float/2addr v5, v6

    mul-float/2addr v5, v0

    add-float v2, v4, v5

    .line 54
    .local v2, valueX:F
    iget v4, p0, Lcom/sec/android/app/twlauncher/DragAnimation;->mAnimationFromY:F

    iget v5, p0, Lcom/sec/android/app/twlauncher/DragAnimation;->mAnimationToY:F

    iget v6, p0, Lcom/sec/android/app/twlauncher/DragAnimation;->mAnimationFromY:F

    sub-float/2addr v5, v6

    mul-float/2addr v5, v0

    add-float v3, v4, v5

    .line 56
    .local v3, valueY:F
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 57
    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 58
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/DragAnimation;->mAnimationView:Landroid/view/View;

    invoke-virtual {v4, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 59
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 61
    iget v4, p0, Lcom/sec/android/app/twlauncher/DragAnimation;->mAnimationState:I

    if-eq v4, v8, :cond_4

    .line 62
    const/4 v1, 0x1

    .line 71
    .end local v0           #normalized:F
    .end local v2           #valueX:F
    .end local v3           #valueY:F
    :cond_2
    :goto_1
    return v1

    .line 49
    .restart local v0       #normalized:F
    :cond_3
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/DragAnimation;->mInterpolator:Landroid/view/animation/Interpolator;

    if-eqz v4, :cond_1

    .line 50
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/DragAnimation;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v4, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    goto :goto_0

    .line 64
    .restart local v2       #valueX:F
    .restart local v3       #valueY:F
    :cond_4
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/DragAnimation;->mAnimationView:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 65
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/sec/android/app/twlauncher/DragAnimation;->mAnimationView:Landroid/view/View;

    .line 66
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public setAnimation(Landroid/view/View;FFFFFFI)V
    .locals 1
    .parameter "v"
    .parameter "fromX"
    .parameter "toX"
    .parameter "fromY"
    .parameter "toY"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "duration"

    .prologue
    .line 75
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/DragAnimation;->mAnimationView:Landroid/view/View;

    .line 76
    iput p2, p0, Lcom/sec/android/app/twlauncher/DragAnimation;->mAnimationFromX:F

    .line 77
    iput p3, p0, Lcom/sec/android/app/twlauncher/DragAnimation;->mAnimationToX:F

    .line 78
    iput p4, p0, Lcom/sec/android/app/twlauncher/DragAnimation;->mAnimationFromY:F

    .line 79
    iput p5, p0, Lcom/sec/android/app/twlauncher/DragAnimation;->mAnimationToY:F

    .line 80
    iput p6, p0, Lcom/sec/android/app/twlauncher/DragAnimation;->mXOffset:F

    .line 81
    iput p7, p0, Lcom/sec/android/app/twlauncher/DragAnimation;->mYOffset:F

    .line 82
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/twlauncher/DragAnimation;->mAnimationState:I

    .line 83
    iput p8, p0, Lcom/sec/android/app/twlauncher/DragAnimation;->mAnimationDuration:I

    .line 84
    return-void
.end method
