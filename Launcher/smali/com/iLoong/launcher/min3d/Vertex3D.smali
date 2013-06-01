.class public Lcom/iLoong/launcher/min3d/Vertex3D;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/badlogic/gdx/math/Vector3;

.field private static b:Lcom/badlogic/gdx/math/Vector3;


# instance fields
.field public color:F

.field public u:F

.field public v:F

.field public x:F

.field public y:F

.field public z:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/iLoong/launcher/min3d/Vertex3D;->a:Lcom/badlogic/gdx/math/Vector3;

    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/iLoong/launcher/min3d/Vertex3D;->b:Lcom/badlogic/gdx/math/Vector3;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setOrigin(Lcom/badlogic/gdx/math/Vector3;)V
    .locals 0

    sput-object p0, Lcom/iLoong/launcher/min3d/Vertex3D;->a:Lcom/badlogic/gdx/math/Vector3;

    return-void
.end method


# virtual methods
.method public rotateX(F)V
    .locals 7

    const v2, 0x3c8efa35

    mul-float v0, p1, v2

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    mul-float v1, p1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    double-to-float v1, v1

    sget-object v2, Lcom/iLoong/launcher/min3d/Vertex3D;->b:Lcom/badlogic/gdx/math/Vector3;

    iget v3, p0, Lcom/iLoong/launcher/min3d/Vertex3D;->x:F

    sget-object v4, Lcom/iLoong/launcher/min3d/Vertex3D;->a:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->x:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/iLoong/launcher/min3d/Vertex3D;->y:F

    sget-object v5, Lcom/iLoong/launcher/min3d/Vertex3D;->a:Lcom/badlogic/gdx/math/Vector3;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector3;->y:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/iLoong/launcher/min3d/Vertex3D;->z:F

    sget-object v6, Lcom/iLoong/launcher/min3d/Vertex3D;->a:Lcom/badlogic/gdx/math/Vector3;

    iget v6, v6, Lcom/badlogic/gdx/math/Vector3;->z:F

    sub-float/2addr v5, v6

    invoke-virtual {v2, v3, v4, v5}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    sget-object v2, Lcom/iLoong/launcher/min3d/Vertex3D;->b:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->y:F

    mul-float/2addr v2, v0

    sget-object v3, Lcom/iLoong/launcher/min3d/Vertex3D;->b:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float/2addr v3, v1

    sub-float/2addr v2, v3

    sget-object v3, Lcom/iLoong/launcher/min3d/Vertex3D;->a:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->y:F

    add-float/2addr v2, v3

    iput v2, p0, Lcom/iLoong/launcher/min3d/Vertex3D;->y:F

    sget-object v2, Lcom/iLoong/launcher/min3d/Vertex3D;->b:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->y:F

    mul-float/2addr v1, v2

    sget-object v2, Lcom/iLoong/launcher/min3d/Vertex3D;->b:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    sget-object v1, Lcom/iLoong/launcher/min3d/Vertex3D;->a:Lcom/badlogic/gdx/math/Vector3;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector3;->z:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/iLoong/launcher/min3d/Vertex3D;->z:F

    return-void
.end method

.method public rotateY(F)V
    .locals 7

    const v2, 0x3c8efa35

    mul-float v0, p1, v2

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    mul-float v1, p1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    double-to-float v1, v1

    sget-object v2, Lcom/iLoong/launcher/min3d/Vertex3D;->b:Lcom/badlogic/gdx/math/Vector3;

    iget v3, p0, Lcom/iLoong/launcher/min3d/Vertex3D;->x:F

    sget-object v4, Lcom/iLoong/launcher/min3d/Vertex3D;->a:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->x:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/iLoong/launcher/min3d/Vertex3D;->y:F

    sget-object v5, Lcom/iLoong/launcher/min3d/Vertex3D;->a:Lcom/badlogic/gdx/math/Vector3;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector3;->y:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/iLoong/launcher/min3d/Vertex3D;->z:F

    sget-object v6, Lcom/iLoong/launcher/min3d/Vertex3D;->a:Lcom/badlogic/gdx/math/Vector3;

    iget v6, v6, Lcom/badlogic/gdx/math/Vector3;->z:F

    sub-float/2addr v5, v6

    invoke-virtual {v2, v3, v4, v5}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    sget-object v2, Lcom/iLoong/launcher/min3d/Vertex3D;->b:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float/2addr v2, v0

    sget-object v3, Lcom/iLoong/launcher/min3d/Vertex3D;->b:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    sget-object v3, Lcom/iLoong/launcher/min3d/Vertex3D;->a:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->x:F

    add-float/2addr v2, v3

    iput v2, p0, Lcom/iLoong/launcher/min3d/Vertex3D;->x:F

    sget-object v2, Lcom/iLoong/launcher/min3d/Vertex3D;->b:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->x:F

    neg-float v1, v1

    mul-float/2addr v1, v2

    sget-object v2, Lcom/iLoong/launcher/min3d/Vertex3D;->b:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    sget-object v1, Lcom/iLoong/launcher/min3d/Vertex3D;->a:Lcom/badlogic/gdx/math/Vector3;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector3;->z:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/iLoong/launcher/min3d/Vertex3D;->z:F

    return-void
.end method

.method public rotateZ(F)V
    .locals 7

    const v2, 0x3c8efa35

    mul-float v0, p1, v2

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    mul-float v1, p1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    double-to-float v1, v1

    sget-object v2, Lcom/iLoong/launcher/min3d/Vertex3D;->b:Lcom/badlogic/gdx/math/Vector3;

    iget v3, p0, Lcom/iLoong/launcher/min3d/Vertex3D;->x:F

    sget-object v4, Lcom/iLoong/launcher/min3d/Vertex3D;->a:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->x:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/iLoong/launcher/min3d/Vertex3D;->y:F

    sget-object v5, Lcom/iLoong/launcher/min3d/Vertex3D;->a:Lcom/badlogic/gdx/math/Vector3;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector3;->y:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/iLoong/launcher/min3d/Vertex3D;->z:F

    sget-object v6, Lcom/iLoong/launcher/min3d/Vertex3D;->a:Lcom/badlogic/gdx/math/Vector3;

    iget v6, v6, Lcom/badlogic/gdx/math/Vector3;->z:F

    sub-float/2addr v5, v6

    invoke-virtual {v2, v3, v4, v5}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    sget-object v2, Lcom/iLoong/launcher/min3d/Vertex3D;->b:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float/2addr v2, v0

    sget-object v3, Lcom/iLoong/launcher/min3d/Vertex3D;->b:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->y:F

    mul-float/2addr v3, v1

    sub-float/2addr v2, v3

    sget-object v3, Lcom/iLoong/launcher/min3d/Vertex3D;->a:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->x:F

    add-float/2addr v2, v3

    iput v2, p0, Lcom/iLoong/launcher/min3d/Vertex3D;->x:F

    sget-object v2, Lcom/iLoong/launcher/min3d/Vertex3D;->b:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float/2addr v1, v2

    sget-object v2, Lcom/iLoong/launcher/min3d/Vertex3D;->b:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->y:F

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    sget-object v1, Lcom/iLoong/launcher/min3d/Vertex3D;->a:Lcom/badlogic/gdx/math/Vector3;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector3;->y:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/iLoong/launcher/min3d/Vertex3D;->y:F

    return-void
.end method
