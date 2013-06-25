.class Lcom/sec/android/app/twlauncher/Launcher$1;
.super Landroid/content/BroadcastReceiver;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/twlauncher/Launcher;


# direct methods
.method constructor <init>(Lcom/sec/android/app/twlauncher/Launcher;)V
    .locals 0
    .parameter

    .prologue
    .line 555
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Launcher$1;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const-string v4, "Launcher"

    .line 558
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 559
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 560
    const-string v2, "Launcher"

    const-string v2, "ACTION_SCREEN_OFF"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher$1;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    const/4 v3, 0x1

    #setter for: Lcom/sec/android/app/twlauncher/Launcher;->mIsScreenOff:Z
    invoke-static {v2, v3}, Lcom/sec/android/app/twlauncher/Launcher;->access$202(Lcom/sec/android/app/twlauncher/Launcher;Z)Z

    .line 570
    :cond_0
    :goto_0
    return-void

    .line 562
    :cond_1
    const-string v2, "android.intent.action.USER_PRESENT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 563
    const-string v2, "Launcher"

    const-string v2, "ACTION_USER_PRESENT"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher$1;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Launcher;->updateWallpaperVisiblity()V

    .line 565
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher$1;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    #getter for: Lcom/sec/android/app/twlauncher/Launcher;->mIsActive:Z
    invoke-static {v2}, Lcom/sec/android/app/twlauncher/Launcher;->access$300(Lcom/sec/android/app/twlauncher/Launcher;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher$1;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    const/4 v3, 0x0

    #setter for: Lcom/sec/android/app/twlauncher/Launcher;->mIsScreenOff:Z
    invoke-static {v2, v3}, Lcom/sec/android/app/twlauncher/Launcher;->access$202(Lcom/sec/android/app/twlauncher/Launcher;Z)Z

    goto :goto_0

    .line 566
    :cond_2
    const-string v2, "android.intent.action.MULTI_CSC_CLEAR"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 567
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher$1;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    const-string v3, "launcher.db"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/twlauncher/Launcher;->deleteDatabase(Ljava/lang/String;)Z

    move-result v1

    .line 568
    .local v1, ret:Z
    const-string v2, "Launcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleted a database file = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
