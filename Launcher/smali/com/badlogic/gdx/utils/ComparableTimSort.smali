.class Lcom/badlogic/gdx/utils/ComparableTimSort;
.super Ljava/lang/Object;


# static fields
.field private static final DEBUG:Z = false

.field private static final INITIAL_TMP_STORAGE_LENGTH:I = 0x100

.field private static final MIN_GALLOP:I = 0x7

.field private static final MIN_MERGE:I = 0x20


# instance fields
.field private a:[Ljava/lang/Object;

.field private minGallop:I

.field private final runBase:[I

.field private final runLen:[I

.field private stackSize:I

.field private tmp:[Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 2

    const/16 v1, 0x28

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x7

    iput v0, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->minGallop:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->stackSize:I

    const/16 v0, 0x100

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->tmp:[Ljava/lang/Object;

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->runBase:[I

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->runLen:[I

    return-void
.end method

.method private constructor <init>([Ljava/lang/Object;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x7

    iput v0, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->minGallop:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->stackSize:I

    iput-object p1, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->a:[Ljava/lang/Object;

    array-length v1, p1

    const/16 v0, 0x200

    if-ge v1, v0, :cond_0

    ushr-int/lit8 v0, v1, 0x1

    :goto_0
    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->tmp:[Ljava/lang/Object;

    const/16 v0, 0x78

    if-ge v1, v0, :cond_1

    const/4 v0, 0x5

    :goto_1
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->runBase:[I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->runLen:[I

    return-void

    :cond_0
    const/16 v0, 0x100

    goto :goto_0

    :cond_1
    const/16 v0, 0x606

    if-ge v1, v0, :cond_2

    const/16 v0, 0xa

    goto :goto_1

    :cond_2
    const v0, 0x1d16f

    if-ge v1, v0, :cond_3

    const/16 v0, 0x13

    goto :goto_1

    :cond_3
    const/16 v0, 0x28

    goto :goto_1
.end method

.method private static binarySort([Ljava/lang/Object;III)V
    .locals 6

    if-ne p3, p1, :cond_3

    add-int/lit8 v2, p3, 0x1

    :goto_0
    if-lt v2, p2, :cond_0

    return-void

    :cond_0
    aget-object v0, p0, v2

    check-cast v0, Ljava/lang/Comparable;

    move v1, v2

    move v4, p1

    :goto_1
    if-lt v4, v1, :cond_1

    sub-int v1, v2, v4

    packed-switch v1, :pswitch_data_0

    add-int/lit8 v3, v4, 0x1

    invoke-static {p0, v4, p0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_2
    aput-object v0, p0, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    add-int v3, v4, v1

    ushr-int/lit8 v3, v3, 0x1

    aget-object v5, p0, v3

    invoke-interface {v0, v5}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v5

    if-gez v5, :cond_2

    move v1, v3

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    move v4, v3

    goto :goto_1

    :pswitch_0
    add-int/lit8 v1, v4, 0x2

    add-int/lit8 v3, v4, 0x1

    aget-object v3, p0, v3

    aput-object v3, p0, v1

    :pswitch_1
    add-int/lit8 v1, v4, 0x1

    aget-object v3, p0, v4

    aput-object v3, p0, v1

    goto :goto_2

    :cond_3
    move v2, p3

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static countRunAndMakeAscending([Ljava/lang/Object;II)I
    .locals 3

    add-int/lit8 v0, p1, 0x1

    if-ne v0, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    add-int/lit8 v1, v0, 0x1

    aget-object v0, p0, v0

    check-cast v0, Ljava/lang/Comparable;

    aget-object v2, p0, p1

    invoke-interface {v0, v2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_4

    :goto_1
    if-ge v1, p2, :cond_1

    aget-object v0, p0, v1

    check-cast v0, Ljava/lang/Comparable;

    add-int/lit8 v2, v1, -0x1

    aget-object v2, p0, v2

    invoke-interface {v0, v2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_2

    :cond_1
    invoke-static {p0, p1, v1}, Lcom/badlogic/gdx/utils/ComparableTimSort;->reverseRange([Ljava/lang/Object;II)V

    move v0, v1

    :goto_2
    sub-int/2addr v0, p1

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    :cond_4
    if-ge v1, p2, :cond_5

    aget-object v0, p0, v1

    check-cast v0, Ljava/lang/Comparable;

    add-int/lit8 v2, v1, -0x1

    aget-object v2, p0, v2

    invoke-interface {v0, v2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_3

    :cond_5
    move v0, v1

    goto :goto_2
.end method

.method private ensureCapacity(I)[Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->tmp:[Ljava/lang/Object;

    array-length v0, v0

    if-ge v0, p1, :cond_0

    shr-int/lit8 v0, p1, 0x1

    or-int/2addr v0, p1

    shr-int/lit8 v1, v0, 0x2

    or-int/2addr v0, v1

    shr-int/lit8 v1, v0, 0x4

    or-int/2addr v0, v1

    shr-int/lit8 v1, v0, 0x8

    or-int/2addr v0, v1

    shr-int/lit8 v1, v0, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    if-gez v0, :cond_1

    :goto_0
    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->tmp:[Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->tmp:[Ljava/lang/Object;

    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->a:[Ljava/lang/Object;

    array-length v1, v1

    ushr-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0
.end method

.method private static gallopLeft(Ljava/lang/Comparable;[Ljava/lang/Object;III)I
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x1

    add-int v0, p2, p4

    aget-object v0, p1, v0

    invoke-interface {p0, v0}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_2

    sub-int v0, p3, p4

    :goto_0
    if-ge v1, v0, :cond_0

    add-int v3, p2, p4

    add-int/2addr v3, v1

    aget-object v3, p1, v3

    invoke-interface {p0, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    if-gtz v3, :cond_1

    :cond_0
    if-le v1, v0, :cond_9

    :goto_1
    add-int v1, v2, p4

    add-int/2addr v0, p4

    :goto_2
    add-int/lit8 v1, v1, 0x1

    move v2, v1

    :goto_3
    if-lt v2, v0, :cond_5

    return v0

    :cond_1
    shl-int/lit8 v2, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    if-gtz v2, :cond_a

    move v2, v1

    move v1, v0

    goto :goto_0

    :cond_2
    add-int/lit8 v0, p4, 0x1

    :goto_4
    if-ge v1, v0, :cond_3

    add-int v3, p2, p4

    sub-int/2addr v3, v1

    aget-object v3, p1, v3

    invoke-interface {p0, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    if-lez v3, :cond_4

    :cond_3
    if-le v1, v0, :cond_7

    :goto_5
    sub-int v1, p4, v0

    sub-int v0, p4, v2

    goto :goto_2

    :cond_4
    shl-int/lit8 v2, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    if-gtz v2, :cond_8

    move v2, v1

    move v1, v0

    goto :goto_4

    :cond_5
    sub-int v1, v0, v2

    ushr-int/lit8 v1, v1, 0x1

    add-int/2addr v1, v2

    add-int v3, p2, v1

    aget-object v3, p1, v3

    invoke-interface {p0, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    if-lez v3, :cond_6

    add-int/lit8 v1, v1, 0x1

    move v2, v1

    goto :goto_3

    :cond_6
    move v0, v1

    goto :goto_3

    :cond_7
    move v0, v1

    goto :goto_5

    :cond_8
    move v4, v2

    move v2, v1

    move v1, v4

    goto :goto_4

    :cond_9
    move v0, v1

    goto :goto_1

    :cond_a
    move v4, v2

    move v2, v1

    move v1, v4

    goto :goto_0
.end method

.method private static gallopRight(Ljava/lang/Comparable;[Ljava/lang/Object;III)I
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    add-int v0, p2, p4

    aget-object v0, p1, v0

    invoke-interface {p0, v0}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_2

    add-int/lit8 v0, p4, 0x1

    move v4, v1

    move v1, v2

    move v2, v4

    :goto_0
    if-ge v1, v0, :cond_0

    add-int v3, p2, p4

    sub-int/2addr v3, v1

    aget-object v3, p1, v3

    invoke-interface {p0, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    if-ltz v3, :cond_1

    :cond_0
    if-le v1, v0, :cond_9

    :goto_1
    sub-int v0, p4, v0

    sub-int v1, p4, v2

    :goto_2
    add-int/lit8 v0, v0, 0x1

    :goto_3
    if-lt v0, v1, :cond_5

    return v1

    :cond_1
    shl-int/lit8 v2, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    if-gtz v2, :cond_a

    move v2, v1

    move v1, v0

    goto :goto_0

    :cond_2
    sub-int v0, p3, p4

    move v4, v1

    move v1, v2

    move v2, v4

    :goto_4
    if-ge v1, v0, :cond_3

    add-int v3, p2, p4

    add-int/2addr v3, v1

    aget-object v3, p1, v3

    invoke-interface {p0, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_4

    :cond_3
    if-le v1, v0, :cond_7

    :goto_5
    add-int v1, v2, p4

    add-int/2addr v0, p4

    move v4, v1

    move v1, v0

    move v0, v4

    goto :goto_2

    :cond_4
    shl-int/lit8 v2, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    if-gtz v2, :cond_8

    move v2, v1

    move v1, v0

    goto :goto_4

    :cond_5
    sub-int v2, v1, v0

    ushr-int/lit8 v2, v2, 0x1

    add-int/2addr v2, v0

    add-int v3, p2, v2

    aget-object v3, p1, v3

    invoke-interface {p0, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_6

    move v1, v2

    goto :goto_3

    :cond_6
    add-int/lit8 v0, v2, 0x1

    goto :goto_3

    :cond_7
    move v0, v1

    goto :goto_5

    :cond_8
    move v4, v1

    move v1, v2

    move v2, v4

    goto :goto_4

    :cond_9
    move v0, v1

    goto :goto_1

    :cond_a
    move v4, v1

    move v1, v2

    move v2, v4

    goto :goto_0
.end method

.method private mergeAt(I)V
    .locals 8

    iget-object v0, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->runBase:[I

    aget v1, v0, p1

    iget-object v0, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->runLen:[I

    aget v2, v0, p1

    iget-object v0, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->runBase:[I

    add-int/lit8 v3, p1, 0x1

    aget v3, v0, v3

    iget-object v0, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->runLen:[I

    add-int/lit8 v4, p1, 0x1

    aget v4, v0, v4

    iget-object v0, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->runLen:[I

    add-int v5, v2, v4

    aput v5, v0, p1

    iget v0, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->stackSize:I

    add-int/lit8 v0, v0, -0x3

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->runBase:[I

    add-int/lit8 v5, p1, 0x1

    iget-object v6, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->runBase:[I

    add-int/lit8 v7, p1, 0x2

    aget v6, v6, v7

    aput v6, v0, v5

    iget-object v0, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->runLen:[I

    add-int/lit8 v5, p1, 0x1

    iget-object v6, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->runLen:[I

    add-int/lit8 v7, p1, 0x2

    aget v6, v6, v7

    aput v6, v0, v5

    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->stackSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->stackSize:I

    iget-object v0, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->a:[Ljava/lang/Object;

    aget-object v0, v0, v3

    check-cast v0, Ljava/lang/Comparable;

    iget-object v5, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->a:[Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0, v5, v1, v2, v6}, Lcom/badlogic/gdx/utils/ComparableTimSort;->gallopRight(Ljava/lang/Comparable;[Ljava/lang/Object;III)I

    move-result v0

    add-int/2addr v1, v0

    sub-int/2addr v2, v0

    if-nez v2, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->a:[Ljava/lang/Object;

    add-int v5, v1, v2

    add-int/lit8 v5, v5, -0x1

    aget-object v0, v0, v5

    check-cast v0, Ljava/lang/Comparable;

    iget-object v5, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->a:[Ljava/lang/Object;

    add-int/lit8 v6, v4, -0x1

    invoke-static {v0, v5, v3, v4, v6}, Lcom/badlogic/gdx/utils/ComparableTimSort;->gallopLeft(Ljava/lang/Comparable;[Ljava/lang/Object;III)I

    move-result v0

    if-eqz v0, :cond_1

    if-gt v2, v0, :cond_3

    invoke-direct {p0, v1, v2, v3, v0}, Lcom/badlogic/gdx/utils/ComparableTimSort;->mergeLo(IIII)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, v1, v2, v3, v0}, Lcom/badlogic/gdx/utils/ComparableTimSort;->mergeHi(IIII)V

    goto :goto_0
.end method

.method private mergeCollapse()V
    .locals 5

    :goto_0
    iget v0, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->stackSize:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget v0, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->stackSize:I

    add-int/lit8 v0, v0, -0x2

    if-lez v0, :cond_3

    iget-object v1, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->runLen:[I

    add-int/lit8 v2, v0, -0x1

    aget v1, v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->runLen:[I

    aget v2, v2, v0

    iget-object v3, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->runLen:[I

    add-int/lit8 v4, v0, 0x1

    aget v3, v3, v4

    add-int/2addr v2, v3

    if-gt v1, v2, :cond_3

    iget-object v1, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->runLen:[I

    add-int/lit8 v2, v0, -0x1

    aget v1, v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->runLen:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    if-ge v1, v2, :cond_2

    add-int/lit8 v0, v0, -0x1

    :cond_2
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/ComparableTimSort;->mergeAt(I)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->runLen:[I

    aget v1, v1, v0

    iget-object v2, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->runLen:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    if-gt v1, v2, :cond_0

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/ComparableTimSort;->mergeAt(I)V

    goto :goto_0
.end method

.method private mergeForceCollapse()V
    .locals 4

    :goto_0
    iget v0, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->stackSize:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->stackSize:I

    add-int/lit8 v0, v0, -0x2

    if-lez v0, :cond_1

    iget-object v1, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->runLen:[I

    add-int/lit8 v2, v0, -0x1

    aget v1, v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->runLen:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    if-ge v1, v2, :cond_1

    add-int/lit8 v0, v0, -0x1

    :cond_1
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/ComparableTimSort;->mergeAt(I)V

    goto :goto_0
.end method

.method private mergeHi(IIII)V
    .locals 16

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/badlogic/gdx/utils/ComparableTimSort;->a:[Ljava/lang/Object;

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/ComparableTimSort;->ensureCapacity(I)[Ljava/lang/Object;

    move-result-object v11

    const/4 v2, 0x0

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-static {v10, v0, v11, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v2, p1, p2

    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v4, p4, -0x1

    add-int v3, p3, p4

    add-int/lit8 v6, v3, -0x1

    add-int/lit8 v3, v6, -0x1

    add-int/lit8 v5, v2, -0x1

    aget-object v2, v10, v2

    aput-object v2, v10, v6

    add-int/lit8 v6, p2, -0x1

    if-nez v6, :cond_0

    const/4 v2, 0x0

    add-int/lit8 v4, p4, -0x1

    sub-int/2addr v3, v4

    move/from16 v0, p4

    invoke-static {v11, v2, v10, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    return-void

    :cond_0
    const/4 v2, 0x1

    move/from16 v0, p4

    if-ne v0, v2, :cond_1

    sub-int v2, v3, v6

    sub-int v3, v5, v6

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v5, v2, 0x1

    invoke-static {v10, v3, v10, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v3, v11, v4

    aput-object v3, v10, v2

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/badlogic/gdx/utils/ComparableTimSort;->minGallop:I

    move v14, v2

    move v2, v3

    move v3, v14

    :goto_1
    const/4 v8, 0x0

    const/4 v7, 0x0

    move v9, v6

    move v6, v2

    move v14, v8

    move v8, v5

    move v5, v14

    move v15, v4

    move v4, v7

    move v7, v15

    :goto_2
    aget-object v2, v11, v7

    check-cast v2, Ljava/lang/Comparable;

    aget-object v12, v10, v8

    invoke-interface {v2, v12}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_3

    add-int/lit8 v2, v6, -0x1

    add-int/lit8 v4, v8, -0x1

    aget-object v8, v10, v8

    aput-object v8, v10, v6

    add-int/lit8 v6, v5, 0x1

    const/4 v5, 0x0

    add-int/lit8 v9, v9, -0x1

    if-nez v9, :cond_11

    move v8, v4

    move v4, v7

    move v14, v2

    move v2, v3

    move v3, v14

    :goto_3
    const/4 v5, 0x1

    if-ge v2, v5, :cond_2

    const/4 v2, 0x1

    :cond_2
    move-object/from16 v0, p0

    iput v2, v0, Lcom/badlogic/gdx/utils/ComparableTimSort;->minGallop:I

    const/4 v2, 0x1

    move/from16 v0, p4

    if-ne v0, v2, :cond_d

    sub-int v2, v3, v9

    sub-int v3, v8, v9

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v5, v2, 0x1

    invoke-static {v10, v3, v10, v5, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v3, v11, v4

    aput-object v3, v10, v2

    goto :goto_0

    :cond_3
    add-int/lit8 v5, v6, -0x1

    add-int/lit8 v2, v7, -0x1

    aget-object v7, v11, v7

    aput-object v7, v10, v6

    add-int/lit8 v4, v4, 0x1

    const/4 v6, 0x0

    add-int/lit8 p4, p4, -0x1

    const/4 v7, 0x1

    move/from16 v0, p4

    if-ne v0, v7, :cond_4

    move v4, v2

    move v2, v3

    move v3, v5

    goto :goto_3

    :cond_4
    move v7, v8

    move v8, v9

    move v14, v2

    move v2, v4

    move v4, v6

    move v6, v14

    :goto_4
    or-int v9, v4, v2

    if-lt v9, v3, :cond_10

    move v14, v3

    move v3, v7

    move v7, v14

    :goto_5
    aget-object v2, v11, v6

    check-cast v2, Ljava/lang/Comparable;

    add-int/lit8 v4, v8, -0x1

    move/from16 v0, p1

    invoke-static {v2, v10, v0, v8, v4}, Lcom/badlogic/gdx/utils/ComparableTimSort;->gallopRight(Ljava/lang/Comparable;[Ljava/lang/Object;III)I

    move-result v2

    sub-int v12, v8, v2

    if-eqz v12, :cond_5

    sub-int/2addr v5, v12

    sub-int/2addr v3, v12

    sub-int/2addr v8, v12

    add-int/lit8 v2, v3, 0x1

    add-int/lit8 v4, v5, 0x1

    invoke-static {v10, v2, v10, v4, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-nez v8, :cond_5

    move v2, v7

    move v4, v6

    move v9, v8

    move v8, v3

    move v3, v5

    goto :goto_3

    :cond_5
    move v9, v8

    move v8, v3

    add-int/lit8 v3, v5, -0x1

    add-int/lit8 v4, v6, -0x1

    aget-object v2, v11, v6

    aput-object v2, v10, v5

    add-int/lit8 p4, p4, -0x1

    const/4 v2, 0x1

    move/from16 v0, p4

    if-ne v0, v2, :cond_6

    move v2, v7

    goto :goto_3

    :cond_6
    aget-object v2, v10, v8

    check-cast v2, Ljava/lang/Comparable;

    const/4 v5, 0x0

    add-int/lit8 v6, p4, -0x1

    move/from16 v0, p4

    invoke-static {v2, v11, v5, v0, v6}, Lcom/badlogic/gdx/utils/ComparableTimSort;->gallopLeft(Ljava/lang/Comparable;[Ljava/lang/Object;III)I

    move-result v2

    sub-int v13, p4, v2

    if-eqz v13, :cond_7

    sub-int v2, v3, v13

    sub-int/2addr v4, v13

    sub-int p4, p4, v13

    add-int/lit8 v3, v4, 0x1

    add-int/lit8 v5, v2, 0x1

    invoke-static {v11, v3, v10, v5, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v3, 0x1

    move/from16 v0, p4

    if-gt v0, v3, :cond_8

    move v3, v2

    move v2, v7

    goto/16 :goto_3

    :cond_7
    move v2, v3

    :cond_8
    add-int/lit8 v3, v2, -0x1

    add-int/lit8 v5, v8, -0x1

    aget-object v6, v10, v8

    aput-object v6, v10, v2

    add-int/lit8 v6, v9, -0x1

    if-nez v6, :cond_9

    move v2, v7

    move v8, v5

    move v9, v6

    goto/16 :goto_3

    :cond_9
    add-int/lit8 v2, v7, -0x1

    const/4 v7, 0x7

    if-lt v12, v7, :cond_b

    const/4 v7, 0x1

    move v8, v7

    :goto_6
    const/4 v7, 0x7

    if-lt v13, v7, :cond_c

    const/4 v7, 0x1

    :goto_7
    or-int/2addr v7, v8

    if-nez v7, :cond_f

    if-gez v2, :cond_a

    const/4 v2, 0x0

    :cond_a
    add-int/lit8 v2, v2, 0x2

    move v14, v2

    move v2, v3

    move v3, v14

    goto/16 :goto_1

    :cond_b
    const/4 v7, 0x0

    move v8, v7

    goto :goto_6

    :cond_c
    const/4 v7, 0x0

    goto :goto_7

    :cond_d
    if-nez p4, :cond_e

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Comparison method violates its general contract!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_e
    const/4 v2, 0x0

    add-int/lit8 v4, p4, -0x1

    sub-int/2addr v3, v4

    move/from16 v0, p4

    invoke-static {v11, v2, v10, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_0

    :cond_f
    move v7, v2

    move v8, v6

    move v6, v4

    move v14, v5

    move v5, v3

    move v3, v14

    goto/16 :goto_5

    :cond_10
    move v9, v8

    move v8, v7

    move v7, v6

    move v6, v5

    move v5, v4

    move v4, v2

    goto/16 :goto_2

    :cond_11
    move v8, v9

    move v14, v6

    move v6, v7

    move v7, v4

    move v4, v14

    move v15, v2

    move v2, v5

    move v5, v15

    goto/16 :goto_4
.end method

.method private mergeLo(IIII)V
    .locals 16

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/badlogic/gdx/utils/ComparableTimSort;->a:[Ljava/lang/Object;

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/ComparableTimSort;->ensureCapacity(I)[Ljava/lang/Object;

    move-result-object v11

    const/4 v2, 0x0

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v10, v0, v11, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v5, 0x0

    add-int/lit8 v3, p1, 0x1

    add-int/lit8 v4, p3, 0x1

    aget-object v2, v10, p3

    aput-object v2, v10, p1

    add-int/lit8 v6, p4, -0x1

    if-nez v6, :cond_0

    move/from16 v0, p2

    invoke-static {v11, v5, v10, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    return-void

    :cond_0
    const/4 v2, 0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_1

    invoke-static {v10, v4, v10, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v2, v3, v6

    aget-object v3, v11, v5

    aput-object v3, v10, v2

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/badlogic/gdx/utils/ComparableTimSort;->minGallop:I

    move v14, v2

    move v2, v3

    move v3, v14

    :goto_1
    const/4 v8, 0x0

    const/4 v7, 0x0

    move v9, v6

    move v6, v2

    move v14, v8

    move v8, v5

    move v5, v14

    move v15, v4

    move v4, v7

    move v7, v15

    :goto_2
    aget-object v2, v10, v7

    check-cast v2, Ljava/lang/Comparable;

    aget-object v12, v11, v8

    invoke-interface {v2, v12}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_3

    add-int/lit8 v5, v6, 0x1

    add-int/lit8 v2, v7, 0x1

    aget-object v7, v10, v7

    aput-object v7, v10, v6

    add-int/lit8 v4, v4, 0x1

    const/4 v7, 0x0

    add-int/lit8 v6, v9, -0x1

    if-nez v6, :cond_11

    move v4, v2

    move v9, v8

    move v2, v3

    move v3, v5

    :goto_3
    const/4 v5, 0x1

    if-ge v2, v5, :cond_2

    const/4 v2, 0x1

    :cond_2
    move-object/from16 v0, p0

    iput v2, v0, Lcom/badlogic/gdx/utils/ComparableTimSort;->minGallop:I

    const/4 v2, 0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_d

    invoke-static {v10, v4, v10, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v2, v3, v6

    aget-object v3, v11, v9

    aput-object v3, v10, v2

    goto :goto_0

    :cond_3
    add-int/lit8 v2, v6, 0x1

    add-int/lit8 v4, v8, 0x1

    aget-object v8, v11, v8

    aput-object v8, v10, v6

    add-int/lit8 v6, v5, 0x1

    const/4 v5, 0x0

    add-int/lit8 p2, p2, -0x1

    const/4 v8, 0x1

    move/from16 v0, p2

    if-ne v0, v8, :cond_4

    move v6, v9

    move v9, v4

    move v4, v7

    move v14, v2

    move v2, v3

    move v3, v14

    goto :goto_3

    :cond_4
    move v8, v9

    move v14, v6

    move v6, v7

    move v7, v4

    move v4, v14

    move v15, v2

    move v2, v5

    move v5, v15

    :goto_4
    or-int v9, v4, v2

    if-lt v9, v3, :cond_10

    move v14, v3

    move v3, v7

    move v7, v14

    :goto_5
    aget-object v2, v10, v6

    check-cast v2, Ljava/lang/Comparable;

    const/4 v4, 0x0

    move/from16 v0, p2

    invoke-static {v2, v11, v3, v0, v4}, Lcom/badlogic/gdx/utils/ComparableTimSort;->gallopRight(Ljava/lang/Comparable;[Ljava/lang/Object;III)I

    move-result v12

    if-eqz v12, :cond_5

    invoke-static {v11, v3, v10, v5, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v5, v12

    add-int/2addr v3, v12

    sub-int p2, p2, v12

    const/4 v2, 0x1

    move/from16 v0, p2

    if-gt v0, v2, :cond_5

    move v2, v7

    move v4, v6

    move v9, v3

    move v3, v5

    move v6, v8

    goto :goto_3

    :cond_5
    move v9, v3

    add-int/lit8 v3, v5, 0x1

    add-int/lit8 v4, v6, 0x1

    aget-object v2, v10, v6

    aput-object v2, v10, v5

    add-int/lit8 v6, v8, -0x1

    if-nez v6, :cond_6

    move v2, v7

    goto :goto_3

    :cond_6
    aget-object v2, v11, v9

    check-cast v2, Ljava/lang/Comparable;

    const/4 v5, 0x0

    invoke-static {v2, v10, v4, v6, v5}, Lcom/badlogic/gdx/utils/ComparableTimSort;->gallopLeft(Ljava/lang/Comparable;[Ljava/lang/Object;III)I

    move-result v13

    if-eqz v13, :cond_7

    invoke-static {v10, v4, v10, v3, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v2, v3, v13

    add-int/2addr v4, v13

    sub-int/2addr v6, v13

    if-nez v6, :cond_8

    move v3, v2

    move v2, v7

    goto/16 :goto_3

    :cond_7
    move v2, v3

    :cond_8
    add-int/lit8 v3, v2, 0x1

    add-int/lit8 v5, v9, 0x1

    aget-object v8, v11, v9

    aput-object v8, v10, v2

    add-int/lit8 p2, p2, -0x1

    const/4 v2, 0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_9

    move v2, v7

    move v9, v5

    goto/16 :goto_3

    :cond_9
    add-int/lit8 v2, v7, -0x1

    const/4 v7, 0x7

    if-lt v12, v7, :cond_b

    const/4 v7, 0x1

    move v8, v7

    :goto_6
    const/4 v7, 0x7

    if-lt v13, v7, :cond_c

    const/4 v7, 0x1

    :goto_7
    or-int/2addr v7, v8

    if-nez v7, :cond_f

    if-gez v2, :cond_a

    const/4 v2, 0x0

    :cond_a
    add-int/lit8 v2, v2, 0x2

    move v14, v2

    move v2, v3

    move v3, v14

    goto/16 :goto_1

    :cond_b
    const/4 v7, 0x0

    move v8, v7

    goto :goto_6

    :cond_c
    const/4 v7, 0x0

    goto :goto_7

    :cond_d
    if-nez p2, :cond_e

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Comparison method violates its general contract!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_e
    move/from16 v0, p2

    invoke-static {v11, v9, v10, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_0

    :cond_f
    move v7, v2

    move v8, v6

    move v6, v4

    move v14, v5

    move v5, v3

    move v3, v14

    goto/16 :goto_5

    :cond_10
    move v9, v8

    move v8, v7

    move v7, v6

    move v6, v5

    move v5, v4

    move v4, v2

    goto/16 :goto_2

    :cond_11
    move v14, v4

    move v4, v7

    move v7, v8

    move v8, v6

    move v6, v2

    move v2, v14

    goto/16 :goto_4
.end method

.method private static minRunLength(I)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x20

    if-ge p0, v1, :cond_0

    add-int/2addr v0, p0

    return v0

    :cond_0
    and-int/lit8 v1, p0, 0x1

    or-int/2addr v0, v1

    shr-int/lit8 p0, p0, 0x1

    goto :goto_0
.end method

.method private pushRun(II)V
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->runBase:[I

    iget v1, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->stackSize:I

    aput p1, v0, v1

    iget-object v0, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->runLen:[I

    iget v1, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->stackSize:I

    aput p2, v0, v1

    iget v0, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->stackSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->stackSize:I

    return-void
.end method

.method private static rangeCheck(III)V
    .locals 3

    if-le p1, p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "fromIndex("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") > toIndex("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-gez p1, :cond_1

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    :cond_1
    if-le p2, p0, :cond_2

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    :cond_2
    return-void
.end method

.method private static reverseRange([Ljava/lang/Object;II)V
    .locals 4

    add-int/lit8 v0, p2, -0x1

    :goto_0
    if-lt p1, v0, :cond_0

    return-void

    :cond_0
    aget-object v3, p0, p1

    add-int/lit8 v2, p1, 0x1

    aget-object v1, p0, v0

    aput-object v1, p0, p1

    add-int/lit8 v1, v0, -0x1

    aput-object v3, p0, v0

    move v0, v1

    move p1, v2

    goto :goto_0
.end method

.method static sort([Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/badlogic/gdx/utils/ComparableTimSort;->sort([Ljava/lang/Object;II)V

    return-void
.end method

.method static sort([Ljava/lang/Object;II)V
    .locals 6

    array-length v0, p0

    invoke-static {v0, p1, p2}, Lcom/badlogic/gdx/utils/ComparableTimSort;->rangeCheck(III)V

    sub-int v0, p2, p1

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/16 v1, 0x20

    if-ge v0, v1, :cond_1

    invoke-static {p0, p1, p2}, Lcom/badlogic/gdx/utils/ComparableTimSort;->countRunAndMakeAscending([Ljava/lang/Object;II)I

    move-result v0

    add-int/2addr v0, p1

    invoke-static {p0, p1, p2, v0}, Lcom/badlogic/gdx/utils/ComparableTimSort;->binarySort([Ljava/lang/Object;III)V

    goto :goto_0

    :cond_1
    new-instance v4, Lcom/badlogic/gdx/utils/ComparableTimSort;

    invoke-direct {v4, p0}, Lcom/badlogic/gdx/utils/ComparableTimSort;-><init>([Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/badlogic/gdx/utils/ComparableTimSort;->minRunLength(I)I

    move-result v2

    :cond_2
    invoke-static {p0, p1, p2}, Lcom/badlogic/gdx/utils/ComparableTimSort;->countRunAndMakeAscending([Ljava/lang/Object;II)I

    move-result v3

    if-ge v3, v2, :cond_4

    if-gt v0, v2, :cond_3

    move v1, v0

    :goto_1
    add-int v5, p1, v1

    add-int/2addr v3, p1

    invoke-static {p0, p1, v5, v3}, Lcom/badlogic/gdx/utils/ComparableTimSort;->binarySort([Ljava/lang/Object;III)V

    :goto_2
    invoke-direct {v4, p1, v1}, Lcom/badlogic/gdx/utils/ComparableTimSort;->pushRun(II)V

    invoke-direct {v4}, Lcom/badlogic/gdx/utils/ComparableTimSort;->mergeCollapse()V

    add-int/2addr p1, v1

    sub-int/2addr v0, v1

    if-nez v0, :cond_2

    invoke-direct {v4}, Lcom/badlogic/gdx/utils/ComparableTimSort;->mergeForceCollapse()V

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1

    :cond_4
    move v1, v3

    goto :goto_2
.end method


# virtual methods
.method public doSort([Ljava/lang/Object;II)V
    .locals 5

    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->stackSize:I

    array-length v0, p1

    invoke-static {v0, p2, p3}, Lcom/badlogic/gdx/utils/ComparableTimSort;->rangeCheck(III)V

    sub-int v0, p3, p2

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/16 v1, 0x20

    if-ge v0, v1, :cond_1

    invoke-static {p1, p2, p3}, Lcom/badlogic/gdx/utils/ComparableTimSort;->countRunAndMakeAscending([Ljava/lang/Object;II)I

    move-result v0

    add-int/2addr v0, p2

    invoke-static {p1, p2, p3, v0}, Lcom/badlogic/gdx/utils/ComparableTimSort;->binarySort([Ljava/lang/Object;III)V

    goto :goto_0

    :cond_1
    iput-object p1, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->a:[Ljava/lang/Object;

    invoke-static {v0}, Lcom/badlogic/gdx/utils/ComparableTimSort;->minRunLength(I)I

    move-result v2

    :cond_2
    invoke-static {p1, p2, p3}, Lcom/badlogic/gdx/utils/ComparableTimSort;->countRunAndMakeAscending([Ljava/lang/Object;II)I

    move-result v3

    if-ge v3, v2, :cond_4

    if-gt v0, v2, :cond_3

    move v1, v0

    :goto_1
    add-int v4, p2, v1

    add-int/2addr v3, p2

    invoke-static {p1, p2, v4, v3}, Lcom/badlogic/gdx/utils/ComparableTimSort;->binarySort([Ljava/lang/Object;III)V

    :goto_2
    invoke-direct {p0, p2, v1}, Lcom/badlogic/gdx/utils/ComparableTimSort;->pushRun(II)V

    invoke-direct {p0}, Lcom/badlogic/gdx/utils/ComparableTimSort;->mergeCollapse()V

    add-int/2addr p2, v1

    sub-int/2addr v0, v1

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/badlogic/gdx/utils/ComparableTimSort;->mergeForceCollapse()V

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1

    :cond_4
    move v1, v3

    goto :goto_2
.end method
