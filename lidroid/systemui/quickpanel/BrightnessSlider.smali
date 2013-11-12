.class public Lcom/lidroid/systemui/quickpanel/BrightnessSlider;
.super Landroid/widget/LinearLayout;
.source "BrightnessSlider.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lidroid/systemui/quickpanel/BrightnessSlider$BrightnessSettingsObserver;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mObserver:Lcom/lidroid/systemui/quickpanel/BrightnessSlider$BrightnessSettingsObserver;

.field private mSlider:Landroid/widget/SeekBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lidroid/systemui/quickpanel/BrightnessSlider;->mObserver:Lcom/lidroid/systemui/quickpanel/BrightnessSlider$BrightnessSettingsObserver;

    .line 25
    iput-object p1, p0, Lcom/lidroid/systemui/quickpanel/BrightnessSlider;->mContext:Landroid/content/Context;

    .line 26
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/lidroid/systemui/quickpanel/BrightnessSlider;->mHandler:Landroid/os/Handler;

    .line 27
    new-instance v0, Lcom/lidroid/systemui/quickpanel/BrightnessSlider$BrightnessSettingsObserver;

    iget-object v1, p0, Lcom/lidroid/systemui/quickpanel/BrightnessSlider;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/lidroid/systemui/quickpanel/BrightnessSlider$BrightnessSettingsObserver;-><init>(Lcom/lidroid/systemui/quickpanel/BrightnessSlider;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/lidroid/systemui/quickpanel/BrightnessSlider;->mObserver:Lcom/lidroid/systemui/quickpanel/BrightnessSlider$BrightnessSettingsObserver;

    .line 28
    return-void
.end method

.method static synthetic access$0(Lcom/lidroid/systemui/quickpanel/BrightnessSlider;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 18
    iget-object v0, p0, Lcom/lidroid/systemui/quickpanel/BrightnessSlider;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getCurrBrightness()I
    .locals 4

    .prologue
    .line 40
    iget-object v1, p0, Lcom/lidroid/systemui/quickpanel/BrightnessSlider;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 41
    .local v0, brtnss:I
    return v0
.end method

.method private setBrightness(I)V
    .locals 4
    .parameter "brightness"

    .prologue
    .line 64
    :try_start_0
    const-string v2, "power"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 63
    invoke-static {v2}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    .line 65
    .local v1, power:Landroid/os/IPowerManager;
    if-eqz v1, :cond_0

    .line 66
    invoke-interface {v1, p1}, Landroid/os/IPowerManager;->setBacklightBrightness(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    .end local v1           #power:Landroid/os/IPowerManager;
    :cond_0
    :goto_0
    return-void

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, exc:Ljava/lang/Exception;
    const-string v2, "BrightnessSlider"

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/lidroid/systemui/quickpanel/BrightnessSlider;->mObserver:Lcom/lidroid/systemui/quickpanel/BrightnessSlider$BrightnessSettingsObserver;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/lidroid/systemui/quickpanel/BrightnessSlider;->mObserver:Lcom/lidroid/systemui/quickpanel/BrightnessSlider$BrightnessSettingsObserver;

    invoke-virtual {v0}, Lcom/lidroid/systemui/quickpanel/BrightnessSlider$BrightnessSettingsObserver;->observe()V

    .line 85
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/lidroid/systemui/quickpanel/BrightnessSlider;->mObserver:Lcom/lidroid/systemui/quickpanel/BrightnessSlider$BrightnessSettingsObserver;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/lidroid/systemui/quickpanel/BrightnessSlider;->mObserver:Lcom/lidroid/systemui/quickpanel/BrightnessSlider$BrightnessSettingsObserver;

    invoke-virtual {v0}, Lcom/lidroid/systemui/quickpanel/BrightnessSlider$BrightnessSettingsObserver;->unobserve()V

    .line 91
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 74
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 75
    const-string v0, "slider"

    invoke-virtual {p0, v0}, Lcom/lidroid/systemui/quickpanel/BrightnessSlider;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/lidroid/systemui/quickpanel/BrightnessSlider;->mSlider:Landroid/widget/SeekBar;

    .line 76
    iget-object v0, p0, Lcom/lidroid/systemui/quickpanel/BrightnessSlider;->mSlider:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 77
    iget-object v0, p0, Lcom/lidroid/systemui/quickpanel/BrightnessSlider;->mSlider:Landroid/widget/SeekBar;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 78
    invoke-virtual {p0}, Lcom/lidroid/systemui/quickpanel/BrightnessSlider;->updateState()V

    .line 79
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 46
    invoke-direct {p0, p2}, Lcom/lidroid/systemui/quickpanel/BrightnessSlider;->setBrightness(I)V

    .line 47
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 50
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4
    .parameter "seekBar"

    .prologue
    .line 55
    :try_start_0
    iget-object v1, p0, Lcom/lidroid/systemui/quickpanel/BrightnessSlider;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness"

    iget-object v3, p0, Lcom/lidroid/systemui/quickpanel/BrightnessSlider;->mSlider:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :goto_0
    return-void

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, exc:Ljava/lang/Exception;
    const-string v1, "BrightnessSlider"

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public updateState()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 31
    iget-object v0, p0, Lcom/lidroid/systemui/quickpanel/BrightnessSlider;->mSlider:Landroid/widget/SeekBar;

    invoke-direct {p0}, Lcom/lidroid/systemui/quickpanel/BrightnessSlider;->getCurrBrightness()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 32
    invoke-virtual {p0}, Lcom/lidroid/systemui/quickpanel/BrightnessSlider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness_mode"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    .line 33
    invoke-virtual {p0, v2}, Lcom/lidroid/systemui/quickpanel/BrightnessSlider;->setVisibility(I)V

    .line 37
    :goto_0
    return-void

    .line 35
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/lidroid/systemui/quickpanel/BrightnessSlider;->setVisibility(I)V

    goto :goto_0
.end method
