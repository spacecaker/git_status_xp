.class public Lcom/iLoong/launcher/SetupMenu/cut;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/text/Collator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    sput-object v0, Lcom/iLoong/launcher/SetupMenu/cut;->a:Ljava/text/Collator;

    const-string v0, "cut"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a([Lcom/iLoong/launcher/SetupMenu/o;III[I)I
    .locals 6

    const/4 v5, 0x1

    aget-object v0, p0, p1

    iget-object v2, v0, Lcom/iLoong/launcher/SetupMenu/o;->a:Ljava/lang/String;

    move v1, p2

    move v0, p1

    :goto_0
    if-lt v0, v1, :cond_1

    return v0

    :cond_0
    add-int/lit8 v1, v1, -0x1

    :cond_1
    if-ge v0, v1, :cond_3

    sget-object v3, Lcom/iLoong/launcher/SetupMenu/cut;->a:Ljava/text/Collator;

    aget-object v4, p0, v1

    iget-object v4, v4, Lcom/iLoong/launcher/SetupMenu/o;->a:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_2

    if-eq p3, v5, :cond_0

    :cond_2
    sget-object v3, Lcom/iLoong/launcher/SetupMenu/cut;->a:Ljava/text/Collator;

    aget-object v4, p0, v1

    iget-object v4, v4, Lcom/iLoong/launcher/SetupMenu/o;->a:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-gtz v3, :cond_3

    if-eqz p3, :cond_0

    :cond_3
    invoke-static {p0, v0, v1, p4}, Lcom/iLoong/launcher/SetupMenu/cut;->a([Lcom/iLoong/launcher/SetupMenu/o;II[I)V

    :goto_1
    if-ge v0, v1, :cond_5

    sget-object v3, Lcom/iLoong/launcher/SetupMenu/cut;->a:Ljava/text/Collator;

    aget-object v4, p0, v0

    iget-object v4, v4, Lcom/iLoong/launcher/SetupMenu/o;->a:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_4

    if-eq p3, v5, :cond_6

    :cond_4
    sget-object v3, Lcom/iLoong/launcher/SetupMenu/cut;->a:Ljava/text/Collator;

    aget-object v4, p0, v0

    iget-object v4, v4, Lcom/iLoong/launcher/SetupMenu/o;->a:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_5

    if-eqz p3, :cond_6

    :cond_5
    invoke-static {p0, v0, v1, p4}, Lcom/iLoong/launcher/SetupMenu/cut;->a([Lcom/iLoong/launcher/SetupMenu/o;II[I)V

    goto :goto_0

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static a(I[Ljava/lang/String;[I)V
    .locals 5

    const/4 v1, 0x0

    const-string v0, "start sort"

    invoke-static {v0}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->showTimeFromStart(Ljava/lang/String;)V

    array-length v0, p1

    new-array v2, v0, [Lcom/iLoong/launcher/SetupMenu/o;

    move v0, v1

    :goto_0
    array-length v3, p1

    if-lt v0, v3, :cond_0

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    invoke-static {v2, v1, v0, p0, p2}, Lcom/iLoong/launcher/SetupMenu/cut;->b([Lcom/iLoong/launcher/SetupMenu/o;III[I)V

    :goto_1
    array-length v0, p1

    if-lt v1, v0, :cond_1

    const/4 v0, 0x0

    check-cast v0, [Lcom/iLoong/launcher/SetupMenu/o;

    const-string v0, "end sort"

    invoke-static {v0}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->showTimeFromStart(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v3, Lcom/iLoong/launcher/SetupMenu/o;

    invoke-direct {v3}, Lcom/iLoong/launcher/SetupMenu/o;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    aget-object v4, p1, v0

    iput-object v4, v3, Lcom/iLoong/launcher/SetupMenu/o;->a:Ljava/lang/String;

    aget-object v3, v2, v0

    iput v0, v3, Lcom/iLoong/launcher/SetupMenu/o;->b:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    aget-object v0, v2, v1

    iget v0, v0, Lcom/iLoong/launcher/SetupMenu/o;->b:I

    aput v0, p2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private static a([Lcom/iLoong/launcher/SetupMenu/o;II[I)V
    .locals 2

    if-ne p1, p2, :cond_0

    :goto_0
    return-void

    :cond_0
    aget-object v0, p0, p1

    aget-object v1, p0, p2

    aput-object v1, p0, p1

    aput-object v0, p0, p2

    goto :goto_0
.end method

.method private static b([Lcom/iLoong/launcher/SetupMenu/o;III[I)V
    .locals 1

    if-ge p1, p2, :cond_0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/iLoong/launcher/SetupMenu/cut;->a([Lcom/iLoong/launcher/SetupMenu/o;III[I)I

    move-result v0

    invoke-static {p0, p1, v0, p3, p4}, Lcom/iLoong/launcher/SetupMenu/cut;->b([Lcom/iLoong/launcher/SetupMenu/o;III[I)V

    add-int/lit8 v0, v0, 0x1

    invoke-static {p0, v0, p2, p3, p4}, Lcom/iLoong/launcher/SetupMenu/cut;->b([Lcom/iLoong/launcher/SetupMenu/o;III[I)V

    :cond_0
    return-void
.end method

.method public static native bmp(II[I[B)I
.end method

.method public static native sort(I[I[I)I
.end method
