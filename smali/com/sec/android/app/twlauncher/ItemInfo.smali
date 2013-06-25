.class Lcom/sec/android/app/twlauncher/ItemInfo;
.super Ljava/lang/Object;
.source "ItemInfo.java"


# instance fields
.field cellX:I

.field cellY:I

.field container:J

.field id:J

.field isGesture:Z

.field itemType:I

.field packageName:Ljava/lang/String;

.field screen:I

.field spanX:I

.field spanY:I


# direct methods
.method constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-wide v2, p0, Lcom/sec/android/app/twlauncher/ItemInfo;->id:J

    .line 54
    iput-wide v2, p0, Lcom/sec/android/app/twlauncher/ItemInfo;->container:J

    .line 59
    iput v0, p0, Lcom/sec/android/app/twlauncher/ItemInfo;->screen:I

    .line 64
    iput v0, p0, Lcom/sec/android/app/twlauncher/ItemInfo;->cellX:I

    .line 69
    iput v0, p0, Lcom/sec/android/app/twlauncher/ItemInfo;->cellY:I

    .line 74
    iput v1, p0, Lcom/sec/android/app/twlauncher/ItemInfo;->spanX:I

    .line 79
    iput v1, p0, Lcom/sec/android/app/twlauncher/ItemInfo;->spanY:I

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/ItemInfo;->isGesture:Z

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/ItemInfo;->packageName:Ljava/lang/String;

    .line 89
    return-void
.end method

.method constructor <init>(Lcom/sec/android/app/twlauncher/ItemInfo;)V
    .locals 4
    .parameter "info"

    .prologue
    const-wide/16 v2, -0x1

    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-wide v2, p0, Lcom/sec/android/app/twlauncher/ItemInfo;->id:J

    .line 54
    iput-wide v2, p0, Lcom/sec/android/app/twlauncher/ItemInfo;->container:J

    .line 59
    iput v0, p0, Lcom/sec/android/app/twlauncher/ItemInfo;->screen:I

    .line 64
    iput v0, p0, Lcom/sec/android/app/twlauncher/ItemInfo;->cellX:I

    .line 69
    iput v0, p0, Lcom/sec/android/app/twlauncher/ItemInfo;->cellY:I

    .line 74
    iput v1, p0, Lcom/sec/android/app/twlauncher/ItemInfo;->spanX:I

    .line 79
    iput v1, p0, Lcom/sec/android/app/twlauncher/ItemInfo;->spanY:I

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/ItemInfo;->isGesture:Z

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/ItemInfo;->packageName:Ljava/lang/String;

    .line 92
    iget-wide v0, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->id:J

    iput-wide v0, p0, Lcom/sec/android/app/twlauncher/ItemInfo;->id:J

    .line 93
    iget v0, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->cellX:I

    iput v0, p0, Lcom/sec/android/app/twlauncher/ItemInfo;->cellX:I

    .line 94
    iget v0, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->cellY:I

    iput v0, p0, Lcom/sec/android/app/twlauncher/ItemInfo;->cellY:I

    .line 95
    iget v0, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->spanX:I

    iput v0, p0, Lcom/sec/android/app/twlauncher/ItemInfo;->spanX:I

    .line 96
    iget v0, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->spanY:I

    iput v0, p0, Lcom/sec/android/app/twlauncher/ItemInfo;->spanY:I

    .line 97
    iget v0, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->screen:I

    iput v0, p0, Lcom/sec/android/app/twlauncher/ItemInfo;->screen:I

    .line 98
    iget v0, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->itemType:I

    iput v0, p0, Lcom/sec/android/app/twlauncher/ItemInfo;->itemType:I

    .line 99
    iget-wide v0, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->container:J

    iput-wide v0, p0, Lcom/sec/android/app/twlauncher/ItemInfo;->container:J

    .line 100
    iget-object v0, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/ItemInfo;->packageName:Ljava/lang/String;

    .line 101
    return-void
.end method

.method static flattenBitmap(Landroid/graphics/Bitmap;)[B
    .locals 5
    .parameter "bitmap"

    .prologue
    .line 123
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    mul-int/2addr v3, v4

    mul-int/lit8 v2, v3, 0x4

    .line 124
    .local v2, size:I
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 126
    .local v1, out:Ljava/io/ByteArrayOutputStream;
    :try_start_0
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {p0, v3, v4, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 127
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 128
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 129
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 132
    :goto_0
    return-object v3

    .line 130
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 131
    .local v0, e:Ljava/io/IOException;
    const-string v3, "Favorite"

    const-string v4, "Could not write icon"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    const/4 v3, 0x0

    goto :goto_0
.end method

.method static writeBitmap(Landroid/content/ContentValues;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "values"
    .parameter "bitmap"

    .prologue
    .line 137
    if-eqz p1, :cond_0

    .line 138
    invoke-static {p1}, Lcom/sec/android/app/twlauncher/ItemInfo;->flattenBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    .line 139
    .local v0, data:[B
    const-string v1, "icon"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 141
    .end local v0           #data:[B
    :cond_0
    return-void
.end method


# virtual methods
.method onAddToDatabase(Landroid/content/ContentValues;)V
    .locals 3
    .parameter "values"

    .prologue
    .line 109
    const-string v0, "itemType"

    iget v1, p0, Lcom/sec/android/app/twlauncher/ItemInfo;->itemType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 110
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/ItemInfo;->isGesture:Z

    if-nez v0, :cond_0

    .line 111
    const-string v0, "container"

    iget-wide v1, p0, Lcom/sec/android/app/twlauncher/ItemInfo;->container:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 112
    const-string v0, "screen"

    iget v1, p0, Lcom/sec/android/app/twlauncher/ItemInfo;->screen:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 113
    const-string v0, "cellX"

    iget v1, p0, Lcom/sec/android/app/twlauncher/ItemInfo;->cellX:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 114
    const-string v0, "cellY"

    iget v1, p0, Lcom/sec/android/app/twlauncher/ItemInfo;->cellY:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 115
    const-string v0, "spanX"

    iget v1, p0, Lcom/sec/android/app/twlauncher/ItemInfo;->spanX:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 116
    const-string v0, "spanY"

    iget v1, p0, Lcom/sec/android/app/twlauncher/ItemInfo;->spanY:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 118
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const-string v3, "|"

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Item("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/android/app/twlauncher/ItemInfo;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/android/app/twlauncher/ItemInfo;->container:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/twlauncher/ItemInfo;->screen:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/twlauncher/ItemInfo;->cellX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/twlauncher/ItemInfo;->cellY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/twlauncher/ItemInfo;->itemType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method unbind()V
    .locals 0

    .prologue
    .line 144
    return-void
.end method
