.class Lcom/android/systemui/statusbar/quickpanel/DataConnectionSettingButtonXEC$3;
.super Ljava/lang/Object;
.source "DataConnectionSettingButtonXEC.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/quickpanel/DataConnectionSettingButtonXEC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/quickpanel/DataConnectionSettingButtonXEC;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/quickpanel/DataConnectionSettingButtonXEC;)V
    .locals 0
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/systemui/statusbar/quickpanel/DataConnectionSettingButtonXEC$3;->this$0:Lcom/android/systemui/statusbar/quickpanel/DataConnectionSettingButtonXEC;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/DataConnectionSettingButtonXEC$3;->this$0:Lcom/android/systemui/statusbar/quickpanel/DataConnectionSettingButtonXEC;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/quickpanel/DataConnectionSettingButtonXEC;->getActivateStatus()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 112
    const-string v0, "DataConnectionSettingButtonXEC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mHandleDataConnStateChangTimeOut -> mDataConnState is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/quickpanel/DataConnectionSettingButtonXEC$3;->this$0:Lcom/android/systemui/statusbar/quickpanel/DataConnectionSettingButtonXEC;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/quickpanel/DataConnectionSettingButtonXEC;->getActivateStatus()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :goto_0
    return-void

    .line 100
    :pswitch_0
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/android/systemui/statusbar/quickpanel/DataConnectionSettingButtonXEC$3;->this$0:Lcom/android/systemui/statusbar/quickpanel/DataConnectionSettingButtonXEC;

    #getter for: Lcom/android/systemui/statusbar/quickpanel/DataConnectionSettingButtonXEC;->mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static {v1}, Lcom/android/systemui/statusbar/quickpanel/DataConnectionSettingButtonXEC;->access$000(Lcom/android/systemui/statusbar/quickpanel/DataConnectionSettingButtonXEC;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 101
    iget-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/DataConnectionSettingButtonXEC$3;->this$0:Lcom/android/systemui/statusbar/quickpanel/DataConnectionSettingButtonXEC;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/quickpanel/DataConnectionSettingButtonXEC;->setActivateStatus(I)V

    .line 102
    iget-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/DataConnectionSettingButtonXEC$3;->this$0:Lcom/android/systemui/statusbar/quickpanel/DataConnectionSettingButtonXEC;

    #getter for: Lcom/android/systemui/statusbar/quickpanel/DataConnectionSettingButtonXEC;->mDataConnStateChangeHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/systemui/statusbar/quickpanel/DataConnectionSettingButtonXEC;->access$200(Lcom/android/systemui/statusbar/quickpanel/DataConnectionSettingButtonXEC;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/quickpanel/DataConnectionSettingButtonXEC$3;->this$0:Lcom/android/systemui/statusbar/quickpanel/DataConnectionSettingButtonXEC;

    #getter for: Lcom/android/systemui/statusbar/quickpanel/DataConnectionSettingButtonXEC;->mHandleDataConnStateChangTimeOut:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/systemui/statusbar/quickpanel/DataConnectionSettingButtonXEC;->access$100(Lcom/android/systemui/statusbar/quickpanel/DataConnectionSettingButtonXEC;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 103
    iget-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/DataConnectionSettingButtonXEC$3;->this$0:Lcom/android/systemui/statusbar/quickpanel/DataConnectionSettingButtonXEC;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/quickpanel/DataConnectionSettingButtonXEC;->updateIcons()V

    goto :goto_0

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/DataConnectionSettingButtonXEC$3;->this$0:Lcom/android/systemui/statusbar/quickpanel/DataConnectionSettingButtonXEC;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/quickpanel/DataConnectionSettingButtonXEC;->setActivateStatus(I)V

    .line 107
    iget-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/DataConnectionSettingButtonXEC$3;->this$0:Lcom/android/systemui/statusbar/quickpanel/DataConnectionSettingButtonXEC;

    #getter for: Lcom/android/systemui/statusbar/quickpanel/DataConnectionSettingButtonXEC;->mDataConnStateChangeHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/systemui/statusbar/quickpanel/DataConnectionSettingButtonXEC;->access$200(Lcom/android/systemui/statusbar/quickpanel/DataConnectionSettingButtonXEC;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/quickpanel/DataConnectionSettingButtonXEC$3;->this$0:Lcom/android/systemui/statusbar/quickpanel/DataConnectionSettingButtonXEC;

    #getter for: Lcom/android/systemui/statusbar/quickpanel/DataConnectionSettingButtonXEC;->mHandleDataConnStateChangTimeOut:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/systemui/statusbar/quickpanel/DataConnectionSettingButtonXEC;->access$100(Lcom/android/systemui/statusbar/quickpanel/DataConnectionSettingButtonXEC;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 108
    iget-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/DataConnectionSettingButtonXEC$3;->this$0:Lcom/android/systemui/statusbar/quickpanel/DataConnectionSettingButtonXEC;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/quickpanel/DataConnectionSettingButtonXEC;->updateIcons()V

    goto :goto_0

    .line 97
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
