.class Laurelienribon/tweenengine/equations/Sine$2;
.super Laurelienribon/tweenengine/equations/Sine;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Laurelienribon/tweenengine/equations/Sine;-><init>()V

    return-void
.end method


# virtual methods
.method public final compute(FFFF)F
    .locals 2

    div-float v0, p1, p4

    const v1, 0x3fc90fdb

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    mul-float/2addr v0, p3

    add-float/2addr v0, p2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Sine.OUT"

    return-object v0
.end method
