.class Lcom/badlogic/gdx/graphics/PixmapIO$PNG;
.super Ljava/lang/Object;


# static fields
.field static final ZLIB_BLOCK_SIZE:I = 0x7d00

.field static crcTable:[I


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static calcADLER32([B)I
    .locals 6

    const v5, 0xfff1

    const/4 v0, 0x0

    const/4 v1, 0x1

    array-length v4, p0

    move v2, v0

    move v3, v1

    move v1, v0

    :goto_0
    if-lt v1, v4, :cond_0

    shl-int/lit8 v0, v2, 0x10

    add-int/2addr v0, v3

    return v0

    :cond_0
    aget-byte v0, p0, v1

    if-gez v0, :cond_1

    add-int/lit16 v0, v0, 0x100

    int-to-byte v0, v0

    :cond_1
    add-int/2addr v0, v3

    rem-int v3, v0, v5

    add-int v0, v2, v3

    rem-int v2, v0, v5

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private static createCRCTable()V
    .locals 6

    const/16 v5, 0x100

    const/4 v2, 0x0

    new-array v0, v5, [I

    sput-object v0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->crcTable:[I

    move v3, v2

    :goto_0
    if-lt v3, v5, :cond_0

    return-void

    :cond_0
    move v1, v2

    move v0, v3

    :goto_1
    const/16 v4, 0x8

    if-lt v1, v4, :cond_1

    sget-object v1, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->crcTable:[I

    aput v0, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    and-int/lit8 v4, v0, 0x1

    if-lez v4, :cond_2

    const v4, -0x12477ce0

    ushr-int/lit8 v0, v0, 0x1

    xor-int/2addr v0, v4

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    ushr-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method private static createDataChunk(Lcom/badlogic/gdx/graphics/Pixmap;)[B
    .locals 12

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v5

    mul-int/lit8 v0, v4, 0x4

    mul-int/2addr v0, v5

    add-int/2addr v0, v5

    new-array v6, v0, [B

    move v3, v1

    move v2, v1

    :goto_0
    if-lt v3, v5, :cond_0

    const-string v0, "IDAT"

    invoke-static {v6}, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->toZLIB([B)[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->toChunk(Ljava/lang/String;[B)[B

    move-result-object v0

    return-object v0

    :cond_0
    add-int/lit8 v0, v2, 0x1

    aput-byte v1, v6, v2

    move v2, v0

    move v0, v1

    :goto_1
    if-lt v0, v4, :cond_1

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0, v3}, Lcom/badlogic/gdx/graphics/Pixmap;->getPixel(II)I

    move-result v7

    and-int/lit8 v7, v7, -0x1

    shr-int/lit8 v8, v7, 0x18

    and-int/lit16 v8, v8, 0xff

    shr-int/lit8 v9, v7, 0x10

    and-int/lit16 v9, v9, 0xff

    shr-int/lit8 v10, v7, 0x8

    and-int/lit16 v10, v10, 0xff

    and-int/lit16 v7, v7, 0xff

    add-int/lit8 v11, v2, 0x1

    int-to-byte v8, v8

    aput-byte v8, v6, v2

    add-int/lit8 v2, v11, 0x1

    int-to-byte v8, v9

    aput-byte v8, v6, v11

    add-int/lit8 v8, v2, 0x1

    int-to-byte v9, v10

    aput-byte v9, v6, v2

    add-int/lit8 v2, v8, 0x1

    int-to-byte v7, v7

    aput-byte v7, v6, v8

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private static createHeaderChunk(II)[B
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v1, p0}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    const-string v1, "IHDR"

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {v1, v0}, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->toChunk(Ljava/lang/String;[B)[B

    move-result-object v0

    return-object v0
.end method

.method private static createTrailerChunk()[B
    .locals 2

    const-string v0, "IEND"

    const/4 v1, 0x0

    new-array v1, v1, [B

    invoke-static {v0, v1}, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->toChunk(Ljava/lang/String;[B)[B

    move-result-object v0

    return-object v0
.end method

.method private static toChunk(Ljava/lang/String;[B)[B
    .locals 6

    const/4 v5, 0x4

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    array-length v0, p1

    add-int/lit8 v0, v0, 0xc

    invoke-direct {v1, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    array-length v0, p1

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    new-array v3, v5, [B

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v5, :cond_0

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->write([B)V

    invoke-virtual {v2, p1}, Ljava/io/DataOutputStream;->write([B)V

    const/4 v0, -0x1

    invoke-static {v0, v3}, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->updateCRC(I[B)I

    move-result v0

    invoke-static {v0, p1}, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->updateCRC(I[B)I

    move-result v0

    xor-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static toZLIB([B)[B
    .locals 6

    const/16 v5, 0x7d00

    const/4 v1, 0x0

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    array-length v0, p0

    add-int/lit8 v0, v0, 0x6

    array-length v3, p0

    div-int/lit16 v3, v3, 0x7d00

    mul-int/lit8 v3, v3, 0x5

    add-int/2addr v0, v3

    invoke-direct {v2, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 v0, 0x8

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v0, 0x1d

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    move v0, v1

    :goto_0
    array-length v4, p0

    sub-int/2addr v4, v0

    if-gt v4, v5, :cond_0

    const/4 v1, 0x1

    array-length v4, p0

    sub-int/2addr v4, v0

    int-to-char v4, v4

    invoke-static {v3, v1, p0, v0, v4}, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->writeUncompressedDeflateBlock(Ljava/io/DataOutputStream;Z[BIC)V

    invoke-static {p0}, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->calcADLER32([B)I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {v3, v1, p0, v0, v5}, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->writeUncompressedDeflateBlock(Ljava/io/DataOutputStream;Z[BIC)V

    add-int/lit16 v0, v0, 0x7d00

    goto :goto_0
.end method

.method private static updateCRC(I[B)I
    .locals 4

    sget-object v0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->crcTable:[I

    if-nez v0, :cond_0

    invoke-static {}, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->createCRCTable()V

    :cond_0
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_1

    return p0

    :cond_1
    aget-byte v2, p1, v0

    sget-object v3, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->crcTable:[I

    xor-int/2addr v2, p0

    and-int/lit16 v2, v2, 0xff

    aget v2, v3, v2

    ushr-int/lit8 v3, p0, 0x8

    xor-int p0, v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static write(Lcom/badlogic/gdx/graphics/Pixmap;)[B
    .locals 7

    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->createHeaderChunk(II)[B

    move-result-object v1

    invoke-static {p0}, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->createDataChunk(Lcom/badlogic/gdx/graphics/Pixmap;)[B

    move-result-object v2

    invoke-static {}, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->createTrailerChunk()[B

    move-result-object v3

    new-instance v4, Ljava/io/ByteArrayOutputStream;

    array-length v5, v0

    array-length v6, v1

    add-int/2addr v5, v6

    array-length v6, v2

    add-int/2addr v5, v6

    array-length v6, v3

    add-int/2addr v5, v6

    invoke-direct {v4, v5}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    invoke-virtual {v4, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v4, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v4, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v4, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    :array_0
    .array-data 0x1
        0x89t
        0x50t
        0x4et
        0x47t
        0xdt
        0xat
        0x1at
        0xat
    .end array-data
.end method

.method private static writeUncompressedDeflateBlock(Ljava/io/DataOutputStream;Z[BIC)V
    .locals 2

    const v1, 0xff00

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    and-int/lit16 v0, p4, 0xff

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    and-int v0, p4, v1

    shr-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    xor-int/lit8 v0, p4, -0x1

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    xor-int/lit8 v0, p4, -0x1

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {p0, p2, p3, p4}, Ljava/io/DataOutputStream;->write([BII)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
