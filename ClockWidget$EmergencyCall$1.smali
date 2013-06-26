.class Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall$1;
.super Landroid/telephony/PhoneStateListener;
.source "ClockWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;)V
    .locals 0
    .parameter

    .prologue
    .line 745
    iput-object p1, p0, Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall$1;->this$0:Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 2
    .parameter "serviceState"

    .prologue
    .line 747
    iget-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall$1;->this$0:Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    #setter for: Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;->mServiceState:I
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;->access$502(Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;I)I

    .line 748
    iget-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall$1;->this$0:Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;

    #getter for: Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;->mEmergencyCallText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;->access$000(Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 749
    iget-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall$1;->this$0:Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;->updateText()V

    .line 751
    :cond_0
    return-void
.end method
