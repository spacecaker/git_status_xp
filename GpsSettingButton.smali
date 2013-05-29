.class public final Lcom/android/systemui/statusbar/quickpanel/GpsSettingButton;
.super Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;
.source "GpsSettingButton.java"


# instance fields
.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    new-instance v0, Lcom/android/systemui/statusbar/quickpanel/GpsSettingButton$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/quickpanel/GpsSettingButton$1;-><init>(Lcom/android/systemui/statusbar/quickpanel/GpsSettingButton;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/GpsSettingButton;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 26
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/quickpanel/GpsSettingButton;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/android/systemui/statusbar/quickpanel/GpsSettingButton;->updateStatus()V

    return-void
.end method

.method private setGPSEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gps"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 111
    return-void
.end method

.method private updateIcons()V
    .locals 6

    .prologue
    .line 69
    const/4 v1, 0x0

    .local v1, iconRes:I
    const/4 v4, 0x0

    .line 70
    .local v4, statusIconRes:I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/quickpanel/GpsSettingButton;->getRootView()Landroid/view/View;

    move-result-object v2

    .line 71
    .local v2, rootView:Landroid/view/View;
    const v5, 0x7f0a000c

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 72
    .local v0, icon:Landroid/widget/ImageView;
    const v5, 0x7f0a000e

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 74
    .local v3, statusIcon:Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/quickpanel/GpsSettingButton;->getActivateStatus()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 84
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 85
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 86
    return-void

    .line 76
    :pswitch_0
    const v1, 0x7f020018

    .line 77
    const v4, 0x7f02001b

    .line 78
    goto :goto_0

    .line 80
    :pswitch_1
    const v1, 0x7f020017

    .line 81
    const v4, 0x7f02001a

    goto :goto_0

    .line 74
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateStatus()V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gps"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/quickpanel/GpsSettingButton;->setActivateStatus(I)V

    .line 65
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/quickpanel/GpsSettingButton;->updateIcons()V

    .line 66
    return-void

    .line 63
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/quickpanel/GpsSettingButton;->setActivateStatus(I)V

    goto :goto_0
.end method


# virtual methods
.method public activate()V
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/quickpanel/GpsSettingButton;->setGPSEnabled(Z)V

    .line 101
    return-void
.end method

.method public deactivate()V
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/quickpanel/GpsSettingButton;->setGPSEnabled(Z)V

    .line 106
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 40
    invoke-super {p0}, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;->onAttachedToWindow()V

    .line 43
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 44
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.location.PROVIDERS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 45
    iget-object v1, p0, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/quickpanel/GpsSettingButton;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 47
    invoke-direct {p0}, Lcom/android/systemui/statusbar/quickpanel/GpsSettingButton;->updateStatus()V

    .line 48
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 52
    invoke-super {p0}, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;->onDetachedFromWindow()V

    .line 55
    iget-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/quickpanel/GpsSettingButton;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 56
    return-void
.end method

.method public updateResources()V
    .locals 1

    .prologue
    .line 89
    const v0, 0x7f080014

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/quickpanel/GpsSettingButton;->setText(I)V

    .line 90
    return-void
.end method
