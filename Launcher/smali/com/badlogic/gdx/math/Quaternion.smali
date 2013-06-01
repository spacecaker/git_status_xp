.class public Lcom/badlogic/gdx/math/Quaternion;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final NORMALIZATION_TOLERANCE:F = 1.0E-5f

.field private static final serialVersionUID:J = -0x6a54731e78ad5e10L

.field private static tmp1:Lcom/badlogic/gdx/math/Quaternion;

.field private static tmp2:Lcom/badlogic/gdx/math/Quaternion;


# instance fields
.field public w:F

.field public x:F

.field public y:F

.field public z:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Lcom/badlogic/gdx/math/Quaternion;

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/badlogic/gdx/math/Quaternion;-><init>(FFFF)V

    sput-object v0, Lcom/badlogic/gdx/math/Quaternion;->tmp1:Lcom/badlogic/gdx/math/Quaternion;

    new-instance v0, Lcom/badlogic/gdx/math/Quaternion;

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/badlogic/gdx/math/Quaternion;-><init>(FFFF)V

    sput-object v0, Lcom/badlogic/gdx/math/Quaternion;->tmp2:Lcom/badlogic/gdx/math/Quaternion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Quaternion;->idt()Lcom/badlogic/gdx/math/Quaternion;

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/math/Quaternion;->set(FFFF)Lcom/badlogic/gdx/math/Quaternion;

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/math/Quaternion;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Quaternion;->set(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Quaternion;

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/math/Vector3;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/math/Quaternion;->set(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Quaternion;

    return-void
.end method


# virtual methods
.method public conjugate()Lcom/badlogic/gdx/math/Quaternion;
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    neg-float v0, v0

    iput v0, p0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    iget v0, p0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    neg-float v0, v0

    iput v0, p0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    iget v0, p0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    neg-float v0, v0

    iput v0, p0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    return-object p0
.end method

.method public cpy()Lcom/badlogic/gdx/math/Quaternion;
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/math/Quaternion;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/math/Quaternion;-><init>(Lcom/badlogic/gdx/math/Quaternion;)V

    return-object v0
.end method

.method public dot(Lcom/badlogic/gdx/math/Quaternion;)F
    .locals 3

    iget v0, p0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Quaternion;->x:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    iget v2, p1, Lcom/badlogic/gdx/math/Quaternion;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    iget v2, p1, Lcom/badlogic/gdx/math/Quaternion;->z:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    iget v2, p1, Lcom/badlogic/gdx/math/Quaternion;->w:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/badlogic/gdx/math/Quaternion;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/badlogic/gdx/math/Quaternion;

    iget v2, p0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    iget v3, p1, Lcom/badlogic/gdx/math/Quaternion;->x:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3

    iget v2, p0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    iget v3, p1, Lcom/badlogic/gdx/math/Quaternion;->y:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3

    iget v2, p0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    iget v3, p1, Lcom/badlogic/gdx/math/Quaternion;->z:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3

    iget v2, p0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    iget v3, p1, Lcom/badlogic/gdx/math/Quaternion;->w:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public idt()Lcom/badlogic/gdx/math/Quaternion;
    .locals 2

    const/4 v1, 0x0

    const/high16 v0, 0x3f80

    invoke-virtual {p0, v1, v1, v1, v0}, Lcom/badlogic/gdx/math/Quaternion;->set(FFFF)Lcom/badlogic/gdx/math/Quaternion;

    return-object p0
.end method

.method public len()F
    .locals 3

    iget v0, p0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    iget v1, p0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    iget v2, p0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    iget v2, p0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    iget v2, p0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public len2()F
    .locals 3

    iget v0, p0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    iget v1, p0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    iget v2, p0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    iget v2, p0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    iget v2, p0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public mul(F)Lcom/badlogic/gdx/math/Quaternion;
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    iget v0, p0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    iget v0, p0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    iget v0, p0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    return-object p0
.end method

.method public mul(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Quaternion;
    .locals 6

    iget v0, p0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    iget v1, p1, Lcom/badlogic/gdx/math/Quaternion;->x:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    iget v2, p1, Lcom/badlogic/gdx/math/Quaternion;->w:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    iget v2, p1, Lcom/badlogic/gdx/math/Quaternion;->z:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    iget v2, p1, Lcom/badlogic/gdx/math/Quaternion;->y:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    iget v2, p1, Lcom/badlogic/gdx/math/Quaternion;->y:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    iget v3, p1, Lcom/badlogic/gdx/math/Quaternion;->w:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    iget v3, p1, Lcom/badlogic/gdx/math/Quaternion;->x:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    iget v3, p1, Lcom/badlogic/gdx/math/Quaternion;->z:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    iget v3, p1, Lcom/badlogic/gdx/math/Quaternion;->z:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    iget v4, p1, Lcom/badlogic/gdx/math/Quaternion;->w:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, p0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    iget v4, p1, Lcom/badlogic/gdx/math/Quaternion;->y:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, p0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    iget v4, p1, Lcom/badlogic/gdx/math/Quaternion;->x:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    iget v4, p1, Lcom/badlogic/gdx/math/Quaternion;->w:F

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    iget v5, p1, Lcom/badlogic/gdx/math/Quaternion;->x:F

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    iget v5, p1, Lcom/badlogic/gdx/math/Quaternion;->y:F

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    iget v5, p1, Lcom/badlogic/gdx/math/Quaternion;->z:F

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v0, p0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    iput v1, p0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    iput v2, p0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    iput v3, p0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    return-object p0
.end method

.method public mulLeft(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Quaternion;
    .locals 6

    iget v0, p1, Lcom/badlogic/gdx/math/Quaternion;->w:F

    iget v1, p0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    mul-float/2addr v0, v1

    iget v1, p1, Lcom/badlogic/gdx/math/Quaternion;->x:F

    iget v2, p0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lcom/badlogic/gdx/math/Quaternion;->y:F

    iget v2, p0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lcom/badlogic/gdx/math/Quaternion;->z:F

    iget v2, p0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget v1, p1, Lcom/badlogic/gdx/math/Quaternion;->w:F

    iget v2, p0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    mul-float/2addr v1, v2

    iget v2, p1, Lcom/badlogic/gdx/math/Quaternion;->y:F

    iget v3, p0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lcom/badlogic/gdx/math/Quaternion;->z:F

    iget v3, p0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lcom/badlogic/gdx/math/Quaternion;->x:F

    iget v3, p0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget v2, p1, Lcom/badlogic/gdx/math/Quaternion;->w:F

    iget v3, p0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    mul-float/2addr v2, v3

    iget v3, p1, Lcom/badlogic/gdx/math/Quaternion;->z:F

    iget v4, p0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, p1, Lcom/badlogic/gdx/math/Quaternion;->x:F

    iget v4, p0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, p1, Lcom/badlogic/gdx/math/Quaternion;->y:F

    iget v4, p0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget v3, p1, Lcom/badlogic/gdx/math/Quaternion;->w:F

    iget v4, p0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    mul-float/2addr v3, v4

    iget v4, p1, Lcom/badlogic/gdx/math/Quaternion;->x:F

    iget v5, p0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    iget v4, p1, Lcom/badlogic/gdx/math/Quaternion;->y:F

    iget v5, p0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    iget v4, p1, Lcom/badlogic/gdx/math/Quaternion;->z:F

    iget v5, p0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v0, p0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    iput v1, p0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    iput v2, p0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    iput v3, p0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    return-object p0
.end method

.method public nor()Lcom/badlogic/gdx/math/Quaternion;
    .locals 3

    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Quaternion;->len2()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    const/high16 v1, 0x3f80

    sub-float v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x3727c5ac

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    iget v1, p0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    div-float/2addr v1, v0

    iput v1, p0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    iget v1, p0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    div-float/2addr v1, v0

    iput v1, p0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    iget v1, p0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    div-float/2addr v1, v0

    iput v1, p0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    iget v1, p0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    div-float v0, v1, v0

    iput v0, p0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    :cond_0
    return-object p0
.end method

.method public set(FFFF)Lcom/badlogic/gdx/math/Quaternion;
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    iput p2, p0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    iput p3, p0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    iput p4, p0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    return-object p0
.end method

.method public set(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Quaternion;
    .locals 4

    iget v0, p1, Lcom/badlogic/gdx/math/Quaternion;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Quaternion;->y:F

    iget v2, p1, Lcom/badlogic/gdx/math/Quaternion;->z:F

    iget v3, p1, Lcom/badlogic/gdx/math/Quaternion;->w:F

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/badlogic/gdx/math/Quaternion;->set(FFFF)Lcom/badlogic/gdx/math/Quaternion;

    move-result-object v0

    return-object v0
.end method

.method public set(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Quaternion;
    .locals 5

    const/high16 v3, 0x4000

    float-to-double v0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    double-to-float v0, v0

    div-float v1, v0, v3

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    double-to-float v1, v1

    div-float/2addr v0, v3

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v0, v2

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float/2addr v2, v1

    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    mul-float/2addr v3, v1

    iget v4, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float/2addr v1, v4

    invoke-virtual {p0, v2, v3, v1, v0}, Lcom/badlogic/gdx/math/Quaternion;->set(FFFF)Lcom/badlogic/gdx/math/Quaternion;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Quaternion;->nor()Lcom/badlogic/gdx/math/Quaternion;

    move-result-object v0

    return-object v0
.end method

.method public setEulerAngles(FFF)Lcom/badlogic/gdx/math/Quaternion;
    .locals 8

    const/high16 v7, 0x3f00

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    double-to-float v0, v0

    float-to-double v1, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v1

    double-to-float v1, v1

    float-to-double v2, p3

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v2, v7

    float-to-double v3, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float v3, v3

    float-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v2, v4

    mul-float/2addr v1, v7

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v4, v4

    float-to-double v5, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    double-to-float v1, v5

    mul-float/2addr v0, v7

    float-to-double v5, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    double-to-float v5, v5

    float-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    double-to-float v0, v6

    mul-float v6, v0, v4

    mul-float/2addr v6, v2

    mul-float v7, v5, v1

    mul-float/2addr v7, v3

    add-float/2addr v6, v7

    iput v6, p0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    mul-float v6, v5, v1

    mul-float/2addr v6, v2

    mul-float v7, v0, v4

    mul-float/2addr v7, v3

    sub-float/2addr v6, v7

    iput v6, p0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    mul-float v6, v0, v1

    mul-float/2addr v6, v3

    mul-float v7, v5, v4

    mul-float/2addr v7, v2

    sub-float/2addr v6, v7

    iput v6, p0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    mul-float/2addr v0, v1

    mul-float/2addr v0, v2

    mul-float v1, v5, v4

    mul-float/2addr v1, v3

    add-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    return-object p0
.end method

.method public setFromAxes(FFFFFFFFF)Lcom/badlogic/gdx/math/Quaternion;
    .locals 11

    add-float v1, p1, p5

    add-float v1, v1, p9

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_0

    const/high16 v2, 0x3f80

    add-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    const-wide/high16 v1, 0x3fe0

    mul-double/2addr v1, v3

    const-wide/high16 v5, 0x3fe0

    div-double v3, v5, v3

    sub-float v5, p6, p8

    float-to-double v5, v5

    mul-double v7, v5, v3

    sub-float v5, p7, p3

    float-to-double v5, v5

    mul-double/2addr v5, v3

    sub-float v9, p2, p4

    float-to-double v9, v9

    mul-double/2addr v3, v9

    :goto_0
    double-to-float v7, v7

    double-to-float v5, v5

    double-to-float v3, v3

    double-to-float v1, v1

    invoke-virtual {p0, v7, v5, v3, v1}, Lcom/badlogic/gdx/math/Quaternion;->set(FFFF)Lcom/badlogic/gdx/math/Quaternion;

    move-result-object v1

    return-object v1

    :cond_0
    cmpl-float v1, p1, p5

    if-lez v1, :cond_1

    cmpl-float v1, p1, p9

    if-lez v1, :cond_1

    const-wide/high16 v1, 0x3ff0

    float-to-double v3, p1

    add-double/2addr v1, v3

    move/from16 v0, p5

    float-to-double v3, v0

    sub-double/2addr v1, v3

    move/from16 v0, p9

    float-to-double v3, v0

    sub-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    const-wide/high16 v3, 0x3fe0

    mul-double v7, v1, v3

    const-wide/high16 v3, 0x3fe0

    div-double v1, v3, v1

    add-float v3, p2, p4

    float-to-double v3, v3

    mul-double v5, v3, v1

    add-float v3, p7, p3

    float-to-double v3, v3

    mul-double/2addr v3, v1

    sub-float v9, p6, p8

    float-to-double v9, v9

    mul-double/2addr v1, v9

    goto :goto_0

    :cond_1
    cmpl-float v1, p5, p9

    if-lez v1, :cond_2

    const-wide/high16 v1, 0x3ff0

    move/from16 v0, p5

    float-to-double v3, v0

    add-double/2addr v1, v3

    float-to-double v3, p1

    sub-double/2addr v1, v3

    move/from16 v0, p9

    float-to-double v3, v0

    sub-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    const-wide/high16 v3, 0x3fe0

    mul-double v5, v1, v3

    const-wide/high16 v3, 0x3fe0

    div-double v1, v3, v1

    add-float v3, p2, p4

    float-to-double v3, v3

    mul-double v7, v3, v1

    add-float v3, p6, p8

    float-to-double v3, v3

    mul-double/2addr v3, v1

    sub-float v9, p7, p3

    float-to-double v9, v9

    mul-double/2addr v1, v9

    goto :goto_0

    :cond_2
    const-wide/high16 v1, 0x3ff0

    move/from16 v0, p9

    float-to-double v3, v0

    add-double/2addr v1, v3

    float-to-double v3, p1

    sub-double/2addr v1, v3

    move/from16 v0, p5

    float-to-double v3, v0

    sub-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    const-wide/high16 v3, 0x3fe0

    mul-double/2addr v3, v1

    const-wide/high16 v5, 0x3fe0

    div-double v1, v5, v1

    add-float v5, p7, p3

    float-to-double v5, v5

    mul-double v7, v5, v1

    add-float v5, p6, p8

    float-to-double v5, v5

    mul-double/2addr v5, v1

    sub-float v9, p2, p4

    float-to-double v9, v9

    mul-double/2addr v1, v9

    goto/16 :goto_0
.end method

.method public setFromAxis(FFFF)Lcom/badlogic/gdx/math/Quaternion;
    .locals 4

    const/high16 v2, 0x4000

    const v0, 0x3c8efa35

    mul-float/2addr v0, p4

    div-float v1, v0, v2

    invoke-static {v1}, Lcom/badlogic/gdx/math/MathUtils;->sin(F)F

    move-result v1

    div-float/2addr v0, v2

    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->cos(F)F

    move-result v0

    mul-float v2, p1, v1

    mul-float v3, p2, v1

    mul-float/2addr v1, p3

    invoke-virtual {p0, v2, v3, v1, v0}, Lcom/badlogic/gdx/math/Quaternion;->set(FFFF)Lcom/badlogic/gdx/math/Quaternion;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Quaternion;->nor()Lcom/badlogic/gdx/math/Quaternion;

    move-result-object v0

    return-object v0
.end method

.method public setFromAxis(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Quaternion;
    .locals 3

    iget v0, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    invoke-virtual {p0, v0, v1, v2, p2}, Lcom/badlogic/gdx/math/Quaternion;->setFromAxis(FFFF)Lcom/badlogic/gdx/math/Quaternion;

    move-result-object v0

    return-object v0
.end method

.method public setFromMatrix(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Quaternion;
    .locals 10

    iget-object v0, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x0

    aget v1, v0, v1

    iget-object v0, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v2, 0x4

    aget v2, v0, v2

    iget-object v0, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0x8

    aget v3, v0, v3

    iget-object v0, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v4, 0x1

    aget v4, v0, v4

    iget-object v0, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v5, 0x5

    aget v5, v0, v5

    iget-object v0, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v6, 0x9

    aget v6, v0, v6

    iget-object v0, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v7, 0x2

    aget v7, v0, v7

    iget-object v0, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v8, 0x6

    aget v8, v0, v8

    iget-object v0, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v9, 0xa

    aget v9, v0, v9

    move-object v0, p0

    invoke-virtual/range {v0 .. v9}, Lcom/badlogic/gdx/math/Quaternion;->setFromAxes(FFFFFFFFF)Lcom/badlogic/gdx/math/Quaternion;

    move-result-object v0

    return-object v0
.end method

.method public slerp(Lcom/badlogic/gdx/math/Quaternion;F)Lcom/badlogic/gdx/math/Quaternion;
    .locals 8

    const/high16 v7, 0x3f80

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Quaternion;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Quaternion;->dot(Lcom/badlogic/gdx/math/Quaternion;)F

    move-result v0

    float-to-double v1, v0

    const-wide/16 v3, 0x0

    cmpg-double v1, v1, v3

    if-gez v1, :cond_2

    const/high16 v1, -0x4080

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/math/Quaternion;->mul(F)Lcom/badlogic/gdx/math/Quaternion;

    neg-float v0, v0

    move v1, v0

    :goto_1
    sub-float v0, v7, p2

    sub-float v2, v7, v1

    float-to-double v2, v2

    const-wide v4, 0x3fb999999999999aL

    cmpl-double v2, v2, v4

    if-lez v2, :cond_1

    float-to-double v0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->acos(D)D

    move-result-wide v1

    const-wide/high16 v3, 0x3ff0

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    div-double/2addr v3, v5

    sub-float v0, v7, p2

    float-to-double v5, v0

    mul-double/2addr v5, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    mul-double/2addr v5, v3

    double-to-float v0, v5

    float-to-double v5, p2

    mul-double/2addr v1, v5

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    mul-double/2addr v1, v3

    double-to-float p2, v1

    :cond_1
    iget v1, p0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    mul-float/2addr v1, v0

    iget v2, p1, Lcom/badlogic/gdx/math/Quaternion;->x:F

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    iget v2, p0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    mul-float/2addr v2, v0

    iget v3, p1, Lcom/badlogic/gdx/math/Quaternion;->y:F

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    iget v3, p0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    mul-float/2addr v3, v0

    iget v4, p1, Lcom/badlogic/gdx/math/Quaternion;->z:F

    mul-float/2addr v4, p2

    add-float/2addr v3, v4

    iget v4, p0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    mul-float/2addr v0, v4

    iget v4, p1, Lcom/badlogic/gdx/math/Quaternion;->w:F

    mul-float/2addr v4, p2

    add-float/2addr v0, v4

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/badlogic/gdx/math/Quaternion;->set(FFFF)Lcom/badlogic/gdx/math/Quaternion;

    goto :goto_0

    :cond_2
    move v1, v0

    goto :goto_1
.end method

.method public toMatrix([F)V
    .locals 14

    const/high16 v13, 0x3f80

    const/4 v12, 0x0

    const/high16 v11, 0x4000

    iget v0, p0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    iget v1, p0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    iget v2, p0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    iget v3, p0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    iget v4, p0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    iget v5, p0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    iget v6, p0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    mul-float/2addr v5, v6

    iget v6, p0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    iget v7, p0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    mul-float/2addr v6, v7

    iget v7, p0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    iget v8, p0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    mul-float/2addr v7, v8

    iget v8, p0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    iget v9, p0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    mul-float/2addr v8, v9

    const/4 v9, 0x0

    add-float v10, v4, v7

    mul-float/2addr v10, v11

    sub-float v10, v13, v10

    aput v10, p1, v9

    const/4 v9, 0x4

    sub-float v10, v1, v8

    mul-float/2addr v10, v11

    aput v10, p1, v9

    const/16 v9, 0x8

    add-float v10, v2, v6

    mul-float/2addr v10, v11

    aput v10, p1, v9

    const/16 v9, 0xc

    aput v12, p1, v9

    const/4 v9, 0x1

    add-float/2addr v1, v8

    mul-float/2addr v1, v11

    aput v1, p1, v9

    const/4 v1, 0x5

    add-float/2addr v7, v0

    mul-float/2addr v7, v11

    sub-float v7, v13, v7

    aput v7, p1, v1

    const/16 v1, 0x9

    sub-float v7, v5, v3

    mul-float/2addr v7, v11

    aput v7, p1, v1

    const/16 v1, 0xd

    aput v12, p1, v1

    const/4 v1, 0x2

    sub-float/2addr v2, v6

    mul-float/2addr v2, v11

    aput v2, p1, v1

    const/4 v1, 0x6

    add-float v2, v5, v3

    mul-float/2addr v2, v11

    aput v2, p1, v1

    const/16 v1, 0xa

    add-float/2addr v0, v4

    mul-float/2addr v0, v11

    sub-float v0, v13, v0

    aput v0, p1, v1

    const/16 v0, 0xe

    aput v12, p1, v0

    const/4 v0, 0x3

    aput v12, p1, v0

    const/4 v0, 0x7

    aput v12, p1, v0

    const/16 v0, 0xb

    aput v12, p1, v0

    const/16 v0, 0xf

    aput v13, p1, v0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transform(Lcom/badlogic/gdx/math/Vector3;)V
    .locals 6

    sget-object v0, Lcom/badlogic/gdx/math/Quaternion;->tmp2:Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/math/Quaternion;->set(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Quaternion;

    sget-object v0, Lcom/badlogic/gdx/math/Quaternion;->tmp2:Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Quaternion;->conjugate()Lcom/badlogic/gdx/math/Quaternion;

    sget-object v0, Lcom/badlogic/gdx/math/Quaternion;->tmp2:Lcom/badlogic/gdx/math/Quaternion;

    sget-object v1, Lcom/badlogic/gdx/math/Quaternion;->tmp1:Lcom/badlogic/gdx/math/Quaternion;

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v4, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/badlogic/gdx/math/Quaternion;->set(FFFF)Lcom/badlogic/gdx/math/Quaternion;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Quaternion;->mulLeft(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Quaternion;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/math/Quaternion;->mulLeft(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Quaternion;

    sget-object v0, Lcom/badlogic/gdx/math/Quaternion;->tmp2:Lcom/badlogic/gdx/math/Quaternion;

    iget v0, v0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    iput v0, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    sget-object v0, Lcom/badlogic/gdx/math/Quaternion;->tmp2:Lcom/badlogic/gdx/math/Quaternion;

    iget v0, v0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    iput v0, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    sget-object v0, Lcom/badlogic/gdx/math/Quaternion;->tmp2:Lcom/badlogic/gdx/math/Quaternion;

    iget v0, v0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    iput v0, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    return-void
.end method
