.class Lcom/lidroid/systemui/quickpanel/BatteryInfoButton$1;
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
    .line 33
    iput-object p1, p0, Lcom/lidroid/systemui/quickpanel/BatteryInfoButton$1;->this$0:Lcom/lidroid/systemui/quickpanel/BatteryInfoButton;

    iput-object p2, p0, Lcom/lidroid/systemui/quickpanel/BatteryInfoButton$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 35
    iget-object v1, p0, Lcom/lidroid/systemui/quickpanel/BatteryInfoButton$1;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06000a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 36
    .local v0, actions:[Ljava/lang/String;
    iget-object v1, p0, Lcom/lidroid/systemui/quickpanel/BatteryInfoButton$1;->this$0:Lcom/lidroid/systemui/quickpanel/BatteryInfoButton;

    aget-object v2, v0, p2

    #setter for: Lcom/lidroid/systemui/quickpanel/BatteryInfoButton;->infoType:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/lidroid/systemui/quickpanel/BatteryInfoButton;->access$002(Lcom/lidroid/systemui/quickpanel/BatteryInfoButton;Ljava/lang/String;)Ljava/lang/String;

    .line 37
    return-void
.end method
