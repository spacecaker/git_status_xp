.class Lcom/android/server/usb/UsbService$3;
.super Landroid/os/Handler;
.source "UsbService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usb/UsbService;


# direct methods
.method constructor <init>(Lcom/android/server/usb/UsbService;)V
    .locals 0
    .parameter

    .prologue
    .line 381
    iput-object p1, p0, Lcom/android/server/usb/UsbService$3;->this$0:Lcom/android/server/usb/UsbService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method private addEnabledFunctionsLocked(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 384
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/server/usb/UsbService$3;->this$0:Lcom/android/server/usb/UsbService;

    #getter for: Lcom/android/server/usb/UsbService;->mEnabledFunctions:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/server/usb/UsbService;->access$900(Lcom/android/server/usb/UsbService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 385
    iget-object v1, p0, Lcom/android/server/usb/UsbService$3;->this$0:Lcom/android/server/usb/UsbService;

    #getter for: Lcom/android/server/usb/UsbService;->mEnabledFunctions:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/server/usb/UsbService;->access$900(Lcom/android/server/usb/UsbService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "enabled"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 384
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 387
    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/server/usb/UsbService$3;->this$0:Lcom/android/server/usb/UsbService;

    #getter for: Lcom/android/server/usb/UsbService;->mDisabledFunctions:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/server/usb/UsbService;->access$1000(Lcom/android/server/usb/UsbService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 388
    iget-object v1, p0, Lcom/android/server/usb/UsbService$3;->this$0:Lcom/android/server/usb/UsbService;

    #getter for: Lcom/android/server/usb/UsbService;->mDisabledFunctions:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/server/usb/UsbService;->access$1000(Lcom/android/server/usb/UsbService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "disabled"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 387
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 390
    :cond_1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v3, "accessory"

    .line 394
    iget-object v3, p0, Lcom/android/server/usb/UsbService$3;->this$0:Lcom/android/server/usb/UsbService;

    #getter for: Lcom/android/server/usb/UsbService;->mLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/server/usb/UsbService;->access$000(Lcom/android/server/usb/UsbService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 395
    :try_start_0
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 466
    .end local p0
    :cond_0
    :goto_0
    monitor-exit v3

    .line 467
    :goto_1
    return-void

    .line 397
    .restart local p0
    :pswitch_0
    iget-object v4, p0, Lcom/android/server/usb/UsbService$3;->this$0:Lcom/android/server/usb/UsbService;

    #getter for: Lcom/android/server/usb/UsbService;->mConnected:I
    invoke-static {v4}, Lcom/android/server/usb/UsbService;->access$200(Lcom/android/server/usb/UsbService;)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/usb/UsbService$3;->this$0:Lcom/android/server/usb/UsbService;

    #getter for: Lcom/android/server/usb/UsbService;->mLastConnected:I
    invoke-static {v5}, Lcom/android/server/usb/UsbService;->access$1100(Lcom/android/server/usb/UsbService;)I

    move-result v5

    if-ne v4, v5, :cond_1

    iget-object v4, p0, Lcom/android/server/usb/UsbService$3;->this$0:Lcom/android/server/usb/UsbService;

    #getter for: Lcom/android/server/usb/UsbService;->mConfiguration:I
    invoke-static {v4}, Lcom/android/server/usb/UsbService;->access$500(Lcom/android/server/usb/UsbService;)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/usb/UsbService$3;->this$0:Lcom/android/server/usb/UsbService;

    #getter for: Lcom/android/server/usb/UsbService;->mLastConfiguration:I
    invoke-static {v5}, Lcom/android/server/usb/UsbService;->access$1200(Lcom/android/server/usb/UsbService;)I

    move-result v5

    if-eq v4, v5, :cond_0

    .line 399
    :cond_1
    iget-object v4, p0, Lcom/android/server/usb/UsbService$3;->this$0:Lcom/android/server/usb/UsbService;

    #getter for: Lcom/android/server/usb/UsbService;->mConfiguration:I
    invoke-static {v4}, Lcom/android/server/usb/UsbService;->access$500(Lcom/android/server/usb/UsbService;)I

    move-result v4

    if-eqz v4, :cond_4

    move v2, v8

    .line 400
    .local v2, usbConnected:Z
    :goto_2
    invoke-static {}, Lcom/android/server/usb/UsbService;->access$100()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleMessage :: usbConnected = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    if-eqz v2, :cond_5

    .line 403
    iget-object v4, p0, Lcom/android/server/usb/UsbService$3;->this$0:Lcom/android/server/usb/UsbService;

    const/4 v5, 0x1

    #setter for: Lcom/android/server/usb/UsbService;->mConnected:I
    invoke-static {v4, v5}, Lcom/android/server/usb/UsbService;->access$202(Lcom/android/server/usb/UsbService;I)I

    .line 412
    :goto_3
    iget-object v4, p0, Lcom/android/server/usb/UsbService$3;->this$0:Lcom/android/server/usb/UsbService;

    #getter for: Lcom/android/server/usb/UsbService;->mConnected:I
    invoke-static {v4}, Lcom/android/server/usb/UsbService;->access$200(Lcom/android/server/usb/UsbService;)I

    move-result v4

    if-nez v4, :cond_3

    .line 413
    const-string v4, "accessory"

    invoke-static {v4}, Landroid/hardware/usb/UsbManager;->isFunctionEnabled(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 416
    invoke-static {}, Lcom/android/server/usb/UsbService;->access$100()Ljava/lang/String;

    move-result-object v4

    const-string v5, "exited USB accessory mode"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    const-string v4, "accessory"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/hardware/usb/UsbManager;->setFunctionEnabled(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_2

    .line 419
    invoke-static {}, Lcom/android/server/usb/UsbService;->access$100()Ljava/lang/String;

    move-result-object v4

    const-string v5, "could not disable accessory function"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    :cond_2
    iget-object v4, p0, Lcom/android/server/usb/UsbService$3;->this$0:Lcom/android/server/usb/UsbService;

    #getter for: Lcom/android/server/usb/UsbService;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;
    invoke-static {v4}, Lcom/android/server/usb/UsbService;->access$700(Lcom/android/server/usb/UsbService;)Landroid/hardware/usb/UsbAccessory;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 436
    iget-object v4, p0, Lcom/android/server/usb/UsbService$3;->this$0:Lcom/android/server/usb/UsbService;

    #getter for: Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceSettingsManager;
    invoke-static {v4}, Lcom/android/server/usb/UsbService;->access$800(Lcom/android/server/usb/UsbService;)Lcom/android/server/usb/UsbDeviceSettingsManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/usb/UsbService$3;->this$0:Lcom/android/server/usb/UsbService;

    #getter for: Lcom/android/server/usb/UsbService;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;
    invoke-static {v5}, Lcom/android/server/usb/UsbService;->access$700(Lcom/android/server/usb/UsbService;)Landroid/hardware/usb/UsbAccessory;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/usb/UsbDeviceSettingsManager;->accessoryDetached(Landroid/hardware/usb/UsbAccessory;)V

    .line 437
    iget-object v4, p0, Lcom/android/server/usb/UsbService$3;->this$0:Lcom/android/server/usb/UsbService;

    const/4 v5, 0x0

    #setter for: Lcom/android/server/usb/UsbService;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;
    invoke-static {v4, v5}, Lcom/android/server/usb/UsbService;->access$702(Lcom/android/server/usb/UsbService;Landroid/hardware/usb/UsbAccessory;)Landroid/hardware/usb/UsbAccessory;

    .line 442
    :cond_3
    iget-object v4, p0, Lcom/android/server/usb/UsbService$3;->this$0:Lcom/android/server/usb/UsbService;

    #getter for: Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/usb/UsbService;->access$1300(Lcom/android/server/usb/UsbService;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 443
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v4, "device_provisioned"

    const/4 v5, 0x0

    invoke-static {v0, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_6

    .line 445
    invoke-static {}, Lcom/android/server/usb/UsbService;->access$100()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Device not provisioned, skipping USB broadcast"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    monitor-exit v3

    goto/16 :goto_1

    .line 466
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v2           #usbConnected:Z
    .end local p0
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .restart local p0
    :cond_4
    move v2, v7

    .line 399
    goto/16 :goto_2

    .line 409
    .restart local v2       #usbConnected:Z
    :cond_5
    :try_start_1
    iget-object v4, p0, Lcom/android/server/usb/UsbService$3;->this$0:Lcom/android/server/usb/UsbService;

    const/4 v5, 0x0

    #setter for: Lcom/android/server/usb/UsbService;->mConnected:I
    invoke-static {v4, v5}, Lcom/android/server/usb/UsbService;->access$202(Lcom/android/server/usb/UsbService;I)I

    goto :goto_3

    .line 449
    .restart local v0       #cr:Landroid/content/ContentResolver;
    :cond_6
    iget-object v4, p0, Lcom/android/server/usb/UsbService$3;->this$0:Lcom/android/server/usb/UsbService;

    iget-object v5, p0, Lcom/android/server/usb/UsbService$3;->this$0:Lcom/android/server/usb/UsbService;

    #getter for: Lcom/android/server/usb/UsbService;->mConnected:I
    invoke-static {v5}, Lcom/android/server/usb/UsbService;->access$200(Lcom/android/server/usb/UsbService;)I

    move-result v5

    #setter for: Lcom/android/server/usb/UsbService;->mLastConnected:I
    invoke-static {v4, v5}, Lcom/android/server/usb/UsbService;->access$1102(Lcom/android/server/usb/UsbService;I)I

    .line 450
    iget-object v4, p0, Lcom/android/server/usb/UsbService$3;->this$0:Lcom/android/server/usb/UsbService;

    iget-object v5, p0, Lcom/android/server/usb/UsbService$3;->this$0:Lcom/android/server/usb/UsbService;

    #getter for: Lcom/android/server/usb/UsbService;->mConfiguration:I
    invoke-static {v5}, Lcom/android/server/usb/UsbService;->access$500(Lcom/android/server/usb/UsbService;)I

    move-result v5

    #setter for: Lcom/android/server/usb/UsbService;->mLastConfiguration:I
    invoke-static {v4, v5}, Lcom/android/server/usb/UsbService;->access$1202(Lcom/android/server/usb/UsbService;I)I

    .line 453
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.hardware.usb.action.USB_STATE"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 454
    .local v1, intent:Landroid/content/Intent;
    const/high16 v4, 0x2000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 455
    const-string v4, "connected"

    iget-object v5, p0, Lcom/android/server/usb/UsbService$3;->this$0:Lcom/android/server/usb/UsbService;

    #getter for: Lcom/android/server/usb/UsbService;->mConnected:I
    invoke-static {v5}, Lcom/android/server/usb/UsbService;->access$200(Lcom/android/server/usb/UsbService;)I

    move-result v5

    if-eqz v5, :cond_7

    move v5, v8

    :goto_4
    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 456
    const-string v4, "configuration"

    iget-object v5, p0, Lcom/android/server/usb/UsbService$3;->this$0:Lcom/android/server/usb/UsbService;

    #getter for: Lcom/android/server/usb/UsbService;->mConfiguration:I
    invoke-static {v5}, Lcom/android/server/usb/UsbService;->access$500(Lcom/android/server/usb/UsbService;)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 457
    invoke-direct {p0, v1}, Lcom/android/server/usb/UsbService$3;->addEnabledFunctionsLocked(Landroid/content/Intent;)V

    .line 458
    iget-object v4, p0, Lcom/android/server/usb/UsbService$3;->this$0:Lcom/android/server/usb/UsbService;

    #getter for: Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/usb/UsbService;->access$1300(Lcom/android/server/usb/UsbService;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_7
    move v5, v7

    .line 455
    goto :goto_4

    .line 463
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #usbConnected:Z
    :pswitch_1
    iget-object v4, p0, Lcom/android/server/usb/UsbService$3;->this$0:Lcom/android/server/usb/UsbService;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Ljava/lang/String;

    iget v5, p1, Landroid/os/Message;->what:I

    if-ne v5, v8, :cond_8

    move v5, v8

    :goto_5
    #calls: Lcom/android/server/usb/UsbService;->functionEnabledLocked(Ljava/lang/String;Z)V
    invoke-static {v4, p0, v5}, Lcom/android/server/usb/UsbService;->access$1400(Lcom/android/server/usb/UsbService;Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :cond_8
    move v5, v7

    goto :goto_5

    .line 395
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
