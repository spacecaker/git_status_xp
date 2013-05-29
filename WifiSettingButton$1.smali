.class Lcom/android/systemui/statusbar/quickpanel/WifiSettingButton$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiSettingButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/quickpanel/WifiSettingButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/quickpanel/WifiSettingButton;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/quickpanel/WifiSettingButton;)V
    .locals 0
    .parameter

    .prologue
    .line 24
    iput-object p1, p0, Lcom/android/systemui/statusbar/quickpanel/WifiSettingButton$1;->this$0:Lcom/android/systemui/statusbar/quickpanel/WifiSettingButton;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 27
    const-string v1, "wifi_state"

    const/4 v2, 0x4

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 29
    .local v0, state:I
    iget-object v1, p0, Lcom/android/systemui/statusbar/quickpanel/WifiSettingButton$1;->this$0:Lcom/android/systemui/statusbar/quickpanel/WifiSettingButton;

    #calls: Lcom/android/systemui/statusbar/quickpanel/WifiSettingButton;->handleStateChanged(I)V
    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/quickpanel/WifiSettingButton;->access$000(Lcom/android/systemui/statusbar/quickpanel/WifiSettingButton;I)V

    .line 30
    return-void
.end method
