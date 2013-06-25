.class Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingA2dp;
.super Lcom/android/internal/util/HierarchicalState;
.source "BluetoothDeviceProfileState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothDeviceProfileState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OutgoingA2dp"
.end annotation


# instance fields
.field private mCommand:I

.field private mStatus:Z

.field final synthetic this$0:Landroid/bluetooth/BluetoothDeviceProfileState;


# direct methods
.method private constructor <init>(Landroid/bluetooth/BluetoothDeviceProfileState;)V
    .locals 1
    .parameter

    .prologue
    .line 543
    iput-object p1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingA2dp;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    invoke-direct {p0}, Lcom/android/internal/util/HierarchicalState;-><init>()V

    .line 544
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingA2dp;->mStatus:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/bluetooth/BluetoothDeviceProfileState$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 543
    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingA2dp;-><init>(Landroid/bluetooth/BluetoothDeviceProfileState;)V

    return-void
.end method


# virtual methods
.method protected enter()V
    .locals 3

    .prologue
    const-string v2, "BluetoothDeviceProfileState"

    .line 549
    const-string v0, "BluetoothDeviceProfileState"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Entering OutgoingA2dp state with: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingA2dp;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->getCurrentMessage()Landroid/os/Message;
    invoke-static {v1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$6000(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/os/Message;

    move-result-object v1

    iget v1, v1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingA2dp;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->getCurrentMessage()Landroid/os/Message;
    invoke-static {v0}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$6100(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/os/Message;

    move-result-object v0

    iget v0, v0, Landroid/os/Message;->what:I

    iput v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingA2dp;->mCommand:I

    .line 551
    iget v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingA2dp;->mCommand:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingA2dp;->mCommand:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    .line 553
    const-string v0, "BluetoothDeviceProfileState"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: OutgoingA2DP state with command:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingA2dp;->mCommand:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    :cond_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingA2dp;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    iget v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingA2dp;->mCommand:I

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDeviceProfileState;->processCommand(I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingA2dp;->mStatus:Z

    .line 556
    iget-boolean v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingA2dp;->mStatus:Z

    if-nez v0, :cond_1

    .line 557
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingA2dp;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDeviceProfileState;->sendMessage(I)V

    .line 558
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingA2dp;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mService:Landroid/server/BluetoothService;
    invoke-static {v0}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$3600(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/server/BluetoothService;

    move-result-object v0

    const/4 v1, 0x1

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/server/BluetoothService;->sendProfileStateMessage(II)V

    .line 561
    :cond_1
    return-void
.end method

.method protected processMessage(Landroid/os/Message;)Z
    .locals 5
    .parameter "message"

    .prologue
    const/4 v4, 0x1

    .line 565
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingA2dp;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OutgoingA2dp State->Processing Message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$1800(Landroid/bluetooth/BluetoothDeviceProfileState;Ljava/lang/String;)V

    .line 566
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 567
    .local v0, deferMsg:Landroid/os/Message;
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 630
    const/4 v1, 0x0

    .line 632
    :goto_0
    return v1

    .line 569
    :sswitch_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingA2dp;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    invoke-virtual {v1, v4}, Landroid/bluetooth/BluetoothDeviceProfileState;->processCommand(I)Z

    .line 577
    iget-boolean v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingA2dp;->mStatus:Z

    if-eqz v1, :cond_0

    .line 578
    iget v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingA2dp;->mCommand:I

    iput v1, v0, Landroid/os/Message;->what:I

    .line 579
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingA2dp;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->deferMessage(Landroid/os/Message;)V
    invoke-static {v1, v0}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$6200(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V

    :cond_0
    :goto_1
    :sswitch_1
    move v1, v4

    .line 632
    goto :goto_0

    .line 583
    :sswitch_2
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingA2dp;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->processCommand(I)Z

    .line 588
    iget-boolean v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingA2dp;->mStatus:Z

    if-eqz v1, :cond_0

    .line 589
    iget v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingA2dp;->mCommand:I

    iput v1, v0, Landroid/os/Message;->what:I

    .line 590
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingA2dp;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->deferMessage(Landroid/os/Message;)V
    invoke-static {v1, v0}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$6300(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V

    goto :goto_1

    .line 596
    :sswitch_3
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingA2dp;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingA2dp;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mIncomingA2dp:Landroid/bluetooth/BluetoothDeviceProfileState$IncomingA2dp;
    invoke-static {v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$2600(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/bluetooth/BluetoothDeviceProfileState$IncomingA2dp;

    move-result-object v2

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V
    invoke-static {v1, v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$6400(Landroid/bluetooth/BluetoothDeviceProfileState;Lcom/android/internal/util/HierarchicalState;)V

    goto :goto_1

    .line 602
    :sswitch_4
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingA2dp;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->deferMessage(Landroid/os/Message;)V
    invoke-static {v1, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$6500(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V

    goto :goto_1

    .line 609
    :sswitch_5
    iget-boolean v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingA2dp;->mStatus:Z

    if-eqz v1, :cond_0

    .line 610
    iget v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingA2dp;->mCommand:I

    iput v1, v0, Landroid/os/Message;->what:I

    .line 611
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingA2dp;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->deferMessage(Landroid/os/Message;)V
    invoke-static {v1, v0}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$6600(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V

    goto :goto_1

    .line 615
    :sswitch_6
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingA2dp;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->deferMessage(Landroid/os/Message;)V
    invoke-static {v1, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$6700(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V

    goto :goto_1

    .line 624
    :sswitch_7
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingA2dp;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->deferMessage(Landroid/os/Message;)V
    invoke-static {v1, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$6800(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V

    goto :goto_1

    .line 627
    :sswitch_8
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingA2dp;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingA2dp;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mBondedDevice:Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;
    invoke-static {v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$4600(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;

    move-result-object v2

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V
    invoke-static {v1, v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$6900(Landroid/bluetooth/BluetoothDeviceProfileState;Lcom/android/internal/util/HierarchicalState;)V

    goto :goto_1

    .line 567
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x3 -> :sswitch_1
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x7 -> :sswitch_6
        0x8 -> :sswitch_1
        0x9 -> :sswitch_7
        0x64 -> :sswitch_7
        0x65 -> :sswitch_7
        0x66 -> :sswitch_8
        0x67 -> :sswitch_7
    .end sparse-switch
.end method
