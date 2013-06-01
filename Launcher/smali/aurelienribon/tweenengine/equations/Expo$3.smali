.class Laurelienribon/tweenengine/equations/Expo$3;
.super Laurelienribon/tweenengine/equations/Expo;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Laurelienribon/tweenengine/equations/Expo;-><init>()V

    return-void
.end method


# virtual methods
.method public final compute(FFFF)F
    .locals 7

    const-wide/high16 v5, 0x4000

    const/high16 v3, 0x3f80

    const/high16 v4, 0x4000

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    :goto_0
    return p2

    :cond_0
    cmpl-float v0, p1, p4

    if-nez v0, :cond_1

    add-float/2addr p2, p3

    goto :goto_0

    :cond_1
    div-float v0, p4, v4

    div-float v0, p1, v0

    cmpg-float v1, v0, v3

    if-gez v1, :cond_2

    div-float v1, p3, v4

    const/high16 v2, 0x4120

    sub-float/2addr v0, v3

    mul-float/2addr v0, v2

    float-to-double v2, v0

    invoke-static {v5, v6, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v0, v2

    mul-float/2addr v0, v1

    add-float/2addr p2, v0

    goto :goto_0

    :cond_2
    div-float v1, p3, v4

    const/high16 v2, -0x3ee0

    sub-float/2addr v0, v3

    mul-float/2addr v0, v2

    float-to-double v2, v0

    invoke-static {v5, v6, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v0, v2

    neg-float v0, v0

    add-float/2addr v0, v4

    mul-float/2addr v0, v1

    add-float/2addr p2, v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Expo.INOUT"

    return-object v0
.end method
