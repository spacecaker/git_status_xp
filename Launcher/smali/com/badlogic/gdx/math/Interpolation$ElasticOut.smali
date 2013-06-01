.class public Lcom/badlogic/gdx/math/Interpolation$ElasticOut;
.super Lcom/badlogic/gdx/math/Interpolation$Elastic;


# direct methods
.method public constructor <init>(FF)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/math/Interpolation$Elastic;-><init>(FF)V

    return-void
.end method


# virtual methods
.method public apply(F)F
    .locals 6

    const/high16 v5, 0x3f80

    sub-float v0, v5, p1

    iget v1, p0, Lcom/badlogic/gdx/math/Interpolation$ElasticOut;->value:F

    float-to-double v1, v1

    iget v3, p0, Lcom/badlogic/gdx/math/Interpolation$ElasticOut;->power:F

    sub-float v4, v0, v5

    mul-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float v1, v1

    const/high16 v2, 0x41a0

    mul-float/2addr v0, v2

    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->sin(F)F

    move-result v0

    mul-float/2addr v0, v1

    const v1, 0x3f8c3958

    mul-float/2addr v0, v1

    sub-float v0, v5, v0

    return v0
.end method
