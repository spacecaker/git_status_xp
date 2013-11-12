.class Lcom/lidroid/systemui/quickpanel/BrightnessSlider$BrightnessSettingsObserver;
.super Landroid/database/ContentObserver;
.source "BrightnessSlider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lidroid/systemui/quickpanel/BrightnessSlider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BrightnessSettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lidroid/systemui/quickpanel/BrightnessSlider;


# direct methods
.method public constructor <init>(Lcom/lidroid/systemui/quickpanel/BrightnessSlider;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "handler"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/lidroid/systemui/quickpanel/BrightnessSlider$BrightnessSettingsObserver;->this$0:Lcom/lidroid/systemui/quickpanel/BrightnessSlider;

    .line 95
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 96
    return-void
.end method


# virtual methods
.method public observe()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 99
    iget-object v1, p0, Lcom/lidroid/systemui/quickpanel/BrightnessSlider$BrightnessSettingsObserver;->this$0:Lcom/lidroid/systemui/quickpanel/BrightnessSlider;

    #getter for: Lcom/lidroid/systemui/quickpanel/BrightnessSlider;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/lidroid/systemui/quickpanel/BrightnessSlider;->access$0(Lcom/lidroid/systemui/quickpanel/BrightnessSlider;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 100
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v1, "screen_brightness"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 101
    const-string v1, "screen_brightness_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 102
    return-void
.end method

.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/lidroid/systemui/quickpanel/BrightnessSlider$BrightnessSettingsObserver;->this$0:Lcom/lidroid/systemui/quickpanel/BrightnessSlider;

    invoke-virtual {v0}, Lcom/lidroid/systemui/quickpanel/BrightnessSlider;->updateState()V

    .line 112
    return-void
.end method

.method public unobserve()V
    .locals 2

    .prologue
    .line 105
    iget-object v1, p0, Lcom/lidroid/systemui/quickpanel/BrightnessSlider$BrightnessSettingsObserver;->this$0:Lcom/lidroid/systemui/quickpanel/BrightnessSlider;

    #getter for: Lcom/lidroid/systemui/quickpanel/BrightnessSlider;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/lidroid/systemui/quickpanel/BrightnessSlider;->access$0(Lcom/lidroid/systemui/quickpanel/BrightnessSlider;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 106
    .local v0, resolver:Landroid/content/ContentResolver;
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 107
    return-void
.end method
