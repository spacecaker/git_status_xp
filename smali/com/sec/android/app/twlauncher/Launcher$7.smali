.class Lcom/sec/android/app/twlauncher/Launcher$7;
.super Landroid/os/Handler;
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
    .line 4411
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Launcher$7;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const-string v3, "Launcher"

    .line 4413
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 4445
    :cond_0
    :goto_0
    return-void

    .line 4416
    :sswitch_0
    iget v1, p1, Landroid/os/Message;->arg1:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 4417
    const-string v1, "Launcher"

    const-string v1, "uninstall succeeded"

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4421
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher$7;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    #getter for: Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;
    invoke-static {v1}, Lcom/sec/android/app/twlauncher/Launcher;->access$3000(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/MenuManager;->unlock()V

    goto :goto_0

    .line 4419
    :cond_1
    const-string v1, "Launcher"

    const-string v1, "uninstall failed"

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 4427
    :sswitch_1
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher$7;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->isDefaultIMEI()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4428
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher$7;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    #calls: Lcom/sec/android/app/twlauncher/Launcher;->setSomethingsInDefaultIMEI()V
    invoke-static {v1}, Lcom/sec/android/app/twlauncher/Launcher;->access$3100(Lcom/sec/android/app/twlauncher/Launcher;)V

    goto :goto_0

    .line 4433
    :sswitch_2
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher$7;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    #getter for: Lcom/sec/android/app/twlauncher/Launcher;->mModel:Lcom/sec/android/app/twlauncher/LauncherModel;
    invoke-static {v1}, Lcom/sec/android/app/twlauncher/Launcher;->access$1900(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/LauncherModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/LauncherModel;->isBusy()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4434
    const/16 v1, 0x64

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/Launcher$7;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 4435
    .local v0, newMsg:Landroid/os/Message;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 4436
    const-wide/16 v1, 0x64

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/app/twlauncher/Launcher$7;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 4438
    .end local v0           #newMsg:Landroid/os/Message;
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher$7;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher$7;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    #getter for: Lcom/sec/android/app/twlauncher/Launcher;->mAddItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;
    invoke-static {v3}, Lcom/sec/android/app/twlauncher/Launcher;->access$3200(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    move-result-object v3

    #calls: Lcom/sec/android/app/twlauncher/Launcher;->completeAddAppWidget(Landroid/os/Bundle;Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;)V
    invoke-static {v1, v2, v3}, Lcom/sec/android/app/twlauncher/Launcher;->access$3300(Lcom/sec/android/app/twlauncher/Launcher;Landroid/os/Bundle;Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;)V

    goto :goto_0

    .line 4413
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x64 -> :sswitch_2
    .end sparse-switch
.end method
