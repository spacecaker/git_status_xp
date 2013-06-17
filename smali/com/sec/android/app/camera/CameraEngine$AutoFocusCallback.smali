.class final Lcom/sec/android/app/camera/CameraEngine$AutoFocusCallback;
.super Ljava/lang/Object;
.source "CameraEngine.java"

# interfaces
.implements Lcom/sec/android/seccamera/SecCamera$AutoFocusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/CameraEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AutoFocusCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/CameraEngine;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/camera/CameraEngine;)V
    .locals 0
    .parameter

    .prologue
    .line 641
    iput-object p1, p0, Lcom/sec/android/app/camera/CameraEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/camera/CameraEngine;Lcom/sec/android/app/camera/CameraEngine$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 641
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/CameraEngine$AutoFocusCallback;-><init>(Lcom/sec/android/app/camera/CameraEngine;)V

    return-void
.end method


# virtual methods
.method public onAutoFocus(ILcom/sec/android/seccamera/SecCamera;)V
    .locals 7
    .parameter "afMsg"
    .parameter "camera"

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x2

    .line 646
    const-string v0, "CameraEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AutoFocusCallback.onAutoFocus : msg["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] focusState["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    #getter for: Lcom/sec/android/app/camera/CameraEngine;->mFocusState:I
    invoke-static {v2}, Lcom/sec/android/app/camera/CameraEngine;->access$1100(Lcom/sec/android/app/camera/CameraEngine;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraEngine;->mCurrentState:Lcom/sec/android/app/camera/AbstractCeState;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    .line 652
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->firstElement()Lcom/sec/android/app/camera/CeRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequest;->getRequest()I

    move-result v0

    if-ne v0, v6, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    #getter for: Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v0}, Lcom/sec/android/app/camera/CameraEngine;->access$500(Lcom/sec/android/app/camera/CameraEngine;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 654
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->doStopEngineSync()V

    .line 690
    :cond_0
    :goto_0
    return-void

    .line 659
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    #getter for: Lcom/sec/android/app/camera/CameraEngine;->mFocusState:I
    invoke-static {v0}, Lcom/sec/android/app/camera/CameraEngine;->access$1100(Lcom/sec/android/app/camera/CameraEngine;)I

    move-result v0

    if-ne v0, v5, :cond_6

    .line 660
    if-ne p1, v5, :cond_3

    .line 661
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    #setter for: Lcom/sec/android/app/camera/CameraEngine;->mFocusState:I
    invoke-static {v0, v3}, Lcom/sec/android/app/camera/CameraEngine;->access$1102(Lcom/sec/android/app/camera/CameraEngine;I)I

    .line 662
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShutterSound()I

    move-result v0

    if-eqz v0, :cond_2

    .line 663
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v6, v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->playCameraSound(II)V

    .line 665
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;->sendEmptyMessage(I)Z

    .line 667
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->updateFocusIndicator()V

    .line 681
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    #getter for: Lcom/sec/android/app/camera/CameraEngine;->bCaptureAfterCancelAF:Z
    invoke-static {v0}, Lcom/sec/android/app/camera/CameraEngine;->access$1200(Lcom/sec/android/app/camera/CameraEngine;)Z

    move-result v0

    if-ne v0, v5, :cond_0

    .line 682
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    #setter for: Lcom/sec/android/app/camera/CameraEngine;->bCaptureAfterCancelAF:Z
    invoke-static {v0, v4}, Lcom/sec/android/app/camera/CameraEngine;->access$1202(Lcom/sec/android/app/camera/CameraEngine;Z)Z

    .line 683
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->doCaptureAfterAF()V

    goto :goto_0

    .line 668
    :cond_3
    if-ne p1, v3, :cond_4

    .line 669
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    const/4 v1, 0x4

    #setter for: Lcom/sec/android/app/camera/CameraEngine;->mFocusState:I
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/CameraEngine;->access$1102(Lcom/sec/android/app/camera/CameraEngine;I)I

    .line 670
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 673
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    const/4 v1, 0x3

    #setter for: Lcom/sec/android/app/camera/CameraEngine;->mFocusState:I
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/CameraEngine;->access$1102(Lcom/sec/android/app/camera/CameraEngine;I)I

    .line 674
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShutterSound()I

    move-result v0

    if-eqz v0, :cond_5

    .line 675
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->playCameraSound(II)V

    .line 677
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;->sendEmptyMessage(I)Z

    .line 679
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->updateFocusIndicator()V

    goto :goto_1

    .line 686
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;->sendEmptyMessage(I)Z

    .line 688
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    #setter for: Lcom/sec/android/app/camera/CameraEngine;->bCaptureAfterCancelAF:Z
    invoke-static {v0, v4}, Lcom/sec/android/app/camera/CameraEngine;->access$1202(Lcom/sec/android/app/camera/CameraEngine;Z)Z

    goto/16 :goto_0
.end method
