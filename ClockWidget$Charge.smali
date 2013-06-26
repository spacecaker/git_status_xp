.class Lcom/android/internal/policy/impl/ClockWidget$Charge;
.super Landroid/widget/LinearLayout;
.source "ClockWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/ClockWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Charge"
.end annotation


# static fields
.field private static mBatteryInfoState:I

.field private static mPlugedState:I


# instance fields
.field private final BATTERY_INFO_CHARGING:I

.field private final BATTERY_INFO_DEAD:I

.field private final BATTERY_INFO_FULL:I

.field private final BATTERY_INFO_NOT_DISPLAY:I

.field private final BATTERY_INFO_OVERHEAT:I

.field private final PLUG_IN:I

.field private final PLUG_OUT:I

.field private mBatteryLevel:I

.field private mCharging:Ljava/lang/String;

.field private mCharingText:Landroid/widget/TextView;

.field private mPluggedIn:Z

.field private mShowingBatteryInfo:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 886
    const/4 v0, 0x0

    sput v0, Lcom/android/internal/policy/impl/ClockWidget$Charge;->mBatteryInfoState:I

    .line 888
    const/4 v0, -0x1

    sput v0, Lcom/android/internal/policy/impl/ClockWidget$Charge;->mPlugedState:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 893
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 876
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/ClockWidget$Charge;->mShowingBatteryInfo:Z

    .line 877
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/ClockWidget$Charge;->mPluggedIn:Z

    .line 878
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Charge;->mBatteryLevel:I

    .line 879
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Charge;->mCharging:Ljava/lang/String;

    .line 881
    iput v1, p0, Lcom/android/internal/policy/impl/ClockWidget$Charge;->BATTERY_INFO_NOT_DISPLAY:I

    .line 882
    iput v2, p0, Lcom/android/internal/policy/impl/ClockWidget$Charge;->BATTERY_INFO_CHARGING:I

    .line 883
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Charge;->BATTERY_INFO_FULL:I

    .line 884
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Charge;->BATTERY_INFO_OVERHEAT:I

    .line 885
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Charge;->BATTERY_INFO_DEAD:I

    .line 889
    iput v2, p0, Lcom/android/internal/policy/impl/ClockWidget$Charge;->PLUG_IN:I

    .line 890
    iput v1, p0, Lcom/android/internal/policy/impl/ClockWidget$Charge;->PLUG_OUT:I

    .line 894
    return-void
.end method

.method private refreshBatteryStringAndIcon()V
    .locals 2

    .prologue
    .line 963
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Charge;->mShowingBatteryInfo:Z

    if-nez v0, :cond_0

    .line 964
    iget-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Charge;->mCharingText:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 985
    :goto_0
    return-void

    .line 968
    :cond_0
    sget v0, Lcom/android/internal/policy/impl/ClockWidget$Charge;->mPlugedState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    .line 969
    sget v0, Lcom/android/internal/policy/impl/ClockWidget$Charge;->mBatteryInfoState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 970
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/ClockWidget$Charge;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x1040318

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Charge;->mCharging:Ljava/lang/String;

    .line 983
    :goto_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Charge;->mCharingText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 984
    iget-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Charge;->mCharingText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/ClockWidget$Charge;->mCharging:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 971
    :cond_1
    sget v0, Lcom/android/internal/policy/impl/ClockWidget$Charge;->mBatteryInfoState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 972
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/ClockWidget$Charge;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x104044a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Charge;->mCharging:Ljava/lang/String;

    goto :goto_1

    .line 974
    :cond_2
    iget v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Charge;->mBatteryLevel:I

    const/16 v1, 0x64

    if-lt v0, v1, :cond_4

    const/16 v0, 0x63

    iput v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Charge;->mBatteryLevel:I

    .line 978
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/ClockWidget$Charge;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x1040317

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Charge;->mCharging:Ljava/lang/String;

    goto :goto_1

    .line 975
    :cond_4
    iget v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Charge;->mBatteryLevel:I

    if-gtz v0, :cond_3

    .line 976
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Charge;->mCharging:Ljava/lang/String;

    goto :goto_2

    .line 981
    :cond_5
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/ClockWidget$Charge;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x104031a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Charge;->mCharging:Ljava/lang/String;

    goto :goto_1
