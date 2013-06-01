.class public Lcom/badlogic/gdx/utils/BinaryHeap;
.super Ljava/lang/Object;


# instance fields
.field private final isMaxHeap:Z

.field private nodes:[Lcom/badlogic/gdx/utils/BinaryHeap$Node;

.field public size:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x10

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/utils/BinaryHeap;-><init>(IZ)V

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->size:I

    iput-boolean p2, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->isMaxHeap:Z

    new-array v0, p1, [Lcom/badlogic/gdx/utils/BinaryHeap$Node;

    iput-object v0, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->nodes:[Lcom/badlogic/gdx/utils/BinaryHeap$Node;

    return-void
.end method

.method private down(I)V
    .locals 14

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v7, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->nodes:[Lcom/badlogic/gdx/utils/BinaryHeap$Node;

    iget v8, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->size:I

    aget-object v9, v7, p1

    iget v10, v9, Lcom/badlogic/gdx/utils/BinaryHeap$Node;->value:F

    :goto_0
    shl-int/lit8 v0, p1, 0x1

    add-int/lit8 v5, v0, 0x1

    if-lt v5, v8, :cond_1

    :cond_0
    aput-object v9, v7, p1

    iput p1, v9, Lcom/badlogic/gdx/utils/BinaryHeap$Node;->index:I

    return-void

    :cond_1
    add-int/lit8 v6, v5, 0x1

    aget-object v11, v7, v5

    iget v12, v11, Lcom/badlogic/gdx/utils/BinaryHeap$Node;->value:F

    if-lt v6, v8, :cond_3

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->isMaxHeap:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    move-object v4, v3

    move v3, v0

    :goto_2
    cmpg-float v0, v12, v3

    if-gez v0, :cond_4

    move v0, v1

    :goto_3
    iget-boolean v13, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->isMaxHeap:Z

    xor-int/2addr v0, v13

    if-eqz v0, :cond_6

    cmpl-float v0, v12, v10

    if-eqz v0, :cond_0

    cmpl-float v0, v12, v10

    if-lez v0, :cond_5

    move v0, v1

    :goto_4
    iget-boolean v3, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->isMaxHeap:Z

    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    aput-object v11, v7, p1

    iput p1, v11, Lcom/badlogic/gdx/utils/BinaryHeap$Node;->index:I

    move p1, v5

    goto :goto_0

    :cond_2
    const v0, 0x7f7fffff

    goto :goto_1

    :cond_3
    aget-object v3, v7, v6

    iget v0, v3, Lcom/badlogic/gdx/utils/BinaryHeap$Node;->value:F

    move-object v4, v3

    move v3, v0

    goto :goto_2

    :cond_4
    move v0, v2

    goto :goto_3

    :cond_5
    move v0, v2

    goto :goto_4

    :cond_6
    cmpl-float v0, v3, v10

    if-eqz v0, :cond_0

    cmpl-float v0, v3, v10

    if-lez v0, :cond_7

    move v0, v1

    :goto_5
    iget-boolean v3, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->isMaxHeap:Z

    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    aput-object v4, v7, p1

    iput p1, v4, Lcom/badlogic/gdx/utils/BinaryHeap$Node;->index:I

    move p1, v6

    goto :goto_0

    :cond_7
    move v0, v2

    goto :goto_5
.end method

.method private up(I)V
    .locals 7

    iget-object v2, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->nodes:[Lcom/badlogic/gdx/utils/BinaryHeap$Node;

    aget-object v3, v2, p1

    iget v4, v3, Lcom/badlogic/gdx/utils/BinaryHeap$Node;->value:F

    :goto_0
    if-gtz p1, :cond_1

    :cond_0
    aput-object v3, v2, p1

    iput p1, v3, Lcom/badlogic/gdx/utils/BinaryHeap$Node;->index:I

    return-void

    :cond_1
    add-int/lit8 v0, p1, -0x1

    shr-int/lit8 v1, v0, 0x1

    aget-object v5, v2, v1

    iget v0, v5, Lcom/badlogic/gdx/utils/BinaryHeap$Node;->value:F

    cmpg-float v0, v4, v0

    if-gez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    iget-boolean v6, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->isMaxHeap:Z

    xor-int/2addr v0, v6

    if-eqz v0, :cond_0

    aput-object v5, v2, p1

    iput p1, v5, Lcom/badlogic/gdx/utils/BinaryHeap$Node;->index:I

    move p1, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public add(Lcom/badlogic/gdx/utils/BinaryHeap$Node;)Lcom/badlogic/gdx/utils/BinaryHeap$Node;
    .locals 4

    const/4 v3, 0x0

    iget v0, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->size:I

    iget-object v1, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->nodes:[Lcom/badlogic/gdx/utils/BinaryHeap$Node;

    array-length v1, v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->size:I

    shl-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Lcom/badlogic/gdx/utils/BinaryHeap$Node;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->nodes:[Lcom/badlogic/gdx/utils/BinaryHeap$Node;

    iget v2, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->size:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->nodes:[Lcom/badlogic/gdx/utils/BinaryHeap$Node;

    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->size:I

    iput v0, p1, Lcom/badlogic/gdx/utils/BinaryHeap$Node;->index:I

    iget-object v0, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->nodes:[Lcom/badlogic/gdx/utils/BinaryHeap$Node;

    iget v1, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->size:I

    aput-object p1, v0, v1

    iget v0, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->size:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->size:I

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/BinaryHeap;->up(I)V

    return-object p1
.end method

.method public pop()Lcom/badlogic/gdx/utils/BinaryHeap$Node;
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->nodes:[Lcom/badlogic/gdx/utils/BinaryHeap$Node;

    aget-object v1, v0, v4

    iget v2, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->size:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->size:I

    aget-object v2, v0, v2

    aput-object v2, v0, v4

    iget v2, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->size:I

    const/4 v3, 0x0

    aput-object v3, v0, v2

    iget v0, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->size:I

    if-lez v0, :cond_0

    invoke-direct {p0, v4}, Lcom/badlogic/gdx/utils/BinaryHeap;->down(I)V

    :cond_0
    return-object v1
.end method

.method public setValue(Lcom/badlogic/gdx/utils/BinaryHeap$Node;F)V
    .locals 2

    iget v0, p1, Lcom/badlogic/gdx/utils/BinaryHeap$Node;->value:F

    iput p2, p1, Lcom/badlogic/gdx/utils/BinaryHeap$Node;->value:F

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-boolean v1, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->isMaxHeap:Z

    xor-int/2addr v0, v1

    if-eqz v0, :cond_1

    iget v0, p1, Lcom/badlogic/gdx/utils/BinaryHeap$Node;->index:I

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/BinaryHeap;->up(I)V

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget v0, p1, Lcom/badlogic/gdx/utils/BinaryHeap$Node;->index:I

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/BinaryHeap;->down(I)V

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget v0, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->size:I

    if-nez v0, :cond_0

    const-string v0, "[]"

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->nodes:[Lcom/badlogic/gdx/utils/BinaryHeap$Node;

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v0, 0x20

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v0, 0x5b

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    :goto_1
    iget v3, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->size:I

    if-lt v0, v3, :cond_1

    const/16 v0, 0x5d

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
