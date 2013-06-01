.class public Lcom/badlogic/gdx/scenes/scene2d/interpolators/AnticipateInterpolator;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/badlogic/gdx/scenes/scene2d/Interpolator;


# static fields
.field private static final DEFAULT_TENSION:F = 2.0f

.field private static final pool:Lcom/badlogic/gdx/utils/Pool;


# instance fields
.field private tension:F


# direct methods
.method public static $()Lcom/badlogic/gdx/scenes/scene2d/interpolators/AnticipateInterpolator;
    .locals 1

    const/high16 v0, 0x4000

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/interpolators/AnticipateInterpolator;->$(F)Lcom/badlogic/gdx/scenes/scene2d/interpolators/AnticipateInterpolator;

    move-result-object v0

    return-object v0
.end method

.method public static $(F)Lcom/badlogic/gdx/scenes/scene2d/interpolators/AnticipateInterpolator;
    .locals 1

    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/interpolators/AnticipateInterpolator;->pool:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/interpolators/AnticipateInterpolator;

    iput p0, v0, Lcom/badlogic/gdx/scenes/scene2d/interpolators/AnticipateInterpolator;->tension:F

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/interpolators/AnticipateInterpolator$1;

    const/4 v1, 0x4

    const/16 v2, 0x64

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/interpolators/AnticipateInterpolator$1;-><init>(II)V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/interpolators/AnticipateInterpolator;->pool:Lcom/badlogic/gdx/utils/Pool;

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

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/interpolators/AnticipateInterpolator;->tension:F

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/interpolators/AnticipateInterpolator;->$(F)Lcom/badlogic/gdx/scenes/scene2d/interpolators/AnticipateInterpolator;

    move-result-object v0

    return-object v0
.end method

.method public finished()V
    .locals 1

    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/interpolators/AnticipateInterpolator;->pool:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    return-void
.end method

.method public getInterpolation(F)F
    .locals 3

    mul-float v0, p1, p1

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/interpolators/AnticipateInterpolator;->tension:F

    const/high16 v2, 0x3f80

    add-float/2addr v1, v2

    mul-float/2addr v1, p1

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/interpolators/AnticipateInterpolator;->tension:F

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    return v0
.end method
