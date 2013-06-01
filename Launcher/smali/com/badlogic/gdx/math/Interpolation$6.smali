.class Lcom/badlogic/gdx/math/Interpolation$6;
.super Lcom/badlogic/gdx/math/Interpolation;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/badlogic/gdx/math/Interpolation;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(F)F
    .locals 4

    const/high16 v3, 0x4000

    const/high16 v2, 0x3f80

    const/high16 v0, 0x3f00

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    mul-float v0, p1, v3

    mul-float/2addr v0, v0

    sub-float v0, v2, v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    sub-float v0, v2, v0

    div-float/2addr v0, v3

    :goto_0
    return v0

    :cond_0
    sub-float v0, p1, v2

    mul-float/2addr v0, v3

    mul-float/2addr v0, v0

    sub-float v0, v2, v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    add-float/2addr v0, v2

    div-float/2addr v0, v3

    goto :goto_0
.end method
