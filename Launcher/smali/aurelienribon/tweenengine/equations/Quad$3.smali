.class Laurelienribon/tweenengine/equations/Quad$3;
.super Laurelienribon/tweenengine/equations/Quad;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Laurelienribon/tweenengine/equations/Quad;-><init>()V

    return-void
.end method


# virtual methods
.method public final compute(FFFF)F
    .locals 4

    const/high16 v3, 0x3f80

    const/high16 v2, 0x4000

    div-float v0, p4, v2

    div-float v0, p1, v0

    cmpg-float v1, v0, v3

    if-gez v1, :cond_0

    div-float v1, p3, v2

    mul-float/2addr v1, v0

    mul-float/2addr v0, v1

    add-float/2addr v0, p2

    :goto_0
    return v0

    :cond_0
    neg-float v1, p3

    div-float/2addr v1, v2

    sub-float/2addr v0, v3

    sub-float v2, v0, v2

    mul-float/2addr v0, v2

    sub-float/2addr v0, v3

    mul-float/2addr v0, v1

    add-float/2addr v0, p2

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Quad.INOUT"

    return-object v0
.end method
