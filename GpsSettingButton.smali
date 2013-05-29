.class public final Lcom/android/systemui/statusbar/quickpanel/GpsSettingButton;
.super Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;
.source "GpsSettingButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/quickpanel/GpsSettingButton$GpsObserver;
    }
.end annotation


# instance fields
.field private mGpsObserver:Lcom/android/systemui/statusbar/quickpanel/GpsSettingButton$GpsObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    new-instance v0, Lcom/android/systemui/statusbar/quickpanel/GpsSettingButton$GpsObserver;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/quickpanel/GpsSettingButton$GpsObserver;-><init>(Lcom/android/systemui/statusbar/quickpanel/GpsSettingButton;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/GpsSettingButton;->mGpsObserver:Lcom/android/systemui/statusbar/quickpanel/GpsSettingButton$GpsObserver;

    .line 33
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/quickpanel/GpsSettingButton;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/android/systemui/statusbar/quickpanel/GpsSettingButton;->updateStatus()V

    return-void
.end method

.method private setGPSEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gps"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 103
    return-void
.end method

.method private updateIcons()V
    .locals 6

    .prologue
    .line 65
    const/4 v1, 0x0

    .local v1, iconRes:I
    const/4 v3, 0x0

    .local v3, statusIconRes:I
    const/4 v4, -0x1

    .line 66
    .local v4, textColor:I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/quickpanel/GpsSettingButton;->getRootView()Landroid/view/View;

    move-result-object v2

    .line 67
    .local v2, rootView:Landroid/view/View;
    const v5, 0x7f09000b

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 70
    .local v0, icon:Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/quickpanel/GpsSettingButton;->getActivateStatus()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 81
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 83
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/quickpanel/GpsSettingButton;->setTextColor(I)V

    .line 84
    return-void

    .line 72
    :pswitch_0
    const v1, 0x7f020011

    .line 74
    goto :goto_0

    .line 76
    :pswitch_1
    const v1, 0x7f020010

    .line 77
    const v4, -0x333334

    goto :goto_0

    .line 70
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateStatus()V
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gps"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/quickpanel/GpsSettingButton;->setActivateStatus(I)V

    .line 61
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/quickpanel/GpsSettingButton;->updateIcons()V

    .line 62
    return-void

    .line 59
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/quickpanel/GpsSettingButton;->setActivateStatus(I)V

    goto :goto_0
.end method


# virtual methods
.method public activate()V
    .locals 2

    .prologue
    .line 91
    const-string v0, "GpsSettingButton"

    const-string v1, "activate()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/quickpanel/GpsSettingButton;->setGPSEnabled(Z)V

    .line 93
    return-void
.end method

.method public deactivate()V
    .locals 2

    .prologue
    .line 96
    const-string v0, "GpsSettingButton"

    const-string v1, "deactivate()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/quickpanel/GpsSettingButton;->setGPSEnabled(Z)V

    .line 98
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .prologue
    .line 37
    invoke-super {p0}, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;->onAttachedToWindow()V

    .line 38
    const-string v0, "GpsSettingButton"

    const-string v1, "onAttachedToWindow()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    iget-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "location_providers_allowed"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/statusbar/quickpanel/GpsSettingButton;->mGpsObserver:Lcom/android/systemui/statusbar/quickpanel/GpsSettingButton$GpsObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 43
    invoke-direct {p0}, Lcom/android/systemui/statusbar/quickpanel/GpsSettingButton;->updateStatus()V

    .line 44
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 48
    invoke-super {p0}, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;->onDetachedFromWindow()V

    .line 49
    const-string v0, "GpsSettingButton"

    const-string v1, "onDetachedFromWindow()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    iget-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/quickpanel/GpsSettingButton;->mGpsObserver:Lcom/android/systemui/statusbar/quickpanel/GpsSettingButton$GpsObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 52
    return-void
.end method

.method public updateResources()V
    .locals 1

    .prologue
    .line 87
    const v0, 0x7f070012

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/quickpanel/GpsSettingButton;->setText(I)V

    .line 88
    return-void
.end method
