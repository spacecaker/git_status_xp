.class Lcom/android/systemui/statusbar/SignalClusterTextView$1;
.super Landroid/telephony/PhoneStateListener;
.source "SignalClusterTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/SignalClusterTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/SignalClusterTextView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/SignalClusterTextView;)V
    .locals 0
    .parameter

    .prologue
    .line 149
    iput-object p1, p0, Lcom/android/systemui/statusbar/SignalClusterTextView$1;->this$0:Lcom/android/systemui/statusbar/SignalClusterTextView;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 3
    .parameter "serviceState"

    .prologue
    .line 165
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterTextView$1;->this$0:Lcom/android/systemui/statusbar/SignalClusterTextView;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    #setter for: Lcom/android/systemui/statusbar/SignalClusterTextView;->mAirplaneMode:Z
    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/SignalClusterTextView;->access$302(Lcom/android/systemui/statusbar/SignalClusterTextView;Z)Z

    .line 166
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterTextView$1;->this$0:Lcom/android/systemui/statusbar/SignalClusterTextView;

    #calls: Lcom/android/systemui/statusbar/SignalClusterTextView;->updateSettings()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/SignalClusterTextView;->access$100(Lcom/android/systemui/statusbar/SignalClusterTextView;)V

    .line 167
    return-void

    .line 165
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 2
    .parameter "signalStrength"

    .prologue
    .line 152
    if-eqz p1, :cond_1

    .line 153
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterTextView$1;->this$0:Lcom/android/systemui/statusbar/SignalClusterTextView;

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getDbm()I

    move-result v1

    iput v1, v0, Lcom/android/systemui/statusbar/SignalClusterTextView;->dBm:I

    .line 159
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterTextView$1;->this$0:Lcom/android/systemui/statusbar/SignalClusterTextView;

    #getter for: Lcom/android/systemui/statusbar/SignalClusterTextView;->mAttached:Z
    invoke-static {v0}, Lcom/android/systemui/statusbar/SignalClusterTextView;->access$200(Lcom/android/systemui/statusbar/SignalClusterTextView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterTextView$1;->this$0:Lcom/android/systemui/statusbar/SignalClusterTextView;

    #calls: Lcom/android/systemui/statusbar/SignalClusterTextView;->updateSettings()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/SignalClusterTextView;->access$100(Lcom/android/systemui/statusbar/SignalClusterTextView;)V

    .line 162
    :cond_0
    return-void

    .line 155
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterTextView$1;->this$0:Lcom/android/systemui/statusbar/SignalClusterTextView;

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/systemui/statusbar/SignalClusterTextView;->dBm:I

    goto :goto_0
.end method
