.class Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager$1;
.super Ljava/lang/Object;
.source "CameraEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->startSavePicture([BLcom/sec/android/seccamera/SecCamera;Landroid/location/Location;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;

.field final synthetic val$jpegData:[B

.field final synthetic val$location:Landroid/location/Location;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;[BLandroid/location/Location;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2426
    iput-object p1, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager$1;->this$1:Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;

    iput-object p2, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager$1;->val$jpegData:[B

    iput-object p3, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager$1;->val$location:Landroid/location/Location;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2428
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager$1;->this$1:Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager$1;->val$jpegData:[B

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager$1;->val$location:Landroid/location/Location;

    #calls: Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->storeImage([BLandroid/location/Location;)Z
    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->access$2200(Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;[BLandroid/location/Location;)Z

    .line 2429
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager$1;->this$1:Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;->sendEmptyMessage(I)Z

    .line 2435
    return-void
.end method
