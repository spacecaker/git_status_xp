.class Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;
.super Landroid/content/BroadcastReceiver;
.source "KeyguardUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V
    .locals 0
    .parameter

    .prologue
    .line 351
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v11, 0x0

    .line 354
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 357
    .local v0, action:Ljava/lang/String;
    const-string v6, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 358
    iget-object v6, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1200(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1200(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v7

    const/16 v8, 0x12c

    invoke-virtual {v7, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 359
    :cond_0
    const-string v6, "android.intent.action.TIME_TICK"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "android.intent.action.TIME_SET"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 362
    :cond_1
    iget-object v6, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1200(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1200(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v7

    const/16 v8, 0x12d

    invoke-virtual {v7, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 412
    :cond_2
    :goto_0
    return-void

    .line 363
    :cond_3
    const-string v6, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 364
    iget-object v6, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v7, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #calls: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonyPlmnFrom(Landroid/content/Intent;)Ljava/lang/CharSequence;
    invoke-static {v7, p2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1400(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Landroid/content/Intent;)Ljava/lang/CharSequence;

    move-result-object v7

    #setter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mTelephonyPlmn:Ljava/lang/CharSequence;
    invoke-static {v6, v7}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1302(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 365
    iget-object v6, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v7, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #calls: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonySpnFrom(Landroid/content/Intent;)Ljava/lang/CharSequence;
    invoke-static {v7, p2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1600(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Landroid/content/Intent;)Ljava/lang/CharSequence;

    move-result-object v7

    #setter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mTelephonySpn:Ljava/lang/CharSequence;
    invoke-static {v6, v7}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1502(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 377
    iget-object v6, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1200(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1200(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v7

    const/16 v8, 0x12f

    invoke-virtual {v7, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 378
    :cond_4
    const-string v6, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 379
    iget-object v6, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #calls: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getBatterInfo(Landroid/content/Intent;)I
    invoke-static {v6, p2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1800(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Landroid/content/Intent;)I

    move-result v6

    invoke-static {v6}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1702(I)I

    .line 380
    const-string v6, "level"

    invoke-virtual {p2, v6, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 381
    .local v2, batteryLevel:I
    iget-object v6, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1200(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v6

    const/16 v7, 0x134

    invoke-static {}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1700()I

    move-result v8

    invoke-virtual {v6, v7, v8, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    .line 385
    .local v4, msg:Landroid/os/Message;
    iget-object v6, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1200(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 386
    .end local v2           #batteryLevel:I
    .end local v4           #msg:Landroid/os/Message;
    :cond_5
    const-string v6, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 387
    iget-object v6, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1200(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1200(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v7

    const/16 v8, 0x130

    new-instance v9, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimArgs;

    const/4 v10, 0x0

    invoke-direct {v9, p2, v10}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimArgs;-><init>(Landroid/content/Intent;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$1;)V

    invoke-virtual {v7, v8, v9}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 390
    :cond_6
    const-string v6, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 391
    iget-object v6, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1200(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1200(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v7

    const/16 v8, 0x131

    const-string v9, "android.media.EXTRA_RINGER_MODE"

    const/4 v10, -0x1

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    invoke-virtual {v7, v8, v9, v11}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 393
    :cond_7
    const-string v6, "android.intent.action.PHONE_STATE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 394
    const-string v6, "state"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 395
    .local v5, state:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1200(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1200(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v7

    const/16 v8, 0x132

    invoke-virtual {v7, v8, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 398
    .end local v5           #state:Ljava/lang/String;
    :cond_8
    const-string v6, "com.android.lockscreenwallpaper.CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 399
    const-string v6, "isChanged"

    invoke-virtual {p2, v6, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 402
    .local v3, mode:I
    iget-object v6, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1200(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1200(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v7

    const/16 v8, 0x140

    const/16 v9, 0x64

    invoke-virtual {v7, v8, v3, v9}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 405
    .end local v3           #mode:I
    :cond_9
    const-string v6, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 406
    iget-object v6, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1000(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "airplane_mode_on"

    invoke-static {v6, v7, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 407
    .local v1, airPlaneEnabled:I
    iget-object v6, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1200(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v6

    const/16 v7, 0x133

    invoke-virtual {v6, v7, v1, v11}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    .line 408
    .restart local v4       #msg:Landroid/os/Message;
    iget-object v6, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1200(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 409
    .end local v1           #airPlaneEnabled:I
    .end local v4           #msg:Landroid/os/Message;
    :cond_a
    const-string v6, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 410
    iget-object v6, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1200(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1200(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v7

    const/16 v8, 0x135

    invoke-virtual {v7, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0
.end method
