.class public Lcom/badlogic/gdx/utils/Sort;
.super Ljava/lang/Object;


# static fields
.field private static instance:Lcom/badlogic/gdx/utils/Sort;


# instance fields
.field private comparableTimSort:Lcom/badlogic/gdx/utils/ComparableTimSort;

.field private timSort:Lcom/badlogic/gdx/utils/TimSort;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static instance()Lcom/badlogic/gdx/utils/Sort;
    .locals 1

    sget-object v0, Lcom/badlogic/gdx/utils/Sort;->instance:Lcom/badlogic/gdx/utils/Sort;

    if-nez v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/Sort;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Sort;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/utils/Sort;->instance:Lcom/badlogic/gdx/utils/Sort;

    :cond_0
    sget-object v0, Lcom/badlogic/gdx/utils/Sort;->instance:Lcom/badlogic/gdx/utils/Sort;

    return-object v0
.end method


# virtual methods
.method public sort(Lcom/badlogic/gdx/utils/Array;)V
    .locals 4

    iget-object v0, p0, Lcom/badlogic/gdx/utils/Sort;->comparableTimSort:Lcom/badlogic/gdx/utils/ComparableTimSort;

    if-nez v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/ComparableTimSort;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ComparableTimSort;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/Sort;->comparableTimSort:Lcom/badlogic/gdx/utils/ComparableTimSort;

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Sort;->comparableTimSort:Lcom/badlogic/gdx/utils/ComparableTimSort;

    iget-object v1, p1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/badlogic/gdx/utils/ComparableTimSort;->doSort([Ljava/lang/Object;II)V

    return-void
.end method

.method public sort(Lcom/badlogic/gdx/utils/Array;Ljava/util/Comparator;)V
    .locals 4

    iget-object v0, p0, Lcom/badlogic/gdx/utils/Sort;->timSort:Lcom/badlogic/gdx/utils/TimSort;

    if-nez v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/TimSort;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/TimSort;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/Sort;->timSort:Lcom/badlogic/gdx/utils/TimSort;

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Sort;->timSort:Lcom/badlogic/gdx/utils/TimSort;

    iget-object v1, p1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-virtual {v0, v1, p2, v2, v3}, Lcom/badlogic/gdx/utils/TimSort;->doSort([Ljava/lang/Object;Ljava/util/Comparator;II)V

    return-void
.end method

.method public sort([Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/badlogic/gdx/utils/Sort;->comparableTimSort:Lcom/badlogic/gdx/utils/ComparableTimSort;

    if-nez v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/ComparableTimSort;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ComparableTimSort;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/Sort;->comparableTimSort:Lcom/badlogic/gdx/utils/ComparableTimSort;

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Sort;->comparableTimSort:Lcom/badlogic/gdx/utils/ComparableTimSort;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Lcom/badlogic/gdx/utils/ComparableTimSort;->doSort([Ljava/lang/Object;II)V

    return-void
.end method

.method public sort([Ljava/lang/Object;II)V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/utils/Sort;->comparableTimSort:Lcom/badlogic/gdx/utils/ComparableTimSort;

    if-nez v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/ComparableTimSort;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ComparableTimSort;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/Sort;->comparableTimSort:Lcom/badlogic/gdx/utils/ComparableTimSort;

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Sort;->comparableTimSort:Lcom/badlogic/gdx/utils/ComparableTimSort;

    invoke-virtual {v0, p1, p2, p3}, Lcom/badlogic/gdx/utils/ComparableTimSort;->doSort([Ljava/lang/Object;II)V

    return-void
.end method

.method public sort([Ljava/lang/Object;Ljava/util/Comparator;)V
    .locals 3

    iget-object v0, p0, Lcom/badlogic/gdx/utils/Sort;->timSort:Lcom/badlogic/gdx/utils/TimSort;

    if-nez v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/TimSort;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/TimSort;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/Sort;->timSort:Lcom/badlogic/gdx/utils/TimSort;

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Sort;->timSort:Lcom/badlogic/gdx/utils/TimSort;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/badlogic/gdx/utils/TimSort;->doSort([Ljava/lang/Object;Ljava/util/Comparator;II)V

    return-void
.end method

.method public sort([Ljava/lang/Object;Ljava/util/Comparator;II)V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/utils/Sort;->timSort:Lcom/badlogic/gdx/utils/TimSort;

    if-nez v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/TimSort;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/TimSort;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/Sort;->timSort:Lcom/badlogic/gdx/utils/TimSort;

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Sort;->timSort:Lcom/badlogic/gdx/utils/TimSort;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/utils/TimSort;->doSort([Ljava/lang/Object;Ljava/util/Comparator;II)V

    return-void
.end method
