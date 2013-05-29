.class Lcom/android/systemui/statusbar/quickpanel/DataConnectionSettingButtonXEC$2;
.super Landroid/telephony/PhoneStateListener;
.source "DataConnectionSettingButtonXEC.java"


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
    .line 73
    iput-object p1, p0, Lcom/android/systemui/statusbar/quickpanel/DataConnectionSettingButtonXEC$2;->this$0:Lcom/android/systemui/statusbar/quickpanel/DataConnectionSettingButtonXEC;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataConnectionStateChanged(I)V
    .locals 3
    .parameter "state"

    .prologue
    const-string v2, "DataConnectionSettingButtonXEC"

    .line 76
    const-string v0, "DataConnectionSettingButtonXEC"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDataConnectionStateChanged -> current data state : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    packed-switch p1, :pswitch_data_0

    .line 89
    :goto_0
    :pswitch_0
    return-void

    .line 79
    :pswitch_1
    const-string v0, "DataConnectionSettingButtonXEC"

    const-string v0, "onDataConnectionStateChanged -> DATA DISCONNECTED !!!"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/DataConnectionSettingButtonXEC$2;->this$0:Lcom/android/systemui/statusbar/quickpanel/DataConnectionSettingButtonXEC;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/quickpanel/DataConnectionSettingButtonXEC;->setActivateStatus(I)V

    .line 81
    iget-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/DataConnectionSettingButtonXEC$2;->this$0:Lcom/android/systemui/statusbar/quickpanel/DataConnectionSettingButtonXEC;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/quickpanel/DataConnectionSettingButtonXEC;->updateIcons()V

    goto :goto_0

    .line 84
    :pswitch_2
    const-string v0, "DataConnectionSettingButtonXEC"

    const-string v0, "onDataConnectionStateChanged -> DATA CONNECTED !!!"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/DataConnectionSettingButtonXEC$2;->this$0:Lcom/android/systemui/statusbar/quickpanel/DataConnectionSettingButtonXEC;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/quickpanel/DataConnectionSettingButtonXEC;->setActivateStatus(I)V

    .line 86
    iget-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/DataConnectionSettingButtonXEC$2;->this$0:Lcom/android/systemui/statusbar/quickpanel/DataConnectionSettingButtonXEC;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/quickpanel/DataConnectionSettingButtonXEC;->updateIcons()V

    goto :goto_0

    .line 77
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
