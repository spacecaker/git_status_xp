.class Lcom/sec/android/app/twlauncher/Launcher$PackageDeleteObserver;
.super Landroid/content/pm/IPackageDeleteObserver$Stub;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PackageDeleteObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/twlauncher/Launcher;


# direct methods
.method constructor <init>(Lcom/sec/android/app/twlauncher/Launcher;)V
    .locals 0
    .parameter

    .prologue
    .line 4397
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Launcher$PackageDeleteObserver;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-direct {p0}, Landroid/content/pm/IPackageDeleteObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public packageDeleted(Z)V
    .locals 3
    .parameter "succeeded"

    .prologue
    const/4 v2, 0x1

    .line 4399
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher$PackageDeleteObserver;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    #getter for: Lcom/sec/android/app/twlauncher/Launcher;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/twlauncher/Launcher;->access$2800(Lcom/sec/android/app/twlauncher/Launcher;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 4400
    .local v0, msg:Landroid/os/Message;
    if-eqz p1, :cond_0

    move v1, v2

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 4401
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher$PackageDeleteObserver;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    #getter for: Lcom/sec/android/app/twlauncher/Launcher;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/twlauncher/Launcher;->access$2800(Lcom/sec/android/app/twlauncher/Launcher;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4402
    return-void

    .line 4400
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
