.class Laurelienribon/tweenengine/equations/Sine$1;
.super Laurelienribon/tweenengine/equations/Sine;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Laurelienribon/tweenengine/equations/Sine;-><init>()V

    return-void
.end method


# virtual methods
.method public final compute(FFFF)F
    .locals 3

    neg-float v0, p3

    div-float v1, p1, p4

    const v2, 0x3fc90fdb

    mul-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    double-to-float v1, v1

    mul-float/2addr v0, v1

    add-float/2addr v0, p3

    add-float/2addr v0, p2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Sine.IN"

    return-object v0
.end method
