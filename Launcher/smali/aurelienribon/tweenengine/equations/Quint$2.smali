.class Laurelienribon/tweenengine/equations/Quint$2;
.super Laurelienribon/tweenengine/equations/Quint;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Laurelienribon/tweenengine/equations/Quint;-><init>()V

    return-void
.end method


# virtual methods
.method public final compute(FFFF)F
    .locals 3

    const/high16 v2, 0x3f80

    div-float v0, p1, p4

    sub-float/2addr v0, v2

    mul-float v1, v0, v0

    mul-float/2addr v1, v0

    mul-float/2addr v1, v0

    mul-float/2addr v0, v1

    add-float/2addr v0, v2

    mul-float/2addr v0, p3

    add-float/2addr v0, p2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Quint.OUT"

    return-object v0
.end method
