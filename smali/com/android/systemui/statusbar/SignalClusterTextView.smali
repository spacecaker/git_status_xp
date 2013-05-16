.class public Lcom/android/systemui/statusbar/SignalClusterTextView;
.super Landroid/widget/LinearLayout;
.source "SignalClusterTextView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/SignalClusterTextView$SettingsObserver;
    }
.end annotation


# instance fields
.field dBm:I

.field private mAirplaneMode:Z

.field private mAttached:Z

.field mHandler:Landroid/os/Handler;

.field mMobileGroup:Landroid/view/ViewGroup;

.field mMobileSignalText:Landroid/widget/TextView;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mSignalClusterStyle:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 85
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/SignalClusterTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 89
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/SignalClusterTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 93
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/systemui/statusbar/SignalClusterTextView;->dBm:I

    .line 149
    new-instance v1, Lcom/android/systemui/statusbar/SignalClusterTextView$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/SignalClusterTextView$1;-><init>(Lcom/android/systemui/statusbar/SignalClusterTextView;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterTextView;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 95
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterTextView;->mHandler:Landroid/os/Handler;

    .line 97
    new-instance v0, Lcom/android/systemui/statusbar/SignalClusterTextView$SettingsObserver;

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterTextView;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/SignalClusterTextView$SettingsObserver;-><init>(Lcom/android/systemui/statusbar/SignalClusterTextView;Landroid/os/Handler;)V

    .line 98
    .local v0, settingsObserver:Lcom/android/systemui/statusbar/SignalClusterTextView$SettingsObserver;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/SignalClusterTextView$SettingsObserver;->observe()V

    .line 99
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/SignalClusterTextView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterTextView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/SignalClusterTextView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterTextView;->updateSettings()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/SignalClusterTextView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterTextView;->mAttached:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/systemui/statusbar/SignalClusterTextView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/SignalClusterTextView;->mAirplaneMode:Z

    return p1
.end method

.method private getSignalLevelString(I)Ljava/lang/String;
    .locals 1
    .parameter "dBm"

    .prologue
    .line 127
    if-nez p1, :cond_0

    .line 128
    const-string v0, "-\u221e"

    .line 130
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private updateSettings()V
    .locals 3

    .prologue
    .line 171
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterTextView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 172
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v1, "status_bar_signal"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/SignalClusterTextView;->mSignalClusterStyle:I

    .line 174
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/SignalClusterTextView;->updateSignalText()V

    .line 175
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 103
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 105
    const v0, 0x7f0e0020

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterTextView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterTextView;->mMobileGroup:Landroid/view/ViewGroup;

    .line 106
    const v0, 0x7f0e0021

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterTextView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterTextView;->mMobileSignalText:Landroid/widget/TextView;

    .line 108
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterTextView;->mAttached:Z

    if-nez v0, :cond_0

    .line 109
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterTextView;->mAttached:Z

    .line 110
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/SignalClusterTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterTextView;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x101

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 114
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterTextView;->updateSettings()V

    .line 116
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterTextView;->mAttached:Z

    if-eqz v0, :cond_0

    .line 121
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterTextView;->mAttached:Z

    .line 123
    :cond_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 124
    return-void
.end method

.method final updateSignalText()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 135
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterTextView;->mAirplaneMode:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/SignalClusterTextView;->dBm:I

    if-nez v0, :cond_1

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterTextView;->mMobileGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 144
    :goto_0
    return-void

    .line 138
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/SignalClusterTextView;->mSignalClusterStyle:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 139
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterTextView;->mMobileGroup:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 140
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterTextView;->mMobileSignalText:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/systemui/statusbar/SignalClusterTextView;->dBm:I

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/SignalClusterTextView;->getSignalLevelString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 142
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterTextView;->mMobileGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method
