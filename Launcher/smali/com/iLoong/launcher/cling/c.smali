.class public Lcom/iLoong/launcher/cling/c;
.super Landroid/opengl/Matrix;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/opengl/Matrix;-><init>()V

    return-void
.end method

.method public static a([FIFFF)V
    .locals 3

    const/4 v2, 0x0

    add-int/lit8 v0, p1, 0x0

    aget v1, p0, v0

    add-float/2addr v1, p2

    aput v1, p0, v0

    add-int/lit8 v0, p1, 0x1

    aget v1, p0, v0

    add-float/2addr v1, p3

    aput v1, p0, v0

    add-int/lit8 v0, p1, 0x2

    aget v1, p0, v0

    add-float/2addr v1, p4

    aput v1, p0, v0

    add-int/lit8 v0, p1, 0x3

    aget v1, p0, v0

    add-float/2addr v1, v2

    aput v1, p0, v0

    add-int/lit8 v0, p1, 0x4

    aget v1, p0, v0

    add-float/2addr v1, p2

    aput v1, p0, v0

    add-int/lit8 v0, p1, 0x5

    aget v1, p0, v0

    add-float/2addr v1, p3

    aput v1, p0, v0

    add-int/lit8 v0, p1, 0x6

    aget v1, p0, v0

    add-float/2addr v1, p4

    aput v1, p0, v0

    add-int/lit8 v0, p1, 0x7

    aget v1, p0, v0

    add-float/2addr v1, v2

    aput v1, p0, v0

    add-int/lit8 v0, p1, 0x8

    aget v1, p0, v0

    add-float/2addr v1, p2

    aput v1, p0, v0

    add-int/lit8 v0, p1, 0x9

    aget v1, p0, v0

    add-float/2addr v1, p3

    aput v1, p0, v0

    add-int/lit8 v0, p1, 0xa

    aget v1, p0, v0

    add-float/2addr v1, p4

    aput v1, p0, v0

    add-int/lit8 v0, p1, 0xb

    aget v1, p0, v0

    add-float/2addr v1, v2

    aput v1, p0, v0

    add-int/lit8 v0, p1, 0xc

    aget v1, p0, v0

    add-float/2addr v1, p2

    aput v1, p0, v0

    add-int/lit8 v0, p1, 0xd

    aget v1, p0, v0

    add-float/2addr v1, p3

    aput v1, p0, v0

    add-int/lit8 v0, p1, 0xe

    aget v1, p0, v0

    add-float/2addr v1, p4

    aput v1, p0, v0

    add-int/lit8 v0, p1, 0xf

    aget v1, p0, v0

    add-float/2addr v1, v2

    aput v1, p0, v0

    return-void
.end method

.method public static a([FIFFFF)V
    .locals 9

    const/16 v8, 0x10

    const/4 v1, 0x0

    const/16 v0, 0x14

    new-array v0, v0, [F

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lcom/iLoong/launcher/cling/c;->setRotateM([FIFFFF)V

    move-object v2, v0

    move v3, v8

    move-object v4, v0

    move v5, v1

    move-object v6, p0

    move v7, p1

    invoke-static/range {v2 .. v7}, Lcom/iLoong/launcher/cling/c;->multiplyMV([FI[FI[FI)V

    const/4 v1, 0x4

    invoke-static {v0, v8, p0, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public static a([FI[FIFFFF)V
    .locals 8

    const/16 v0, 0x20

    new-array v7, v0, [F

    const/4 v0, 0x0

    add-int/lit8 v1, p3, 0x0

    aget v1, p2, v1

    aput v1, v7, v0

    const/4 v0, 0x1

    add-int/lit8 v1, p3, 0x1

    aget v1, p2, v1

    aput v1, v7, v0

    const/4 v0, 0x2

    add-int/lit8 v1, p3, 0x2

    aget v1, p2, v1

    aput v1, v7, v0

    const/4 v0, 0x3

    const/high16 v1, 0x3f80

    aput v1, v7, v0

    const/4 v0, 0x4

    add-int/lit8 v1, p3, 0x3

    aget v1, p2, v1

    aput v1, v7, v0

    const/4 v0, 0x5

    add-int/lit8 v1, p3, 0x4

    aget v1, p2, v1

    aput v1, v7, v0

    const/4 v0, 0x6

    add-int/lit8 v1, p3, 0x5

    aget v1, p2, v1

    aput v1, v7, v0

    const/4 v0, 0x7

    const/high16 v1, 0x3f80

    aput v1, v7, v0

    const/16 v0, 0x8

    add-int/lit8 v1, p3, 0x6

    aget v1, p2, v1

    aput v1, v7, v0

    const/16 v0, 0x9

    add-int/lit8 v1, p3, 0x7

    aget v1, p2, v1

    aput v1, v7, v0

    const/16 v0, 0xa

    add-int/lit8 v1, p3, 0x8

    aget v1, p2, v1

    aput v1, v7, v0

    const/16 v0, 0xb

    const/high16 v1, 0x3f80

    aput v1, v7, v0

    const/16 v0, 0xc

    add-int/lit8 v1, p3, 0x9

    aget v1, p2, v1

    aput v1, v7, v0

    const/16 v0, 0xd

    add-int/lit8 v1, p3, 0xa

    aget v1, p2, v1

    aput v1, v7, v0

    const/16 v0, 0xe

    add-int/lit8 v1, p3, 0xb

    aget v1, p2, v1

    aput v1, v7, v0

    const/16 v0, 0xf

    const/high16 v1, 0x3f80

    aput v1, v7, v0

    const/16 v0, 0x10

    new-array v0, v0, [F

    const/4 v1, 0x0

    move v2, p4

    move v3, p5

    move v4, p6

    move v5, p7

    invoke-static/range {v0 .. v5}, Lcom/iLoong/launcher/cling/c;->setRotateM([FIFFFF)V

    const/16 v2, 0x10

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, v7

    move-object v3, v0

    move-object v5, v7

    invoke-static/range {v1 .. v6}, Lcom/iLoong/launcher/cling/c;->multiplyMM([FI[FI[FI)V

    add-int/lit8 v0, p1, 0x0

    const/16 v1, 0x10

    aget v1, v7, v1

    aput v1, p0, v0

    add-int/lit8 v0, p1, 0x1

    const/16 v1, 0x11

    aget v1, v7, v1

    aput v1, p0, v0

    add-int/lit8 v0, p1, 0x2

    const/16 v1, 0x12

    aget v1, v7, v1

    aput v1, p0, v0

    add-int/lit8 v0, p1, 0x3

    const/16 v1, 0x14

    aget v1, v7, v1

    aput v1, p0, v0

    add-int/lit8 v0, p1, 0x4

    const/16 v1, 0x15

    aget v1, v7, v1

    aput v1, p0, v0

    add-int/lit8 v0, p1, 0x5

    const/16 v1, 0x16

    aget v1, v7, v1

    aput v1, p0, v0

    add-int/lit8 v0, p1, 0x6

    const/16 v1, 0x18

    aget v1, v7, v1

    aput v1, p0, v0

    add-int/lit8 v0, p1, 0x7

    const/16 v1, 0x19

    aget v1, v7, v1

    aput v1, p0, v0

    add-int/lit8 v0, p1, 0x8

    const/16 v1, 0x1a

    aget v1, v7, v1

    aput v1, p0, v0

    add-int/lit8 v0, p1, 0x9

    const/16 v1, 0x1c

    aget v1, v7, v1

    aput v1, p0, v0

    add-int/lit8 v0, p1, 0xa

    const/16 v1, 0x1d

    aget v1, v7, v1

    aput v1, p0, v0

    add-int/lit8 v0, p1, 0xb

    const/16 v1, 0x1e

    aget v1, v7, v1

    aput v1, p0, v0

    return-void
.end method

.method public static b([FIFFF)V
    .locals 3

    add-int/lit8 v0, p1, 0x0

    aget v1, p0, v0

    add-float/2addr v1, p2

    aput v1, p0, v0

    add-int/lit8 v0, p1, 0x1

    aget v1, p0, v0

    add-float/2addr v1, p3

    aput v1, p0, v0

    add-int/lit8 v0, p1, 0x2

    aget v1, p0, v0

    add-float/2addr v1, p4

    aput v1, p0, v0

    add-int/lit8 v0, p1, 0x3

    aget v1, p0, v0

    const/4 v2, 0x0

    add-float/2addr v1, v2

    aput v1, p0, v0

    return-void
.end method

.method public static rotateM([FIFFFF)V
    .locals 9

    const/4 v1, 0x0

    const/16 v8, 0x10

    const/16 v0, 0x20

    new-array v0, v0, [F

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lcom/iLoong/launcher/cling/c;->setRotateM([FIFFFF)V

    move-object v2, v0

    move v3, v8

    move-object v4, v0

    move v5, v1

    move-object v6, p0

    move v7, p1

    invoke-static/range {v2 .. v7}, Lcom/iLoong/launcher/cling/c;->multiplyMM([FI[FI[FI)V

    invoke-static {v0, v8, p0, p1, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public static rotateM([FI[FIFFFF)V
    .locals 8

    const/4 v1, 0x0

    const/16 v0, 0x10

    new-array v0, v0, [F

    move v2, p4

    move v3, p5

    move v4, p6

    move v5, p7

    invoke-static/range {v0 .. v5}, Lcom/iLoong/launcher/cling/c;->setRotateM([FIFFFF)V

    move-object v2, p0

    move v3, p1

    move-object v4, v0

    move v5, v1

    move-object v6, p2

    move v7, p3

    invoke-static/range {v2 .. v7}, Lcom/iLoong/launcher/cling/c;->multiplyMM([FI[FI[FI)V

    return-void
.end method
