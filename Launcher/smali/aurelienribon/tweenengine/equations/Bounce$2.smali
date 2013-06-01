.class Laurelienribon/tweenengine/equations/Bounce$2;
.super Laurelienribon/tweenengine/equations/Bounce;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Laurelienribon/tweenengine/equations/Bounce;-><init>()V

    return-void
.end method


# virtual methods
.method public final compute(FFFF)F
    .locals 6

    const/high16 v5, 0x40f2

    div-float v0, p1, p4

    float-to-double v1, v0

    const-wide v3, 0x3fd745d1745d1746L

    cmpg-double v1, v1, v3

    if-gez v1, :cond_0

    mul-float v1, v5, v0

    mul-float/2addr v0, v1

    mul-float/2addr v0, p3

    add-float/2addr v0, p2

    :goto_0
    return v0

    :cond_0
    float-to-double v1, v0

    const-wide v3, 0x3fe745d1745d1746L

    cmpg-double v1, v1, v3

    if-gez v1, :cond_1

    const v1, 0x3f0ba2e9

    sub-float/2addr v0, v1

    mul-float v1, v5, v0

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f40

    add-float/2addr v0, v1

    mul-float/2addr v0, p3

    add-float/2addr v0, p2

    goto :goto_0

    :cond_1
    float-to-double v1, v0

    const-wide v3, 0x3fed1745d1745d17L

    cmpg-double v1, v1, v3

    if-gez v1, :cond_2

    const v1, 0x3f51745d

    sub-float/2addr v0, v1

    mul-float v1, v5, v0

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f70

    add-float/2addr v0, v1

    mul-float/2addr v0, p3

    add-float/2addr v0, p2

    goto :goto_0

    :cond_2
    const v1, 0x3f745d17

    sub-float/2addr v0, v1

    mul-float v1, v5, v0

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f7c

    add-float/2addr v0, v1

    mul-float/2addr v0, p3

    add-float/2addr v0, p2

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Bounce.OUT"

    return-object v0
.end method
