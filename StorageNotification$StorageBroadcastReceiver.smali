.class Lcom/android/systemui/usb/StorageNotification$StorageBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "StorageNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/usb/StorageNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StorageBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/usb/StorageNotification;


# direct methods
.method private constructor <init>(Lcom/android/systemui/usb/StorageNotification;)V
    .locals 0
    .parameter

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/systemui/usb/StorageNotification$StorageBroadcastReceiver;->this$0:Lcom/android/systemui/usb/StorageNotification;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/usb/StorageNotification;Lcom/android/systemui/usb/StorageNotification$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lcom/android/systemui/usb/StorageNotification$StorageBroadcastReceiver;-><init>(Lcom/android/systemui/usb/StorageNotification;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 128
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.intent.action.ADB_ENABLED_BY_KIES_MODE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 130
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    .line 131
    .local v1, state:Ljava/lang/String;
    const-string v2, "StorageNotification"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive :: received ACTION_ADB_ENABLED_BY_KIES_MODE :: state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "shared"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 133
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/usb/StorageNotification$StorageBroadcastReceiver;->this$0:Lcom/android/systemui/usb/StorageNotification;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/systemui/usb/StorageNotification;->updateUsbMassStorageNotification(Z)V

    .line 138
    .end local v1           #state:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 135
    .restart local v1       #state:Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/usb/StorageNotification$StorageBroadcastReceiver;->this$0:Lcom/android/systemui/usb/StorageNotification;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/systemui/usb/StorageNotification;->updateUsbMassStorageNotification(Z)V

    goto :goto_0
.end method
