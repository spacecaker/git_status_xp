.class public final Lcom/android/systemui/statusbar/quickpanel/AutoRotationSettingButton;
.super Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;
.source "AutoRotationSettingButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/quickpanel/AutoRotationSettingButton$AutoRotationObserver;
    }
.end annotation


# instance fields
.field private mAutoRotationObserver:Lcom/android/systemui/statusbar/quickpanel/AutoRotationSettingButton$AutoRotationObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    new-instance v0, Lcom/android/systemui/statusbar/quickpanel/AutoRotationSettingButton$AutoRotationObserver;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/quickpanel/AutoRotationSettingButton$AutoRotationObserver;-><init>(Lcom/android/systemui/statusbar/quickpanel/AutoRotationSettingButton;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/AutoRotationSettingButton;->mAutoRotationObserver:Lcom/android/systemui/statusbar/quickpanel/AutoRotationSettingButton$AutoRotationObserver;

    .line 36
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/quickpanel/AutoRotationSettingButton;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/android/systemui/statusbar/quickpanel/AutoRotationSettingButton;->updateStatus()V

    return-void
.end method

.method private setRotationEnabled(I)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accelerometer_rotation"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 102
    return-void
.end method

.method private updateIcons()V
    .locals 6

    .prologue
    .line 66
    const/4 v1, 0x0

    .local v1, iconRes:I
    const/4 v4, 0x0

    .line 67
    .local v4, statusIconRes:I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/quickpanel/AutoRotationSettingButton;->getRootView()Landroid/view/View;

    move-result-object v2

    .line 68
    .local v2, rootView:Landroid/view/View;
    const v5, 0x7f0a0012

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 69
    .local v0, icon:Landroid/widget/ImageView;
    const v5, 0x7f0a0014

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 71
    .local v3, statusIcon:Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/quickpanel/AutoRotationSettingButton;->getActivateStatus()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 81
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 82
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 83
    return-void

    .line 73
    :pswitch_0
    const v1, 0x7f02001d

    .line 74
    const v4, 0x7f02001b

    .line 75
    goto :goto_0

    .line 77
    :pswitch_1
    const v1, 0x7f02001c

    .line 78
    const v4, 0x7f02001a

    goto :goto_0

    .line 71
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateStatus()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 56
    iget-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accelerometer_rotation"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v3, v0, :cond_0

    .line 58
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/quickpanel/AutoRotationSettingButton;->setActivateStatus(I)V

    .line 62
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/quickpanel/AutoRotationSettingButton;->updateIcons()V

    .line 63
    return-void

    .line 60
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/quickpanel/AutoRotationSettingButton;->setActivateStatus(I)V

    goto :goto_0
.end method


# virtual methods
.method public activate()V
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/quickpanel/AutoRotationSettingButton;->setRotationEnabled(I)V

    .line 92
    return-void
.end method

.method public deactivate()V
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/quickpanel/AutoRotationSettingButton;->setRotationEnabled(I)V

    .line 97
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .prologue
    .line 40
    invoke-super {p0}, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;->onAttachedToWindow()V

    .line 42
    iget-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accelerometer_rotation"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/statusbar/quickpanel/AutoRotationSettingButton;->mAutoRotationObserver:Lcom/android/systemui/statusbar/quickpanel/AutoRotationSettingButton$AutoRotationObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 45
    invoke-direct {p0}, Lcom/android/systemui/statusbar/quickpanel/AutoRotationSettingButton;->updateStatus()V

    .line 46
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 50
    invoke-super {p0}, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;->onDetachedFromWindow()V

    .line 52
    iget-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/quickpanel/AutoRotationSettingButton;->mAutoRotationObserver:Lcom/android/systemui/statusbar/quickpanel/AutoRotationSettingButton$AutoRotationObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 53
    return-void
.end method

.method public updateResources()V
    .locals 1

    .prologue
    .line 86
    const v0, 0x7f080019

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/quickpanel/AutoRotationSettingButton;->setText(I)V

    .line 87
    return-void
.end method
