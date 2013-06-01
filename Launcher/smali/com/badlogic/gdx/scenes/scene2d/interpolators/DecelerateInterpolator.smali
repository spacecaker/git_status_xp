.class public Lcom/badlogic/gdx/scenes/scene2d/interpolators/DecelerateInterpolator;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/badlogic/gdx/scenes/scene2d/Interpolator;


# static fields
.field private static final DEFAULT_FACTOR:F = 1.0f

.field private static final pool:Lcom/badlogic/gdx/utils/Pool;


# instance fields
.field private doubledFactor:D

.field private factor:F


# direct methods
.method public static $()Lcom/badlogic/gdx/scenes/scene2d/interpolators/DecelerateInterpolator;
    .locals 1

    const/high16 v0, 0x3f80

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/interpolators/DecelerateInterpolator;->$(F)Lcom/badlogic/gdx/scenes/scene2d/interpolators/DecelerateInterpolator;

    move-result-object v0

    return-object v0
.end method

.method public static $(F)Lcom/badlogic/gdx/scenes/scene2d/interpolators/DecelerateInterpolator;
    .locals 3

    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/interpolators/DecelerateInterpolator;->pool:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/interpolators/DecelerateInterpolator;

    iput p0, v0, Lcom/badlogic/gdx/scenes/scene2d/interpolators/DecelerateInterpolator;->factor:F

    const/high16 v1, 0x4000

    mul-float/2addr v1, p0

    float-to-double v1, v1

    iput-wide v1, v0, Lcom/badlogic/gdx/scenes/scene2d/interpolators/DecelerateInterpolator;->doubledFactor:D

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/interpolators/DecelerateInterpolator$1;

    const/4 v1, 0x4

    const/16 v2, 0x64

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/interpolators/DecelerateInterpolator$1;-><init>(II)V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/interpolators/DecelerateInterpolator;->pool:Lcom/badlogic/gdx/utils/Pool;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public copy()Lcom/badlogic/gdx/scenes/scene2d/Interpolator;
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/interpolators/DecelerateInterpolator;->factor:F

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/interpolators/DecelerateInterpolator;->$(F)Lcom/badlogic/gdx/scenes/scene2d/interpolators/DecelerateInterpolator;

    move-result-object v0

    return-object v0
.end method

.method public finished()V
    .locals 1

    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/interpolators/DecelerateInterpolator;->pool:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    return-void
.end method

.method public getInterpolation(F)F
    .locals 6

    const/high16 v2, 0x3f80

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/interpolators/DecelerateInterpolator;->factor:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    sub-float v0, v2, p1

    sub-float v1, v2, p1

    mul-float/2addr v0, v1

    sub-float v0, v2, v0

    :goto_0
    return v0

    :cond_0
    const-wide/high16 v0, 0x3ff0

    sub-float/2addr v2, p1

    float-to-double v2, v2

    iget-wide v4, p0, Lcom/badlogic/gdx/scenes/scene2d/interpolators/DecelerateInterpolator;->doubledFactor:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    sub-double/2addr v0, v2

    double-to-float v0, v0

    goto :goto_0
.end method
