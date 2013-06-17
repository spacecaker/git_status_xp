.class Lcom/sec/android/app/camera/CameraBaseIndicators$1;
.super Ljava/lang/Object;
.source "CameraBaseIndicators.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/CameraBaseIndicators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/CameraBaseIndicators;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/CameraBaseIndicators;)V
    .locals 0
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lcom/sec/android/app/camera/CameraBaseIndicators$1;->this$0:Lcom/sec/android/app/camera/CameraBaseIndicators;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x3

    .line 60
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators$1;->this$0:Lcom/sec/android/app/camera/CameraBaseIndicators;

    #getter for: Lcom/sec/android/app/camera/CameraBaseIndicators;->mLaunchIcon:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/sec/android/app/camera/CameraBaseIndicators;->access$000(Lcom/sec/android/app/camera/CameraBaseIndicators;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 61
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators$1;->this$0:Lcom/sec/android/app/camera/CameraBaseIndicators;

    iget-object v0, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators$1;->this$0:Lcom/sec/android/app/camera/CameraBaseIndicators;

    iget-object v0, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators$1;->this$0:Lcom/sec/android/app/camera/CameraBaseIndicators;

    iget-object v0, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators$1;->this$0:Lcom/sec/android/app/camera/CameraBaseIndicators;

    iget-object v0, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators$1;->this$0:Lcom/sec/android/app/camera/CameraBaseIndicators;

    iget-object v0, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getFocusMode()I

    move-result v0

    if-nez v0, :cond_2

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators$1;->this$0:Lcom/sec/android/app/camera/CameraBaseIndicators;

    #getter for: Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorFocus:Lcom/sec/android/app/camera/widget/TwIndicatorFocus;
    invoke-static {v0}, Lcom/sec/android/app/camera/CameraBaseIndicators;->access$100(Lcom/sec/android/app/camera/CameraBaseIndicators;)Lcom/sec/android/app/camera/widget/TwIndicatorFocus;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/widget/TwIndicatorFocus;->setVisibility(I)V

    .line 75
    :cond_1
    :goto_0
    return-void

    .line 67
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators$1;->this$0:Lcom/sec/android/app/camera/CameraBaseIndicators;

    iget-object v0, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getSceneMode()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators$1;->this$0:Lcom/sec/android/app/camera/CameraBaseIndicators;

    iget-object v0, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getFocusMode()I

    move-result v0

    if-eq v0, v2, :cond_1

    .line 73
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators$1;->this$0:Lcom/sec/android/app/camera/CameraBaseIndicators;

    #getter for: Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorFocus:Lcom/sec/android/app/camera/widget/TwIndicatorFocus;
    invoke-static {v0}, Lcom/sec/android/app/camera/CameraBaseIndicators;->access$100(Lcom/sec/android/app/camera/CameraBaseIndicators;)Lcom/sec/android/app/camera/widget/TwIndicatorFocus;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorFocus;->setVisibility(I)V

    goto :goto_0
.end method
