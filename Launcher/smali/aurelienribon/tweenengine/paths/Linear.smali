.class public Laurelienribon/tweenengine/paths/Linear;
.super Ljava/lang/Object;

# interfaces
.implements Laurelienribon/tweenengine/TweenPath;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compute(F[FI)F
    .locals 4

    add-int/lit8 v0, p3, -0x1

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v1, p3, -0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/lit8 v1, p3, -0x1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    int-to-float v2, v0

    sub-float/2addr v1, v2

    aget v2, p2, v0

    add-int/lit8 v3, v0, 0x1

    aget v3, p2, v3

    aget v0, p2, v0

    sub-float v0, v3, v0

    mul-float/2addr v0, v1

    add-float/2addr v0, v2

    return v0
.end method
