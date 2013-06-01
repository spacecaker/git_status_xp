.class Lcom/badlogic/gdx/math/Interpolation$4;
.super Lcom/badlogic/gdx/math/Interpolation;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/badlogic/gdx/math/Interpolation;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(F)F
    .locals 3

    const/high16 v0, 0x3f80

    const v1, 0x40490fdb

    mul-float/2addr v1, p1

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    invoke-static {v1}, Lcom/badlogic/gdx/math/MathUtils;->cos(F)F

    move-result v1

    sub-float/2addr v0, v1

    return v0
.end method
