.class Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread$5;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->bindWorkspace()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;

.field final synthetic val$oldCallbacks:Lcom/sec/android/app/twlauncher/LauncherModel$Callbacks;


# direct methods
.method constructor <init>(Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;Lcom/sec/android/app/twlauncher/LauncherModel$Callbacks;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1389
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread$5;->this$2:Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;

    iput-object p2, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread$5;->val$oldCallbacks:Lcom/sec/android/app/twlauncher/LauncherModel$Callbacks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1391
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread$5;->this$2:Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread$5;->val$oldCallbacks:Lcom/sec/android/app/twlauncher/LauncherModel$Callbacks;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->tryGetCallbacks(Lcom/sec/android/app/twlauncher/LauncherModel$Callbacks;)Lcom/sec/android/app/twlauncher/LauncherModel$Callbacks;

    move-result-object v0

    .line 1392
    .local v0, callbacks:Lcom/sec/android/app/twlauncher/LauncherModel$Callbacks;
    if-eqz v0, :cond_0

    .line 1393
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread$5;->this$2:Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;

    iget-object v1, v1, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    iget-object v1, v1, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->mFolders:Ljava/util/HashMap;

    invoke-interface {v0, v1}, Lcom/sec/android/app/twlauncher/LauncherModel$Callbacks;->bindFolders(Ljava/util/HashMap;)V

    .line 1395
    :cond_0
    return-void
.end method
