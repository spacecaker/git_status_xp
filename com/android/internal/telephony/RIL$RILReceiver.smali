.class Lcom/android/internal/telephony/RIL$RILReceiver;
.super Ljava/lang/Object;
.source "RIL.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/RIL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RILReceiver"
.end annotation


# instance fields
.field buffer:[B

.field final synthetic this$0:Lcom/android/internal/telephony/RIL;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/RIL;)V
    .locals 1
    .parameter

    .prologue
    .line 483
    iput-object p1, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 484
    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->buffer:[B

    .line 485
    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    .line 489
    const/4 v6, 0x0

    .line 492
    .local v6, retryCount:I
    :goto_0
    const/4 v8, 0x0

    .line 496
    .local v8, s:Landroid/net/LocalSocket;
    :try_start_0
    new-instance v9, Landroid/net/LocalSocket;

    invoke-direct {v9}, Landroid/net/LocalSocket;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 497
    .end local v8           #s:Landroid/net/LocalSocket;
    .local v9, s:Landroid/net/LocalSocket;
    :try_start_1
    new-instance v3, Landroid/net/LocalSocketAddress;

    const-string/jumbo v12, "rild"

    sget-object v13, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v3, v12, v13}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 499
    .local v3, l:Landroid/net/LocalSocketAddress;
    invoke-virtual {v9, v3}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3

    .line 532
    const/4 v6, 0x0

    .line 534
    :try_start_2
    iget-object v12, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    iput-object v9, v12, Lcom/android/internal/telephony/RIL;->mSocket:Landroid/net/LocalSocket;

    .line 535
    const-string v12, "RILJ"

    const-string v13, "Connected to \'rild\' socket"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3

    .line 537
    const/4 v4, 0x0

    .line 539
    .local v4, length:I
    :try_start_3
    iget-object v12, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v12, v12, Lcom/android/internal/telephony/RIL;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v12}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 544
    .local v2, is:Ljava/io/InputStream;
    :goto_1
    iget-object v12, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->buffer:[B

    #calls: Lcom/android/internal/telephony/RIL;->readRilMessage(Ljava/io/InputStream;[B)I
    invoke-static {v2, v12}, Lcom/android/internal/telephony/RIL;->access$300(Ljava/io/InputStream;[B)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_4

    move-result v4

    .line 546
    if-gez v4, :cond_3

    .line 568
    .end local v2           #is:Ljava/io/InputStream;
    :goto_2
    :try_start_4
    const-string v12, "RILJ"

    const-string v13, "Disconnected from \'rild\' socket"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    iget-object v12, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    sget-object v13, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/RIL;->setRadioState(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    .line 574
    :try_start_5
    iget-object v12, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v12, v12, Lcom/android/internal/telephony/RIL;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v12}, Landroid/net/LocalSocket;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    .line 578
    :goto_3
    :try_start_6
    iget-object v12, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    const/4 v13, 0x0

    iput-object v13, v12, Lcom/android/internal/telephony/RIL;->mSocket:Landroid/net/LocalSocket;

    .line 579
    invoke-static {}, Lcom/android/internal/telephony/RILRequest;->resetSerial()V

    .line 582
    iget-object v12, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v12, v12, Lcom/android/internal/telephony/RIL;->mRequestsList:Ljava/util/ArrayList;

    monitor-enter v12
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    .line 583
    const/4 v1, 0x0

    .local v1, i:I
    :try_start_7
    iget-object v13, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v13, v13, Lcom/android/internal/telephony/RIL;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v10

    .local v10, sz:I
    :goto_4
    if-ge v1, v10, :cond_4

    .line 584
    iget-object v13, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v13, v13, Lcom/android/internal/telephony/RIL;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/RILRequest;

    .line 585
    .local v7, rr:Lcom/android/internal/telephony/RILRequest;
    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-virtual {v7, v13, v14}, Lcom/android/internal/telephony/RILRequest;->onError(ILjava/lang/Object;)V

    .line 586
    invoke-virtual {v7}, Lcom/android/internal/telephony/RILRequest;->release()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 583
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 500
    .end local v1           #i:I
    .end local v3           #l:Landroid/net/LocalSocketAddress;
    .end local v4           #length:I
    .end local v7           #rr:Lcom/android/internal/telephony/RILRequest;
    .end local v9           #s:Landroid/net/LocalSocket;
    .end local v10           #sz:I
    .restart local v8       #s:Landroid/net/LocalSocket;
    :catch_0
    move-exception v12

    move-object v0, v12

    .line 502
    .local v0, ex:Ljava/io/IOException;
    :goto_5
    if-eqz v8, :cond_0

    .line 503
    :try_start_8
    invoke-virtual {v8}, Landroid/net/LocalSocket;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1

    .line 512
    :cond_0
    :goto_6
    const/16 v12, 0x8

    if-ne v6, v12, :cond_2

    .line 513
    :try_start_9
    const-string v12, "RILJ"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Couldn\'t find \'rild\' socket after "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " times, continuing to retry silently"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_1

    .line 524
    :cond_1
    :goto_7
    const-wide/16 v12, 0xfa0

    :try_start_a
    invoke-static {v12, v13}, Ljava/lang/Thread;->sleep(J)V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_6
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_1

    .line 528
    :goto_8
    add-int/lit8 v6, v6, 0x1

    .line 529
    goto/16 :goto_0

    .line 517
    :cond_2
    if-lez v6, :cond_1

    const/16 v12, 0x8

    if-ge v6, v12, :cond_1

    .line 518
    :try_start_b
    const-string v12, "RILJ"

    const-string v13, "Couldn\'t find \'rild\' socket; retrying after timeout"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_1

    goto :goto_7

    .line 591
    .end local v0           #ex:Ljava/io/IOException;
    :catch_1
    move-exception v12

    move-object v11, v12

    .line 592
    .local v11, tr:Ljava/lang/Throwable;
    :goto_9
    const-string v12, "RILJ"

    const-string v13, "Uncaught exception"

    invoke-static {v12, v13, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 594
    return-void

    .line 551
    .end local v8           #s:Landroid/net/LocalSocket;
    .end local v11           #tr:Ljava/lang/Throwable;
    .restart local v2       #is:Ljava/io/InputStream;
    .restart local v3       #l:Landroid/net/LocalSocketAddress;
    .restart local v4       #length:I
    .restart local v9       #s:Landroid/net/LocalSocket;
    :cond_3
    :try_start_c
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    .line 552
    .local v5, p:Landroid/os/Parcel;
    iget-object v12, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->buffer:[B

    const/4 v13, 0x0

    invoke-virtual {v5, v12, v13, v4}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 553
    const/4 v12, 0x0

    invoke-virtual {v5, v12}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 557
    iget-object v12, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    #calls: Lcom/android/internal/telephony/RIL;->processResponse(Landroid/os/Parcel;)V
    invoke-static {v12, v5}, Lcom/android/internal/telephony/RIL;->access$400(Lcom/android/internal/telephony/RIL;Landroid/os/Parcel;)V

    .line 558
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_4

    goto/16 :goto_1

    .line 560
    .end local v2           #is:Ljava/io/InputStream;
    .end local v5           #p:Landroid/os/Parcel;
    :catch_2
    move-exception v12

    move-object v0, v12

    .line 561
    .restart local v0       #ex:Ljava/io/IOException;
    :try_start_d
    const-string v12, "RILJ"

    const-string v13, "\'rild\' socket closed"

    invoke-static {v12, v13, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 591
    .end local v0           #ex:Ljava/io/IOException;
    .end local v3           #l:Landroid/net/LocalSocketAddress;
    .end local v4           #length:I
    :catch_3
    move-exception v12

    move-object v11, v12

    move-object v8, v9

    .end local v9           #s:Landroid/net/LocalSocket;
    .restart local v8       #s:Landroid/net/LocalSocket;
    goto :goto_9

    .line 563
    .end local v8           #s:Landroid/net/LocalSocket;
    .restart local v3       #l:Landroid/net/LocalSocketAddress;
    .restart local v4       #length:I
    .restart local v9       #s:Landroid/net/LocalSocket;
    :catch_4
    move-exception v12

    move-object v11, v12

    .line 564
    .restart local v11       #tr:Ljava/lang/Throwable;
    const-string v12, "RILJ"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Uncaught exception read length="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "Exception:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v11}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_3

    goto/16 :goto_2

    .line 589
    .end local v11           #tr:Ljava/lang/Throwable;
    .restart local v1       #i:I
    .restart local v10       #sz:I
    :cond_4
    :try_start_e
    iget-object v13, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v13, v13, Lcom/android/internal/telephony/RIL;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    .line 590
    monitor-exit v12

    goto/16 :goto_0

    .end local v10           #sz:I
    :catchall_0
    move-exception v13

    monitor-exit v12
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    :try_start_f
    throw v13
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_3

    .line 505
    .end local v1           #i:I
    .end local v3           #l:Landroid/net/LocalSocketAddress;
    .end local v4           #length:I
    .end local v9           #s:Landroid/net/LocalSocket;
    .restart local v0       #ex:Ljava/io/IOException;
    .restart local v8       #s:Landroid/net/LocalSocket;
    :catch_5
    move-exception v12

    goto/16 :goto_6

    .line 525
    :catch_6
    move-exception v12

    goto :goto_8

    .line 575
    .end local v0           #ex:Ljava/io/IOException;
    .end local v8           #s:Landroid/net/LocalSocket;
    .restart local v3       #l:Landroid/net/LocalSocketAddress;
    .restart local v4       #length:I
    .restart local v9       #s:Landroid/net/LocalSocket;
    :catch_7
    move-exception v12

    goto/16 :goto_3

    .line 500
    .end local v3           #l:Landroid/net/LocalSocketAddress;
    .end local v4           #length:I
    :catch_8
    move-exception v12

    move-object v0, v12

    move-object v8, v9

    .end local v9           #s:Landroid/net/LocalSocket;
    .restart local v8       #s:Landroid/net/LocalSocket;
    goto/16 :goto_5
.end method
