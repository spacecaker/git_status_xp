.class Lcom/broadcom/bt/service/fm/FmReceiverService$1;
.super Landroid/os/Handler;
.source "FmReceiverService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/fm/FmReceiverService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/broadcom/bt/service/fm/FmReceiverService;


# direct methods
.method constructor <init>(Lcom/broadcom/bt/service/fm/FmReceiverService;)V
    .locals 0
    .parameter

    .prologue
    .line 332
    iput-object p1, p0, Lcom/broadcom/bt/service/fm/FmReceiverService$1;->this$0:Lcom/broadcom/bt/service/fm/FmReceiverService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 336
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 357
    :goto_0
    return-void

    .line 341
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 342
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService$1;->this$0:Lcom/broadcom/bt/service/fm/FmReceiverService;

    #calls: Lcom/broadcom/bt/service/fm/FmReceiverService;->initializeStateMachine()V
    invoke-static {v0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->access$100(Lcom/broadcom/bt/service/fm/FmReceiverService;)V

    .line 344
    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService$1;->this$0:Lcom/broadcom/bt/service/fm/FmReceiverService;

    const/4 v1, 0x1

    #calls: Lcom/broadcom/bt/service/fm/FmReceiverService;->disableNative(Z)Z
    invoke-static {v0, v1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->access$200(Lcom/broadcom/bt/service/fm/FmReceiverService;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 347
    :goto_1
    const/4 v0, 0x0

    sput v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 351
    :goto_2
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService$1;->this$0:Lcom/broadcom/bt/service/fm/FmReceiverService;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendStatusEventCallbackFromLocalStore()V

    goto :goto_0

    .line 350
    :cond_0
    const/4 v0, 0x2

    sput v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    goto :goto_2

    .line 345
    :catch_0
    move-exception v0

    goto :goto_1

    .line 336
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
