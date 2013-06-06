.class public Lcom/android/systemui/statusbar/LeftClock;
.super Lcom/android/systemui/statusbar/Clock;
.source "LeftClock.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/LeftClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/LeftClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/Clock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/Clock;->mHandler:Landroid/os/Handler;

    .line 43
    new-instance v0, Lcom/android/systemui/statusbar/Clock$SettingsObserver;

    iget-object v1, p0, Lcom/android/systemui/statusbar/Clock;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/Clock$SettingsObserver;-><init>(Lcom/android/systemui/statusbar/Clock;Landroid/os/Handler;)V

    .line 44
    .local v0, settingsObserver:Lcom/android/systemui/statusbar/Clock$SettingsObserver;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/Clock$SettingsObserver;->observe()V

    .line 46
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/LeftClock;->updateSettings()V

    .line 47
    return-void
.end method


# virtual methods
.method protected updateSettings()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 51
    invoke-super {p0}, Lcom/android/systemui/statusbar/Clock;->updateSettings()V

    .line 53
    iget-object v3, p0, Lcom/android/systemui/statusbar/Clock;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 55
    .local v2, resolver:Landroid/content/ContentResolver;
    const-string v3, "statusbar_clock_position"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 56
    .local v0, mClockPosition:I
    const-string v3, "statusbar_clock_style"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 57
    .local v1, mClockStyle:I
    if-ne v0, v5, :cond_0

    const/4 v3, 0x3

    if-eq v1, v3, :cond_0

    .line 58
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/LeftClock;->setVisibility(I)V

    .line 62
    :goto_0
    return-void

    .line 60
    :cond_0
    const/16 v3, 0x8

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/LeftClock;->setVisibility(I)V

    goto :goto_0
.end method
