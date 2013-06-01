.class Laurelienribon/tweenengine/equations/Elastic$1;
.super Laurelienribon/tweenengine/equations/Elastic;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Laurelienribon/tweenengine/equations/Elastic;-><init>()V

    return-void
.end method


# virtual methods
.method public final compute(FFFF)F
    .locals 9

    const v8, 0x40c90fdb

    const/high16 v6, 0x3f80

    iget v2, p0, Laurelienribon/tweenengine/equations/Elastic$1;->param_a:F

    iget v0, p0, Laurelienribon/tweenengine/equations/Elastic$1;->param_p:F

    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-nez v1, :cond_0

    :goto_0
    return p2

    :cond_0
    div-float v3, p1, p4

    cmpl-float v1, v3, v6

    if-nez v1, :cond_1

    add-float/2addr p2, p3

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Laurelienribon/tweenengine/equations/Elastic$1;->setP:Z

    if-nez v1, :cond_2

    const v0, 0x3e99999a

    mul-float/2addr v0, p4

    :cond_2
    iget-boolean v1, p0, Laurelienribon/tweenengine/equations/Elastic$1;->setA:Z

    if-eqz v1, :cond_3

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v2, v1

    if-gez v1, :cond_4

    :cond_3
    const/high16 v1, 0x4080

    div-float v1, v0, v1

    :goto_1
    const-wide/high16 v4, 0x4000

    const/high16 v2, 0x4120

    sub-float/2addr v3, v6

    mul-float/2addr v2, v3

    float-to-double v6, v2

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v2, v4

    mul-float/2addr v2, p3

    mul-float/2addr v3, p4

    sub-float v1, v3, v1

    mul-float/2addr v1, v8

    div-float v0, v1, v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    mul-float/2addr v0, v2

    neg-float v0, v0

    add-float/2addr p2, v0

    goto :goto_0

    :cond_4
    div-float v1, v0, v8

    div-float v4, p3, v2

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->asin(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v1, v4

    move p3, v2

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Elastic.IN"

    return-object v0
.end method
