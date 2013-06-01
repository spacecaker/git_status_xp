.class public Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5AnimationInfo;
.super Ljava/lang/Object;


# instance fields
.field currFrame:I

.field lastTime:F

.field maxFrame:I

.field maxTime:F

.field nextFrame:I


# direct methods
.method public constructor <init>(IF)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5AnimationInfo;->currFrame:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5AnimationInfo;->nextFrame:I

    iput p1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5AnimationInfo;->maxFrame:I

    iput p2, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5AnimationInfo;->maxTime:F

    return-void
.end method


# virtual methods
.method public getCurrentFrame()I
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5AnimationInfo;->currFrame:I

    return v0
.end method

.method public getInterpolation()F
    .locals 2

    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5AnimationInfo;->lastTime:F

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5AnimationInfo;->maxTime:F

    div-float/2addr v0, v1

    return v0
.end method

.method public getNextFrame()I
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5AnimationInfo;->nextFrame:I

    return v0
.end method

.method public reset()V
    .locals 2

    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5AnimationInfo;->maxFrame:I

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5AnimationInfo;->maxTime:F

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5AnimationInfo;->reset(IF)V

    return-void
.end method

.method public reset(IF)V
    .locals 1

    iput p1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5AnimationInfo;->maxFrame:I

    iput p2, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5AnimationInfo;->maxTime:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5AnimationInfo;->currFrame:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5AnimationInfo;->nextFrame:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5AnimationInfo;->lastTime:F

    return-void
.end method

.method public update(F)V
    .locals 4

    const/4 v3, 0x0

    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5AnimationInfo;->lastTime:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5AnimationInfo;->lastTime:F

    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5AnimationInfo;->lastTime:F

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5AnimationInfo;->maxTime:F

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5AnimationInfo;->maxFrame:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    rem-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5AnimationInfo;->lastTime:F

    :cond_0
    :goto_0
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5AnimationInfo;->lastTime:F

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5AnimationInfo;->maxTime:F

    cmpl-float v0, v0, v1

    if-gez v0, :cond_1

    return-void

    :cond_1
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5AnimationInfo;->currFrame:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5AnimationInfo;->currFrame:I

    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5AnimationInfo;->nextFrame:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5AnimationInfo;->nextFrame:I

    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5AnimationInfo;->lastTime:F

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5AnimationInfo;->maxTime:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5AnimationInfo;->lastTime:F

    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5AnimationInfo;->currFrame:I

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5AnimationInfo;->maxFrame:I

    if-lt v0, v1, :cond_2

    iput v3, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5AnimationInfo;->currFrame:I

    :cond_2
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5AnimationInfo;->nextFrame:I

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5AnimationInfo;->maxFrame:I

    if-lt v0, v1, :cond_0

    iput v3, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5AnimationInfo;->nextFrame:I

    goto :goto_0
.end method
