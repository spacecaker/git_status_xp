.class Lcom/android/server/MountService$MountServiceHandler;
.super Landroid/os/Handler;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MountServiceHandler"
.end annotation


# instance fields
.field mForceUnmounts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/MountService$UnmountCallBack;",
            ">;"
        }
    .end annotation
.end field

.field mUpdatingStatus:Z

.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;Landroid/os/Looper;)V
    .locals 1
    .parameter
    .parameter "l"

    .prologue
    .line 351
    iput-object p1, p0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    .line 352
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 348
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/MountService$MountServiceHandler;->mForceUnmounts:Ljava/util/ArrayList;

    .line 349
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/MountService$MountServiceHandler;->mUpdatingStatus:Z

    .line 353
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 20
    .parameter "msg"

    .prologue
    .line 357
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v15, v0

    packed-switch v15, :pswitch_data_0

    .line 447
    :cond_0
    :goto_0
    return-void

    .line 359
    :pswitch_0
    const-string v15, "MountService"

    const-string v16, "H_UNMOUNT_PM_UPDATE"

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v14, v0

    check-cast v14, Lcom/android/server/MountService$UnmountCallBack;

    .line 361
    .local v14, ucb:Lcom/android/server/MountService$UnmountCallBack;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->mForceUnmounts:Ljava/util/ArrayList;

    move-object v15, v0

    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 362
    const-string v15, "MountService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, " registered = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/MountService$MountServiceHandler;->mUpdatingStatus:Z

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    const/4 v4, 0x0

    .line 365
    .local v4, bFoundPath:Z
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->mForceUnmounts:Ljava/util/ArrayList;

    move-object v15, v0

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v6, v15, :cond_1

    .line 366
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->mForceUnmounts:Ljava/util/ArrayList;

    move-object v15, v0

    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/MountService$UnmountCallBack;

    .line 367
    .local v13, tmp_ucb:Lcom/android/server/MountService$UnmountCallBack;
    iget-object v15, v13, Lcom/android/server/MountService$UnmountCallBack;->path:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/MountService;->targeting_asec_path:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 368
    const/4 v4, 0x1

    .line 373
    .end local v13           #tmp_ucb:Lcom/android/server/MountService$UnmountCallBack;
    :cond_1
    if-eqz v4, :cond_3

    .line 374
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/MountService$MountServiceHandler;->mUpdatingStatus:Z

    move v15, v0

    if-nez v15, :cond_0

    .line 375
    const-string v15, "MountService"

    const-string v16, "Updating external media status on PackageManager"

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    const/4 v15, 0x1

    move v0, v15

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/MountService$MountServiceHandler;->mUpdatingStatus:Z

    .line 377
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object v15, v0

    #getter for: Lcom/android/server/MountService;->mPms:Lcom/android/server/PackageManagerService;
    invoke-static {v15}, Lcom/android/server/MountService;->access$300(Lcom/android/server/MountService;)Lcom/android/server/PackageManagerService;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x1

    invoke-virtual/range {v15 .. v17}, Lcom/android/server/PackageManagerService;->updateExternalMediaStatus(ZZ)V

    goto/16 :goto_0

    .line 365
    .restart local v13       #tmp_ucb:Lcom/android/server/MountService$UnmountCallBack;
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 380
    .end local v13           #tmp_ucb:Lcom/android/server/MountService$UnmountCallBack;
    :cond_3
    const-string v15, "MountService"

    const-string v16, "ASEC: skip update enternal media status"

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object v15, v0

    #getter for: Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;
    invoke-static {v15}, Lcom/android/server/MountService;->access$400(Lcom/android/server/MountService;)Landroid/os/Handler;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v16, v0

    #getter for: Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;
    invoke-static/range {v16 .. v16}, Lcom/android/server/MountService;->access$400(Lcom/android/server/MountService;)Landroid/os/Handler;

    move-result-object v16

    const/16 v17, 0x2

    move-object/from16 v0, v16

    move/from16 v1, v17

    move-object v2, v14

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 386
    .end local v4           #bFoundPath:Z
    .end local v6           #i:I
    .end local v14           #ucb:Lcom/android/server/MountService$UnmountCallBack;
    :pswitch_1
    const-string v15, "MountService"

    const-string v16, "H_UNMOUNT_PM_DONE"

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    const-string v15, "MountService"

    const-string v16, "Updated status. Processing requests"

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    const/4 v15, 0x0

    move v0, v15

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/MountService$MountServiceHandler;->mUpdatingStatus:Z

    .line 389
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->mForceUnmounts:Ljava/util/ArrayList;

    move-object v15, v0

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 390
    .local v9, size:I
    new-array v10, v9, [I

    .line 391
    .local v10, sizeArr:[I
    const/4 v11, 0x0

    .line 393
    .local v11, sizeArrN:I
    const-string v15, "activity"

    invoke-static {v15}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityManagerService;

    .line 395
    .local v3, ams:Lcom/android/server/am/ActivityManagerService;
    const/4 v6, 0x0

    .restart local v6       #i:I
    move v12, v11

    .end local v11           #sizeArrN:I
    .local v12, sizeArrN:I
    :goto_2
    if-ge v6, v9, :cond_b

    .line 396
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->mForceUnmounts:Ljava/util/ArrayList;

    move-object v15, v0

    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/MountService$UnmountCallBack;

    .line 397
    .restart local v14       #ucb:Lcom/android/server/MountService$UnmountCallBack;
    iget-object v7, v14, Lcom/android/server/MountService$UnmountCallBack;->path:Ljava/lang/String;

    .line 398
    .local v7, path:Ljava/lang/String;
    const-string v15, "MountService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "H_UNMOUNT_PM_DONE -> path : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", force = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object v0, v14

    iget-boolean v0, v0, Lcom/android/server/MountService$UnmountCallBack;->force:Z

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    const/4 v5, 0x0

    .line 400
    .local v5, done:Z
    iget-boolean v15, v14, Lcom/android/server/MountService$UnmountCallBack;->force:Z

    if-nez v15, :cond_5

    .line 401
    const/4 v5, 0x1

    .line 417
    :cond_4
    :goto_3
    if-nez v5, :cond_9

    iget v15, v14, Lcom/android/server/MountService$UnmountCallBack;->retries:I

    const/16 v16, 0x4

    move v0, v15

    move/from16 v1, v16

    if-ge v0, v1, :cond_9

    .line 419
    const-string v15, "MountService"

    const-string v16, "Retrying to kill storage users again"

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object v15, v0

    #getter for: Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;
    invoke-static {v15}, Lcom/android/server/MountService;->access$400(Lcom/android/server/MountService;)Landroid/os/Handler;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v16, v0

    #getter for: Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;
    invoke-static/range {v16 .. v16}, Lcom/android/server/MountService;->access$400(Lcom/android/server/MountService;)Landroid/os/Handler;

    move-result-object v16

    const/16 v17, 0x2

    move-object v0, v14

    iget v0, v0, Lcom/android/server/MountService$UnmountCallBack;->retries:I

    move/from16 v18, v0

    add-int/lit8 v19, v18, 0x1

    move/from16 v0, v19

    move-object v1, v14

    iput v0, v1, Lcom/android/server/MountService$UnmountCallBack;->retries:I

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v16

    const-wide/16 v17, 0x1e

    invoke-virtual/range {v15 .. v18}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move v11, v12

    .line 395
    .end local v12           #sizeArrN:I
    .restart local v11       #sizeArrN:I
    :goto_4
    add-int/lit8 v6, v6, 0x1

    move v12, v11

    .end local v11           #sizeArrN:I
    .restart local v12       #sizeArrN:I
    goto/16 :goto_2

    .line 403
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object v15, v0

    invoke-virtual {v15, v7}, Lcom/android/server/MountService;->getStorageUsers(Ljava/lang/String;)[I

    move-result-object v8

    .line 404
    .local v8, pids:[I
    const-string v15, "MountService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "H_UNMOUNT_PM_DONE -> getStorageUsers : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object v0, v8

    array-length v0, v0

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    if-eqz v8, :cond_6

    array-length v15, v8

    if-nez v15, :cond_7

    .line 406
    :cond_6
    const/4 v5, 0x1

    goto :goto_3

    .line 409
    :cond_7
    const-string v15, "unmount media"

    invoke-virtual {v3, v8, v15}, Lcom/android/server/am/ActivityManagerService;->killPids([ILjava/lang/String;)Z

    .line 411
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object v15, v0

    invoke-virtual {v15, v7}, Lcom/android/server/MountService;->getStorageUsers(Ljava/lang/String;)[I

    move-result-object v8

    .line 412
    if-eqz v8, :cond_8

    array-length v15, v8

    if-nez v15, :cond_4

    .line 413
    :cond_8
    const/4 v5, 0x1

    goto/16 :goto_3

    .line 425
    .end local v8           #pids:[I
    :cond_9
    iget v15, v14, Lcom/android/server/MountService$UnmountCallBack;->retries:I

    const/16 v16, 0x4

    move v0, v15

    move/from16 v1, v16

    if-lt v0, v1, :cond_a

    .line 426
    const-string v15, "MountService"

    const-string v16, "Failed to unmount media inspite of 4 retries. Forcibly killing processes now"

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    :cond_a
    add-int/lit8 v11, v12, 0x1

    .end local v12           #sizeArrN:I
    .restart local v11       #sizeArrN:I
    aput v6, v10, v12

    .line 430
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object v15, v0

    #getter for: Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;
    invoke-static {v15}, Lcom/android/server/MountService;->access$400(Lcom/android/server/MountService;)Landroid/os/Handler;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v16, v0

    #getter for: Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;
    invoke-static/range {v16 .. v16}, Lcom/android/server/MountService;->access$400(Lcom/android/server/MountService;)Landroid/os/Handler;

    move-result-object v16

    const/16 v17, 0x3

    move-object/from16 v0, v16

    move/from16 v1, v17

    move-object v2, v14

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_4

    .line 435
    .end local v5           #done:Z
    .end local v7           #path:Ljava/lang/String;
    .end local v11           #sizeArrN:I
    .end local v14           #ucb:Lcom/android/server/MountService$UnmountCallBack;
    .restart local v12       #sizeArrN:I
    :cond_b
    const/4 v15, 0x1

    sub-int v6, v12, v15

    :goto_5
    if-ltz v6, :cond_0

    .line 436
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->mForceUnmounts:Ljava/util/ArrayList;

    move-object v15, v0

    aget v16, v10, v6

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 435
    add-int/lit8 v6, v6, -0x1

    goto :goto_5

    .line 441
    .end local v3           #ams:Lcom/android/server/am/ActivityManagerService;
    .end local v6           #i:I
    .end local v9           #size:I
    .end local v10           #sizeArr:[I
    .end local v12           #sizeArrN:I
    :pswitch_2
    const-string v15, "MountService"

    const-string v16, "H_UNMOUNT_MS"

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v14, v0

    check-cast v14, Lcom/android/server/MountService$UnmountCallBack;

    .line 443
    .restart local v14       #ucb:Lcom/android/server/MountService$UnmountCallBack;
    invoke-virtual {v14}, Lcom/android/server/MountService$UnmountCallBack;->handleFinished()V

    goto/16 :goto_0

    .line 357
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
