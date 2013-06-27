.class final Lcom/sec/android/app/twlauncher/SamsungUtils;
.super Ljava/lang/Object;
.source "SamsungUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static acquireDVFSlock(II)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 41
    return-void
.end method

.method static broadcastStkIntent(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 28
    const-string v2, "gsm.sim.screenEvent"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 29
    new-instance v1, Lcom/android/internal/telephony/gsm/stk/StkEventDownload;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/gsm/stk/StkEventDownload;-><init>(I)V

    .line 30
    .local v1, stkEventIdleScreen:Lcom/android/internal/telephony/gsm/stk/StkEventDownload;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.stk.event"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 31
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "STK EVENT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 32
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 33
    const-string v2, "SamsungUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendBroadcast intent!!!!!!!!!!!!!!! = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #stkEventIdleScreen:Lcom/android/internal/telephony/gsm/stk/StkEventDownload;
    :cond_0
    return-void
.end method

.method static setWallpaperVisibility(Landroid/app/WallpaperManager;Z)V
    .locals 0
    .parameter "wpm"
    .parameter "visiblity"

    .prologue
    .line 46
    return-void
.end method
