.class public Lcom/android/internal/policy/impl/ClockWidget;
.super Landroid/widget/LinearLayout;
.source "ClockWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/ClockWidget$Charge;,
        Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;,
        Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;,
        Lcom/android/internal/policy/impl/ClockWidget$Weather;
    }
.end annotation


# static fields
.field public static final DBG:Z = true

.field private static final LOCK_KEY:Ljava/lang/String; = "ril.pin_mode"

.field private static final TAG:Ljava/lang/String; = "ClockWidget"

.field private static mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;


# instance fields
.field private mCharger:Lcom/android/internal/policy/impl/ClockWidget$Charge;

.field private mClock:Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;

.field private mCreationOrientation:I

.field private mEmergencyCall:Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;

.field private mRoot:Landroid/widget/LinearLayout;

.field private mWeather:Lcom/android/internal/policy/impl/ClockWidget$Weather;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Landroid/content/res/Configuration;)V
    .locals 7
    .parameter "context"
    .parameter "updateMonitor"
    .parameter "configuration"

    .prologue
    const/4 v6, 0x1

    .line 74
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 76
    sput-object p2, Lcom/android/internal/policy/impl/ClockWidget;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 77
    iget v3, p3, Landroid/content/res/Configuration;->orientation:I

    iput v3, p0, Lcom/android/internal/policy/impl/ClockWidget;->mCreationOrientation:I

    .line 79
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 80
    .local v0, inflater:Landroid/view/LayoutInflater;
    iget v3, p0, Lcom/android/internal/policy/impl/ClockWidget;->mCreationOrientation:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    .line 82
    const v3, 0x109007d

    invoke-virtual {v0, v3, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 90
    :goto_0
    const v3, 0x1020263

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/ClockWidget;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/internal/policy/impl/ClockWidget;->mRoot:Landroid/widget/LinearLayout;

    .line 91
    const v3, 0x1020264

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/ClockWidget;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;

    iput-object v3, p0, Lcom/android/internal/policy/impl/ClockWidget;->mEmergencyCall:Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;

    .line 92
    const v3, 0x1020266

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/ClockWidget;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;

    iput-object v3, p0, Lcom/android/internal/policy/impl/ClockWidget;->mClock:Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;

    .line 93
    const v3, 0x102026e

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/ClockWidget;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/internal/policy/impl/ClockWidget$Weather;

    iput-object v3, p0, Lcom/android/internal/policy/impl/ClockWidget;->mWeather:Lcom/android/internal/policy/impl/ClockWidget$Weather;

    .line 94
    const v3, 0x1020275

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/ClockWidget;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/internal/policy/impl/ClockWidget$Charge;

    iput-object v3, p0, Lcom/android/internal/policy/impl/ClockWidget;->mCharger:Lcom/android/internal/policy/impl/ClockWidget$Charge;

    .line 97
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isPLMNEnable()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 98
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/internal/policy/impl/ClockWidget;->mContext:Landroid/content/Context;

    const v5, 0x104031b

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/ClockWidget;->mContext:Landroid/content/Context;

    const v5, 0x104031e

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 99
    .local v2, str:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/policy/impl/ClockWidget;->mEmergencyCall:Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;

    #getter for: Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;->mEmergencyCallText:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;->access$000(Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    .end local v2           #str:Ljava/lang/String;
    :goto_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "show_clock"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v6, :cond_3

    move v1, v6

    .line 108
    .local v1, showClock:Z
    :goto_2
    if-nez v1, :cond_0

    iget-object v3, p0, Lcom/android/internal/policy/impl/ClockWidget;->mRoot:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/internal/policy/impl/ClockWidget;->mClock:Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 109
    :cond_0
    return-void

    .line 86
    .end local v1           #showClock:Z
    :cond_1
    const v3, 0x109007e

    invoke-virtual {v0, v3, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto/16 :goto_0

    .line 101
    :cond_2
    iget-object v3, p0, Lcom/android/internal/policy/impl/ClockWidget;->mEmergencyCall:Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;->setVisibility(I)V

    goto :goto_1

    .line 105
    :cond_3
    const/4 v3, 0x0

    move v1, v3

    goto :goto_2
.end method

.method static synthetic access$600()Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/android/internal/policy/impl/ClockWidget;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    return-object v0
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 123
    iget-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget;->mEmergencyCall:Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/ClockWidget;->removeView(Landroid/view/View;)V

    .line 124
    iget-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget;->mClock:Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/ClockWidget;->removeView(Landroid/view/View;)V

    .line 125
    iget-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget;->mWeather:Lcom/android/internal/policy/impl/ClockWidget$Weather;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/ClockWidget;->removeView(Landroid/view/View;)V

    .line 126
    iget-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget;->mCharger:Lcom/android/internal/policy/impl/ClockWidget$Charge;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/ClockWidget;->removeView(Landroid/view/View;)V

    .line 127
    iget-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget;->mRoot:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/ClockWidget;->removeView(Landroid/view/View;)V

    .line 128
    iput-object v1, p0, Lcom/android/internal/policy/impl/ClockWidget;->mEmergencyCall:Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;

    .line 129
    iput-object v1, p0, Lcom/android/internal/policy/impl/ClockWidget;->mClock:Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;

    .line 130
    iput-object v1, p0, Lcom/android/internal/policy/impl/ClockWidget;->mWeather:Lcom/android/internal/policy/impl/ClockWidget$Weather;

    .line 131
    iput-object v1, p0, Lcom/android/internal/policy/impl/ClockWidget;->mCharger:Lcom/android/internal/policy/impl/ClockWidget$Charge;

    .line 132
    iput-object v1, p0, Lcom/android/internal/policy/impl/ClockWidget;->mRoot:Landroid/widget/LinearLayout;

    .line 133
    return-void
.end method

.method public getRootLayout()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget;->mRoot:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getTTSMessage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 173
    const-string v0, ""

    .line 175
    .local v0, TTSMessage:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/policy/impl/ClockWidget;->mWeather:Lcom/android/internal/policy/impl/ClockWidget$Weather;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/ClockWidget$Weather;->getTTSMessage()Ljava/lang/String;

    move-result-object v0

    .line 177
    return-object v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 119
    return-void
.end method

.method public onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "plmn"
    .parameter "spn"

    .prologue
    .line 993
    iget-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget;->mEmergencyCall:Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;->updateText()V

    .line 994
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/ClockWidget;->setBatteryInfo()V

    .line 115
    iget-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget;->mWeather:Lcom/android/internal/policy/impl/ClockWidget$Weather;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/ClockWidget$Weather;->updateWeatherInfo()V

    .line 116
    return-void
.end method

.method public onSimStateChanged(Lcom/android/internal/telephony/IccCard$State;)V
    .locals 1
    .parameter "simState"

    .prologue
    .line 989
    iget-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget;->mEmergencyCall:Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;->updateText()V

    .line 990
    return-void
.end method

.method public onUpdateBatteryInfo(II)V
    .locals 1
    .parameter "batteryInfoStatus"
    .parameter "batteryLevel"

    .prologue
    .line 997
    iget-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget;->mCharger:Lcom/android/internal/policy/impl/ClockWidget$Charge;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/policy/impl/ClockWidget$Charge;->onUpdateBatteryInfo(II)V

    .line 998
    return-void
.end method

.method public refreshBatteryInfo(ZZI)V
    .locals 1
    .parameter "showBatteryInfo"
    .parameter "pluggedIn"
    .parameter "batteryLevel"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget;->mCharger:Lcom/android/internal/policy/impl/ClockWidget$Charge;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/policy/impl/ClockWidget$Charge;->refreshBatteryInfo(ZZI)V

    .line 146
    return-void
.end method

.method public setBatteryInfo()V
    .locals 4

    .prologue
    .line 154
    sget-object v3, Lcom/android/internal/policy/impl/ClockWidget;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->shouldShowBatteryInfo()Z

    move-result v2

    .line 155
    .local v2, showBatteryInfo:Z
    sget-object v3, Lcom/android/internal/policy/impl/ClockWidget;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDevicePluggedIn()Z

    move-result v1

    .line 156
    .local v1, pluggedIn:Z
    sget-object v3, Lcom/android/internal/policy/impl/ClockWidget;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getBatteryLevel()I

    move-result v0

    .line 159
    .local v0, batteryLevel:I
    iget-object v3, p0, Lcom/android/internal/policy/impl/ClockWidget;->mCharger:Lcom/android/internal/policy/impl/ClockWidget$Charge;

    invoke-virtual {v3, v2, v1, v0}, Lcom/android/internal/policy/impl/ClockWidget$Charge;->refreshBatteryInfo(ZZI)V

    .line 160
    return-void
.end method
