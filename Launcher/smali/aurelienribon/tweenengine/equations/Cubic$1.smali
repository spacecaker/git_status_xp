.class Laurelienribon/tweenengine/equations/Cubic$1;
.super Laurelienribon/tweenengine/equations/Cubic;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Laurelienribon/tweenengine/equations/Cubic;-><init>()V

    return-void
.end method


# virtual methods
.method public final compute(FFFF)F
    .locals 2

    div-float v0, p1, p4

    mul-float v1, p3, v0

    mul-float/2addr v1, v0

    mul-float/2addr v0, v1

    add-float/2addr v0, p2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Cubic.IN"

    return-object v0
.end method
