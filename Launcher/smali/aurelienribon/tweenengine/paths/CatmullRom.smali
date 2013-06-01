.class public Laurelienribon/tweenengine/paths/CatmullRom;
.super Ljava/lang/Object;

# interfaces
.implements Laurelienribon/tweenengine/TweenPath;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private catmullRomSpline(FFFFF)F
    .locals 7

    const/high16 v4, 0x4040

    const/high16 v5, 0x4000

    const/high16 v2, 0x3f00

    sub-float v0, p3, p1

    mul-float/2addr v0, v2

    sub-float v1, p4, p2

    mul-float/2addr v1, v2

    mul-float v2, v5, p5

    mul-float/2addr v2, p5

    mul-float/2addr v2, p5

    mul-float v3, v4, p5

    mul-float/2addr v3, p5

    sub-float/2addr v2, v3

    const/high16 v3, 0x3f80

    add-float/2addr v2, v3

    const/high16 v3, -0x4000

    mul-float/2addr v3, p5

    mul-float/2addr v3, p5

    mul-float/2addr v3, p5

    mul-float/2addr v4, p5

    mul-float/2addr v4, p5

    add-float/2addr v3, v4

    mul-float v4, p5, p5

    mul-float/2addr v4, p5

    mul-float/2addr v5, p5

    mul-float/2addr v5, p5

    sub-float/2addr v4, v5

    add-float/2addr v4, p5

    mul-float v5, p5, p5

    mul-float/2addr v5, p5

    mul-float v6, p5, p5

    sub-float/2addr v5, v6

    mul-float/2addr v2, p2

    mul-float/2addr v3, p3

    add-float/2addr v2, v3

    mul-float/2addr v0, v4

    add-float/2addr v0, v2

    mul-float/2addr v1, v5

    add-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method public compute(F[FI)F
    .locals 6

    const/4 v3, 0x0

    add-int/lit8 v0, p3, -0x1

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v1, p3, -0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/lit8 v1, p3, -0x1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    int-to-float v2, v0

    sub-float v5, v1, v2

    if-nez v0, :cond_0

    aget v1, p2, v3

    aget v2, p2, v3

    const/4 v0, 0x1

    aget v3, p2, v0

    const/4 v0, 0x2

    aget v4, p2, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Laurelienribon/tweenengine/paths/CatmullRom;->catmullRomSpline(FFFFF)F

    move-result v0

    :goto_0
    return v0

    :cond_0
    add-int/lit8 v1, p3, -0x2

    if-ne v0, v1, :cond_1

    add-int/lit8 v0, p3, -0x3

    aget v1, p2, v0

    add-int/lit8 v0, p3, -0x2

    aget v2, p2, v0

    add-int/lit8 v0, p3, -0x1

    aget v3, p2, v0

    add-int/lit8 v0, p3, -0x1

    aget v4, p2, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Laurelienribon/tweenengine/paths/CatmullRom;->catmullRomSpline(FFFFF)F

    move-result v0

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v0, -0x1

    aget v1, p2, v1

    aget v2, p2, v0

    add-int/lit8 v3, v0, 0x1

    aget v3, p2, v3

    add-int/lit8 v0, v0, 0x2

    aget v4, p2, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Laurelienribon/tweenengine/paths/CatmullRom;->catmullRomSpline(FFFFF)F

    move-result v0

    goto :goto_0
.end method
