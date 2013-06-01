.class Laurelienribon/tweenengine/equations/Expo$1;
.super Laurelienribon/tweenengine/equations/Expo;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Laurelienribon/tweenengine/equations/Expo;-><init>()V

    return-void
.end method


# virtual methods
.method public final compute(FFFF)F
    .locals 5

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    :goto_0
    return p2

    :cond_0
    const-wide/high16 v0, 0x4000

    const/high16 v2, 0x4120

    div-float v3, p1, p4

    const/high16 v4, 0x3f80

    sub-float/2addr v3, v4

    mul-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    mul-float/2addr v0, p3

    add-float/2addr p2, v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Expo.IN"

    return-object v0
.end method
