.class Lcom/sec/android/app/camera/CameraEngine$5$1;
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
    .line 1870
    iput-object p1, p0, Lcom/sec/android/app/camera/CameraEngine$5$1;->this$1:Lcom/sec/android/app/camera/CameraEngine$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 1873
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$5$1;->this$1:Lcom/sec/android/app/camera/CameraEngine$5;

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraEngine$5;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onGpsChanged(I)V

    .line 1874
    return-void
.end method
