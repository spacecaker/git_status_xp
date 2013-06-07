.class Lcom/android/settings/DevelopmentSettings$TetherChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DevelopmentSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DevelopmentSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TetherChangeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DevelopmentSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/DevelopmentSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 256
    iput-object p1, p0, Lcom/android/settings/DevelopmentSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/DevelopmentSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/DevelopmentSettings;Lcom/android/settings/DevelopmentSettings$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 256
    invoke-direct {p0, p1}, Lcom/android/settings/DevelopmentSettings$TetherChangeReceiver;-><init>(Lcom/android/settings/DevelopmentSettings;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "content"
    .parameter "intent"

    .prologue
    .line 258
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 260
    const-string v3, "availableArray"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 262
    .local v1, available:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v3, "activeArray"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 264
    .local v0, active:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v3, "erroredArray"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 266
    .local v2, errored:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/DevelopmentSettings;

    invoke-virtual {v1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v6

    #calls: Lcom/android/settings/DevelopmentSettings;->updateState([Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V
    invoke-static {v3, v4, v5, v6}, Lcom/android/settings/DevelopmentSettings;->access$100(Lcom/android/settings/DevelopmentSettings;[Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 271
    .end local v0           #active:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v1           #available:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2           #errored:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    return-void

    .line 267
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.MEDIA_UNSHARED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 269
    :cond_2
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/DevelopmentSettings;

    #calls: Lcom/android/settings/DevelopmentSettings;->updateState()V
    invoke-static {v3}, Lcom/android/settings/DevelopmentSettings;->access$200(Lcom/android/settings/DevelopmentSettings;)V

    goto :goto_0
.end method
