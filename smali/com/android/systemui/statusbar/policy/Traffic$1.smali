.class Lcom/android/systemui/statusbar/policy/Traffic$1;
.super Landroid/content/BroadcastReceiver;
.source "Traffic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/Traffic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/Traffic;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/Traffic;)V
    .locals 0
    .parameter

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/Traffic$1;->this$0:Lcom/android/systemui/statusbar/policy/Traffic;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 108
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 109
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 110
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/Traffic$1;->this$0:Lcom/android/systemui/statusbar/policy/Traffic;

    #calls: Lcom/android/systemui/statusbar/policy/Traffic;->updateSettings()V
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/Traffic;->access$100(Lcom/android/systemui/statusbar/policy/Traffic;)V

    .line 112
    :cond_0
    return-void
.end method
