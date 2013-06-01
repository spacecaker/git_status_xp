.class Laurelienribon/tweenengine/equations/Circ$2;
.super Laurelienribon/tweenengine/equations/Circ;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Laurelienribon/tweenengine/equations/Circ;-><init>()V

    return-void
.end method


# virtual methods
.method public final compute(FFFF)F
    .locals 2

    const/high16 v1, 0x3f80

    div-float v0, p1, p4

    sub-float/2addr v0, v1

    mul-float/2addr v0, v0

    sub-float v0, v1, v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    mul-float/2addr v0, p3

    add-float/2addr v0, p2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Circ.OUT"

    return-object v0
.end method
