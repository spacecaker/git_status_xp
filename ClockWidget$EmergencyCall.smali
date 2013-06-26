.class Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;
.super Landroid/widget/LinearLayout;
.source "ClockWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/ClockWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EmergencyCall"
.end annotation


# instance fields
.field private mEmergencyCallText:Landroid/widget/TextView;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mServiceState:I

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 744
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 742
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;->mServiceState:I

    .line 745
    new-instance v0, Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall$1;-><init>(Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 753
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 737
    iget-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;->mEmergencyCallText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 737
    iput p1, p0, Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;->mServiceState:I

    return p1
.end method

.method private getPermanentBlockString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 862
    const-string v1, "ril.pin_mode"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 863
    .local v0, lock_key:Ljava/lang/String;
    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 864
    :cond_0
    const-string v1, "ClockWidget"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPermanentBlockString :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v0

    .line 867
    :goto_0
    return-object v1

    :cond_1
    const-string v1, "0"

    goto :goto_0
.end method


# virtual methods
.method getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2
    .parameter "telephonyPlmn"
    .parameter "telephonySpn"

    .prologue
    .line 844
    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    move-object v0, p1

    .line 857
    :goto_0
    return-object v0

    .line 846
    :cond_0
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 847
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    move-object v0, p1

    .line 848
    goto :goto_0

    .line 850
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 851
    :cond_2
    if-nez p1, :cond_3

    if-eqz p2, :cond_3

    move-object v0, p2

    .line 852
    goto :goto_0

    .line 854
    :cond_3
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isNoServiceDisplayWhenNoSIM()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 855
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x104030d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 857
    :cond_4
    const-string v0, ""

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 756
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 758
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;->updateText()V

    .line 759
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 763
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 765
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;->mEmergencyCallText:Landroid/widget/TextView;

    .line 766
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 770
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 771
    const v0, 0x1020265

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;->mEmergencyCallText:Landroid/widget/TextView;

    .line 772
    iget-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 773
    iget-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 774
    return-void
.end method

.method public updateText()V
    .locals 10

    .prologue
    const v9, 0x104031e

    const/16 v8, 0x8

    const/4 v7, 0x1

    const v6, 0x104031b

    const-string v5, " | "

    .line 778
    iget-object v3, p0, Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    .line 781
    .local v1, simState:I
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isPLMNEnable()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 782
    iget-object v3, p0, Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;->mEmergencyCallText:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 787
    :goto_0
    const-string v0, "0"

    .line 791
    .local v0, lock_key:Ljava/lang/String;
    if-ne v1, v7, :cond_2

    invoke-static {}, Lcom/android/internal/policy/impl/ClockWidget;->access$600()Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v3

    if-nez v3, :cond_2

    .line 792
    iget-object v3, p0, Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;->mEmergencyCallText:Landroid/widget/TextView;

    invoke-static {}, Lcom/android/internal/policy/impl/ClockWidget;->access$600()Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonyPlmn()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;->getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 840
    :cond_0
    :goto_1
    return-void

    .line 784
    .end local v0           #lock_key:Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;->mEmergencyCallText:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 794
    .restart local v0       #lock_key:Ljava/lang/String;
    :cond_2
    const-string v3, "0"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 795
    const-string v3, "2"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 796
    iget-object v3, p0, Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;->mEmergencyCallText:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;->mContext:Landroid/content/Context;

    const v6, 0x1040477

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;->mContext:Landroid/content/Context;

    const v6, 0x1040478

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 797
    :cond_3
    const-string v3, "3"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 798
    iget-object v3, p0, Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;->mEmergencyCallText:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;->mContext:Landroid/content/Context;

    const v6, 0x1040477

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;->mContext:Landroid/content/Context;

    const v6, 0x1040479

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 801
    :cond_4
    if-ne v1, v7, :cond_6

    .line 802
    iget-object v3, p0, Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 804
    .local v2, str:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isNoServiceDisplayWhenNoSIM()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 805
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " | "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/android/internal/policy/impl/ClockWidget;->access$600()Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonyPlmn()Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;->getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 809
    :goto_2
    iget-object v3, p0, Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;->mEmergencyCallText:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 807
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " | "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 811
    .end local v2           #str:Ljava/lang/String;
    :cond_6
    const/4 v3, 0x4

    if-ne v1, v3, :cond_7

    .line 812
    iget-object v3, p0, Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;->mEmergencyCallText:Landroid/widget/TextView;

    invoke-static {}, Lcom/android/internal/policy/impl/ClockWidget;->access$600()Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonyPlmn()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;->getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 814
    :cond_7
    const/4 v3, 0x2

    if-ne v1, v3, :cond_8

    .line 815
    iget-object v3, p0, Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;->mEmergencyCallText:Landroid/widget/TextView;

    invoke-static {}, Lcom/android/internal/policy/impl/ClockWidget;->access$600()Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonyPlmn()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x1040329

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;->getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 817
    :cond_8
    const/4 v3, 0x3

    if-ne v1, v3, :cond_9

    .line 818
    iget-object v3, p0, Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;->mEmergencyCallText:Landroid/widget/TextView;

    invoke-static {}, Lcom/android/internal/policy/impl/ClockWidget;->access$600()Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonyPlmn()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x1040327

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;->getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 820
    :cond_9
    const/4 v3, 0x5

    if-ne v1, v3, :cond_b

    .line 821
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isNoServiceDisplayWhenNoSIM()Z

    move-result v3

    if-nez v3, :cond_a

    iget v3, p0, Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;->mServiceState:I

    if-ne v3, v7, :cond_a

    .line 822
    iget-object v3, p0, Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;->mEmergencyCallText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x104030d

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 824
    :cond_a
    iget-object v3, p0, Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;->mEmergencyCallText:Landroid/widget/TextView;

    invoke-static {}, Lcom/android/internal/policy/impl/ClockWidget;->access$600()Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonyPlmn()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {}, Lcom/android/internal/policy/impl/ClockWidget;->access$600()Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonySpn()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;->getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 827
    :cond_b
    if-nez v1, :cond_d

    .line 828
    iget-object v3, p0, Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 830
    .restart local v2       #str:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isNoServiceDisplayWhenNoSIM()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 831
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " | "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/android/internal/policy/impl/ClockWidget;->access$600()Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonyPlmn()Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;->getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 835
    :goto_3
    iget-object v3, p0, Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;->mEmergencyCallText:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 833
    :cond_c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " | "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 838
    .end local v2           #str:Ljava/lang/String;
    :cond_d
    iget-object v3, p0, Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;->mEmergencyCallText:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1
.end method
