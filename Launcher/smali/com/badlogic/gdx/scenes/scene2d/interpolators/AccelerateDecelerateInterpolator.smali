.class public Lcom/badlogic/gdx/scenes/scene2d/interpolators/AccelerateDecelerateInterpolator;
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
.method public static $()Lcom/badlogic/gdx/scenes/scene2d/interpolators/AccelerateDecelerateInterpolator;
    .locals 1

    const/high16 v0, 0x3f80

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/interpolators/AccelerateDecelerateInterpolator;->$(F)Lcom/badlogic/gdx/scenes/scene2d/interpolators/AccelerateDecelerateInterpolator;

    move-result-object v0

    return-object v0
.end method

.method public static $(F)Lcom/badlogic/gdx/scenes/scene2d/interpolators/AccelerateDecelerateInterpolator;
    .locals 3

    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/interpolators/AccelerateDecelerateInterpolator;->pool:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/interpolators/AccelerateDecelerateInterpolator;

    iput p0, v0, Lcom/badlogic/gdx/scenes/scene2d/interpolators/AccelerateDecelerateInterpolator;->factor:F

    const/high16 v1, 0x4000

    mul-float/2addr v1, p0

    float-to-double v1, v1

    iput-wide v1, v0, Lcom/badlogic/gdx/scenes/scene2d/interpolators/AccelerateDecelerateInterpolator;->doubledFactor:D

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/interpolators/AccelerateDecelerateInterpolator$1;

    const/4 v1, 0x4

    const/16 v2, 0x64

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/interpolators/AccelerateDecelerateInterpolator$1;-><init>(II)V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/interpolators/AccelerateDecelerateInterpolator;->pool:Lcom/badlogic/gdx/utils/Pool;

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

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/interpolators/AccelerateDecelerateInterpolator;->factor:F

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/interpolators/AccelerateDecelerateInterpolator;->$(F)Lcom/badlogic/gdx/scenes/scene2d/interpolators/AccelerateDecelerateInterpolator;

    move-result-object v0

    return-object v0
.end method

.method public finished()V
    .locals 1

    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/interpolators/AccelerateDecelerateInterpolator;->pool:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    return-void
.end method

.method public getInterpolation(F)F
    .locals 4

    const/high16 v0, 0x3f80

    add-float/2addr v0, p1

    float-to-double v0, v0

    const-wide v2, 0x400921fb54442d18L

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000

    div-double/2addr v0, v2

    double-to-float v0, v0

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    return v0
.end method
