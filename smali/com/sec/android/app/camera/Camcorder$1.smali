.class Lcom/sec/android/app/camera/Camcorder$1;
.super Landroid/content/BroadcastReceiver;
.source "Camcorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/Camcorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/Camcorder;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/Camcorder;)V
    .locals 0
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Lcom/sec/android/app/camera/Camcorder$1;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v6, "Camcorder"

    .line 97
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, action:Ljava/lang/String;
    const-string v4, "Camcorder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceive ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    const-string v4, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 101
    const-string v4, "Camcorder"

    const-string v4, "Camera shut down"

    invoke-static {v6, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder$1;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/sec/android/app/camera/CameraSettings;->setLock(Z)V

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder$1;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #getter for: Lcom/sec/android/app/camera/Camcorder;->mIsDestroying:Z
    invoke-static {v4}, Lcom/sec/android/app/camera/Camcorder;->access$000(Lcom/sec/android/app/camera/Camcorder;)Z

    move-result v4

    if-ne v4, v8, :cond_2

    .line 106
    const-string v4, "Camcorder"

    const-string v4, "onReceive - camcorder is destroying"

    invoke-static {v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 109
    :cond_2
    const-string v4, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 112
    :cond_3
    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder$1;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #getter for: Lcom/sec/android/app/camera/Camcorder;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;
    invoke-static {v4}, Lcom/sec/android/app/camera/Camcorder;->access$100(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/app/camera/MenuResourceData;

    move-result-object v4

    const v5, 0x7f030039

    iget-object v6, p0, Lcom/sec/android/app/camera/Camcorder$1;->this$0:Lcom/sec/android/app/camera/Camcorder;

    iget-object v6, v6, Lcom/sec/android/app/camera/AbstractCameraActivity;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/StorageMenu;

    .line 114
    .local v2, menu:Lcom/sec/android/app/camera/StorageMenu;
    invoke-virtual {v2}, Lcom/sec/android/app/camera/StorageMenu;->getVisibility()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 115
    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder$1;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camcorder;->processBack()V

    .line 117
    :cond_4
    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder$1;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v4, v7, v8}, Lcom/sec/android/app/camera/Camcorder;->checkStorage(ZZ)V

    .line 119
    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder$1;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #getter for: Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;
    invoke-static {v4}, Lcom/sec/android/app/camera/Camcorder;->access$200(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/app/camera/CamcorderEngine;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CamcorderEngine;->searchForInitialLastContentUri()V

    goto :goto_0

    .line 120
    .end local v2           #menu:Lcom/sec/android/app/camera/StorageMenu;
    :cond_5
    const-string v4, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 121
    const-string v4, "Camcorder"

    const-string v4, "CAMCORDER ACTION_MEDIA_MOUNTED --> Finish"

    invoke-static {v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    const v4, 0x7f0700d5

    new-array v5, v8, [Ljava/lang/Object;

    const v6, 0x7f0700c6

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {p1, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 125
    .local v3, str:Ljava/lang/String;
    invoke-static {p1, v3, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 126
    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder$1;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camcorder;->finish()V

    goto/16 :goto_0

    .line 127
    .end local v3           #str:Ljava/lang/String;
    :cond_6
    const-string v4, "com.android.camera.NEW_PICTURE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 128
    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder$1;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camcorder;->updateRemainStorageIndicator()V

    goto/16 :goto_0

    .line 129
    :cond_7
    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 130
    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder$1;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v4, p2}, Lcom/sec/android/app/camera/Camcorder;->handleBatteryChanged(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 131
    :cond_8
    const-string v4, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 132
    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder$1;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camcorder;->handleLowBattery()V

    goto/16 :goto_0

    .line 133
    :cond_9
    const-string v4, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 134
    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder$1;->this$0:Lcom/sec/android/app/camera/Camcorder;

    iget-object v4, v4, Lcom/sec/android/app/camera/AbstractCameraActivity;->mLowBatteryPopup:Landroid/app/AlertDialog;

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder$1;->this$0:Lcom/sec/android/app/camera/Camcorder;

    iget-object v4, v4, Lcom/sec/android/app/camera/AbstractCameraActivity;->mLowBatteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 135
    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder$1;->this$0:Lcom/sec/android/app/camera/Camcorder;

    iget-object v4, v4, Lcom/sec/android/app/camera/AbstractCameraActivity;->mLowBatteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->dismiss()V

    .line 136
    :cond_a
    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder$1;->this$0:Lcom/sec/android/app/camera/Camcorder;

    iput-object v9, v4, Lcom/sec/android/app/camera/AbstractCameraActivity;->mLowBatteryPopup:Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 137
    :cond_b
    const-string v4, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 138
    const-string v4, "Camcorder"

    const-string v4, "INTENT_MSG_SECURITY"

    invoke-static {v6, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder$1;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camcorder;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "device_policy"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 142
    .local v1, mDPM:Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v1, v9}, Landroid/app/admin/DevicePolicyManager;->getAllowCamera(Landroid/content/ComponentName;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 143
    const-string v4, "Camcorder"

    const-string v4, "Camcorder exit by INTENT_MSG_SECURITY"

    invoke-static {v6, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder$1;->this$0:Lcom/sec/android/app/camera/Camcorder;

    const v5, 0x7f0700cb

    invoke-static {v4, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 147
    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder$1;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camcorder;->finish()V

    goto/16 :goto_0
.end method
