.class public Lcom/lidroid/systemui/quickpanel/NetworkModeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NetworkModeReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lidroid/systemui/quickpanel/NetworkModeReceiver$MyHandler;
    }
.end annotation


# static fields
.field private static final CM_MODE_3G_PREFERRED:I = 0x2

.field private static final TAG:Ljava/lang/String; = "PowerToggles - NetworkModeReceiver"


# instance fields
.field private mHandler:Lcom/lidroid/systemui/quickpanel/NetworkModeReceiver$MyHandler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 18
    new-instance v0, Lcom/lidroid/systemui/quickpanel/NetworkModeReceiver$MyHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lidroid/systemui/quickpanel/NetworkModeReceiver$MyHandler;-><init>(Lcom/lidroid/systemui/quickpanel/NetworkModeReceiver;Lcom/lidroid/systemui/quickpanel/NetworkModeReceiver$MyHandler;)V

    iput-object v0, p0, Lcom/lidroid/systemui/quickpanel/NetworkModeReceiver;->mHandler:Lcom/lidroid/systemui/quickpanel/NetworkModeReceiver$MyHandler;

    .line 14
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 23
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.serajr.powertoggles.POWERTOGGLES_CHANGE_NETWORK_MODE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 26
    const-string v3, "com.serajr.powertoggles.POWERTOGGLES_NEW_NETWORK_MODE"

    const/4 v4, 0x2

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 29
    .local v0, newMode:I
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Change network mode to: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 30
    .local v2, str:Ljava/lang/String;
    const-string v3, "PowerToggles - NetworkModeReceiver"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "preferred_network_mode"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 34
    iget-object v3, p0, Lcom/lidroid/systemui/quickpanel/NetworkModeReceiver;->mHandler:Lcom/lidroid/systemui/quickpanel/NetworkModeReceiver$MyHandler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/lidroid/systemui/quickpanel/NetworkModeReceiver$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 35
    .local v1, response:Landroid/os/Message;
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3, v0, v1}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 38
    .end local v0           #newMode:I
    .end local v1           #response:Landroid/os/Message;
    .end local v2           #str:Ljava/lang/String;
    :cond_0
    return-void
.end method
