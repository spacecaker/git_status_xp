.class Lcom/android/systemui/statusbar/policy/WifiController$1;
.super Ljava/lang/Object;
.source "WifiController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/WifiController;->unsafe(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/WifiController;

.field final synthetic val$enabled:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/WifiController;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 146
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/WifiController$1;->this$0:Lcom/android/systemui/statusbar/policy/WifiController;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/policy/WifiController$1;->val$enabled:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 148
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/WifiController$1;->this$0:Lcom/android/systemui/statusbar/policy/WifiController;

    #getter for: Lcom/android/systemui/statusbar/policy/WifiController;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/WifiController;->access$000(Lcom/android/systemui/statusbar/policy/WifiController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/WifiController$1;->val$enabled:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 152
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 153
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 154
    const-string v1, "state"

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/WifiController$1;->val$enabled:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 155
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/WifiController$1;->this$0:Lcom/android/systemui/statusbar/policy/WifiController;

    #getter for: Lcom/android/systemui/statusbar/policy/WifiController;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/WifiController;->access$000(Lcom/android/systemui/statusbar/policy/WifiController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 156
    return-void

    .line 148
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
