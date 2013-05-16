.class public Lcom/android/systemui/statusbar/policy/CenterClock;
.super Lcom/android/systemui/statusbar/policy/Clock;
.source "CenterClock.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/policy/CenterClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/policy/CenterClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/policy/Clock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/CenterClock;->mHandler:Landroid/os/Handler;

    .line 41
    new-instance v0, Lcom/android/systemui/statusbar/policy/Clock$SettingsObserver;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/CenterClock;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/policy/Clock$SettingsObserver;-><init>(Lcom/android/systemui/statusbar/policy/Clock;Landroid/os/Handler;)V

    .line 42
    .local v0, settingsObserver:Lcom/android/systemui/statusbar/policy/Clock$SettingsObserver;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/Clock$SettingsObserver;->observe()V

    .line 44
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/CenterClock;->updateSettings()V

    .line 45
    return-void
.end method


# virtual methods
.method protected updateSettings()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 49
    invoke-super {p0}, Lcom/android/systemui/statusbar/policy/Clock;->updateSettings()V

    .line 51
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/CenterClock;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 53
    .local v1, resolver:Landroid/content/ContentResolver;
    const-string v3, "status_bar_clock"

    invoke-static {v1, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 54
    .local v0, mShowClock:Z
    :goto_0
    if-eqz v0, :cond_1

    .line 55
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/CenterClock;->setVisibility(I)V

    .line 59
    :goto_1
    return-void

    .end local v0           #mShowClock:Z
    :cond_0
    move v0, v2

    .line 53
    goto :goto_0

    .line 57
    .restart local v0       #mShowClock:Z
    :cond_1
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/CenterClock;->setVisibility(I)V

    goto :goto_1
.end method
