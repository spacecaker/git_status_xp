.class Laurelienribon/tweenengine/equations/Back$3;
.super Laurelienribon/tweenengine/equations/Back;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Laurelienribon/tweenengine/equations/Back;-><init>()V

    return-void
.end method


# virtual methods
.method public final compute(FFFF)F
    .locals 7

    const v6, 0x3fc33333

    const/high16 v4, 0x3f80

    const/high16 v5, 0x4000

    iget v0, p0, Laurelienribon/tweenengine/equations/Back$3;->param_s:F

    div-float v1, p4, v5

    div-float v1, p1, v1

    cmpg-float v2, v1, v4

    if-gez v2, :cond_0

    div-float v2, p3, v5

    mul-float v3, v1, v1

    mul-float/2addr v0, v6

    add-float/2addr v4, v0

    mul-float/2addr v1, v4

    sub-float v0, v1, v0

    mul-float/2addr v0, v3

    mul-float/2addr v0, v2

    add-float/2addr v0, p2

    :goto_0
    return v0

    :cond_0
    div-float v2, p3, v5

    sub-float/2addr v1, v5

    mul-float v3, v1, v1

    mul-float/2addr v0, v6

    add-float/2addr v4, v0

    mul-float/2addr v1, v4

    add-float/2addr v0, v1

    mul-float/2addr v0, v3

    add-float/2addr v0, v5

    mul-float/2addr v0, v2

    add-float/2addr v0, p2

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Back.INOUT"

    return-object v0
.end method
