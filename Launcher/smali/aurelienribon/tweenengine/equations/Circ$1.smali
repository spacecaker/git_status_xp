.class Laurelienribon/tweenengine/equations/Circ$1;
.super Laurelienribon/tweenengine/equations/Circ;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Laurelienribon/tweenengine/equations/Circ;-><init>()V

    return-void
.end method


# virtual methods
.method public final compute(FFFF)F
    .locals 4

    const/high16 v3, 0x3f80

    neg-float v0, p3

    div-float v1, p1, p4

    mul-float/2addr v1, v1

    sub-float v1, v3, v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    sub-float/2addr v1, v3

    mul-float/2addr v0, v1

    add-float/2addr v0, p2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Circ.IN"

    return-object v0
.end method
