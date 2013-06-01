.class Laurelienribon/tweenengine/equations/Expo$2;
.super Laurelienribon/tweenengine/equations/Expo;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Laurelienribon/tweenengine/equations/Expo;-><init>()V

    return-void
.end method


# virtual methods
.method public final compute(FFFF)F
    .locals 4

    cmpl-float v0, p1, p4

    if-nez v0, :cond_0

    add-float v0, p2, p3

    :goto_0
    return v0

    :cond_0
    const-wide/high16 v0, 0x4000

    const/high16 v2, -0x3ee0

    mul-float/2addr v2, p1

    div-float/2addr v2, p4

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    neg-float v0, v0

    const/high16 v1, 0x3f80

    add-float/2addr v0, v1

    mul-float/2addr v0, p3

    add-float/2addr v0, p2

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Expo.OUT"

    return-object v0
.end method
