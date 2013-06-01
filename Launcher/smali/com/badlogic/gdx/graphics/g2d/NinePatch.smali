.class public Lcom/badlogic/gdx/graphics/g2d/NinePatch;
.super Ljava/lang/Object;


# static fields
.field public static final BOTTOM_CENTER:I = 0x7

.field public static final BOTTOM_LEFT:I = 0x6

.field public static final BOTTOM_RIGHT:I = 0x8

.field public static final MIDDLE_CENTER:I = 0x4

.field public static final MIDDLE_LEFT:I = 0x3

.field public static final MIDDLE_RIGHT:I = 0x5

.field public static final TOP_CENTER:I = 0x1

.field public static final TOP_LEFT:I = 0x0

.field public static final TOP_RIGHT:I = 0x2


# instance fields
.field private blending:Z

.field private color:Lcom/badlogic/gdx/graphics/Color;

.field private patches:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->blending:Z

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/Texture;)V
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/Texture;IIII)V
    .locals 6

    new-instance v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-direct {v1, p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IIII)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Color;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/NinePatch;)V
    .locals 2

    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->color:Lcom/badlogic/gdx/graphics/Color;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;-><init>(Lcom/badlogic/gdx/graphics/g2d/NinePatch;Lcom/badlogic/gdx/graphics/Color;)V

    return-void

    :cond_0
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_0
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/NinePatch;Lcom/badlogic/gdx/graphics/Color;)V
    .locals 4

    const/16 v3, 0x9

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->blending:Z

    new-array v0, v3, [Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->patches:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->patches:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->patches:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p2, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->color:Lcom/badlogic/gdx/graphics/Color;

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->blending:Z

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v1, 0x4

    aput-object p1, v0, v1

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->patches:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IIII)V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->blending:Z

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "region cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v0

    sub-int/2addr v0, p2

    sub-int v6, v0, p3

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v0

    sub-int/2addr v0, p4

    sub-int v7, v0, p5

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->patches:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    if-lez p4, :cond_3

    if-lez p2, :cond_1

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->patches:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v9, 0x0

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    move v4, p2

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IIII)V

    aput-object v0, v8, v9

    :cond_1
    if-lez v6, :cond_2

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->patches:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v9, 0x1

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v3, 0x0

    move-object v1, p1

    move v2, p2

    move v4, v6

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IIII)V

    aput-object v0, v8, v9

    :cond_2
    if-lez p3, :cond_3

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->patches:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v9, 0x2

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    add-int v2, p2, v6

    const/4 v3, 0x0

    move-object v1, p1

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IIII)V

    aput-object v0, v8, v9

    :cond_3
    if-lez v7, :cond_6

    if-lez p2, :cond_4

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->patches:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v9, 0x3

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v2, 0x0

    move-object v1, p1

    move v3, p4

    move v4, p2

    move v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IIII)V

    aput-object v0, v8, v9

    :cond_4
    if-lez v6, :cond_5

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->patches:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v9, 0x4

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-object v1, p1

    move v2, p2

    move v3, p4

    move v4, v6

    move v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IIII)V

    aput-object v0, v8, v9

    :cond_5
    if-lez p3, :cond_6

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->patches:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v9, 0x5

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    add-int v2, p2, v6

    move-object v1, p1

    move v3, p4

    move v4, p3

    move v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IIII)V

    aput-object v0, v8, v9

    :cond_6
    if-lez p5, :cond_9

    if-lez p2, :cond_7

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->patches:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v9, 0x6

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v2, 0x0

    add-int v3, p4, v7

    move-object v1, p1

    move v4, p2

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IIII)V

    aput-object v0, v8, v9

    :cond_7
    if-lez v6, :cond_8

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->patches:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v9, 0x7

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    add-int v3, p4, v7

    move-object v1, p1

    move v2, p2

    move v4, v6

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IIII)V

    aput-object v0, v8, v9

    :cond_8
    if-lez p3, :cond_9

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->patches:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/16 v9, 0x8

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    add-int v2, p2, v6

    add-int v3, p4, v7

    move-object v1, p1

    move v4, p3

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IIII)V

    aput-object v0, v8, v9

    :cond_9
    if-nez p2, :cond_a

    if-nez v6, :cond_a

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->patches:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->patches:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->patches:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->patches:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->patches:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->patches:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/16 v3, 0x8

    aget-object v2, v2, v3

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->patches:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v1, 0x2

    const/4 v2, 0x0

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->patches:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v1, 0x5

    const/4 v2, 0x0

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->patches:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/16 v1, 0x8

    const/4 v2, 0x0

    aput-object v2, v0, v1

    :cond_a
    if-nez p4, :cond_b

    if-nez v7, :cond_b

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->patches:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->patches:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v3, 0x6

    aget-object v2, v2, v3

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->patches:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->patches:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v3, 0x7

    aget-object v2, v2, v3

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->patches:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->patches:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/16 v3, 0x8

    aget-object v2, v2, v3

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->patches:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v1, 0x6

    const/4 v2, 0x0

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->patches:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v1, 0x7

    const/4 v2, 0x0

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->patches:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/16 v1, 0x8

    const/4 v2, 0x0

    aput-object v2, v0, v1

    :cond_b
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Lcom/badlogic/gdx/graphics/Color;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method public varargs constructor <init>([Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->blending:Z

    if-eqz p1, :cond_0

    array-length v0, p1

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "NinePatch needs nine TextureRegions"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->patches:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->checkValidity()V

    return-void
.end method

.method private checkValidity()V
    .locals 8

    const/4 v7, 0x1

    const/16 v6, 0x8

    const/4 v5, 0x6

    const/4 v4, 0x2

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getLeftWidth()F

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->patches:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    aget-object v1, v1, v3

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->patches:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, v1, v0

    if-nez v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->patches:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->patches:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, v1, v0

    if-nez v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->patches:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    aget-object v1, v1, v5

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->patches:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    aget-object v1, v1, v5

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v1, v0

    if-eqz v0, :cond_3

    :cond_2
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Left side patches must have the same width"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getRightWidth()F

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->patches:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    aget-object v1, v1, v4

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->patches:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    aget-object v1, v1, v4

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, v1, v0

    if-nez v1, :cond_6

    :cond_4
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->patches:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->patches:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, v1, v0

    if-nez v1, :cond_6

    :cond_5
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->patches:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    aget-object v1, v1, v6

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->patches:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    aget-object v1, v1, v6

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v1, v0

    if-eqz v0, :cond_7

    :cond_6
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Right side patches must have the same width"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getBottomHeight()F

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->patches:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    aget-object v1, v1, v5

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->patches:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    aget-object v1, v1, v5

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, v1, v0

    if-nez v1, :cond_a

    :cond_8
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->patches:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->patches:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, v1, v0

    if-nez v1, :cond_a

    :cond_9
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->patches:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    aget-object v1, v1, v6

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->patches:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    aget-object v1, v1, v6

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v1, v0

    if-eqz v0, :cond_b

    :cond_a
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Right side patches must have the same width"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getTopHeight()F

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->patches:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    aget-object v1, v1, v3

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->patches:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, v1, v0

    if-nez v1, :cond_e

    :cond_c
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->patches:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    aget-object v1, v1, v7

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->patches:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    aget-object v1, v1, v7

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, v1, v0

    if-nez v1, :cond_e

    :cond_d
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->patches:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    aget-object v1, v1, v4

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->patches:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    aget-object v1, v1, v4

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v1, v0

    if-eqz v0, :cond_f

    :cond_e
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Right side patches must have the same width"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFF)V
    .locals 10

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getLeftWidth()F

    move-result v0

    add-float v6, p2, v0

    add-float v0, p2, p4

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getRightWidth()F

    move-result v1

    sub-float v7, v0, v1

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getBottomHeight()F

    move-result v0

    add-float v8, p3, v0

    add-float v0, p3, p5

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getTopHeight()F

    move-result v1

    sub-float v9, v0, v1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->color:Lcom/badlogic/gdx/graphics/Color;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v0, v4

    invoke-virtual {p1, v1, v2, v3, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    :cond_0
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->blending:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    const/high16 v1, 0x3f80

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->color:Lcom/badlogic/gdx/graphics/Color;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    const/high16 v1, 0x3f80

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->disableBlending()V

    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->patches:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v1, 0x6

    aget-object v0, v0, v1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->patches:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v1, 0x6

    aget-object v1, v0, v1

    sub-float v4, v6, p2

    sub-float v5, v8, p3

    move-object v0, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->patches:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v1, 0x7

    aget-object v0, v0, v1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->patches:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v1, 0x7

    aget-object v1, v0, v1

    sub-float v4, v7, v6

    sub-float v5, v8, p3

    move-object v0, p1

    move v2, v6

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    :cond_3
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->patches:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/16 v1, 0x8

    aget-object v0, v0, v1

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->patches:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/16 v1, 0x8

    aget-object v1, v0, v1

    add-float v0, p2, p4

    sub-float v4, v0, v7

    sub-float v5, v8, p3

    move-object v0, p1

    move v2, v7

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    :cond_4
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->patches:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->patches:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v1, 0x3

    aget-object v1, v0, v1

    sub-float v4, v6, p2

    sub-float v5, v9, v8

    move-object v0, p1

    move v2, p2

    move v3, v8

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    :cond_5
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->patches:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->patches:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v1, 0x4

    aget-object v1, v0, v1

    sub-float v4, v7, v6

    sub-float v5, v9, v8

    move-object v0, p1

    move v2, v6

    move v3, v8

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    :cond_6
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->patches:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->patches:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v1, 0x5

    aget-object v1, v0, v1

    add-float v0, p2, p4

    sub-float v4, v0, v7

    sub-float v5, v9, v8

    move-object v0, p1

    move v2, v7

    move v3, v8

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    :cond_7
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->patches:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->patches:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v1, 0x0

    aget-object v1, v0, v1

    sub-float v4, v6, p2

    add-float v0, p3, p5

    sub-float v5, v0, v9

    move-object v0, p1

    move v2, p2

    move v3, v9

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    :cond_8
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->patches:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->patches:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v1, 0x1

    aget-object v1, v0, v1

    sub-float v4, v7, v6

    add-float v0, p3, p5

    sub-float v5, v0, v9

    move-object v0, p1

    move v2, v6

    move v3, v9

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    :cond_9
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->patches:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->patches:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v1, 0x2

    aget-object v1, v0, v1

    add-float v0, p2, p4

    sub-float v4, v0, v7

    add-float v0, p3, p5

    sub-float v5, v0, v9

    move-object v0, p1

    move v2, v7

    move v3, v9

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    :cond_a
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->blending:Z

    if-nez v0, :cond_b

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->enableBlending()V

    :cond_b
    return-void
.end method

.method public getBottomHeight()F
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x7

    const/4 v1, 0x6

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->patches:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->patches:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v0

    int-to-float v0, v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->patches:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    aget-object v0, v0, v2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->patches:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v0

    int-to-float v0, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->patches:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    aget-object v0, v0, v3

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->patches:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v0

    int-to-float v0, v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getColor()Lcom/badlogic/gdx/graphics/Color;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->color:Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method

.method public getLeftWidth()F
    .locals 4

    const/4 v3, 0x6

    const/4 v2, 0x3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->patches:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    aget-object v0, v0, v3

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->patches:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v0

    int-to-float v0, v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->patches:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    aget-object v0, v0, v2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->patches:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v0

    int-to-float v0, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->patches:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    aget-object v0, v0, v1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->patches:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v0

    int-to-float v0, v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPatches()[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->patches:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    return-object v0
.end method

.method public getRightWidth()F
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x5

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->patches:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    aget-object v0, v0, v3

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->patches:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v0

    int-to-float v0, v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->patches:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    aget-object v0, v0, v2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->patches:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v0

    int-to-float v0, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->patches:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    aget-object v0, v0, v1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->patches:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v0

    int-to-float v0, v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTopHeight()F
    .locals 4

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->patches:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->patches:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v0

    int-to-float v0, v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->patches:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    aget-object v0, v0, v2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->patches:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v0

    int-to-float v0, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->patches:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    aget-object v0, v0, v3

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->patches:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v0

    int-to-float v0, v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTotalHeight()F
    .locals 3

    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getTopHeight()F

    move-result v0

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getBottomHeight()F

    move-result v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->patches:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    aget-object v1, v1, v2

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->patches:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    :cond_0
    return v0
.end method

.method public getTotalWidth()F
    .locals 3

    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getLeftWidth()F

    move-result v0

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getRightWidth()F

    move-result v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->patches:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    aget-object v1, v1, v2

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->patches:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    :cond_0
    return v0
.end method

.method public setBlending(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->blending:Z

    return-void
.end method

.method public setColor(Lcom/badlogic/gdx/graphics/Color;)V
    .locals 0

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->color:Lcom/badlogic/gdx/graphics/Color;

    return-void
.end method
