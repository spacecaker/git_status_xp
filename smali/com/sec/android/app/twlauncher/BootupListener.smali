.class public Lcom/sec/android/app/twlauncher/BootupListener;
.super Landroid/content/BroadcastReceiver;
.source "BootupListener.java"


# instance fields
.field private final FACTORYMODE_KEY:Ljava/lang/String;

.field private IMSI_key:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 46
    const-string v0, "999999999999999"

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/BootupListener;->FACTORYMODE_KEY:Ljava/lang/String;

    return-void
.end method

.method private getIccid(Landroid/telephony/TelephonyManager;)Ljava/lang/String;
    .locals 1
    .parameter "tm"

    .prologue
    .line 111
    const/4 v0, 0x0

    .line 112
    .local v0, iccid:Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 113
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v0

    .line 115
    :cond_0
    return-object v0
.end method

.method private getIccidPreference(Landroid/content/SharedPreferences;)Ljava/lang/String;
    .locals 2
    .parameter "sp"

    .prologue
    const/4 v1, 0x0

    .line 104
    if-eqz p1, :cond_0

    .line 105
    const-string v0, "sim_iccid"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 107
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v7, "Receiver IN"

    const-string v4, "bootupListener"

    .line 50
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 51
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/BootupListener;->IMSI_key:Ljava/lang/String;

    .line 54
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/BootupListener;->IMSI_key:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/BootupListener;->IMSI_key:Ljava/lang/String;

    const-string v2, "999999999999999"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    move v1, v6

    .line 58
    :goto_0
    const-string v2, "XEC"

    const-string v3, "ro.csc.sales_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-nez v1, :cond_3

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 61
    const-string v1, "Receiver IN"

    const-string v1, "========= BootupListener TwLauncher  ============="

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    const-string v1, "Receiver IN"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "========= BootupListener   ============="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    if-eq v1, v6, :cond_3

    .line 67
    const-string v1, "pref_first_Time_boot"

    invoke-virtual {p1, v1, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 68
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 70
    invoke-direct {p0, v1}, Lcom/sec/android/app/twlauncher/BootupListener;->getIccidPreference(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v1

    .line 71
    if-nez v1, :cond_0

    .line 72
    const-string v3, "bootupListener"

    const-string v3, "========= iccidPref is null ============="

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_0
    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/BootupListener;->getIccid(Landroid/telephony/TelephonyManager;)Ljava/lang/String;

    move-result-object v0

    .line 77
    if-nez v0, :cond_1

    .line 78
    const-string v3, "bootupListener"

    const-string v3, "========= iccid is null ============="

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :cond_1
    if-eqz v1, :cond_2

    if-eqz v0, :cond_4

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 86
    :cond_2
    const-string v1, "bootupListener"

    const-string v1, "========= New SIM ============="

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v6

    .line 90
    :goto_1
    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    .line 91
    const-string v1, "sim_iccid"

    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 92
    const-string v0, "bootupListener"

    const-string v0, "========= New SIM ICCID added to preferences ============="

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 95
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/twlauncher/FlatRateAlertActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 96
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 97
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 101
    :cond_3
    return-void

    :cond_4
    move v1, v5

    goto :goto_1

    :cond_5
    move v1, v5

    goto/16 :goto_0
.end method
