.class public Lcom/badlogic/gdx/math/Interpolation$ExpIn;
.super Lcom/badlogic/gdx/math/Interpolation$Exp;


# direct methods
.method public constructor <init>(FF)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/math/Interpolation$Exp;-><init>(FF)V

    return-void
.end method


# virtual methods
.method public apply(F)F
    .locals 4

    iget v0, p0, Lcom/badlogic/gdx/math/Interpolation$ExpIn;->value:F

    float-to-double v0, v0

    iget v2, p0, Lcom/badlogic/gdx/math/Interpolation$ExpIn;->power:F

    const/high16 v3, 0x3f80

    sub-float v3, p1, v3

    mul-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    iget v1, p0, Lcom/badlogic/gdx/math/Interpolation$ExpIn;->min:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/math/Interpolation$ExpIn;->scale:F

    mul-float/2addr v0, v1

    return v0
.end method
