.class public Lcom/badlogic/gdx/math/Interpolation$Bounce;
.super Lcom/badlogic/gdx/math/Interpolation$BounceOut;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/math/Interpolation$BounceOut;-><init>(I)V

    return-void
.end method

.method public constructor <init>([F[F)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/math/Interpolation$BounceOut;-><init>([F[F)V

    return-void
.end method

.method private out(F)F
    .locals 4

    const/high16 v3, 0x4000

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/badlogic/gdx/math/Interpolation$Bounce;->widths:[F

    aget v0, v0, v2

    div-float/2addr v0, v3

    add-float/2addr v0, p1

    iget-object v1, p0, Lcom/badlogic/gdx/math/Interpolation$Bounce;->widths:[F

    aget v1, v1, v2

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/math/Interpolation$Bounce;->widths:[F

    aget v1, v1, v2

    div-float/2addr v1, v3

    div-float/2addr v0, v1

    const/high16 v1, 0x3f80

    sub-float/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/badlogic/gdx/math/Interpolation$BounceOut;->apply(F)F

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public apply(F)F
    .locals 4

    const/high16 v3, 0x3f00

    const/high16 v2, 0x3f80

    const/high16 v1, 0x4000

    cmpg-float v0, p1, v3

    if-gtz v0, :cond_0

    mul-float v0, p1, v1

    sub-float v0, v2, v0

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/math/Interpolation$Bounce;->out(F)F

    move-result v0

    sub-float v0, v2, v0

    div-float/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    mul-float v0, p1, v1

    sub-float/2addr v0, v2

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/math/Interpolation$Bounce;->out(F)F

    move-result v0

    div-float/2addr v0, v1

    add-float/2addr v0, v3

    goto :goto_0
.end method
