.class Laurelienribon/tweenengine/equations/Bounce$3;
.super Laurelienribon/tweenengine/equations/Bounce;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Laurelienribon/tweenengine/equations/Bounce;-><init>()V

    return-void
.end method


# virtual methods
.method public final compute(FFFF)F
    .locals 4

    const/4 v3, 0x0

    const/high16 v1, 0x4000

    const/high16 v2, 0x3f00

    div-float v0, p4, v1

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    sget-object v0, Laurelienribon/tweenengine/equations/Bounce$3;->IN:Laurelienribon/tweenengine/equations/Bounce;

    mul-float/2addr v1, p1

    invoke-virtual {v0, v1, v3, p3, p4}, Laurelienribon/tweenengine/equations/Bounce;->compute(FFFF)F

    move-result v0

    mul-float/2addr v0, v2

    add-float/2addr v0, p2

    :goto_0
    return v0

    :cond_0
    sget-object v0, Laurelienribon/tweenengine/equations/Bounce$3;->OUT:Laurelienribon/tweenengine/equations/Bounce;

    mul-float/2addr v1, p1

    sub-float/2addr v1, p4

    invoke-virtual {v0, v1, v3, p3, p4}, Laurelienribon/tweenengine/equations/Bounce;->compute(FFFF)F

    move-result v0

    mul-float/2addr v0, v2

    mul-float v1, p3, v2

    add-float/2addr v0, v1

    add-float/2addr v0, p2

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Bounce.INOUT"

    return-object v0
.end method
