.class Lcom/sec/android/app/camera/CameraEngine$5$2;
.super Ljava/lang/Object;
.source "CameraEngine.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/CameraEngine$5;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/camera/CameraEngine$5;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/CameraEngine$5;)V
    .locals 0
    .parameter

    .prologue
    .line 1861
    iput-object p1, p0, Lcom/sec/android/app/camera/CameraEngine$5$2;->this$1:Lcom/sec/android/app/camera/CameraEngine$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const/4 v3, 0x1

    .line 1864
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$5$2;->this$1:Lcom/sec/android/app/camera/CameraEngine$5;

    iget-object v1, v1, Lcom/sec/android/app/camera/CameraEngine$5;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    #setter for: Lcom/sec/android/app/camera/CameraEngine;->mWaitGpsLocation:Z
    invoke-static {v1, v3}, Lcom/sec/android/app/camera/CameraEngine;->access$1802(Lcom/sec/android/app/camera/CameraEngine;Z)Z

    .line 1865
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$5$2;->this$1:Lcom/sec/android/app/camera/CameraEngine$5;

    iget-object v1, v1, Lcom/sec/android/app/camera/CameraEngine$5;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v2, 0x7f0700f8

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1866
    .local v0, str:Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$5$2;->this$1:Lcom/sec/android/app/camera/CameraEngine$5;

    iget-object v1, v1, Lcom/sec/android/app/camera/CameraEngine$5;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-static {v1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1867
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$5$2;->this$1:Lcom/sec/android/app/camera/CameraEngine$5;

    iget-object v1, v1, Lcom/sec/android/app/camera/CameraEngine$5;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->finish()V

    .line 1868
    return-void
.end method
