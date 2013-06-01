.class Laurelienribon/tweenengine/equations/Sine$3;
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

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    const v1, 0x40490fdb

    mul-float/2addr v1, p1

    div-float/2addr v1, p4

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    double-to-float v1, v1

    const/high16 v2, 0x3f80

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    add-float/2addr v0, p2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Sine.INOUT"

    return-object v0
.end method
