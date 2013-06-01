.class Laurelienribon/tweenengine/equations/Back$2;
.super Laurelienribon/tweenengine/equations/Back;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Laurelienribon/tweenengine/equations/Back;-><init>()V

    return-void
.end method


# virtual methods
.method public final compute(FFFF)F
    .locals 5

    const/high16 v4, 0x3f80

    iget v0, p0, Laurelienribon/tweenengine/equations/Back$2;->param_s:F

    div-float v1, p1, p4

    sub-float/2addr v1, v4

    mul-float v2, v1, v1

    add-float v3, v0, v4

    mul-float/2addr v1, v3

    add-float/2addr v0, v1

    mul-float/2addr v0, v2

    add-float/2addr v0, v4

    mul-float/2addr v0, p3

    add-float/2addr v0, p2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Back.OUT"

    return-object v0
.end method
