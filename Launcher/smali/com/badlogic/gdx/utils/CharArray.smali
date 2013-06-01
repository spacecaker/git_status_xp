.class public Lcom/badlogic/gdx/utils/CharArray;
.super Ljava/lang/Object;


# instance fields
.field public items:[C

.field public ordered:Z

.field public size:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x10

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/utils/CharArray;-><init>(ZI)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/utils/CharArray;-><init>(ZI)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/utils/CharArray;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-boolean v0, p1, Lcom/badlogic/gdx/utils/CharArray;->ordered:Z

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/CharArray;->ordered:Z

    iget v0, p1, Lcom/badlogic/gdx/utils/CharArray;->size:I

    iput v0, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    iget v0, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/badlogic/gdx/utils/CharArray;->items:[C

    iget-object v0, p1, Lcom/badlogic/gdx/utils/CharArray;->items:[C

    iget-object v1, p0, Lcom/badlogic/gdx/utils/CharArray;->items:[C

    iget v2, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public constructor <init>(ZI)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/badlogic/gdx/utils/CharArray;->ordered:Z

    new-array v0, p2, [C

    iput-object v0, p0, Lcom/badlogic/gdx/utils/CharArray;->items:[C

    return-void
.end method

.method public constructor <init>(Z[C)V
    .locals 3

    const/4 v2, 0x0

    array-length v0, p2

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/utils/CharArray;-><init>(ZI)V

    array-length v0, p2

    iput v0, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    iget-object v0, p0, Lcom/badlogic/gdx/utils/CharArray;->items:[C

    iget v1, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public constructor <init>([C)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/utils/CharArray;-><init>(Z[C)V

    return-void
.end method


# virtual methods
.method public add(C)V
    .locals 3

    iget-object v0, p0, Lcom/badlogic/gdx/utils/CharArray;->items:[C

    iget v1, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    array-length v2, v0

    if-ne v1, v2, :cond_0

    const/16 v0, 0x8

    iget v1, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    int-to-float v1, v1

    const/high16 v2, 0x3fe0

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/CharArray;->resize(I)[C

    move-result-object v0

    :cond_0
    iget v1, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    aput-char p1, v0, v1

    return-void
.end method

.method public addAll(Lcom/badlogic/gdx/utils/CharArray;)V
    .locals 2

    const/4 v0, 0x0

    iget v1, p1, Lcom/badlogic/gdx/utils/CharArray;->size:I

    invoke-virtual {p0, p1, v0, v1}, Lcom/badlogic/gdx/utils/CharArray;->addAll(Lcom/badlogic/gdx/utils/CharArray;II)V

    return-void
.end method

.method public addAll(Lcom/badlogic/gdx/utils/CharArray;II)V
    .locals 3

    add-int v0, p2, p3

    iget v1, p1, Lcom/badlogic/gdx/utils/CharArray;->size:I

    if-le v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "offset + length must be <= size: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " + "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " <= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/badlogic/gdx/utils/CharArray;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p1, Lcom/badlogic/gdx/utils/CharArray;->items:[C

    invoke-virtual {p0, v0, p2, p3}, Lcom/badlogic/gdx/utils/CharArray;->addAll([CII)V

    return-void
.end method

.method public addAll([C)V
    .locals 2

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/badlogic/gdx/utils/CharArray;->addAll([CII)V

    return-void
.end method

.method public addAll([CII)V
    .locals 3

    iget-object v0, p0, Lcom/badlogic/gdx/utils/CharArray;->items:[C

    iget v1, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    add-int/2addr v1, p3

    sub-int/2addr v1, p2

    array-length v2, v0

    if-lt v1, v2, :cond_0

    const/16 v0, 0x8

    int-to-float v1, v1

    const/high16 v2, 0x3fe0

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/CharArray;->resize(I)[C

    move-result-object v0

    :cond_0
    iget v1, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    return-void
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    return-void
.end method

.method public contains(C)Z
    .locals 3

    iget v0, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    add-int/lit8 v0, v0, -0x1

    iget-object v2, p0, Lcom/badlogic/gdx/utils/CharArray;->items:[C

    :goto_0
    if-gez v0, :cond_0

    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v1, v0, -0x1

    aget-char v0, v2, v0

    if-ne v0, p1, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public ensureCapacity(I)[C
    .locals 2

    iget v0, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    add-int/2addr v0, p1

    iget-object v1, p0, Lcom/badlogic/gdx/utils/CharArray;->items:[C

    array-length v1, v1

    if-lt v0, v1, :cond_0

    const/16 v1, 0x8

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/CharArray;->resize(I)[C

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/CharArray;->items:[C

    return-object v0
.end method

.method public get(I)C
    .locals 2

    iget v0, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    if-lt p1, v0, :cond_0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/CharArray;->items:[C

    aget-char v0, v0, p1

    return v0
.end method

.method public indexOf(C)I
    .locals 4

    iget-object v1, p0, Lcom/badlogic/gdx/utils/CharArray;->items:[C

    const/4 v0, 0x0

    iget v2, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    :goto_0
    if-lt v0, v2, :cond_1

    const/4 v0, -0x1

    :cond_0
    return v0

    :cond_1
    aget-char v3, v1, v0

    if-eq v3, p1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public insert(IC)V
    .locals 3

    iget-object v0, p0, Lcom/badlogic/gdx/utils/CharArray;->items:[C

    iget v1, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    array-length v2, v0

    if-ne v1, v2, :cond_0

    const/16 v0, 0x8

    iget v1, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    int-to-float v1, v1

    const/high16 v2, 0x3fe0

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/CharArray;->resize(I)[C

    move-result-object v0

    :cond_0
    iget-boolean v1, p0, Lcom/badlogic/gdx/utils/CharArray;->ordered:Z

    if-eqz v1, :cond_1

    add-int/lit8 v1, p1, 0x1

    iget v2, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    sub-int/2addr v2, p1

    invoke-static {v0, p1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    iget v1, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    aput-char p2, v0, p1

    return-void

    :cond_1
    iget v1, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    aget-char v2, v0, p1

    aput-char v2, v0, v1

    goto :goto_0
.end method

.method public peek()C
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/utils/CharArray;->items:[C

    iget v1, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    add-int/lit8 v1, v1, -0x1

    aget-char v0, v0, v1

    return v0
.end method

.method public pop()C
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/utils/CharArray;->items:[C

    iget v1, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    aget-char v0, v0, v1

    return v0
.end method

.method public random()C
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/utils/CharArray;->items:[C

    iget v2, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v2}, Lcom/badlogic/gdx/math/MathUtils;->random(II)I

    move-result v0

    aget-char v0, v1, v0

    goto :goto_0
.end method

.method public removeIndex(I)C
    .locals 4

    iget v0, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    if-lt p1, v0, :cond_0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/CharArray;->items:[C

    aget-char v1, v0, p1

    iget v2, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    iget-boolean v2, p0, Lcom/badlogic/gdx/utils/CharArray;->ordered:Z

    if-eqz v2, :cond_1

    add-int/lit8 v2, p1, 0x1

    iget v3, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    sub-int/2addr v3, p1

    invoke-static {v0, v2, v0, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    return v1

    :cond_1
    iget v2, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    aget-char v2, v0, v2

    aput-char v2, v0, p1

    goto :goto_0
.end method

.method public removeValue(C)Z
    .locals 5

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/badlogic/gdx/utils/CharArray;->items:[C

    iget v3, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_0

    :goto_1
    return v0

    :cond_0
    aget-char v4, v2, v1

    if-ne v4, p1, :cond_1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/CharArray;->removeIndex(I)C

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected resize(I)[C
    .locals 5

    const/4 v4, 0x0

    new-array v0, p1, [C

    iget-object v1, p0, Lcom/badlogic/gdx/utils/CharArray;->items:[C

    array-length v2, v1

    array-length v3, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/CharArray;->items:[C

    return-object v0
.end method

.method public reverse()V
    .locals 7

    const/4 v0, 0x0

    iget v1, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    div-int/lit8 v2, v2, 0x2

    :goto_0
    if-lt v0, v2, :cond_0

    return-void

    :cond_0
    sub-int v3, v1, v0

    iget-object v4, p0, Lcom/badlogic/gdx/utils/CharArray;->items:[C

    aget-char v4, v4, v0

    iget-object v5, p0, Lcom/badlogic/gdx/utils/CharArray;->items:[C

    iget-object v6, p0, Lcom/badlogic/gdx/utils/CharArray;->items:[C

    aget-char v6, v6, v3

    aput-char v6, v5, v0

    iget-object v5, p0, Lcom/badlogic/gdx/utils/CharArray;->items:[C

    aput-char v4, v5, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public set(IC)V
    .locals 2

    iget v0, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    if-lt p1, v0, :cond_0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/CharArray;->items:[C

    aput-char p2, v0, p1

    return-void
.end method

.method public shrink()V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/CharArray;->resize(I)[C

    return-void
.end method

.method public shuffle()V
    .locals 5

    iget v0, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-gez v0, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->random(I)I

    move-result v1

    iget-object v2, p0, Lcom/badlogic/gdx/utils/CharArray;->items:[C

    aget-char v2, v2, v0

    iget-object v3, p0, Lcom/badlogic/gdx/utils/CharArray;->items:[C

    iget-object v4, p0, Lcom/badlogic/gdx/utils/CharArray;->items:[C

    aget-char v4, v4, v1

    aput-char v4, v3, v0

    iget-object v3, p0, Lcom/badlogic/gdx/utils/CharArray;->items:[C

    aput-char v2, v3, v1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public sort()V
    .locals 3

    iget-object v0, p0, Lcom/badlogic/gdx/utils/CharArray;->items:[C

    const/4 v1, 0x0

    iget v2, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->sort([CII)V

    return-void
.end method

.method public toArray()[C
    .locals 4

    const/4 v3, 0x0

    iget v0, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    new-array v0, v0, [C

    iget-object v1, p0, Lcom/badlogic/gdx/utils/CharArray;->items:[C

    iget v2, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget v0, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    if-nez v0, :cond_0

    const-string v0, "[]"

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/utils/CharArray;->items:[C

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v0, 0x20

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v0, 0x5b

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    aget-char v0, v1, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    :goto_1
    iget v3, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    if-lt v0, v3, :cond_1

    const/16 v0, 0x5d

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-char v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    iget v0, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/utils/CharArray;->items:[C

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v0, 0x20

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v0, 0x0

    aget-char v0, v1, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    :goto_1
    iget v3, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    if-lt v0, v3, :cond_1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-char v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public truncate(I)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    if-le v0, p1, :cond_0

    iput p1, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    :cond_0
    return-void
.end method
