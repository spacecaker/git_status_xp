.class public final Lcom/badlogic/gdx/math/WindowedMean;
.super Ljava/lang/Object;


# instance fields
.field added_values:I

.field dirty:Z

.field last_value:I

.field mean:F

.field values:[F


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/math/WindowedMean;->added_values:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/math/WindowedMean;->mean:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/math/WindowedMean;->dirty:Z

    new-array v0, p1, [F

    iput-object v0, p0, Lcom/badlogic/gdx/math/WindowedMean;->values:[F

    return-void
.end method


# virtual methods
.method public addValue(F)V
    .locals 3

    iget v0, p0, Lcom/badlogic/gdx/math/WindowedMean;->added_values:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/math/WindowedMean;->added_values:I

    iget-object v0, p0, Lcom/badlogic/gdx/math/WindowedMean;->values:[F

    iget v1, p0, Lcom/badlogic/gdx/math/WindowedMean;->last_value:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/badlogic/gdx/math/WindowedMean;->last_value:I

    aput p1, v0, v1

    iget v0, p0, Lcom/badlogic/gdx/math/WindowedMean;->last_value:I

    iget-object v1, p0, Lcom/badlogic/gdx/math/WindowedMean;->values:[F

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/math/WindowedMean;->last_value:I

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/math/WindowedMean;->dirty:Z

    return-void
.end method

.method public clear()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/math/WindowedMean;->added_values:I

    iput v0, p0, Lcom/badlogic/gdx/math/WindowedMean;->last_value:I

    :goto_0
    iget-object v1, p0, Lcom/badlogic/gdx/math/WindowedMean;->values:[F

    array-length v1, v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/math/WindowedMean;->dirty:Z

    return-void

    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/math/WindowedMean;->values:[F

    const/4 v2, 0x0

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getLatest()F
    .locals 3

    iget-object v1, p0, Lcom/badlogic/gdx/math/WindowedMean;->values:[F

    iget v0, p0, Lcom/badlogic/gdx/math/WindowedMean;->last_value:I

    add-int/lit8 v0, v0, -0x1

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/math/WindowedMean;->values:[F

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    aget v0, v1, v0

    return v0

    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/math/WindowedMean;->last_value:I

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public getMean()F
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/badlogic/gdx/math/WindowedMean;->hasEnoughData()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/badlogic/gdx/math/WindowedMean;->dirty:Z

    if-eqz v2, :cond_0

    move v2, v0

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/badlogic/gdx/math/WindowedMean;->values:[F

    array-length v3, v3

    if-lt v0, v3, :cond_2

    iget-object v0, p0, Lcom/badlogic/gdx/math/WindowedMean;->values:[F

    array-length v0, v0

    int-to-float v0, v0

    div-float v0, v2, v0

    iput v0, p0, Lcom/badlogic/gdx/math/WindowedMean;->mean:F

    iput-boolean v1, p0, Lcom/badlogic/gdx/math/WindowedMean;->dirty:Z

    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/math/WindowedMean;->mean:F

    :cond_1
    return v0

    :cond_2
    iget-object v3, p0, Lcom/badlogic/gdx/math/WindowedMean;->values:[F

    aget v3, v3, v0

    add-float/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getOldest()F
    .locals 2

    iget v0, p0, Lcom/badlogic/gdx/math/WindowedMean;->last_value:I

    iget-object v1, p0, Lcom/badlogic/gdx/math/WindowedMean;->values:[F

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/math/WindowedMean;->values:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/math/WindowedMean;->values:[F

    iget v1, p0, Lcom/badlogic/gdx/math/WindowedMean;->last_value:I

    add-int/lit8 v1, v1, 0x1

    aget v0, v0, v1

    goto :goto_0
.end method

.method public hasEnoughData()Z
    .locals 2

    iget v0, p0, Lcom/badlogic/gdx/math/WindowedMean;->added_values:I

    iget-object v1, p0, Lcom/badlogic/gdx/math/WindowedMean;->values:[F

    array-length v1, v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public standardDeviation()F
    .locals 5

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/badlogic/gdx/math/WindowedMean;->hasEnoughData()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/WindowedMean;->getMean()F

    move-result v2

    const/4 v0, 0x0

    :goto_1
    iget-object v3, p0, Lcom/badlogic/gdx/math/WindowedMean;->values:[F

    array-length v3, v3

    if-lt v0, v3, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/math/WindowedMean;->values:[F

    array-length v0, v0

    int-to-float v0, v0

    div-float v0, v1, v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v1, v0

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/badlogic/gdx/math/WindowedMean;->values:[F

    aget v3, v3, v0

    sub-float/2addr v3, v2

    iget-object v4, p0, Lcom/badlogic/gdx/math/WindowedMean;->values:[F

    aget v4, v4, v0

    sub-float/2addr v4, v2

    mul-float/2addr v3, v4

    add-float/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
