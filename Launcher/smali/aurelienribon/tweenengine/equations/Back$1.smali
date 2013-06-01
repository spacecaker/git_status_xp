.class Laurelienribon/tweenengine/equations/Back$1;
.super Laurelienribon/tweenengine/equations/Back;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Laurelienribon/tweenengine/equations/Back;-><init>()V

    return-void
.end method


# virtual methods
.method public final compute(FFFF)F
    .locals 4

    iget v0, p0, Laurelienribon/tweenengine/equations/Back$1;->param_s:F

    div-float v1, p1, p4

    mul-float v2, p3, v1

    mul-float/2addr v2, v1

    const/high16 v3, 0x3f80

    add-float/2addr v3, v0

    mul-float/2addr v1, v3

    sub-float v0, v1, v0

    mul-float/2addr v0, v2

    add-float/2addr v0, p2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Back.IN"

    return-object v0
.end method
