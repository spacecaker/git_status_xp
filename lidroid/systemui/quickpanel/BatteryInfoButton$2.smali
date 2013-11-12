.class Lcom/lidroid/systemui/quickpanel/BatteryInfoButton$2;
.super Ljava/lang/Object;
.source "BatteryInfoButton.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lidroid/systemui/quickpanel/BatteryInfoButton;->openBatteryActivity()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lidroid/systemui/quickpanel/BatteryInfoButton;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/lidroid/systemui/quickpanel/BatteryInfoButton;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Lcom/lidroid/systemui/quickpanel/BatteryInfoButton$2;->this$0:Lcom/lidroid/systemui/quickpanel/BatteryInfoButton;

    iput-object p2, p0, Lcom/lidroid/systemui/quickpanel/BatteryInfoButton$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private openBatteryInfo()V
    .locals 5

    .prologue
    .line 25
    const-string v2, "com.android.settings"

    .line 27
    .local v2, packageName:Ljava/lang/String;
    const-string v0, "com.android.settings.BatteryInfo"

    .line 29
    .local v0, activityName:Ljava/lang/String;
    new-instance v3, Landroid/content/ComponentName;

    invoke-direct {v3, v2, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .local v3, toLaunch:Landroid/content/ComponentName;
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 33
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 35
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 37
    const/high16 v4, 0x1000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 39
    iget-object v0, p0, Lcom/lidroid/systemui/quickpanel/BatteryInfoButton$2;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 49
    return-void
.end method

.method private openBatteryPowerUsage()V
    .locals 5

    .prologue
    .line 25
    const-string v2, "com.android.settings"

    .line 27
    .local v2, packageName:Ljava/lang/String;
    const-string v0, "com.android.settings.fuelgauge.PowerUsageSummary"

    .line 29
    .local v0, activityName:Ljava/lang/String;
    new-instance v3, Landroid/content/ComponentName;

    invoke-direct {v3, v2, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .local v3, toLaunch:Landroid/content/ComponentName;
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 33
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 35
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 37
    const/high16 v4, 0x1000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 39
    iget-object v0, p0, Lcom/lidroid/systemui/quickpanel/BatteryInfoButton$2;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 49
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 41
    iget-object v1, p0, Lcom/lidroid/systemui/quickpanel/BatteryInfoButton$2;->this$0:Lcom/lidroid/systemui/quickpanel/BatteryInfoButton;

    #getter for: Lcom/lidroid/systemui/quickpanel/BatteryInfoButton;->infoType:Ljava/lang/String;
    invoke-static {v1}, Lcom/lidroid/systemui/quickpanel/BatteryInfoButton;->access$000(Lcom/lidroid/systemui/quickpanel/BatteryInfoButton;)Ljava/lang/String;

    move-result-object v1

    .line 291
    const-string v2, "battery_info"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 293
    invoke-direct {p0}, Lcom/lidroid/systemui/quickpanel/BatteryInfoButton$2;->openBatteryInfo()V

    .line 295
    :cond_0
    :goto_0
    return-void

    .line 297
    :cond_1
    const-string v2, "battery_usage"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 299
    invoke-direct {p0}, Lcom/lidroid/systemui/quickpanel/BatteryInfoButton$2;->openBatteryPowerUsage()V

    goto :goto_0
.end method
