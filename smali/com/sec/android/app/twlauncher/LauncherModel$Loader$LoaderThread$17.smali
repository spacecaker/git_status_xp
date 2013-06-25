.class Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread$17;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->loadAllAppsByBatch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;

.field final synthetic val$added:Ljava/util/ArrayList;

.field final synthetic val$first:Z

.field final synthetic val$oldCallbacks:Lcom/sec/android/app/twlauncher/LauncherModel$Callbacks;


# direct methods
.method constructor <init>(Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;Lcom/sec/android/app/twlauncher/LauncherModel$Callbacks;ZLjava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1730
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread$17;->this$2:Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;

    iput-object p2, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread$17;->val$oldCallbacks:Lcom/sec/android/app/twlauncher/LauncherModel$Callbacks;

    iput-boolean p3, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread$17;->val$first:Z

    iput-object p4, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread$17;->val$added:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const-string v6, "Launcher.Model"

    .line 1732
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 1733
    .local v1, t:J
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread$17;->this$2:Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread$17;->val$oldCallbacks:Lcom/sec/android/app/twlauncher/LauncherModel$Callbacks;

    invoke-virtual {v3, v4}, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->tryGetCallbacks(Lcom/sec/android/app/twlauncher/LauncherModel$Callbacks;)Lcom/sec/android/app/twlauncher/LauncherModel$Callbacks;

    move-result-object v0

    .line 1734
    .local v0, callbacks:Lcom/sec/android/app/twlauncher/LauncherModel$Callbacks;
    if-eqz v0, :cond_1

    .line 1735
    iget-boolean v3, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread$17;->val$first:Z

    if-eqz v3, :cond_0

    .line 1736
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread$17;->this$2:Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;

    iget-object v3, v3, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    iget-object v3, v3, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    const/4 v4, 0x0

    #setter for: Lcom/sec/android/app/twlauncher/LauncherModel;->mBeforeFirstLoad:Z
    invoke-static {v3, v4}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$1802(Lcom/sec/android/app/twlauncher/LauncherModel;Z)Z

    .line 1737
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread$17;->val$added:Ljava/util/ArrayList;

    invoke-interface {v0, v3}, Lcom/sec/android/app/twlauncher/LauncherModel$Callbacks;->bindAllApplications(Ljava/util/ArrayList;)V

    .line 1742
    :goto_0
    const-string v3, "Launcher.Model"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bound "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread$17;->val$added:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " apps in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1748
    :goto_1
    return-void

    .line 1739
    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread$17;->val$added:Ljava/util/ArrayList;

    invoke-interface {v0, v3}, Lcom/sec/android/app/twlauncher/LauncherModel$Callbacks;->bindAppsAdded(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 1746
    :cond_1
    const-string v3, "Launcher.Model"

    const-string v3, "not binding apps: no Launcher activity"

    invoke-static {v6, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
