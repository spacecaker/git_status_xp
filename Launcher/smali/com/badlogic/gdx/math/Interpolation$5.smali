.class Lcom/badlogic/gdx/math/Interpolation$5;
.super Lcom/badlogic/gdx/math/Interpolation;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/badlogic/gdx/math/Interpolation;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(F)F
    .locals 2

    const v0, 0x40490fdb

    mul-float/2addr v0, p1

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->sin(F)F

    move-result v0

    return v0
.end method
