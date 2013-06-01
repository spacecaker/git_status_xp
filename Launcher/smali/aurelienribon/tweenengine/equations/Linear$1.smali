.class Laurelienribon/tweenengine/equations/Linear$1;
.super Laurelienribon/tweenengine/equations/Linear;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Laurelienribon/tweenengine/equations/Linear;-><init>()V

    return-void
.end method


# virtual methods
.method public compute(FFFF)F
    .locals 1

    mul-float v0, p3, p1

    div-float/2addr v0, p4

    add-float/2addr v0, p2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Linear.INOUT"

    return-object v0
.end method
