.class Lcom/android/packageinstaller/UninstallAppProgress$PackageDeleteObserver;
.super Landroid/content/pm/IPackageDeleteObserver$Stub;
.source "UninstallAppProgress.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/packageinstaller/UninstallAppProgress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PackageDeleteObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/packageinstaller/UninstallAppProgress;


# direct methods
.method constructor <init>(Lcom/android/packageinstaller/UninstallAppProgress;)V
    .locals 0
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/packageinstaller/UninstallAppProgress$PackageDeleteObserver;->this$0:Lcom/android/packageinstaller/UninstallAppProgress;

    invoke-direct {p0}, Landroid/content/pm/IPackageDeleteObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public packageDeleted(Z)V
    .locals 3
    .parameter "succeeded"

    .prologue
    const/4 v2, 0x1

    .line 85
    iget-object v1, p0, Lcom/android/packageinstaller/UninstallAppProgress$PackageDeleteObserver;->this$0:Lcom/android/packageinstaller/UninstallAppProgress;

    #getter for: Lcom/android/packageinstaller/UninstallAppProgress;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/packageinstaller/UninstallAppProgress;->access$400(Lcom/android/packageinstaller/UninstallAppProgress;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 86
    .local v0, msg:Landroid/os/Message;
    if-eqz p1, :cond_0

    move v1, v2

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 87
    iget-object v1, p0, Lcom/android/packageinstaller/UninstallAppProgress$PackageDeleteObserver;->this$0:Lcom/android/packageinstaller/UninstallAppProgress;

    #getter for: Lcom/android/packageinstaller/UninstallAppProgress;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/packageinstaller/UninstallAppProgress;->access$400(Lcom/android/packageinstaller/UninstallAppProgress;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 88
    return-void

    .line 86
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
