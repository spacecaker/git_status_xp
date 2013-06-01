.class public Lcom/iLoong/launcher/min3d/Faces3D;
.super Ljava/lang/Object;


# instance fields
.field private a:[S

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iLoong/launcher/min3d/Faces3D;->a:[S

    const/4 v0, 0x0

    iput v0, p0, Lcom/iLoong/launcher/min3d/Faces3D;->b:I

    iput p1, p0, Lcom/iLoong/launcher/min3d/Faces3D;->c:I

    mul-int/lit8 v0, p1, 0x3

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/iLoong/launcher/min3d/Faces3D;->a:[S

    return-void
.end method


# virtual methods
.method public addFace(III)I
    .locals 3

    int-to-short v0, p1

    int-to-short v1, p2

    int-to-short v2, p3

    invoke-virtual {p0, v0, v1, v2}, Lcom/iLoong/launcher/min3d/Faces3D;->addFace(SSS)I

    move-result v0

    return v0
.end method

.method public addFace(SSS)I
    .locals 3

    iget v0, p0, Lcom/iLoong/launcher/min3d/Faces3D;->b:I

    iget v1, p0, Lcom/iLoong/launcher/min3d/Faces3D;->c:I

    if-ne v0, v1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/iLoong/launcher/min3d/Faces3D;->b:I

    mul-int/lit8 v0, v0, 0x3

    iget-object v1, p0, Lcom/iLoong/launcher/min3d/Faces3D;->a:[S

    add-int/lit8 v2, v0, 0x1

    aput-short p1, v1, v0

    iget-object v0, p0, Lcom/iLoong/launcher/min3d/Faces3D;->a:[S

    add-int/lit8 v1, v2, 0x1

    aput-short p2, v0, v2

    iget-object v0, p0, Lcom/iLoong/launcher/min3d/Faces3D;->a:[S

    add-int/lit8 v2, v1, 0x1

    aput-short p3, v0, v1

    iget v0, p0, Lcom/iLoong/launcher/min3d/Faces3D;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/iLoong/launcher/min3d/Faces3D;->b:I

    iget v0, p0, Lcom/iLoong/launcher/min3d/Faces3D;->b:I

    goto :goto_0
.end method

.method public getIndices()[S
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/min3d/Faces3D;->a:[S

    return-object v0
.end method

.method public getSize()I
    .locals 1

    iget v0, p0, Lcom/iLoong/launcher/min3d/Faces3D;->b:I

    return v0
.end method
