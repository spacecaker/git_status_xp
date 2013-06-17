.class Lcom/sec/android/app/camera/Camera$5;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/Camera;->onStopMotionPreviewEditingFinished([BZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/Camera;

.field final synthetic val$chkAppendFrameComplete:Z

.field final synthetic val$jpegData:[B


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/Camera;[BZ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2100
    iput-object p1, p0, Lcom/sec/android/app/camera/Camera$5;->this$0:Lcom/sec/android/app/camera/Camera;

    iput-object p2, p0, Lcom/sec/android/app/camera/Camera$5;->val$jpegData:[B

    iput-boolean p3, p0, Lcom/sec/android/app/camera/Camera$5;->val$chkAppendFrameComplete:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2102
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$5;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;
    invoke-static {v0}, Lcom/sec/android/app/camera/Camera;->access$400(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$5;->val$jpegData:[B

    iget-boolean v2, p0, Lcom/sec/android/app/camera/Camera$5;->val$chkAppendFrameComplete:Z

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/CameraEngine;->appendStopMotionFrame([BZ)V

    .line 2103
    return-void
.end method
