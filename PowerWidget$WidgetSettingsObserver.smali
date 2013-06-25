.class Lcom/lidroid/systemui/quickpanel/PowerWidget$WidgetSettingsObserver;
.super Landroid/database/ContentObserver;
.source "PowerWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lidroid/systemui/quickpanel/PowerWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WidgetSettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lidroid/systemui/quickpanel/PowerWidget;


# direct methods
.method public constructor <init>(Lcom/lidroid/systemui/quickpanel/PowerWidget;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 403
    iput-object p1, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget$WidgetSettingsObserver;->this$0:Lcom/lidroid/systemui/quickpanel/PowerWidget;

    .line 402
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public observe()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 406
    iget-object v0, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget$WidgetSettingsObserver;->this$0:Lcom/lidroid/systemui/quickpanel/PowerWidget;

    #getter for: Lcom/lidroid/systemui/quickpanel/PowerWidget;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/lidroid/systemui/quickpanel/PowerWidget;->access$3(Lcom/lidroid/systemui/quickpanel/PowerWidget;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 410
    const-string v0, "expanded_view_widget"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 409
    invoke-virtual {v1, v0, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 415
    const-string v0, "expanded_hide_scrollbar"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 414
    invoke-virtual {v1, v0, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 420
    const-string v0, "expanded_haptic_feedback"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 419
    invoke-virtual {v1, v0, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 423
    const-string v0, "haptic_feedback_enabled"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 422
    invoke-virtual {v1, v0, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 426
    const-string v0, "haptic_down_array"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 425
    invoke-virtual {v1, v0, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 429
    const-string v0, "haptic_long_array"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 428
    invoke-virtual {v1, v0, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 434
    const-string v0, "expanded_widget_buttons"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 433
    invoke-virtual {v1, v0, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 439
    const-string v0, "expanded_widget_color"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 438
    invoke-virtual {v1, v0, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 443
    iget-object v0, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget$WidgetSettingsObserver;->this$0:Lcom/lidroid/systemui/quickpanel/PowerWidget;

    #calls: Lcom/lidroid/systemui/quickpanel/PowerWidget;->getAllObservedUris()Ljava/util/List;
    invoke-static {v0}, Lcom/lidroid/systemui/quickpanel/PowerWidget;->access$4(Lcom/lidroid/systemui/quickpanel/PowerWidget;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 446
    return-void

    .line 443
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 444
    invoke-virtual {v1, v0, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0
.end method

.method public onChangeUri(Landroid/net/Uri;Z)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 456
    iget-object v0, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget$WidgetSettingsObserver;->this$0:Lcom/lidroid/systemui/quickpanel/PowerWidget;

    #getter for: Lcom/lidroid/systemui/quickpanel/PowerWidget;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/lidroid/systemui/quickpanel/PowerWidget;->access$3(Lcom/lidroid/systemui/quickpanel/PowerWidget;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 457
    iget-object v0, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget$WidgetSettingsObserver;->this$0:Lcom/lidroid/systemui/quickpanel/PowerWidget;

    #getter for: Lcom/lidroid/systemui/quickpanel/PowerWidget;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/lidroid/systemui/quickpanel/PowerWidget;->access$3(Lcom/lidroid/systemui/quickpanel/PowerWidget;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 460
    const-string v0, "expanded_widget_buttons"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 461
    iget-object v0, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget$WidgetSettingsObserver;->this$0:Lcom/lidroid/systemui/quickpanel/PowerWidget;

    invoke-virtual {v0}, Lcom/lidroid/systemui/quickpanel/PowerWidget;->setupWidget()V

    .line 470
    :cond_0
    :goto_0
    const-string v0, "haptic_feedback_enabled"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 471
    const-string v0, "haptic_down_array"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 472
    const-string v0, "haptic_long_array"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 473
    const-string v0, "expanded_haptic_feedback"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 474
    :cond_1
    iget-object v0, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget$WidgetSettingsObserver;->this$0:Lcom/lidroid/systemui/quickpanel/PowerWidget;

    #calls: Lcom/lidroid/systemui/quickpanel/PowerWidget;->updateHapticFeedbackSetting()V
    invoke-static {v0}, Lcom/lidroid/systemui/quickpanel/PowerWidget;->access$7(Lcom/lidroid/systemui/quickpanel/PowerWidget;)V

    .line 478
    :cond_2
    iget-object v0, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget$WidgetSettingsObserver;->this$0:Lcom/lidroid/systemui/quickpanel/PowerWidget;

    #getter for: Lcom/lidroid/systemui/quickpanel/PowerWidget;->mButtons:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/lidroid/systemui/quickpanel/PowerWidget;->access$2(Lcom/lidroid/systemui/quickpanel/PowerWidget;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_6

    .line 485
    iget-object v0, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget$WidgetSettingsObserver;->this$0:Lcom/lidroid/systemui/quickpanel/PowerWidget;

    invoke-virtual {v0}, Lcom/lidroid/systemui/quickpanel/PowerWidget;->updateAllButtons()V

    .line 486
    return-void

    .line 463
    :cond_4
    const-string v0, "expanded_view_widget"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 464
    iget-object v0, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget$WidgetSettingsObserver;->this$0:Lcom/lidroid/systemui/quickpanel/PowerWidget;

    #calls: Lcom/lidroid/systemui/quickpanel/PowerWidget;->updateVisibility()V
    invoke-static {v0}, Lcom/lidroid/systemui/quickpanel/PowerWidget;->access$5(Lcom/lidroid/systemui/quickpanel/PowerWidget;)V

    goto :goto_0

    .line 466
    :cond_5
    const-string v0, "expanded_hide_scrollbar"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 467
    iget-object v0, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget$WidgetSettingsObserver;->this$0:Lcom/lidroid/systemui/quickpanel/PowerWidget;

    #calls: Lcom/lidroid/systemui/quickpanel/PowerWidget;->updateScrollbar()V
    invoke-static {v0}, Lcom/lidroid/systemui/quickpanel/PowerWidget;->access$6(Lcom/lidroid/systemui/quickpanel/PowerWidget;)V

    goto :goto_0

    .line 478
    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lidroid/systemui/quickpanel/PowerButton;

    .line 479
    invoke-virtual {v0}, Lcom/lidroid/systemui/quickpanel/PowerButton;->getObservedUris()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 480
    invoke-virtual {v0, v1, p1}, Lcom/lidroid/systemui/quickpanel/PowerButton;->onChangeUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    goto :goto_1
.end method

.method public unobserve()V
    .locals 1

    .prologue
    .line 449
    iget-object v0, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget$WidgetSettingsObserver;->this$0:Lcom/lidroid/systemui/quickpanel/PowerWidget;

    #getter for: Lcom/lidroid/systemui/quickpanel/PowerWidget;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/lidroid/systemui/quickpanel/PowerWidget;->access$3(Lcom/lidroid/systemui/quickpanel/PowerWidget;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 451
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 452
    return-void
.end method
