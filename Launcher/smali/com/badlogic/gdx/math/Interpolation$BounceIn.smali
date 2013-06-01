.class public Lcom/badlogic/gdx/math/Interpolation$BounceIn;
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


# virtual methods
.method public apply(F)F
    .locals 2

    const/high16 v1, 0x3f80

    sub-float v0, v1, p1

    invoke-super {p0, v0}, Lcom/badlogic/gdx/math/Interpolation$BounceOut;->apply(F)F

    move-result v0

    sub-float v0, v1, v0

    return v0
.end method
