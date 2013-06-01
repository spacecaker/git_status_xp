.class Lcom/badlogic/gdx/utils/TimSort;
.super Ljava/lang/Object;


# static fields
.field private static final DEBUG:Z = false

.field private static final INITIAL_TMP_STORAGE_LENGTH:I = 0x100

.field private static final MIN_GALLOP:I = 0x7

.field private static final MIN_MERGE:I = 0x20


# instance fields
.field private a:[Ljava/lang/Object;

.field private c:Ljava/util/Comparator;

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

    iput v0, p0, Lcom/badlogic/gdx/utils/TimSort;->minGallop:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/utils/TimSort;->stackSize:I

    const/16 v0, 0x100

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/badlogic/gdx/utils/TimSort;->tmp:[Ljava/lang/Object;

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/badlogic/gdx/utils/TimSort;->runBase:[I

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/badlogic/gdx/utils/TimSort;->runLen:[I

    return-void
.end method

.method private constructor <init>([Ljava/lang/Object;Ljava/util/Comparator;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x7

    iput v0, p0, Lcom/badlogic/gdx/utils/TimSort;->minGallop:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/utils/TimSort;->stackSize:I

    iput-object p1, p0, Lcom/badlogic/gdx/utils/TimSort;->a:[Ljava/lang/Object;

    iput-object p2, p0, Lcom/badlogic/gdx/utils/TimSort;->c:Ljava/util/Comparator;

    array-length v1, p1

    const/16 v0, 0x200

    if-ge v1, v0, :cond_0

    ushr-int/lit8 v0, v1, 0x1

    :goto_0
    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/badlogic/gdx/utils/TimSort;->tmp:[Ljava/lang/Object;

    const/16 v0, 0x78

    if-ge v1, v0, :cond_1

    const/4 v0, 0x5

    :goto_1
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/badlogic/gdx/utils/TimSort;->runBase:[I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/badlogic/gdx/utils/TimSort;->runLen:[I

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

.method private static binarySort([Ljava/lang/Object;IIILjava/util/Comparator;)V
    .locals 6

    if-ne p3, p1, :cond_3

    add-int/lit8 v1, p3, 0x1

    :goto_0
    if-lt v1, p2, :cond_0

    return-void

    :cond_0
    aget-object v4, p0, v1

    move v0, v1

    move v3, p1

    :goto_1
    if-lt v3, v0, :cond_1

    sub-int v0, v1, v3

    packed-switch v0, :pswitch_data_0

    add-int/lit8 v2, v3, 0x1

    invoke-static {p0, v3, p0, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_2
    aput-object v4, p0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    add-int v2, v3, v0

    ushr-int/lit8 v2, v2, 0x1

    aget-object v5, p0, v2

    invoke-interface {p4, v4, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    if-gez v5, :cond_2

    move v0, v2

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    move v3, v2

    goto :goto_1

    :pswitch_0
    add-int/lit8 v0, v3, 0x2

    add-int/lit8 v2, v3, 0x1

    aget-object v2, p0, v2

    aput-object v2, p0, v0

    :pswitch_1
    add-int/lit8 v0, v3, 0x1

    aget-object v2, p0, v3

    aput-object v2, p0, v0

    goto :goto_2

    :cond_3
    move v1, p3

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static countRunAndMakeAscending([Ljava/lang/Object;IILjava/util/Comparator;)I
    .locals 3

    add-int/lit8 v1, p1, 0x1

    if-ne v1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    aget-object v1, p0, v1

    aget-object v2, p0, p1

    invoke-interface {p3, v1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_5

    :goto_1
    if-ge v0, p2, :cond_1

    aget-object v1, p0, v0

    add-int/lit8 v2, v0, -0x1

    aget-object v2, p0, v2

    invoke-interface {p3, v1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_3

    :cond_1
    invoke-static {p0, p1, v0}, Lcom/badlogic/gdx/utils/TimSort;->reverseRange([Ljava/lang/Object;II)V

    :cond_2
    :goto_2
    sub-int/2addr v0, p1

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v0, v0, 0x1

    :cond_5
    if-ge v0, p2, :cond_2

    aget-object v1, p0, v0

    add-int/lit8 v2, v0, -0x1

    aget-object v2, p0, v2

    invoke-interface {p3, v1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_4

    goto :goto_2
.end method

.method private ensureCapacity(I)[Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/utils/TimSort;->tmp:[Ljava/lang/Object;

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

    iput-object v0, p0, Lcom/badlogic/gdx/utils/TimSort;->tmp:[Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/TimSort;->tmp:[Ljava/lang/Object;

    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/badlogic/gdx/utils/TimSort;->a:[Ljava/lang/Object;

    array-length v1, v1

    ushr-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0
.end method

.method private static gallopLeft(Ljava/lang/Object;[Ljava/lang/Object;IIILjava/util/Comparator;)I
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x1

    add-int v0, p2, p4

    aget-object v0, p1, v0

    invoke-interface {p5, p0, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_2

    sub-int v0, p3, p4

    :goto_0
    if-ge v1, v0, :cond_0

    add-int v3, p2, p4

    add-int/2addr v3, v1

    aget-object v3, p1, v3

    invoke-interface {p5, p0, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

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

    invoke-interface {p5, p0, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

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

    invoke-interface {p5, p0, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

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

.method private static gallopRight(Ljava/lang/Object;[Ljava/lang/Object;IIILjava/util/Comparator;)I
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    add-int v0, p2, p4

    aget-object v0, p1, v0

    invoke-interface {p5, p0, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

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

    invoke-interface {p5, p0, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

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

    invoke-interface {p5, p0, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

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

    invoke-interface {p5, p0, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

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
    .locals 10

    iget-object v0, p0, Lcom/badlogic/gdx/utils/TimSort;->runBase:[I

    aget v2, v0, p1

    iget-object v0, p0, Lcom/badlogic/gdx/utils/TimSort;->runLen:[I

    aget v3, v0, p1

    iget-object v0, p0, Lcom/badlogic/gdx/utils/TimSort;->runBase:[I

    add-int/lit8 v1, p1, 0x1

    aget v6, v0, v1

    iget-object v0, p0, Lcom/badlogic/gdx/utils/TimSort;->runLen:[I

    add-int/lit8 v1, p1, 0x1

    aget v7, v0, v1

    iget-object v0, p0, Lcom/badlogic/gdx/utils/TimSort;->runLen:[I

    add-int v1, v3, v7

    aput v1, v0, p1

    iget v0, p0, Lcom/badlogic/gdx/utils/TimSort;->stackSize:I

    add-int/lit8 v0, v0, -0x3

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/utils/TimSort;->runBase:[I

    add-int/lit8 v1, p1, 0x1

    iget-object v4, p0, Lcom/badlogic/gdx/utils/TimSort;->runBase:[I

    add-int/lit8 v5, p1, 0x2

    aget v4, v4, v5

    aput v4, v0, v1

    iget-object v0, p0, Lcom/badlogic/gdx/utils/TimSort;->runLen:[I

    add-int/lit8 v1, p1, 0x1

    iget-object v4, p0, Lcom/badlogic/gdx/utils/TimSort;->runLen:[I

    add-int/lit8 v5, p1, 0x2

    aget v4, v4, v5

    aput v4, v0, v1

    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/utils/TimSort;->stackSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/TimSort;->stackSize:I

    iget-object v0, p0, Lcom/badlogic/gdx/utils/TimSort;->a:[Ljava/lang/Object;

    aget-object v0, v0, v6

    iget-object v1, p0, Lcom/badlogic/gdx/utils/TimSort;->a:[Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/badlogic/gdx/utils/TimSort;->c:Ljava/util/Comparator;

    invoke-static/range {v0 .. v5}, Lcom/badlogic/gdx/utils/TimSort;->gallopRight(Ljava/lang/Object;[Ljava/lang/Object;IIILjava/util/Comparator;)I

    move-result v0

    add-int v8, v2, v0

    sub-int v9, v3, v0

    if-nez v9, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/utils/TimSort;->a:[Ljava/lang/Object;

    add-int v1, v8, v9

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/utils/TimSort;->a:[Ljava/lang/Object;

    add-int/lit8 v4, v7, -0x1

    iget-object v5, p0, Lcom/badlogic/gdx/utils/TimSort;->c:Ljava/util/Comparator;

    move v2, v6

    move v3, v7

    invoke-static/range {v0 .. v5}, Lcom/badlogic/gdx/utils/TimSort;->gallopLeft(Ljava/lang/Object;[Ljava/lang/Object;IIILjava/util/Comparator;)I

    move-result v0

    if-eqz v0, :cond_1

    if-gt v9, v0, :cond_3

    invoke-direct {p0, v8, v9, v6, v0}, Lcom/badlogic/gdx/utils/TimSort;->mergeLo(IIII)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, v8, v9, v6, v0}, Lcom/badlogic/gdx/utils/TimSort;->mergeHi(IIII)V

    goto :goto_0
.end method

.method private mergeCollapse()V
    .locals 5

    :goto_0
    iget v0, p0, Lcom/badlogic/gdx/utils/TimSort;->stackSize:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget v0, p0, Lcom/badlogic/gdx/utils/TimSort;->stackSize:I

    add-int/lit8 v0, v0, -0x2

    if-lez v0, :cond_3

    iget-object v1, p0, Lcom/badlogic/gdx/utils/TimSort;->runLen:[I

    add-int/lit8 v2, v0, -0x1

    aget v1, v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/utils/TimSort;->runLen:[I

    aget v2, v2, v0

    iget-object v3, p0, Lcom/badlogic/gdx/utils/TimSort;->runLen:[I

    add-int/lit8 v4, v0, 0x1

    aget v3, v3, v4

    add-int/2addr v2, v3

    if-gt v1, v2, :cond_3

    iget-object v1, p0, Lcom/badlogic/gdx/utils/TimSort;->runLen:[I

    add-int/lit8 v2, v0, -0x1

    aget v1, v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/utils/TimSort;->runLen:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    if-ge v1, v2, :cond_2

    add-int/lit8 v0, v0, -0x1

    :cond_2
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/TimSort;->mergeAt(I)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/badlogic/gdx/utils/TimSort;->runLen:[I

    aget v1, v1, v0

    iget-object v2, p0, Lcom/badlogic/gdx/utils/TimSort;->runLen:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    if-gt v1, v2, :cond_0

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/TimSort;->mergeAt(I)V

    goto :goto_0
.end method

.method private mergeForceCollapse()V
    .locals 4

    :goto_0
    iget v0, p0, Lcom/badlogic/gdx/utils/TimSort;->stackSize:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/utils/TimSort;->stackSize:I

    add-int/lit8 v0, v0, -0x2

    if-lez v0, :cond_1

    iget-object v1, p0, Lcom/badlogic/gdx/utils/TimSort;->runLen:[I

    add-int/lit8 v2, v0, -0x1

    aget v1, v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/utils/TimSort;->runLen:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    if-ge v1, v2, :cond_1

    add-int/lit8 v0, v0, -0x1

    :cond_1
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/TimSort;->mergeAt(I)V

    goto :goto_0
.end method

.method private mergeHi(IIII)V
    .locals 19

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/utils/TimSort;->a:[Ljava/lang/Object;

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/TimSort;->ensureCapacity(I)[Ljava/lang/Object;

    move-result-object v9

    const/4 v2, 0x0

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-static {v3, v0, v9, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v2, p1, p2

    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v5, p4, -0x1

    add-int v4, p3, p4

    add-int/lit8 v7, v4, -0x1

    add-int/lit8 v4, v7, -0x1

    add-int/lit8 v6, v2, -0x1

    aget-object v2, v3, v2

    aput-object v2, v3, v7

    add-int/lit8 v8, p2, -0x1

    if-nez v8, :cond_0

    const/4 v2, 0x0

    add-int/lit8 v5, p4, -0x1

    sub-int/2addr v4, v5

    move/from16 v0, p4

    invoke-static {v9, v2, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    return-void

    :cond_0
    const/4 v2, 0x1

    move/from16 v0, p4

    if-ne v0, v2, :cond_1

    sub-int v2, v4, v8

    sub-int v4, v6, v8

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v6, v2, 0x1

    invoke-static {v3, v4, v3, v6, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v4, v9, v5

    aput-object v4, v3, v2

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/badlogic/gdx/utils/TimSort;->c:Ljava/util/Comparator;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/badlogic/gdx/utils/TimSort;->minGallop:I

    :goto_1
    const/4 v11, 0x0

    const/4 v10, 0x0

    move/from16 v17, v10

    move v10, v6

    move v6, v4

    move/from16 v4, v17

    move/from16 v18, v5

    move v5, v11

    move v11, v8

    move/from16 v8, v18

    :cond_2
    aget-object v12, v9, v8

    aget-object v13, v3, v10

    invoke-interface {v7, v12, v13}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v12

    if-gez v12, :cond_4

    add-int/lit8 v4, v6, -0x1

    add-int/lit8 v12, v10, -0x1

    aget-object v10, v3, v10

    aput-object v10, v3, v6

    add-int/lit8 v6, v5, 0x1

    const/4 v5, 0x0

    add-int/lit8 v15, v11, -0x1

    if-nez v15, :cond_11

    move v5, v8

    move v10, v12

    :goto_2
    const/4 v6, 0x1

    if-ge v2, v6, :cond_3

    const/4 v2, 0x1

    :cond_3
    move-object/from16 v0, p0

    iput v2, v0, Lcom/badlogic/gdx/utils/TimSort;->minGallop:I

    const/4 v2, 0x1

    move/from16 v0, p4

    if-ne v0, v2, :cond_d

    sub-int v2, v4, v15

    sub-int v4, v10, v15

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v6, v2, 0x1

    invoke-static {v3, v4, v3, v6, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v4, v9, v5

    aput-object v4, v3, v2

    goto :goto_0

    :cond_4
    add-int/lit8 v5, v6, -0x1

    add-int/lit8 v12, v8, -0x1

    aget-object v8, v9, v8

    aput-object v8, v3, v6

    add-int/lit8 v4, v4, 0x1

    const/4 v6, 0x0

    add-int/lit8 p4, p4, -0x1

    const/4 v8, 0x1

    move/from16 v0, p4

    if-ne v0, v8, :cond_5

    move v4, v5

    move v15, v11

    move v5, v12

    goto :goto_2

    :cond_5
    move v8, v12

    move/from16 v17, v5

    move v5, v6

    move/from16 v6, v17

    :goto_3
    or-int v12, v5, v4

    if-lt v12, v2, :cond_2

    move v14, v2

    move v5, v11

    move v11, v10

    move v10, v8

    move v8, v6

    :goto_4
    aget-object v2, v9, v10

    add-int/lit8 v6, v5, -0x1

    move/from16 v4, p1

    invoke-static/range {v2 .. v7}, Lcom/badlogic/gdx/utils/TimSort;->gallopRight(Ljava/lang/Object;[Ljava/lang/Object;IIILjava/util/Comparator;)I

    move-result v2

    sub-int v16, v5, v2

    if-eqz v16, :cond_6

    sub-int v8, v8, v16

    sub-int v11, v11, v16

    sub-int v5, v5, v16

    add-int/lit8 v2, v11, 0x1

    add-int/lit8 v4, v8, 0x1

    move/from16 v0, v16

    invoke-static {v3, v2, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-nez v5, :cond_6

    move v2, v14

    move v4, v8

    move v15, v5

    move v5, v10

    move v10, v11

    goto :goto_2

    :cond_6
    move v2, v11

    move v15, v5

    add-int/lit8 v4, v8, -0x1

    add-int/lit8 v5, v10, -0x1

    aget-object v6, v9, v10

    aput-object v6, v3, v8

    add-int/lit8 v11, p4, -0x1

    const/4 v6, 0x1

    if-ne v11, v6, :cond_7

    move v10, v2

    move/from16 p4, v11

    move v2, v14

    goto :goto_2

    :cond_7
    aget-object v8, v3, v2

    const/4 v10, 0x0

    add-int/lit8 v12, v11, -0x1

    move-object v13, v7

    invoke-static/range {v8 .. v13}, Lcom/badlogic/gdx/utils/TimSort;->gallopLeft(Ljava/lang/Object;[Ljava/lang/Object;IIILjava/util/Comparator;)I

    move-result v6

    sub-int v12, v11, v6

    if-eqz v12, :cond_10

    sub-int/2addr v4, v12

    sub-int/2addr v5, v12

    sub-int p4, v11, v12

    add-int/lit8 v6, v5, 0x1

    add-int/lit8 v8, v4, 0x1

    invoke-static {v9, v6, v3, v8, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v6, 0x1

    move/from16 v0, p4

    if-gt v0, v6, :cond_8

    move v10, v2

    move v2, v14

    goto/16 :goto_2

    :cond_8
    move v8, v4

    :goto_5
    add-int/lit8 v4, v8, -0x1

    add-int/lit8 v6, v2, -0x1

    aget-object v2, v3, v2

    aput-object v2, v3, v8

    add-int/lit8 v8, v15, -0x1

    if-nez v8, :cond_9

    move v2, v14

    move v10, v6

    move v15, v8

    goto/16 :goto_2

    :cond_9
    add-int/lit8 v2, v14, -0x1

    const/4 v10, 0x7

    move/from16 v0, v16

    if-lt v0, v10, :cond_b

    const/4 v10, 0x1

    move v11, v10

    :goto_6
    const/4 v10, 0x7

    if-lt v12, v10, :cond_c

    const/4 v10, 0x1

    :goto_7
    or-int/2addr v10, v11

    if-nez v10, :cond_f

    if-gez v2, :cond_a

    const/4 v2, 0x0

    :cond_a
    add-int/lit8 v2, v2, 0x2

    goto/16 :goto_1

    :cond_b
    const/4 v10, 0x0

    move v11, v10

    goto :goto_6

    :cond_c
    const/4 v10, 0x0

    goto :goto_7

    :cond_d
    if-nez p4, :cond_e

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Comparison method violates its general contract!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_e
    const/4 v2, 0x0

    add-int/lit8 v5, p4, -0x1

    sub-int/2addr v4, v5

    move/from16 v0, p4

    invoke-static {v9, v2, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_0

    :cond_f
    move v14, v2

    move v10, v5

    move v11, v6

    move v5, v8

    move v8, v4

    goto/16 :goto_4

    :cond_10
    move v8, v4

    move/from16 p4, v11

    goto :goto_5

    :cond_11
    move v10, v12

    move v11, v15

    move/from16 v17, v4

    move v4, v5

    move v5, v6

    move/from16 v6, v17

    goto/16 :goto_3
.end method

.method private mergeLo(IIII)V
    .locals 19

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/badlogic/gdx/utils/TimSort;->a:[Ljava/lang/Object;

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/TimSort;->ensureCapacity(I)[Ljava/lang/Object;

    move-result-object v3

    const/4 v2, 0x0

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v9, v0, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v6, 0x0

    add-int/lit8 v4, p1, 0x1

    add-int/lit8 v5, p3, 0x1

    aget-object v2, v9, p3

    aput-object v2, v9, p1

    add-int/lit8 v8, p4, -0x1

    if-nez v8, :cond_0

    move/from16 v0, p2

    invoke-static {v3, v6, v9, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    return-void

    :cond_0
    const/4 v2, 0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_1

    invoke-static {v9, v5, v9, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v2, v4, v8

    aget-object v3, v3, v6

    aput-object v3, v9, v2

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/badlogic/gdx/utils/TimSort;->c:Ljava/util/Comparator;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/badlogic/gdx/utils/TimSort;->minGallop:I

    :goto_1
    const/4 v11, 0x0

    const/4 v10, 0x0

    move/from16 v17, v10

    move v10, v6

    move v6, v4

    move/from16 v4, v17

    move/from16 v18, v5

    move v5, v11

    move v11, v8

    move/from16 v8, v18

    :cond_2
    aget-object v12, v9, v8

    aget-object v13, v3, v10

    invoke-interface {v7, v12, v13}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v12

    if-gez v12, :cond_4

    add-int/lit8 v5, v6, 0x1

    add-int/lit8 v12, v8, 0x1

    aget-object v8, v9, v8

    aput-object v8, v9, v6

    add-int/lit8 v4, v4, 0x1

    const/4 v6, 0x0

    add-int/lit8 v11, v11, -0x1

    if-nez v11, :cond_11

    move v4, v5

    move v5, v12

    :goto_2
    const/4 v6, 0x1

    if-ge v2, v6, :cond_3

    const/4 v2, 0x1

    :cond_3
    move-object/from16 v0, p0

    iput v2, v0, Lcom/badlogic/gdx/utils/TimSort;->minGallop:I

    const/4 v2, 0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_d

    invoke-static {v9, v5, v9, v4, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v2, v4, v11

    aget-object v3, v3, v10

    aput-object v3, v9, v2

    goto :goto_0

    :cond_4
    add-int/lit8 v4, v6, 0x1

    add-int/lit8 v12, v10, 0x1

    aget-object v10, v3, v10

    aput-object v10, v9, v6

    add-int/lit8 v6, v5, 0x1

    const/4 v5, 0x0

    add-int/lit8 p2, p2, -0x1

    const/4 v10, 0x1

    move/from16 v0, p2

    if-ne v0, v10, :cond_5

    move v5, v8

    move v10, v12

    goto :goto_2

    :cond_5
    move v10, v12

    move/from16 v17, v6

    move v6, v4

    move v4, v5

    move/from16 v5, v17

    :goto_3
    or-int v12, v5, v4

    if-lt v12, v2, :cond_2

    move v14, v2

    move v4, v10

    move v12, v11

    move/from16 v5, p2

    move v11, v8

    move v8, v6

    :goto_4
    aget-object v2, v9, v11

    const/4 v6, 0x0

    invoke-static/range {v2 .. v7}, Lcom/badlogic/gdx/utils/TimSort;->gallopRight(Ljava/lang/Object;[Ljava/lang/Object;IIILjava/util/Comparator;)I

    move-result v16

    if-eqz v16, :cond_6

    move/from16 v0, v16

    invoke-static {v3, v4, v9, v8, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v8, v8, v16

    add-int v4, v4, v16

    sub-int v5, v5, v16

    const/4 v2, 0x1

    if-gt v5, v2, :cond_6

    move v2, v14

    move v10, v4

    move/from16 p2, v5

    move v4, v8

    move v5, v11

    move v11, v12

    goto :goto_2

    :cond_6
    move v2, v4

    move v15, v5

    add-int/lit8 v4, v8, 0x1

    add-int/lit8 v10, v11, 0x1

    aget-object v5, v9, v11

    aput-object v5, v9, v8

    add-int/lit8 v11, v12, -0x1

    if-nez v11, :cond_7

    move v5, v10

    move/from16 p2, v15

    move v10, v2

    move v2, v14

    goto :goto_2

    :cond_7
    aget-object v8, v3, v2

    const/4 v12, 0x0

    move-object v13, v7

    invoke-static/range {v8 .. v13}, Lcom/badlogic/gdx/utils/TimSort;->gallopLeft(Ljava/lang/Object;[Ljava/lang/Object;IIILjava/util/Comparator;)I

    move-result v12

    if-eqz v12, :cond_10

    invoke-static {v9, v10, v9, v4, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v4, v12

    add-int v5, v10, v12

    sub-int v8, v11, v12

    if-nez v8, :cond_8

    move v10, v2

    move v11, v8

    move/from16 p2, v15

    move v2, v14

    goto/16 :goto_2

    :cond_8
    move v10, v4

    :goto_5
    add-int/lit8 v4, v10, 0x1

    add-int/lit8 v6, v2, 0x1

    aget-object v2, v3, v2

    aput-object v2, v9, v10

    add-int/lit8 p2, v15, -0x1

    const/4 v2, 0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_9

    move v2, v14

    move v10, v6

    move v11, v8

    goto/16 :goto_2

    :cond_9
    add-int/lit8 v2, v14, -0x1

    const/4 v10, 0x7

    move/from16 v0, v16

    if-lt v0, v10, :cond_b

    const/4 v10, 0x1

    move v11, v10

    :goto_6
    const/4 v10, 0x7

    if-lt v12, v10, :cond_c

    const/4 v10, 0x1

    :goto_7
    or-int/2addr v10, v11

    if-nez v10, :cond_f

    if-gez v2, :cond_a

    const/4 v2, 0x0

    :cond_a
    add-int/lit8 v2, v2, 0x2

    goto/16 :goto_1

    :cond_b
    const/4 v10, 0x0

    move v11, v10

    goto :goto_6

    :cond_c
    const/4 v10, 0x0

    goto :goto_7

    :cond_d
    if-nez p2, :cond_e

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Comparison method violates its general contract!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_e
    move/from16 v0, p2

    invoke-static {v3, v10, v9, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_0

    :cond_f
    move v14, v2

    move v11, v5

    move v12, v8

    move v8, v4

    move/from16 v5, p2

    move v4, v6

    goto/16 :goto_4

    :cond_10
    move v5, v10

    move v8, v11

    move v10, v4

    goto :goto_5

    :cond_11
    move v8, v12

    move/from16 v17, v5

    move v5, v6

    move/from16 v6, v17

    goto/16 :goto_3
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

    iget-object v0, p0, Lcom/badlogic/gdx/utils/TimSort;->runBase:[I

    iget v1, p0, Lcom/badlogic/gdx/utils/TimSort;->stackSize:I

    aput p1, v0, v1

    iget-object v0, p0, Lcom/badlogic/gdx/utils/TimSort;->runLen:[I

    iget v1, p0, Lcom/badlogic/gdx/utils/TimSort;->stackSize:I

    aput p2, v0, v1

    iget v0, p0, Lcom/badlogic/gdx/utils/TimSort;->stackSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/TimSort;->stackSize:I

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

.method static sort([Ljava/lang/Object;IILjava/util/Comparator;)V
    .locals 6

    if-nez p3, :cond_1

    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;II)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    array-length v0, p0

    invoke-static {v0, p1, p2}, Lcom/badlogic/gdx/utils/TimSort;->rangeCheck(III)V

    sub-int v0, p2, p1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const/16 v1, 0x20

    if-ge v0, v1, :cond_2

    invoke-static {p0, p1, p2, p3}, Lcom/badlogic/gdx/utils/TimSort;->countRunAndMakeAscending([Ljava/lang/Object;IILjava/util/Comparator;)I

    move-result v0

    add-int/2addr v0, p1

    invoke-static {p0, p1, p2, v0, p3}, Lcom/badlogic/gdx/utils/TimSort;->binarySort([Ljava/lang/Object;IIILjava/util/Comparator;)V

    goto :goto_0

    :cond_2
    new-instance v4, Lcom/badlogic/gdx/utils/TimSort;

    invoke-direct {v4, p0, p3}, Lcom/badlogic/gdx/utils/TimSort;-><init>([Ljava/lang/Object;Ljava/util/Comparator;)V

    invoke-static {v0}, Lcom/badlogic/gdx/utils/TimSort;->minRunLength(I)I

    move-result v2

    :cond_3
    invoke-static {p0, p1, p2, p3}, Lcom/badlogic/gdx/utils/TimSort;->countRunAndMakeAscending([Ljava/lang/Object;IILjava/util/Comparator;)I

    move-result v3

    if-ge v3, v2, :cond_5

    if-gt v0, v2, :cond_4

    move v1, v0

    :goto_1
    add-int v5, p1, v1

    add-int/2addr v3, p1

    invoke-static {p0, p1, v5, v3, p3}, Lcom/badlogic/gdx/utils/TimSort;->binarySort([Ljava/lang/Object;IIILjava/util/Comparator;)V

    :goto_2
    invoke-direct {v4, p1, v1}, Lcom/badlogic/gdx/utils/TimSort;->pushRun(II)V

    invoke-direct {v4}, Lcom/badlogic/gdx/utils/TimSort;->mergeCollapse()V

    add-int/2addr p1, v1

    sub-int/2addr v0, v1

    if-nez v0, :cond_3

    invoke-direct {v4}, Lcom/badlogic/gdx/utils/TimSort;->mergeForceCollapse()V

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_1

    :cond_5
    move v1, v3

    goto :goto_2
.end method

.method static sort([Ljava/lang/Object;Ljava/util/Comparator;)V
    .locals 2

    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lcom/badlogic/gdx/utils/TimSort;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    return-void
.end method


# virtual methods
.method public doSort([Ljava/lang/Object;Ljava/util/Comparator;II)V
    .locals 5

    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/utils/TimSort;->stackSize:I

    array-length v0, p1

    invoke-static {v0, p3, p4}, Lcom/badlogic/gdx/utils/TimSort;->rangeCheck(III)V

    sub-int v0, p4, p3

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/16 v1, 0x20

    if-ge v0, v1, :cond_1

    invoke-static {p1, p3, p4, p2}, Lcom/badlogic/gdx/utils/TimSort;->countRunAndMakeAscending([Ljava/lang/Object;IILjava/util/Comparator;)I

    move-result v0

    add-int/2addr v0, p3

    invoke-static {p1, p3, p4, v0, p2}, Lcom/badlogic/gdx/utils/TimSort;->binarySort([Ljava/lang/Object;IIILjava/util/Comparator;)V

    goto :goto_0

    :cond_1
    iput-object p1, p0, Lcom/badlogic/gdx/utils/TimSort;->a:[Ljava/lang/Object;

    iput-object p2, p0, Lcom/badlogic/gdx/utils/TimSort;->c:Ljava/util/Comparator;

    invoke-static {v0}, Lcom/badlogic/gdx/utils/TimSort;->minRunLength(I)I

    move-result v2

    :cond_2
    invoke-static {p1, p3, p4, p2}, Lcom/badlogic/gdx/utils/TimSort;->countRunAndMakeAscending([Ljava/lang/Object;IILjava/util/Comparator;)I

    move-result v3

    if-ge v3, v2, :cond_4

    if-gt v0, v2, :cond_3

    move v1, v0

    :goto_1
    add-int v4, p3, v1

    add-int/2addr v3, p3

    invoke-static {p1, p3, v4, v3, p2}, Lcom/badlogic/gdx/utils/TimSort;->binarySort([Ljava/lang/Object;IIILjava/util/Comparator;)V

    :goto_2
    invoke-direct {p0, p3, v1}, Lcom/badlogic/gdx/utils/TimSort;->pushRun(II)V

    invoke-direct {p0}, Lcom/badlogic/gdx/utils/TimSort;->mergeCollapse()V

    add-int/2addr p3, v1

    sub-int/2addr v0, v1

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/badlogic/gdx/utils/TimSort;->mergeForceCollapse()V

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1

    :cond_4
    move v1, v3

    goto :goto_2
.end method
