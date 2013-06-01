.class public Lcom/badlogic/gdx/math/MathUtils;
.super Ljava/lang/Object;


# static fields
.field private static final ATAN2_BITS:I = 0x7

.field private static final ATAN2_BITS2:I = 0xe

.field private static final ATAN2_COUNT:I = 0x4000

#the value of this static final field might be set in the static constructor
.field private static final ATAN2_DIM:I = 0x0

.field private static final ATAN2_MASK:I = 0x3fff

#the value of this static final field might be set in the static constructor
.field private static final BIG_ENOUGH_CEIL:D = 0.0

.field private static final BIG_ENOUGH_FLOOR:D = 16384.0

.field private static final BIG_ENOUGH_INT:I = 0x4000

.field private static final BIG_ENOUGH_ROUND:D = 16384.5

.field private static final CEIL:D = 0.9999999

#the value of this static final field might be set in the static constructor
.field private static final INV_ATAN2_DIM_MINUS_1:F = 0.0f

.field public static final PI:F = 3.1415927f

.field private static final SIN_BITS:I = 0xd

.field private static final SIN_COUNT:I = 0x2000

.field private static final SIN_MASK:I = 0x1fff

.field private static final atan2:[F = null

.field public static final cos:[F = null

.field private static final degFull:F = 360.0f

.field private static final degToIndex:F = 22.755556f

.field public static final degreesToRadians:F = 0.017453292f

.field private static final radFull:F = 6.2831855f

.field private static final radToIndex:F = 1303.7972f

.field public static final radiansToDegrees:F = 57.295776f

.field public static random:Ljava/util/Random;

.field public static final sin:[F


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const v8, 0x41b60b61

    const v7, 0x3c8efa35

    const/16 v6, 0x2000

    const/4 v1, 0x0

    new-array v0, v6, [F

    sput-object v0, Lcom/badlogic/gdx/math/MathUtils;->sin:[F

    new-array v0, v6, [F

    sput-object v0, Lcom/badlogic/gdx/math/MathUtils;->cos:[F

    move v0, v1

    :goto_0
    if-lt v0, v6, :cond_0

    move v0, v1

    :goto_1
    const/16 v2, 0x168

    if-lt v0, v2, :cond_1

    const-wide/high16 v2, 0x40d0

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-int v0, v2

    sput v0, Lcom/badlogic/gdx/math/MathUtils;->ATAN2_DIM:I

    const/high16 v0, 0x3f80

    sget v2, Lcom/badlogic/gdx/math/MathUtils;->ATAN2_DIM:I

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    div-float/2addr v0, v2

    sput v0, Lcom/badlogic/gdx/math/MathUtils;->INV_ATAN2_DIM_MINUS_1:F

    const/16 v0, 0x4000

    new-array v0, v0, [F

    sput-object v0, Lcom/badlogic/gdx/math/MathUtils;->atan2:[F

    move v0, v1

    :goto_2
    sget v2, Lcom/badlogic/gdx/math/MathUtils;->ATAN2_DIM:I

    if-lt v0, v2, :cond_2

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/MathUtils;->random:Ljava/util/Random;

    const-wide v0, 0x40d0004000000000L

    invoke-static {v0, v1}, Lcom/badlogic/gdx/utils/NumberUtils;->doubleToLongBits(D)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/badlogic/gdx/utils/NumberUtils;->longBitsToDouble(J)D

    move-result-wide v0

    sput-wide v0, Lcom/badlogic/gdx/math/MathUtils;->BIG_ENOUGH_CEIL:D

    return-void

    :cond_0
    int-to-float v2, v0

    const/high16 v3, 0x3f00

    add-float/2addr v2, v3

    const/high16 v3, 0x4600

    div-float/2addr v2, v3

    const v3, 0x40c90fdb

    mul-float/2addr v2, v3

    sget-object v3, Lcom/badlogic/gdx/math/MathUtils;->sin:[F

    float-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v4, v4

    aput v4, v3, v0

    sget-object v3, Lcom/badlogic/gdx/math/MathUtils;->cos:[F

    float-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v2, v4

    aput v2, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/badlogic/gdx/math/MathUtils;->sin:[F

    int-to-float v3, v0

    mul-float/2addr v3, v8

    float-to-int v3, v3

    and-int/lit16 v3, v3, 0x1fff

    int-to-float v4, v0

    mul-float/2addr v4, v7

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v4, v4

    aput v4, v2, v3

    sget-object v2, Lcom/badlogic/gdx/math/MathUtils;->cos:[F

    int-to-float v3, v0

    mul-float/2addr v3, v8

    float-to-int v3, v3

    and-int/lit16 v3, v3, 0x1fff

    int-to-float v4, v0

    mul-float/2addr v4, v7

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v4, v4

    aput v4, v2, v3

    add-int/lit8 v0, v0, 0x5a

    goto/16 :goto_1

    :cond_2
    move v2, v1

    :goto_3
    sget v3, Lcom/badlogic/gdx/math/MathUtils;->ATAN2_DIM:I

    if-lt v2, v3, :cond_3

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    int-to-float v3, v0

    sget v4, Lcom/badlogic/gdx/math/MathUtils;->ATAN2_DIM:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    int-to-float v4, v2

    sget v5, Lcom/badlogic/gdx/math/MathUtils;->ATAN2_DIM:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    sget-object v5, Lcom/badlogic/gdx/math/MathUtils;->atan2:[F

    sget v6, Lcom/badlogic/gdx/math/MathUtils;->ATAN2_DIM:I

    mul-int/2addr v6, v2

    add-int/2addr v6, v0

    float-to-double v7, v4

    float-to-double v3, v3

    invoke-static {v7, v8, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v3

    double-to-float v3, v3

    aput v3, v5, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_3
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final atan2(FF)F
    .locals 7

    const/high16 v0, -0x4080

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    cmpg-float v3, p1, v2

    if-gez v3, :cond_1

    cmpg-float v2, p0, v2

    if-gez v2, :cond_0

    neg-float p0, p0

    move v0, v1

    :cond_0
    neg-float v3, p1

    const v2, -0x3fb6f025

    move v4, v0

    move v5, v2

    move v2, p0

    :goto_0
    cmpg-float v0, v3, v2

    if-gez v0, :cond_3

    move v0, v2

    :goto_1
    sget v6, Lcom/badlogic/gdx/math/MathUtils;->INV_ATAN2_DIM_MINUS_1:F

    mul-float/2addr v0, v6

    div-float v0, v1, v0

    mul-float v1, v3, v0

    float-to-int v1, v1

    mul-float/2addr v0, v2

    float-to-int v0, v0

    sget-object v2, Lcom/badlogic/gdx/math/MathUtils;->atan2:[F

    sget v3, Lcom/badlogic/gdx/math/MathUtils;->ATAN2_DIM:I

    mul-int/2addr v0, v3

    add-int/2addr v0, v1

    aget v0, v2, v0

    add-float/2addr v0, v5

    mul-float/2addr v0, v4

    return v0

    :cond_1
    cmpg-float v3, p0, v2

    if-gez v3, :cond_2

    neg-float p0, p0

    :goto_2
    move v4, v0

    move v5, v2

    move v3, p1

    move v2, p0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_2

    :cond_3
    move v0, v3

    goto :goto_1
.end method

.method public static ceil(F)I
    .locals 4

    float-to-double v0, p0

    sget-wide v2, Lcom/badlogic/gdx/math/MathUtils;->BIG_ENOUGH_CEIL:D

    add-double/2addr v0, v2

    double-to-int v0, v0

    add-int/lit16 v0, v0, -0x4000

    return v0
.end method

.method public static ceilPositive(F)I
    .locals 4

    float-to-double v0, p0

    const-wide v2, 0x3fefffffca501acbL

    add-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method public static clamp(FFF)F
    .locals 1

    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    :goto_0
    return p1

    :cond_0
    cmpl-float v0, p0, p2

    if-lez v0, :cond_1

    move p1, p2

    goto :goto_0

    :cond_1
    move p1, p0

    goto :goto_0
.end method

.method public static clamp(III)I
    .locals 0

    if-ge p0, p1, :cond_0

    :goto_0
    return p1

    :cond_0
    if-le p0, p2, :cond_1

    move p1, p2

    goto :goto_0

    :cond_1
    move p1, p0

    goto :goto_0
.end method

.method public static clamp(SSS)S
    .locals 0

    if-ge p0, p1, :cond_0

    :goto_0
    return p1

    :cond_0
    if-le p0, p2, :cond_1

    move p1, p2

    goto :goto_0

    :cond_1
    move p1, p0

    goto :goto_0
.end method

.method public static final cos(F)F
    .locals 2

    sget-object v0, Lcom/badlogic/gdx/math/MathUtils;->cos:[F

    const v1, 0x44a2f983

    mul-float/2addr v1, p0

    float-to-int v1, v1

    and-int/lit16 v1, v1, 0x1fff

    aget v0, v0, v1

    return v0
.end method

.method public static final cosDeg(F)F
    .locals 2

    sget-object v0, Lcom/badlogic/gdx/math/MathUtils;->cos:[F

    const v1, 0x41b60b61

    mul-float/2addr v1, p0

    float-to-int v1, v1

    and-int/lit16 v1, v1, 0x1fff

    aget v0, v0, v1

    return v0
.end method

.method public static floor(F)I
    .locals 4

    float-to-double v0, p0

    const-wide/high16 v2, 0x40d0

    add-double/2addr v0, v2

    double-to-int v0, v0

    add-int/lit16 v0, v0, -0x4000

    return v0
.end method

.method public static floorPositive(F)I
    .locals 1

    float-to-int v0, p0

    return v0
.end method

.method public static isPowerOfTwo(I)Z
    .locals 1

    if-eqz p0, :cond_0

    add-int/lit8 v0, p0, -0x1

    and-int/2addr v0, p0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static nextPowerOfTwo(I)I
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, p0, -0x1

    shr-int/lit8 v1, v0, 0x1

    or-int/2addr v0, v1

    shr-int/lit8 v1, v0, 0x2

    or-int/2addr v0, v1

    shr-int/lit8 v1, v0, 0x4

    or-int/2addr v0, v1

    shr-int/lit8 v1, v0, 0x8

    or-int/2addr v0, v1

    shr-int/lit8 v1, v0, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static final random()F
    .locals 1

    sget-object v0, Lcom/badlogic/gdx/math/MathUtils;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    return v0
.end method

.method public static final random(F)F
    .locals 1

    sget-object v0, Lcom/badlogic/gdx/math/MathUtils;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    mul-float/2addr v0, p0

    return v0
.end method

.method public static final random(FF)F
    .locals 2

    sget-object v0, Lcom/badlogic/gdx/math/MathUtils;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    sub-float v1, p1, p0

    mul-float/2addr v0, v1

    add-float/2addr v0, p0

    return v0
.end method

.method public static final random(I)I
    .locals 2

    sget-object v0, Lcom/badlogic/gdx/math/MathUtils;->random:Ljava/util/Random;

    add-int/lit8 v1, p0, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    return v0
.end method

.method public static final random(II)I
    .locals 2

    sget-object v0, Lcom/badlogic/gdx/math/MathUtils;->random:Ljava/util/Random;

    sub-int v1, p1, p0

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static final randomBoolean()Z
    .locals 1

    sget-object v0, Lcom/badlogic/gdx/math/MathUtils;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextBoolean()Z

    move-result v0

    return v0
.end method

.method public static round(F)I
    .locals 4

    float-to-double v0, p0

    const-wide v2, 0x40d0002000000000L

    add-double/2addr v0, v2

    double-to-int v0, v0

    add-int/lit16 v0, v0, -0x4000

    return v0
.end method

.method public static roundPositive(F)I
    .locals 1

    const/high16 v0, 0x3f00

    add-float/2addr v0, p0

    float-to-int v0, v0

    return v0
.end method

.method public static final sin(F)F
    .locals 2

    sget-object v0, Lcom/badlogic/gdx/math/MathUtils;->sin:[F

    const v1, 0x44a2f983

    mul-float/2addr v1, p0

    float-to-int v1, v1

    and-int/lit16 v1, v1, 0x1fff

    aget v0, v0, v1

    return v0
.end method

.method public static final sinDeg(F)F
    .locals 2

    sget-object v0, Lcom/badlogic/gdx/math/MathUtils;->sin:[F

    const v1, 0x41b60b61

    mul-float/2addr v1, p0

    float-to-int v1, v1

    and-int/lit16 v1, v1, 0x1fff

    aget v0, v0, v1

    return v0
.end method
