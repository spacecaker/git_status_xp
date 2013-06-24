.class Lcom/android/server/MountService$1$1;
.super Ljava/lang/Thread;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/MountService$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/MountService$1;


# direct methods
.method constructor <init>(Lcom/android/server/MountService$1;)V
    .locals 0
    .parameter

    .prologue
    .line 479
    iput-object p1, p0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const-string v9, "MountService"

    .line 482
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 483
    .local v1, path:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    iget-object v4, v4, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    invoke-virtual {v4, v1}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 484
    .local v3, state:Ljava/lang/String;
    const-string v4, "MountService"

    const-string v5, "mBroadcastReceiver :: run "

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    const-string v4, "unmounted"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 487
    iget-object v4, p0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    iget-object v4, v4, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    #calls: Lcom/android/server/MountService;->doMountVolume(Ljava/lang/String;)I
    invoke-static {v4, v1}, Lcom/android/server/MountService;->access$700(Lcom/android/server/MountService;Ljava/lang/String;)I

    move-result v2

    .line 488
    .local v2, rc:I
    if-eqz v2, :cond_0

    .line 489
    const-string v4, "MountService"

    const-string v5, "External Sdcard :: Boot-time mount failed (%d)"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    .end local v2           #rc:I
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    iget-object v4, v4, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mSendUmsConnectedOnBoot:Z
    invoke-static {v4}, Lcom/android/server/MountService;->access$800(Lcom/android/server/MountService;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 504
    const-string v4, "MountService"

    const-string v5, "ACTION_BOOT_COMPLETED :: send ACTION_UMS_CONNECTED"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    iget-object v4, p0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    iget-object v4, v4, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    const/4 v5, 0x0

    #setter for: Lcom/android/server/MountService;->mSendUmsConnectedOnBoot:Z
    invoke-static {v4, v5}, Lcom/android/server/MountService;->access$802(Lcom/android/server/MountService;Z)Z

    .line 508
    :cond_1
    iget-object v4, p0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    iget-object v4, v4, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    #calls: Lcom/android/server/MountService;->setInitPlayNotificationSounds()V
    invoke-static {v4}, Lcom/android/server/MountService;->access$900(Lcom/android/server/MountService;)V

    .line 512
    .end local v1           #path:Ljava/lang/String;
    .end local v3           #state:Ljava/lang/String;
    :goto_1
    return-void

    .line 491
    .restart local v1       #path:Ljava/lang/String;
    .restart local v3       #state:Ljava/lang/String;
    :cond_2
    const-string v4, "shared"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 496
    iget-object v4, p0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    iget-object v4, v4, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x7

    #calls: Lcom/android/server/MountService;->notifyVolumeStateChange(Ljava/lang/String;Ljava/lang/String;II)V
    invoke-static {v4, v5, v1, v6, v7}, Lcom/android/server/MountService;->access$600(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 509
    .end local v1           #path:Ljava/lang/String;
    .end local v3           #state:Ljava/lang/String;
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 510
    .local v0, ex:Ljava/lang/Exception;
    const-string v4, "MountService"

    const-string v4, "Boot-time mount exception"

    invoke-static {v9, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
