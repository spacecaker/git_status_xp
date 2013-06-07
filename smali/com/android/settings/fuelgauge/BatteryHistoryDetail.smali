.class public Lcom/android/settings/fuelgauge/BatteryHistoryDetail;
.super Landroid/app/Activity;
.source "BatteryHistoryDetail.java"


# instance fields
.field mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

.field private mStats:Lcom/android/internal/os/BatteryStatsImpl;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "icicle"

    .prologue
    const/4 v6, 0x0

    .line 40
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "stats"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v1

    .line 44
    .local v1, data:[B
    if-nez v1, :cond_0

    .line 46
    const-string v4, "batteryinfo"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

    .line 49
    iget-object v4, p0, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

    if-eqz v4, :cond_0

    .line 51
    :try_start_0
    iget-object v4, p0, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v4}, Lcom/android/internal/app/IBatteryStats;->getStatistics()[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 58
    :cond_0
    :goto_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 59
    .local v3, parcel:Landroid/os/Parcel;
    array-length v4, v1

    invoke-virtual {v3, v1, v6, v4}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 60
    invoke-virtual {v3, v6}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 61
    const v4, 0x7f030032

    invoke-virtual {p0, v4}, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->setContentView(I)V

    .line 62
    sget-object v4, Lcom/android/internal/os/BatteryStatsImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, v3}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/os/BatteryStatsImpl;

    iput-object v4, p0, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    .line 64
    const v4, 0x1010002

    invoke-virtual {p0, v4}, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;

    .line 66
    .local v0, chart:Lcom/android/settings/fuelgauge/BatteryHistoryChart;
    iget-object v4, p0, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, v4}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->setStats(Landroid/os/BatteryStats;)V

    .line 67
    return-void

    .line 52
    .end local v0           #chart:Lcom/android/settings/fuelgauge/BatteryHistoryChart;
    .end local v3           #parcel:Landroid/os/Parcel;
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 53
    .local v2, e:Landroid/os/RemoteException;
    const-string v4, "BatteryHistoryDetail"

    const-string v5, "RemoteException - fetch of stats failed"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
