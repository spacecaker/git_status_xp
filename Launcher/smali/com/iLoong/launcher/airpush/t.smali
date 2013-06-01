.class Lcom/iLoong/launcher/airpush/t;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/iLoong/launcher/airpush/AirPush;

.field private final synthetic b:Lcom/iLoong/launcher/airpush/m;

.field private final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/iLoong/launcher/airpush/AirPush;Lcom/iLoong/launcher/airpush/m;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iLoong/launcher/airpush/t;->a:Lcom/iLoong/launcher/airpush/AirPush;

    iput-object p2, p0, Lcom/iLoong/launcher/airpush/t;->b:Lcom/iLoong/launcher/airpush/m;

    iput-object p3, p0, Lcom/iLoong/launcher/airpush/t;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    const-string v0, "hello"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "downloadFile packageid_ :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/iLoong/launcher/airpush/t;->b:Lcom/iLoong/launcher/airpush/m;

    iget-object v2, v2, Lcom/iLoong/launcher/airpush/m;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/iLoong/launcher/airpush/t;->b:Lcom/iLoong/launcher/airpush/m;

    iget v0, v0, Lcom/iLoong/launcher/airpush/m;->f:I

    int-to-long v3, v0

    const/4 v0, 0x0

    const/4 v3, 0x0

    const-string v4, "hello"

    const-string v5, "downloadFile1111"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/iLoong/launcher/airpush/t;->a:Lcom/iLoong/launcher/airpush/AirPush;

    invoke-static {v5}, Lcom/iLoong/launcher/airpush/AirPush;->d(Lcom/iLoong/launcher/airpush/AirPush;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/iLoong/launcher/airpush/t;->b:Lcom/iLoong/launcher/airpush/m;

    iget-object v5, v5, Lcom/iLoong/launcher/airpush/m;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/iLoong/launcher/airpush/t;->b:Lcom/iLoong/launcher/airpush/m;

    iget v5, v5, Lcom/iLoong/launcher/airpush/m;->f:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".apk"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v7, -0x1

    cmp-long v7, v4, v7

    if-nez v7, :cond_0

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z

    :goto_0
    if-nez v3, :cond_9

    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v4, "rw"

    invoke-direct {v3, v6, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v4, v3

    :goto_1
    iget-object v3, p0, Lcom/iLoong/launcher/airpush/t;->c:Ljava/lang/String;

    invoke-static {v3}, Lcom/iLoong/launcher/airpush/e;->a(Ljava/lang/String;)J

    move-result-wide v7

    iget-object v3, p0, Lcom/iLoong/launcher/airpush/t;->c:Ljava/lang/String;

    invoke-static {v3, v1, v2, v7, v8}, Lcom/iLoong/launcher/airpush/e;->a(Ljava/lang/String;JJ)Ljava/io/InputStream;

    move-result-object v5

    if-nez v5, :cond_2

    iget-object v0, p0, Lcom/iLoong/launcher/airpush/t;->a:Lcom/iLoong/launcher/airpush/AirPush;

    iget-object v1, p0, Lcom/iLoong/launcher/airpush/t;->b:Lcom/iLoong/launcher/airpush/m;

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/airpush/AirPush;->c(Lcom/iLoong/launcher/airpush/m;)V

    :goto_2
    return-void

    :cond_0
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v1, "rw"

    invoke-direct {v3, v6, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    const-string v1, "AirPush"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v7, "continue download:"

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v1, v4

    goto :goto_0

    :cond_1
    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :goto_3
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    goto :goto_2

    :cond_2
    const/16 v3, 0x100

    :try_start_1
    new-array v9, v3, [B

    move-wide v12, v1

    move-wide v2, v12

    move v1, v0

    :cond_3
    :goto_4
    iget-object v0, p0, Lcom/iLoong/launcher/airpush/t;->c:Ljava/lang/String;

    if-eqz v0, :cond_8

    invoke-virtual {v5, v9}, Ljava/io/InputStream;->read([B)I

    move-result v0

    if-gtz v0, :cond_5

    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V

    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_4

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    iget-object v0, p0, Lcom/iLoong/launcher/airpush/t;->a:Lcom/iLoong/launcher/airpush/AirPush;

    iget-object v1, p0, Lcom/iLoong/launcher/airpush/t;->b:Lcom/iLoong/launcher/airpush/m;

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/airpush/AirPush;->c(Lcom/iLoong/launcher/airpush/m;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :cond_4
    :try_start_2
    iget-object v0, p0, Lcom/iLoong/launcher/airpush/t;->b:Lcom/iLoong/launcher/airpush/m;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/iLoong/launcher/airpush/m;->h:Ljava/lang/String;

    iget-object v0, p0, Lcom/iLoong/launcher/airpush/t;->a:Lcom/iLoong/launcher/airpush/AirPush;

    iget-object v1, p0, Lcom/iLoong/launcher/airpush/t;->b:Lcom/iLoong/launcher/airpush/m;

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/airpush/AirPush;->d(Lcom/iLoong/launcher/airpush/m;)V

    iget-object v0, p0, Lcom/iLoong/launcher/airpush/t;->a:Lcom/iLoong/launcher/airpush/AirPush;

    iget-object v1, p0, Lcom/iLoong/launcher/airpush/t;->b:Lcom/iLoong/launcher/airpush/m;

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/airpush/AirPush;->b(Lcom/iLoong/launcher/airpush/m;)V

    goto :goto_3

    :cond_5
    const/4 v10, 0x0

    invoke-virtual {v4, v9, v10, v0}, Ljava/io/RandomAccessFile;->write([BII)V

    int-to-long v10, v0

    add-long/2addr v2, v10

    const-wide/16 v10, 0x64

    mul-long/2addr v10, v2

    div-long/2addr v10, v7

    long-to-int v0, v10

    if-eq v0, v1, :cond_3

    const/16 v10, 0x64

    if-eq v1, v10, :cond_3

    if-lez v0, :cond_3

    const/16 v1, 0x64

    if-le v0, v1, :cond_6

    const/16 v0, 0x64

    :cond_6
    sget-object v1, Lcom/iLoong/launcher/airpush/AirPush;->c:Lcom/iLoong/launcher/airpush/j;

    iget-object v10, p0, Lcom/iLoong/launcher/airpush/t;->b:Lcom/iLoong/launcher/airpush/m;

    iget-object v10, v10, Lcom/iLoong/launcher/airpush/m;->c:Ljava/lang/String;

    invoke-virtual {v1, v10}, Lcom/iLoong/launcher/airpush/j;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    sget-object v1, Lcom/iLoong/launcher/airpush/AirPush;->c:Lcom/iLoong/launcher/airpush/j;

    iget-object v10, p0, Lcom/iLoong/launcher/airpush/t;->b:Lcom/iLoong/launcher/airpush/m;

    iget-object v10, v10, Lcom/iLoong/launcher/airpush/m;->c:Ljava/lang/String;

    invoke-virtual {v1, v10}, Lcom/iLoong/launcher/airpush/j;->d(Ljava/lang/String;)Lcom/iLoong/launcher/airpush/n;

    move-result-object v1

    iget-boolean v1, v1, Lcom/iLoong/launcher/airpush/n;->e:Z

    if-nez v1, :cond_7

    sget-object v1, Lcom/iLoong/launcher/airpush/AirPush;->c:Lcom/iLoong/launcher/airpush/j;

    iget-object v10, p0, Lcom/iLoong/launcher/airpush/t;->b:Lcom/iLoong/launcher/airpush/m;

    iget-object v10, v10, Lcom/iLoong/launcher/airpush/m;->c:Ljava/lang/String;

    invoke-virtual {v1, v10}, Lcom/iLoong/launcher/airpush/j;->d(Ljava/lang/String;)Lcom/iLoong/launcher/airpush/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iLoong/launcher/airpush/n;->a()Z

    move-result v1

    if-nez v1, :cond_7

    sget-object v1, Lcom/iLoong/launcher/airpush/AirPush;->c:Lcom/iLoong/launcher/airpush/j;

    iget-object v10, p0, Lcom/iLoong/launcher/airpush/t;->b:Lcom/iLoong/launcher/airpush/m;

    iget-object v10, v10, Lcom/iLoong/launcher/airpush/m;->c:Ljava/lang/String;

    invoke-virtual {v1, v10}, Lcom/iLoong/launcher/airpush/j;->d(Ljava/lang/String;)Lcom/iLoong/launcher/airpush/n;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/iLoong/launcher/airpush/n;->a(I)V

    sget-object v1, Lcom/iLoong/launcher/airpush/AirPush;->c:Lcom/iLoong/launcher/airpush/j;

    iget-object v10, p0, Lcom/iLoong/launcher/airpush/t;->b:Lcom/iLoong/launcher/airpush/m;

    iget-object v10, v10, Lcom/iLoong/launcher/airpush/m;->c:Ljava/lang/String;

    invoke-virtual {v1, v10}, Lcom/iLoong/launcher/airpush/j;->d(Ljava/lang/String;)Lcom/iLoong/launcher/airpush/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iLoong/launcher/airpush/n;->d()V

    :cond_7
    const-string v1, "hello"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "info.packageId:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/iLoong/launcher/airpush/t;->b:Lcom/iLoong/launcher/airpush/m;

    iget-object v11, v11, Lcom/iLoong/launcher/airpush/m;->c:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " \u4e0b\u8f7d\u8fdb\u5ea6:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "%"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    goto/16 :goto_4

    :cond_8
    iget-object v0, p0, Lcom/iLoong/launcher/airpush/t;->a:Lcom/iLoong/launcher/airpush/AirPush;

    iget-object v1, p0, Lcom/iLoong/launcher/airpush/t;->b:Lcom/iLoong/launcher/airpush/m;

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/airpush/AirPush;->c(Lcom/iLoong/launcher/airpush/m;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_3

    :cond_9
    move-object v4, v3

    goto/16 :goto_1
.end method
