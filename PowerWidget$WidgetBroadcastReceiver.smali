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
    .line 293
    iput-object p1, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget$WidgetBroadcastReceiver;->this$0:Lcom/lidroid/systemui/quickpanel/PowerWidget;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lidroid/systemui/quickpanel/PowerWidget;Lcom/lidroid/systemui/quickpanel/PowerWidget$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 293
    invoke-direct {p0, p1}, Lcom/lidroid/systemui/quickpanel/PowerWidget$WidgetBroadcastReceiver;-><init>(Lcom/lidroid/systemui/quickpanel/PowerWidget;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 295
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget$WidgetBroadcastReceiver;->this$0:Lcom/lidroid/systemui/quickpanel/PowerWidget;

    invoke-virtual {v0}, Lcom/lidroid/systemui/quickpanel/PowerWidget;->setupWidget()V

    .line 306
    :goto_0
    iget-object v0, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget$WidgetBroadcastReceiver;->this$0:Lcom/lidroid/systemui/quickpanel/PowerWidget;

    invoke-virtual {v0}, Lcom/lidroid/systemui/quickpanel/PowerWidget;->updateWidget()V

    .line 307
    return-void

    .line 297
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 298
    iget-object v0, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget$WidgetBroadcastReceiver;->this$0:Lcom/lidroid/systemui/quickpanel/PowerWidget;

    #calls: Lcom/lidroid/systemui/quickpanel/PowerWidget;->updateButtonLayoutWidth()V
    invoke-static {v0}, Lcom/lidroid/systemui/quickpanel/PowerWidget;->access$100(Lcom/lidroid/systemui/quickpanel/PowerWidget;)V

    .line 299
    iget-object v0, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget$WidgetBroadcastReceiver;->this$0:Lcom/lidroid/systemui/quickpanel/PowerWidget;

    invoke-virtual {v0}, Lcom/lidroid/systemui/quickpanel/PowerWidget;->setupWidget()V

    goto :goto_0

    .line 302
    :cond_1
    invoke-static {p1, p2}, Lcom/lidroid/systemui/quickpanel/PowerButton;->handleOnReceive(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method
