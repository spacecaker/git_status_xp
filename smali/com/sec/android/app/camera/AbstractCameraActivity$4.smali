.class Lcom/sec/android/app/camera/AbstractCameraActivity$4;
.super Ljava/lang/Object;
.source "AbstractCameraActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/AbstractCameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/AbstractCameraActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 630
    iput-object p1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity$4;->this$0:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "dialogInterface"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 634
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 635
    const/16 v0, 0x1a

    if-ne p2, v0, :cond_3

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getFlags()I

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_3

    .line 637
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity$4;->this$0:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getLock()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 638
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity$4;->this$0:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setLock(Z)V

    .line 639
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity$4;->this$0:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v4, v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->requestSystemKeyEvent(IZ)Z

    :cond_0
    move v0, v2

    .line 655
    :goto_0
    return v0

    .line 641
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity$4;->this$0:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setLock(Z)V

    .line 642
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity$4;->this$0:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v4, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->requestSystemKeyEvent(IZ)Z

    .line 643
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity$4;->this$0:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->isCaptureEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 644
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity$4;->this$0:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    goto :goto_1

    .line 651
    :cond_2
    const/16 v0, 0x52

    if-ne p2, v0, :cond_3

    move v0, v2

    .line 652
    goto :goto_0

    :cond_3
    move v0, v3

    .line 655
    goto :goto_0
.end method
