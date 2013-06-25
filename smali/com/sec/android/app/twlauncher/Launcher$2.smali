.class Lcom/sec/android/app/twlauncher/Launcher$2;
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
    .line 573
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Launcher$2;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 576
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 577
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.WALLPAPER_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 578
    const-string v1, "Launcher"

    const-string v2, "ACTION_WALLPAPER_CHANGED broadcast received"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher$2;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    #getter for: Lcom/sec/android/app/twlauncher/Launcher;->mIsActive:Z
    invoke-static {v1}, Lcom/sec/android/app/twlauncher/Launcher;->access$300(Lcom/sec/android/app/twlauncher/Launcher;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 581
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher$2;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->updateWindowTransparency()V

    .line 584
    :cond_0
    return-void
.end method
