.class Lcom/android/settings/IccLockSettings$1;
.super Landroid/os/Handler;
.source "IccLockSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/IccLockSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/IccLockSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/IccLockSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Lcom/android/settings/IccLockSettings$1;->this$0:Lcom/android/settings/IccLockSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const-string v4, "IccLockSettings"

    .line 105
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 106
    .local v0, ar:Landroid/os/AsyncResult;
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 122
    :goto_0
    return-void

    .line 108
    :pswitch_0
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v1, Lcom/android/internal/telephony/CommandException;

    .line 109
    .local v1, ce:Lcom/android/internal/telephony/CommandException;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v2, v3, :cond_0

    .line 110
    const-string v2, "IccLockSettings"

    const-string v2, "mHandler, /ENABLE_ICC_PIN_COMPLETE/ : GENERIC_FAILURE"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object v2, p0, Lcom/android/settings/IccLockSettings$1;->this$0:Lcom/android/settings/IccLockSettings;

    #calls: Lcom/android/settings/IccLockSettings;->iccLockNotAllowed()V
    invoke-static {v2}, Lcom/android/settings/IccLockSettings;->access$000(Lcom/android/settings/IccLockSettings;)V

    goto :goto_0

    .line 113
    :cond_0
    const-string v2, "IccLockSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mHandler, ce is null or ar.exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object v2, p0, Lcom/android/settings/IccLockSettings$1;->this$0:Lcom/android/settings/IccLockSettings;

    #calls: Lcom/android/settings/IccLockSettings;->iccLockChanged(Landroid/os/AsyncResult;)V
    invoke-static {v2, v0}, Lcom/android/settings/IccLockSettings;->access$100(Lcom/android/settings/IccLockSettings;Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 118
    .end local v1           #ce:Lcom/android/internal/telephony/CommandException;
    :pswitch_1
    iget-object v2, p0, Lcom/android/settings/IccLockSettings$1;->this$0:Lcom/android/settings/IccLockSettings;

    #calls: Lcom/android/settings/IccLockSettings;->iccPinChanged(Landroid/os/AsyncResult;)V
    invoke-static {v2, v0}, Lcom/android/settings/IccLockSettings;->access$200(Lcom/android/settings/IccLockSettings;Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 106
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
