.class Lcom/lidroid/systemui/quickpanel/WifiApButton$WifiApStateTracker$1;
.super Landroid/os/AsyncTask;
.source "WifiApButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lidroid/systemui/quickpanel/WifiApButton$WifiApStateTracker;->requestStateChange(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lidroid/systemui/quickpanel/WifiApButton$WifiApStateTracker;

.field final synthetic val$desiredState:Z

.field final synthetic val$wifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method constructor <init>(Lcom/lidroid/systemui/quickpanel/WifiApButton$WifiApStateTracker;Landroid/net/wifi/WifiManager;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/lidroid/systemui/quickpanel/WifiApButton$WifiApStateTracker$1;->this$0:Lcom/lidroid/systemui/quickpanel/WifiApButton$WifiApStateTracker;

    iput-object p2, p0, Lcom/lidroid/systemui/quickpanel/WifiApButton$WifiApStateTracker$1;->val$wifiManager:Landroid/net/wifi/WifiManager;

    iput-boolean p3, p0, Lcom/lidroid/systemui/quickpanel/WifiApButton$WifiApStateTracker$1;->val$desiredState:Z

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/lidroid/systemui/quickpanel/WifiApButton$WifiApStateTracker$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5
    .parameter "args"

    .prologue
    .line 51
    iget-object v2, p0, Lcom/lidroid/systemui/quickpanel/WifiApButton$WifiApStateTracker$1;->val$wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v1

    .line 52
    .local v1, wifiState:I
    iget-boolean v2, p0, Lcom/lidroid/systemui/quickpanel/WifiApButton$WifiApStateTracker$1;->val$desiredState:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 55
    :cond_0
    iget-object v2, p0, Lcom/lidroid/systemui/quickpanel/WifiApButton$WifiApStateTracker$1;->val$wifiManager:Landroid/net/wifi/WifiManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 59
    :cond_1
    iget-object v2, p0, Lcom/lidroid/systemui/quickpanel/WifiApButton$WifiApStateTracker$1;->val$wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 60
    .local v0, wifiConfig:Landroid/net/wifi/WifiConfiguration;
    iget-object v2, p0, Lcom/lidroid/systemui/quickpanel/WifiApButton$WifiApStateTracker$1;->val$wifiManager:Landroid/net/wifi/WifiManager;

    iget-boolean v3, p0, Lcom/lidroid/systemui/quickpanel/WifiApButton$WifiApStateTracker$1;->val$desiredState:Z

    invoke-virtual {v2, v0, v3}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 61
    const-string v2, "WifiAp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Async Setting: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/lidroid/systemui/quickpanel/WifiApButton$WifiApStateTracker$1;->val$desiredState:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    const/4 v2, 0x0

    return-object v2
.end method