.end method

.method private updateChargingInfo()V
    .locals 2

    .prologue
    .line 915
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Charge;->mShowingBatteryInfo:Z

    if-nez v0, :cond_0

    .line 916
    iget-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Charge;->mCharingText:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 933
    :goto_0
    return-void

    .line 921
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Charge;->mPluggedIn:Z

    if-eqz v0, :cond_2

    .line 922
    invoke-static {}, Lcom/android/internal/policy/impl/ClockWidget;->access$600()Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isBatteryFull()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 923
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/ClockWidget$Charge;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x1040318

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Charge;->mCharging:Ljava/lang/String;

    .line 931
    :goto_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Charge;->mCharingText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 932
    iget-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Charge;->mCharingText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/ClockWidget$Charge;->mCharging:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 925
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/ClockWidget$Charge;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x1040317

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Charge;->mCharging:Ljava/lang/String;

    goto :goto_1

    .line 929
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/ClockWidget$Charge;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x104031a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Charge;->mCharging:Ljava/lang/String;

    goto :goto_1
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 898
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 899
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 903
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 904
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 908
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 909
    const v0, 0x1020276

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/ClockWidget$Charge;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Charge;->mCharingText:Landroid/widget/TextView;

    .line 910
    iget-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Charge;->mCharingText:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 911
    return-void
.end method

.method public onUpdateBatteryInfo(II)V
    .locals 5
    .parameter "batteryInfoStatus"
    .parameter "batteryLevel"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 944
    const-string v0, "ClockWidget"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUpdateBatteryInfo("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    sput p1, Lcom/android/internal/policy/impl/ClockWidget$Charge;->mBatteryInfoState:I

    .line 947
    iput p2, p0, Lcom/android/internal/policy/impl/ClockWidget$Charge;->mBatteryLevel:I

    .line 948
    sget v0, Lcom/android/internal/policy/impl/ClockWidget$Charge;->mBatteryInfoState:I

    if-nez v0, :cond_1

    .line 949
    iget v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Charge;->mBatteryLevel:I

    const/16 v1, 0x14

    if-ge v0, v1, :cond_0

    .line 950
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/ClockWidget$Charge;->mShowingBatteryInfo:Z

    .line 953
    :goto_0
    sput v4, Lcom/android/internal/policy/impl/ClockWidget$Charge;->mPlugedState:I

    .line 959
    :goto_1
    invoke-direct {p0}, Lcom/android/internal/policy/impl/ClockWidget$Charge;->refreshBatteryStringAndIcon()V

    .line 960
    return-void

    .line 952
    :cond_0
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/ClockWidget$Charge;->mShowingBatteryInfo:Z

    goto :goto_0

    .line 956
    :cond_1
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/ClockWidget$Charge;->mShowingBatteryInfo:Z

    .line 957
    sput v3, Lcom/android/internal/policy/impl/ClockWidget$Charge;->mPlugedState:I

    goto :goto_1
.end method

.method public refreshBatteryInfo(ZZI)V
    .locals 0
    .parameter "showBatteryInfo"
    .parameter "pluggedIn"
    .parameter "batteryLevel"

    .prologue
    .line 937
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/ClockWidget$Charge;->mShowingBatteryInfo:Z

    .line 938
    iput-boolean p2, p0, Lcom/android/internal/policy/impl/ClockWidget$Charge;->mPluggedIn:Z

    .line 939
    iput p3, p0, Lcom/android/internal/policy/impl/ClockWidget$Charge;->mBatteryLevel:I

    .line 940
    invoke-direct {p0}, Lcom/android/internal/policy/impl/ClockWidget$Charge;->updateChargingInfo()V

    .line 941
    return-void
.end method
