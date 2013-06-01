.class public Lcom/iLoong/launcher/SetupMenu/q;
.super Ljava/lang/Thread;


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Landroid/os/Handler;

.field private e:Lcom/iLoong/launcher/SetupMenu/t;

.field private f:I


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/iLoong/launcher/SetupMenu/t;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput v0, p0, Lcom/iLoong/launcher/SetupMenu/q;->a:I

    iput v0, p0, Lcom/iLoong/launcher/SetupMenu/q;->f:I

    iput-object p1, p0, Lcom/iLoong/launcher/SetupMenu/q;->d:Landroid/os/Handler;

    iput-object p2, p0, Lcom/iLoong/launcher/SetupMenu/q;->e:Lcom/iLoong/launcher/SetupMenu/t;

    iget-object v0, p2, Lcom/iLoong/launcher/SetupMenu/t;->j:Ljava/lang/String;

    iput-object v0, p0, Lcom/iLoong/launcher/SetupMenu/q;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongApplication;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p2, Lcom/iLoong/launcher/SetupMenu/t;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iLoong/launcher/SetupMenu/q;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    const/4 v1, 0x0

    const/16 v0, 0x2000

    const/16 v14, 0x194

    const/4 v13, -0x1

    const/4 v3, 0x0

    new-array v7, v0, [B

    move-object v2, v1

    move v4, v3

    :goto_0
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v5, p0, Lcom/iLoong/launcher/SetupMenu/q;->b:Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    const/16 v2, 0x7530

    :try_start_1
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setAllowUserInteraction(Z)V

    const-string v2, "Range"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "bytes="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "testdrag"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "Test ResponseCode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    if-eq v2, v14, :cond_9

    new-instance v5, Ljava/io/File;

    iget-object v2, p0, Lcom/iLoong/launcher/SetupMenu/q;->c:Ljava/lang/String;

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/iLoong/launcher/SetupMenu/p;->a()Lcom/iLoong/launcher/SetupMenu/p;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iLoong/launcher/SetupMenu/p;->b()Lcom/iLoong/launcher/SetupMenu/z;

    move-result-object v2

    iget-object v6, p0, Lcom/iLoong/launcher/SetupMenu/q;->e:Lcom/iLoong/launcher/SetupMenu/t;

    iget-object v6, v6, Lcom/iLoong/launcher/SetupMenu/t;->c:Ljava/lang/String;

    invoke-virtual {v2, v6}, Lcom/iLoong/launcher/SetupMenu/z;->d(Ljava/lang/String;)I

    move-result v6

    invoke-static {}, Lcom/iLoong/launcher/SetupMenu/p;->a()Lcom/iLoong/launcher/SetupMenu/p;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iLoong/launcher/SetupMenu/p;->b()Lcom/iLoong/launcher/SetupMenu/z;

    move-result-object v2

    iget-object v8, p0, Lcom/iLoong/launcher/SetupMenu/q;->e:Lcom/iLoong/launcher/SetupMenu/t;

    iget-object v8, v8, Lcom/iLoong/launcher/SetupMenu/t;->c:Ljava/lang/String;

    invoke-virtual {v2, v8}, Lcom/iLoong/launcher/SetupMenu/z;->c(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    if-eq v2, v13, :cond_0

    int-to-long v8, v2

    :try_start_2
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v10

    cmp-long v4, v8, v10

    if-nez v4, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    int-to-long v10, v6

    sub-long/2addr v8, v10

    const-wide/32 v10, 0x15180

    cmp-long v4, v8, v10

    if-lez v4, :cond_2

    :cond_0
    const/4 v2, 0x0

    :try_start_3
    invoke-static {}, Lcom/iLoong/launcher/SetupMenu/p;->a()Lcom/iLoong/launcher/SetupMenu/p;

    move-result-object v4

    invoke-virtual {v4}, Lcom/iLoong/launcher/SetupMenu/p;->b()Lcom/iLoong/launcher/SetupMenu/z;

    move-result-object v4

    iget-object v6, p0, Lcom/iLoong/launcher/SetupMenu/q;->e:Lcom/iLoong/launcher/SetupMenu/t;

    iget-object v6, v6, Lcom/iLoong/launcher/SetupMenu/t;->c:Ljava/lang/String;

    invoke-virtual {v4, v6, v2}, Lcom/iLoong/launcher/SetupMenu/z;->b(Ljava/lang/String;I)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :cond_1
    move v2, v3

    :cond_2
    :try_start_4
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v4

    iput v4, p0, Lcom/iLoong/launcher/SetupMenu/q;->a:I

    if-nez v2, :cond_3

    invoke-static {}, Lcom/iLoong/launcher/SetupMenu/p;->a()Lcom/iLoong/launcher/SetupMenu/p;

    move-result-object v4

    invoke-virtual {v4}, Lcom/iLoong/launcher/SetupMenu/p;->b()Lcom/iLoong/launcher/SetupMenu/z;

    move-result-object v4

    iget-object v6, p0, Lcom/iLoong/launcher/SetupMenu/q;->e:Lcom/iLoong/launcher/SetupMenu/t;

    iget-object v6, v6, Lcom/iLoong/launcher/SetupMenu/t;->c:Ljava/lang/String;

    iget v8, p0, Lcom/iLoong/launcher/SetupMenu/q;->a:I

    invoke-virtual {v4, v6, v8}, Lcom/iLoong/launcher/SetupMenu/z;->a(Ljava/lang/String;I)V

    :cond_3
    iget v4, p0, Lcom/iLoong/launcher/SetupMenu/q;->a:I

    add-int v8, v2, v4

    new-instance v9, Ljava/io/RandomAccessFile;

    const-string v4, "rw"

    invoke-direct {v9, v5, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    int-to-long v4, v2

    invoke-virtual {v9, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    new-instance v10, Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v10, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move v6, v2

    :cond_4
    :goto_1
    if-lt v6, v8, :cond_6

    :cond_5
    invoke-virtual {v10}, Ljava/io/BufferedInputStream;->close()V

    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V

    if-ne v8, v2, :cond_7

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v4

    const/16 v5, 0x64

    iput v5, v4, Landroid/os/Message;->what:I

    iput v8, v4, Landroid/os/Message;->arg1:I

    iput v2, v4, Landroid/os/Message;->arg2:I

    iget-object v5, p0, Lcom/iLoong/launcher/SetupMenu/q;->e:Lcom/iLoong/launcher/SetupMenu/t;

    iput-object v5, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v5, p0, Lcom/iLoong/launcher/SetupMenu/q;->d:Landroid/os/Handler;

    invoke-virtual {v5, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :goto_2
    const-string v0, "testdrag"

    const-string v2, "break downloadTask loop"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    check-cast v0, [B

    return-void

    :cond_6
    const/4 v11, 0x0

    const/16 v12, 0x2000

    :try_start_5
    invoke-virtual {v10, v7, v11, v12}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v11

    if-eq v11, v13, :cond_5

    const/4 v12, 0x0

    invoke-virtual {v9, v7, v12, v11}, Ljava/io/RandomAccessFile;->write([BII)V

    add-int/2addr v6, v11

    add-int/2addr v2, v11

    invoke-static {}, Lcom/iLoong/launcher/SetupMenu/p;->a()Lcom/iLoong/launcher/SetupMenu/p;

    move-result-object v11

    invoke-virtual {v11}, Lcom/iLoong/launcher/SetupMenu/p;->b()Lcom/iLoong/launcher/SetupMenu/z;

    move-result-object v11

    iget-object v12, p0, Lcom/iLoong/launcher/SetupMenu/q;->e:Lcom/iLoong/launcher/SetupMenu/t;

    iget-object v12, v12, Lcom/iLoong/launcher/SetupMenu/t;->c:Ljava/lang/String;

    invoke-virtual {v11, v12, v2}, Lcom/iLoong/launcher/SetupMenu/z;->b(Ljava/lang/String;I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    cmp-long v11, v11, v4

    if-lez v11, :cond_4

    if-eq v8, v2, :cond_4

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v4

    const/4 v5, 0x0

    iput v5, v4, Landroid/os/Message;->what:I

    iput v8, v4, Landroid/os/Message;->arg1:I

    iput v2, v4, Landroid/os/Message;->arg2:I

    iget-object v5, p0, Lcom/iLoong/launcher/SetupMenu/q;->e:Lcom/iLoong/launcher/SetupMenu/t;

    iput-object v5, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v5, p0, Lcom/iLoong/launcher/SetupMenu/q;->d:Landroid/os/Handler;

    invoke-virtual {v5, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v11, 0x3e8

    add-long/2addr v4, v11

    goto :goto_1

    :cond_7
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v4

    const/16 v5, 0x65

    iput v5, v4, Landroid/os/Message;->what:I

    iget-object v5, p0, Lcom/iLoong/launcher/SetupMenu/q;->e:Lcom/iLoong/launcher/SetupMenu/t;

    iput-object v5, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v5, p0, Lcom/iLoong/launcher/SetupMenu/q;->d:Landroid/os/Handler;

    invoke-virtual {v5, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_2

    :catch_0
    move-exception v4

    :goto_3
    iget v4, p0, Lcom/iLoong/launcher/SetupMenu/q;->f:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/iLoong/launcher/SetupMenu/q;->f:I

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_8
    const-wide/16 v4, 0x1388

    :try_start_6
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_2

    :goto_4
    iget v4, p0, Lcom/iLoong/launcher/SetupMenu/q;->f:I

    const/4 v5, 0x3

    if-le v4, v5, :cond_a

    iput v3, p0, Lcom/iLoong/launcher/SetupMenu/q;->f:I

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput v13, v0, Landroid/os/Message;->what:I

    iget-object v2, p0, Lcom/iLoong/launcher/SetupMenu/q;->e:Lcom/iLoong/launcher/SetupMenu/t;

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Lcom/iLoong/launcher/SetupMenu/q;->d:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const-string v0, "testdrag"

    const-string v2, "tryTimes is 3"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_9
    :try_start_7
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    const/16 v5, 0x194

    iput v5, v2, Landroid/os/Message;->what:I

    iget-object v5, p0, Lcom/iLoong/launcher/SetupMenu/q;->e:Lcom/iLoong/launcher/SetupMenu/t;

    iput-object v5, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v5, p0, Lcom/iLoong/launcher/SetupMenu/q;->d:Landroid/os/Handler;

    invoke-virtual {v5, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_2

    :catch_1
    move-exception v2

    move v2, v4

    goto :goto_3

    :catch_2
    move-exception v4

    goto :goto_4

    :catch_3
    move-exception v2

    move v2, v3

    goto :goto_3

    :catch_4
    move-exception v0

    move-object v0, v2

    move v2, v4

    goto :goto_3

    :cond_a
    move v4, v2

    move-object v2, v0

    goto/16 :goto_0
.end method
