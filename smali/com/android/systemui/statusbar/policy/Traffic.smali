.class public Lcom/android/systemui/statusbar/policy/Traffic;
.super Landroid/widget/TextView;
.source "Traffic.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/Traffic$SettingsObserver;
    }
.end annotation


# instance fields
.field private mAttached:Z

.field mHandler:Landroid/os/Handler;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field mRunnable:Ljava/lang/Runnable;

.field protected mTrafficColor:I

.field mTrafficHandler:Landroid/os/Handler;

.field mTrafficStats:Landroid/net/TrafficStats;

.field showTraffic:Z

.field speed:F

.field totalRxBytes:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/policy/Traffic;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/policy/Traffic;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 105
    new-instance v1, Lcom/android/systemui/statusbar/policy/Traffic$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/Traffic$1;-><init>(Lcom/android/systemui/statusbar/policy/Traffic;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/Traffic;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 155
    new-instance v1, Lcom/android/systemui/statusbar/policy/Traffic$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/Traffic$3;-><init>(Lcom/android/systemui/statusbar/policy/Traffic;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/Traffic;->mRunnable:Ljava/lang/Runnable;

    .line 74
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/Traffic;->mHandler:Landroid/os/Handler;

    .line 75
    new-instance v0, Lcom/android/systemui/statusbar/policy/Traffic$SettingsObserver;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/Traffic;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/policy/Traffic$SettingsObserver;-><init>(Lcom/android/systemui/statusbar/policy/Traffic;Landroid/os/Handler;)V

    .line 76
    .local v0, settingsObserver:Lcom/android/systemui/statusbar/policy/Traffic$SettingsObserver;
    new-instance v1, Landroid/net/TrafficStats;

    invoke-direct {v1}, Landroid/net/TrafficStats;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/Traffic;->mTrafficStats:Landroid/net/TrafficStats;

    .line 77
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/Traffic$SettingsObserver;->observe()V

    .line 78
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/Traffic;->updateSettings()V

    .line 79
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/Traffic;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/Traffic;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/Traffic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/Traffic;->updateSettings()V

    return-void
.end method

.method private getConnectAvailable()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 139
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/Traffic;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 141
    .local v0, connectivityManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    .line 142
    const/4 v1, 0x1

    .line 147
    .end local v0           #connectivityManager:Landroid/net/ConnectivityManager;
    :cond_0
    :goto_0
    return v1

    .line 145
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private updateSettings()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 163
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/Traffic;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 164
    .local v1, resolver:Landroid/content/ContentResolver;
    const/4 v0, 0x0

    .line 166
    .local v0, newColor:I
    const-string v4, "status_bar_traffic_color"

    iget v5, p0, Lcom/android/systemui/statusbar/policy/Traffic;->mTrafficColor:I

    invoke-static {v1, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 168
    if-gez v0, :cond_0

    iget v4, p0, Lcom/android/systemui/statusbar/policy/Traffic;->mTrafficColor:I

    if-eq v0, v4, :cond_0

    .line 169
    iput v0, p0, Lcom/android/systemui/statusbar/policy/Traffic;->mTrafficColor:I

    .line 170
    iget v4, p0, Lcom/android/systemui/statusbar/policy/Traffic;->mTrafficColor:I

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/policy/Traffic;->setTextColor(I)V

    .line 173
    :cond_0
    const-string v4, "status_bar_traffic"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_2

    :goto_0
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/Traffic;->showTraffic:Z

    .line 175
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/Traffic;->showTraffic:Z

    if-eqz v2, :cond_3

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/Traffic;->getConnectAvailable()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 176
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/Traffic;->mAttached:Z

    if-eqz v2, :cond_1

    .line 177
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/Traffic;->updateTraffic()V

    .line 179
    :cond_1
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/policy/Traffic;->setVisibility(I)V

    .line 182
    :goto_1
    return-void

    :cond_2
    move v2, v3

    .line 173
    goto :goto_0

    .line 181
    :cond_3
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/Traffic;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 5

    .prologue
    .line 83
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 85
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/Traffic;->mAttached:Z

    if-nez v1, :cond_0

    .line 86
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/Traffic;->mAttached:Z

    .line 87
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/Traffic;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/Traffic;->mTrafficColor:I

    .line 88
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 89
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/Traffic;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/Traffic;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/Traffic;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 93
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/Traffic;->updateSettings()V

    .line 94
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 98
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 99
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/Traffic;->mAttached:Z

    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/Traffic;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/Traffic;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 101
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/Traffic;->mAttached:Z

    .line 103
    :cond_0
    return-void
.end method

.method public update()V
    .locals 4

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/Traffic;->mTrafficHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/Traffic;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 152
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/Traffic;->mTrafficHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/Traffic;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 153
    return-void
.end method

.method public updateTraffic()V
    .locals 2

    .prologue
    .line 116
    new-instance v0, Lcom/android/systemui/statusbar/policy/Traffic$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/Traffic$2;-><init>(Lcom/android/systemui/statusbar/policy/Traffic;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/Traffic;->mTrafficHandler:Landroid/os/Handler;

    .line 133
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/Traffic;->mTrafficStats:Landroid/net/TrafficStats;

    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v0

    long-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/Traffic;->totalRxBytes:F

    .line 134
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/Traffic;->mTrafficHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 135
    return-void
.end method
