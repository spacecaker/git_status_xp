.class Lcom/lidroid/systemui/quickpanel/PowerWidget$WidgetBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PowerWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lidroid/systemui/quickpanel/PowerWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WidgetBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lidroid/systemui/quickpanel/PowerWidget;


# direct methods
.method private constructor <init>(Lcom/lidroid/systemui/quickpanel/PowerWidget;)V
    .locals 0
    .parameter

    .prologue
    .line 377
    iput-object p1, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget$WidgetBroadcastReceiver;->this$0:Lcom/lidroid/systemui/quickpanel/PowerWidget;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lidroid/systemui/quickpanel/PowerWidget;Lcom/lidroid/systemui/quickpanel/PowerWidget$WidgetBroadcastReceiver;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 377
    invoke-direct {p0, p1}, Lcom/lidroid/systemui/quickpanel/PowerWidget$WidgetBroadcastReceiver;-><init>(Lcom/lidroid/systemui/quickpanel/PowerWidget;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 379
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 381
    const-string v0, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 382
    iget-object v0, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget$WidgetBroadcastReceiver;->this$0:Lcom/lidroid/systemui/quickpanel/PowerWidget;

    #calls: Lcom/lidroid/systemui/quickpanel/PowerWidget;->updateButtonLayoutWidth()V
    invoke-static {v0}, Lcom/lidroid/systemui/quickpanel/PowerWidget;->access$0(Lcom/lidroid/systemui/quickpanel/PowerWidget;)V

    .line 383
    iget-object v0, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget$WidgetBroadcastReceiver;->this$0:Lcom/lidroid/systemui/quickpanel/PowerWidget;

    #calls: Lcom/lidroid/systemui/quickpanel/PowerWidget;->recreateButtonLayout()V
    invoke-static {v0}, Lcom/lidroid/systemui/quickpanel/PowerWidget;->access$1(Lcom/lidroid/systemui/quickpanel/PowerWidget;)V

    .line 395
    :cond_0
    iget-object v0, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget$WidgetBroadcastReceiver;->this$0:Lcom/lidroid/systemui/quickpanel/PowerWidget;

    invoke-virtual {v0}, Lcom/lidroid/systemui/quickpanel/PowerWidget;->updateAllButtons()V

    .line 396
    return-void

    .line 386
    :cond_1
    iget-object v0, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget$WidgetBroadcastReceiver;->this$0:Lcom/lidroid/systemui/quickpanel/PowerWidget;

    #getter for: Lcom/lidroid/systemui/quickpanel/PowerWidget;->mButtons:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/lidroid/systemui/quickpanel/PowerWidget;->access$2(Lcom/lidroid/systemui/quickpanel/PowerWidget;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lidroid/systemui/quickpanel/PowerButton;

    .line 388
    invoke-virtual {v0}, Lcom/lidroid/systemui/quickpanel/PowerButton;->getBroadcastIntentFilter()Landroid/content/IntentFilter;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/IntentFilter;->hasAction(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 389
    invoke-virtual {v0, p1, p2}, Lcom/lidroid/systemui/quickpanel/PowerButton;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method
