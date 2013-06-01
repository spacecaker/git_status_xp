.class Laurelienribon/tweenengine/equations/Quad$2;
.super Laurelienribon/tweenengine/equations/Quad;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Laurelienribon/tweenengine/equations/Quad;-><init>()V

    return-void
.end method


# virtual methods
.method public final compute(FFFF)F
    .locals 3

    neg-float v0, p3

    div-float v1, p1, p4

    mul-float/2addr v0, v1

    const/high16 v2, 0x4000

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    add-float/2addr v0, p2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Quad.OUT"

    return-object v0
.end method
