.class public Lcom/iLoong/launcher/airpush/d;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:[C

.field private static c:[B


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/16 v5, 0x40

    const/4 v1, 0x0

    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/iLoong/launcher/airpush/d;->a:Ljava/lang/String;

    new-array v0, v5, [C

    sput-object v0, Lcom/iLoong/launcher/airpush/d;->b:[C

    const/16 v0, 0x41

    move v2, v1

    :goto_0
    const/16 v3, 0x5a

    if-le v0, v3, :cond_0

    const/16 v0, 0x61

    :goto_1
    const/16 v3, 0x7a

    if-le v0, v3, :cond_1

    const/16 v0, 0x30

    :goto_2
    const/16 v3, 0x39

    if-le v0, v3, :cond_2

    sget-object v0, Lcom/iLoong/launcher/airpush/d;->b:[C

    add-int/lit8 v3, v2, 0x1

    const/16 v4, 0x2b

    aput-char v4, v0, v2

    sget-object v0, Lcom/iLoong/launcher/airpush/d;->b:[C

    add-int/lit8 v2, v3, 0x1

    const/16 v2, 0x2f

    aput-char v2, v0, v3

    const/16 v0, 0x80

    new-array v0, v0, [B

    sput-object v0, Lcom/iLoong/launcher/airpush/d;->c:[B

    move v0, v1

    :goto_3
    sget-object v2, Lcom/iLoong/launcher/airpush/d;->c:[B

    array-length v2, v2

    if-lt v0, v2, :cond_3

    :goto_4
    if-lt v1, v5, :cond_4

    return-void

    :cond_0
    sget-object v4, Lcom/iLoong/launcher/airpush/d;->b:[C

    add-int/lit8 v3, v2, 0x1

    aput-char v0, v4, v2

    add-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    move v2, v3

    goto :goto_0

    :cond_1
    sget-object v4, Lcom/iLoong/launcher/airpush/d;->b:[C

    add-int/lit8 v3, v2, 0x1

    aput-char v0, v4, v2

    add-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    move v2, v3

    goto :goto_1

    :cond_2
    sget-object v4, Lcom/iLoong/launcher/airpush/d;->b:[C

    add-int/lit8 v3, v2, 0x1

    aput-char v0, v4, v2

    add-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    move v2, v3

    goto :goto_2

    :cond_3
    sget-object v2, Lcom/iLoong/launcher/airpush/d;->c:[B

    const/4 v3, -0x1

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    sget-object v0, Lcom/iLoong/launcher/airpush/d;->c:[B

    sget-object v2, Lcom/iLoong/launcher/airpush/d;->b:[C

    aget-char v2, v2, v1

    int-to-byte v3, v1

    aput-byte v3, v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_4
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)[B
    .locals 1

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {v0}, Lcom/iLoong/launcher/airpush/d;->a([C)[B

    move-result-object v0

    return-object v0
.end method

.method public static a([C)[B
    .locals 2

    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/iLoong/launcher/airpush/d;->a([CII)[B

    move-result-object v0

    return-object v0
.end method

.method public static a([CII)[B
    .locals 12

    const/16 v2, 0x41

    const/16 v11, 0x7f

    rem-int/lit8 v0, p2, 0x4

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Length of Base64 encoded input string is not a multiple of 4."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    add-int/lit8 p2, p2, -0x1

    :cond_1
    if-lez p2, :cond_2

    add-int v0, p1, p2

    add-int/lit8 v0, v0, -0x1

    aget-char v0, p0, v0

    const/16 v1, 0x3d

    if-eq v0, v1, :cond_0

    :cond_2
    mul-int/lit8 v0, p2, 0x3

    div-int/lit8 v6, v0, 0x4

    new-array v7, v6, [B

    add-int v8, p1, p2

    const/4 v0, 0x0

    move v5, v0

    move v3, p1

    :goto_0
    if-lt v3, v8, :cond_3

    return-object v7

    :cond_3
    add-int/lit8 v1, v3, 0x1

    aget-char v9, p0, v3

    add-int/lit8 v0, v1, 0x1

    aget-char v10, p0, v1

    if-ge v0, v8, :cond_5

    add-int/lit8 v1, v0, 0x1

    aget-char v0, p0, v0

    move v4, v0

    move v0, v1

    :goto_1
    if-ge v0, v8, :cond_6

    add-int/lit8 v1, v0, 0x1

    aget-char v0, p0, v0

    move v3, v1

    :goto_2
    if-gt v9, v11, :cond_4

    if-gt v10, v11, :cond_4

    if-gt v4, v11, :cond_4

    if-le v0, v11, :cond_7

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal character in Base64 encoded data."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    move v4, v2

    goto :goto_1

    :cond_6
    move v3, v0

    move v0, v2

    goto :goto_2

    :cond_7
    sget-object v1, Lcom/iLoong/launcher/airpush/d;->c:[B

    aget-byte v1, v1, v9

    sget-object v9, Lcom/iLoong/launcher/airpush/d;->c:[B

    aget-byte v9, v9, v10

    sget-object v10, Lcom/iLoong/launcher/airpush/d;->c:[B

    aget-byte v4, v10, v4

    sget-object v10, Lcom/iLoong/launcher/airpush/d;->c:[B

    aget-byte v0, v10, v0

    if-ltz v1, :cond_8

    if-ltz v9, :cond_8

    if-ltz v4, :cond_8

    if-gez v0, :cond_9

    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal character in Base64 encoded data."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    shl-int/lit8 v1, v1, 0x2

    ushr-int/lit8 v10, v9, 0x4

    or-int/2addr v10, v1

    and-int/lit8 v1, v9, 0xf

    shl-int/lit8 v1, v1, 0x4

    ushr-int/lit8 v9, v4, 0x2

    or-int/2addr v9, v1

    and-int/lit8 v1, v4, 0x3

    shl-int/lit8 v1, v1, 0x6

    or-int v4, v1, v0

    add-int/lit8 v1, v5, 0x1

    int-to-byte v0, v10

    aput-byte v0, v7, v5

    if-ge v1, v6, :cond_b

    add-int/lit8 v0, v1, 0x1

    int-to-byte v5, v9

    aput-byte v5, v7, v1

    :goto_3
    if-ge v0, v6, :cond_a

    add-int/lit8 v1, v0, 0x1

    int-to-byte v4, v4

    aput-byte v4, v7, v0

    move v5, v1

    goto :goto_0

    :cond_a
    move v5, v0

    goto :goto_0

    :cond_b
    move v0, v1

    goto :goto_3
.end method
