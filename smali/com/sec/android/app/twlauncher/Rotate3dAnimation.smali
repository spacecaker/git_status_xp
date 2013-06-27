.class Lcom/sec/android/app/twlauncher/Rotate3dAnimation;
.super Landroid/view/animation/Animation;
.source "Rotate3dAnimation.java"


# instance fields
.field private mCamera:Landroid/graphics/Camera;

.field private final mCenterX:F

.field private final mCenterY:F

.field private final mDepthZ:F

.field private final mFromDegrees:F

.field private final mReverse:Z

.field private mRotateAxis:I

.field private final mToDegrees:F


# direct methods
.method public constructor <init>(FFFFFZ)V
    .locals 0
    .parameter "fromDegrees"
    .parameter "toDegrees"
    .parameter "centerX"
    .parameter "centerY"
    .parameter "depthZ"
    .parameter "reverse"

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 43
    iput p1, p0, Lcom/sec/android/app/twlauncher/Rotate3dAnimation;->mFromDegrees:F

    .line 44
    iput p2, p0, Lcom/sec/android/app/twlauncher/Rotate3dAnimation;->mToDegrees:F

    .line 45
    iput p3, p0, Lcom/sec/android/app/twlauncher/Rotate3dAnimation;->mCenterX:F

    .line 46
    iput p4, p0, Lcom/sec/android/app/twlauncher/Rotate3dAnimation;->mCenterY:F

    .line 47
    iput p5, p0, Lcom/sec/android/app/twlauncher/Rotate3dAnimation;->mDepthZ:F

    .line 48
    iput-boolean p6, p0, Lcom/sec/android/app/twlauncher/Rotate3dAnimation;->mReverse:Z

    .line 49
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 10
    .parameter "interpolatedTime"
    .parameter "t"

    .prologue
    const/4 v9, 0x0

    .line 65
    iget v5, p0, Lcom/sec/android/app/twlauncher/Rotate3dAnimation;->mFromDegrees:F

    .line 66
    .local v5, fromDegrees:F
    iget v7, p0, Lcom/sec/android/app/twlauncher/Rotate3dAnimation;->mToDegrees:F

    sub-float/2addr v7, v5

    mul-float/2addr v7, p1

    add-float v4, v5, v7

    .line 68
    .local v4, degrees:F
    iget v2, p0, Lcom/sec/android/app/twlauncher/Rotate3dAnimation;->mCenterX:F

    .line 69
    .local v2, centerX:F
    iget v3, p0, Lcom/sec/android/app/twlauncher/Rotate3dAnimation;->mCenterY:F

    .line 70
    .local v3, centerY:F
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Rotate3dAnimation;->mCamera:Landroid/graphics/Camera;

    .line 72
    .local v1, camera:Landroid/graphics/Camera;
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v6

    .line 74
    .local v6, matrix:Landroid/graphics/Matrix;
    invoke-virtual {v1}, Landroid/graphics/Camera;->save()V

    .line 75
    iget-boolean v7, p0, Lcom/sec/android/app/twlauncher/Rotate3dAnimation;->mReverse:Z

    if-eqz v7, :cond_1

    .line 76
    iget v7, p0, Lcom/sec/android/app/twlauncher/Rotate3dAnimation;->mDepthZ:F

    mul-float/2addr v7, p1

    invoke-virtual {v1, v9, v9, v7}, Landroid/graphics/Camera;->translate(FFF)V

    .line 81
    :goto_0
    iget v0, p0, Lcom/sec/android/app/twlauncher/Rotate3dAnimation;->mRotateAxis:I

    .line 82
    .local v0, axis:I
    if-nez v0, :cond_2

    .line 83
    invoke-virtual {v1, v4}, Landroid/graphics/Camera;->rotateY(F)V

    .line 86
    :cond_0
    :goto_1
    invoke-virtual {v1, v6}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 87
    invoke-virtual {v1}, Landroid/graphics/Camera;->restore()V

    .line 89
    neg-float v7, v2

    neg-float v8, v3

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 90
    invoke-virtual {v6, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 92
    sget v7, Landroid/view/animation/Transformation;->TYPE_BOTH:I

    invoke-virtual {p2, v7}, Landroid/view/animation/Transformation;->setTransformationType(I)V

    .line 93
    return-void

    .line 78
    .end local v0           #axis:I
    :cond_1
    iget v7, p0, Lcom/sec/android/app/twlauncher/Rotate3dAnimation;->mDepthZ:F

    const/high16 v8, 0x3f80

    sub-float/2addr v8, p1

    mul-float/2addr v7, v8

    invoke-virtual {v1, v9, v9, v7}, Landroid/graphics/Camera;->translate(FFF)V

    goto :goto_0

    .line 84
    .restart local v0       #axis:I
    :cond_2
    const/4 v7, 0x1

    if-ne v0, v7, :cond_0

    .line 85
    invoke-virtual {v1, v4}, Landroid/graphics/Camera;->rotateX(F)V

    goto :goto_1
.end method

.method public initialize(IIII)V
    .locals 1
    .parameter "width"
    .parameter "height"
    .parameter "parentWidth"
    .parameter "parentHeight"

    .prologue
    .line 59
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 60
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Rotate3dAnimation;->mCamera:Landroid/graphics/Camera;

    .line 61
    return-void
.end method

.method public setRotateAxis(I)V
    .locals 1
    .parameter "axis"

    .prologue
    .line 52
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 54
    :cond_0
    iput p1, p0, Lcom/sec/android/app/twlauncher/Rotate3dAnimation;->mRotateAxis:I

    .line 55
    :cond_1
    return-void
.end method
