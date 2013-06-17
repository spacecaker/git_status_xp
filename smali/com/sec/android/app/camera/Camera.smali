.class public Lcom/sec/android/app/camera/Camera;
.super Lcom/sec/android/app/camera/AbstractCameraActivity;
.source "Camera.java"

# interfaces
.implements Lcom/sec/android/app/camera/ActionShotView$ActionShotCaptureCancelListener;
.implements Lcom/sec/android/app/camera/AddMeView$OnAddMeCancelListener;
.implements Lcom/sec/android/app/camera/CameraEngine$OnFocusStateChangedListener;
.implements Lcom/sec/android/app/camera/FrameShotMenu$OnFrameShotMenuChangedListener;
.implements Lcom/sec/android/app/camera/MosaicShotMenu$OnMosaicShotMenuChangedListener;
.implements Lcom/sec/android/app/camera/Panoramax1View$OnPanoramaCaptureCancelListener;
.implements Lcom/sec/android/app/camera/SmileShotView$OnSmileDetectingStoppedListener;
.implements Lcom/sec/android/app/camera/StopMotionPreview$OnStopMotionPreviewEventListener;
.implements Lcom/sec/android/seccamera/SecCamera$OnActionShotEventListener;
.implements Lcom/sec/android/seccamera/SecCamera$OnAddMeEventListener;
.implements Lcom/sec/android/seccamera/SecCamera$OnBlinkDetectionEventListener;
.implements Lcom/sec/android/seccamera/SecCamera$OnCartoonShotEventListener;
.implements Lcom/sec/android/seccamera/SecCamera$OnContinuousShotEventListener;
.implements Lcom/sec/android/seccamera/SecCamera$OnObjectTrackingMsgListener;
.implements Lcom/sec/android/seccamera/SecCamera$OnPanoramaEventListener;
.implements Lcom/sec/android/seccamera/SecCamera$OnSmileShotDetectionSuccessListener;
.implements Lcom/sec/android/seccamera/SecCamera$OnStopMotionEventListener;
.implements Lcom/sec/android/seccamera/SecCamera$PreviewCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/Camera$LastContentUriCallback;,
        Lcom/sec/android/app/camera/Camera$MainHandler;
    }
.end annotation


# static fields
.field private static FOCUS_TEXT_DURATION:I

.field private static FOCUS_TEXT_TIMER_EXPIRED:I

.field private static mBackKeyDown:Z

.field private static mMaxToast:Landroid/widget/Toast;

.field private static mPause:Z

.field private static mScanToast:Landroid/widget/Toast;


# instance fields
.field private args:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end field

.field private mActionMoveCount:I

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBlinkDetectionRects:[[I

.field mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCameraBaseIndicators:Lcom/sec/android/app/camera/CameraBaseIndicators;

.field private mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

.field private mCameraIndicators:Lcom/sec/android/app/camera/CameraIndicators;

.field private mCameraSideMenu:Lcom/sec/android/app/camera/CameraSideMenu;

.field private mChkBlinkDection:Z

.field private mChkLaunchGallery:Z

.field private mCropValue:Ljava/lang/String;

.field private mFirstFrameReceived:Z

.field private mFirstFrameReceived_check:Z

.field private mFocusText:Landroid/widget/TextView;

.field private mIsDestroying:Z

.field private mLastContentUriCallback:Lcom/sec/android/app/camera/Camera$LastContentUriCallback;

.field private mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;

.field private mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

.field private mPanoramaStarted:Z

.field private mResetCameraSettingPopup:Landroid/app/AlertDialog;

.field private mReturnUri:Z

.field private mSaveUri:Landroid/net/Uri;

.field private mShutterButton:Lcom/sec/android/app/camera/ShutterButton;

.field private mSoundPool:Landroid/media/SoundPool;

.field private mSoundPoolId:[I

.field private mStreamVolume:F

.field private mTouchAutoFocusActive:Z

.field private mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 149
    const/16 v0, 0x1b58

    sput v0, Lcom/sec/android/app/camera/Camera;->FOCUS_TEXT_DURATION:I

    .line 150
    const/4 v0, 0x1

    sput v0, Lcom/sec/android/app/camera/Camera;->FOCUS_TEXT_TIMER_EXPIRED:I

    .line 158
    sput-boolean v1, Lcom/sec/android/app/camera/Camera;->mBackKeyDown:Z

    .line 159
    sput-boolean v1, Lcom/sec/android/app/camera/Camera;->mPause:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 89
    invoke-direct {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;-><init>()V

    .line 118
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    .line 120
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/CameraSideMenu;

    .line 121
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraIndicators:Lcom/sec/android/app/camera/CameraIndicators;

    .line 122
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraBaseIndicators:Lcom/sec/android/app/camera/CameraBaseIndicators;

    .line 123
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mShutterButton:Lcom/sec/android/app/camera/ShutterButton;

    .line 125
    iput-boolean v3, p0, Lcom/sec/android/app/camera/Camera;->mIsDestroying:Z

    .line 126
    iput-boolean v3, p0, Lcom/sec/android/app/camera/Camera;->mChkBlinkDection:Z

    .line 127
    iput-boolean v3, p0, Lcom/sec/android/app/camera/Camera;->mTouchAutoFocusActive:Z

    .line 128
    iput v3, p0, Lcom/sec/android/app/camera/Camera;->mActionMoveCount:I

    .line 132
    move-object v0, v2

    check-cast v0, [[I

    move-object v1, v0

    iput-object v1, p0, Lcom/sec/android/app/camera/Camera;->mBlinkDetectionRects:[[I

    .line 133
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->args:Ljava/util/ArrayList;

    .line 137
    const/4 v1, 0x7

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/sec/android/app/camera/Camera;->mSoundPoolId:[I

    .line 147
    iput-boolean v3, p0, Lcom/sec/android/app/camera/Camera;->mChkLaunchGallery:Z

    .line 152
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mResetCameraSettingPopup:Landroid/app/AlertDialog;

    .line 153
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mWindowManager:Landroid/view/IWindowManager;

    .line 171
    new-instance v1, Lcom/sec/android/app/camera/Camera$MainHandler;

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/camera/Camera$MainHandler;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/app/camera/Camera$1;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;

    .line 179
    new-instance v1, Lcom/sec/android/app/camera/Camera$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/Camera$1;-><init>(Lcom/sec/android/app/camera/Camera;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/Camera;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1998
    iput-boolean v3, p0, Lcom/sec/android/app/camera/Camera;->mPanoramaStarted:Z

    .line 2661
    iput-boolean v3, p0, Lcom/sec/android/app/camera/Camera;->mFirstFrameReceived:Z

    .line 2662
    iput-boolean v3, p0, Lcom/sec/android/app/camera/Camera;->mFirstFrameReceived_check:Z

    .line 2706
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mLastContentUriCallback:Lcom/sec/android/app/camera/Camera$LastContentUriCallback;

    .line 2708
    return-void
.end method

.method private IsGpsEnableInSettings()V
    .locals 3

    .prologue
    .line 1667
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f070021

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f07000b

    new-instance v2, Lcom/sec/android/app/camera/Camera$3;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/Camera$3;-><init>(Lcom/sec/android/app/camera/Camera;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f07000a

    new-instance v2, Lcom/sec/android/app/camera/Camera$2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/Camera$2;-><init>(Lcom/sec/android/app/camera/Camera;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1683
    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 89
    sget v0, Lcom/sec/android/app/camera/Camera;->FOCUS_TEXT_TIMER_EXPIRED:I

    return v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/camera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mReturnUri:Z

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mIsDestroying:Z

    return v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/MenuResourceData;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CameraEngine;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->dismissResetSettingPopup()V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CameraSideMenu;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/CameraSideMenu;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/app/camera/MenuBase;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/Camera;->setImmutableView(Lcom/sec/android/app/camera/MenuBase;)V

    return-void
.end method

.method static synthetic access$800(Lcom/sec/android/app/camera/Camera;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCropValue:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/camera/Camera;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mSaveUri:Landroid/net/Uri;

    return-object v0
.end method

.method private changeResolutionToPreviewSize(Z)Z
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x2

    const/16 v2, 0xa

    .line 1440
    const-string v0, "2048x1536"

    invoke-static {v0}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    if-ge v0, v3, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    if-eq v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 1445
    :cond_0
    const-string v0, "Camera"

    const-string v1, "changeResolutionToPreviewSize()-Action shot or Add me"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 1455
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraResolution(IZ)Z

    move-result v0

    return v0

    .line 1447
    :cond_1
    const-string v0, "480x320"

    invoke-static {v0}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0, v2}, Lcom/sec/android/app/camera/CameraResolution;->compare(II)I

    move-result v0

    if-ltz v0, :cond_2

    move v0, v2

    .line 1451
    goto :goto_0

    .line 1453
    :cond_2
    const/16 v0, 0xc

    goto :goto_0
.end method

.method private createCaptureBitmap([B)Landroid/graphics/Bitmap;
    .locals 3
    .parameter

    .prologue
    .line 2825
    invoke-static {}, Lcom/sec/android/app/camera/ImageManager;->getTempJpegPath()Ljava/lang/String;

    move-result-object v0

    .line 2826
    const/4 v1, 0x0

    .line 2827
    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/Camera;->saveDataToFile(Ljava/lang/String;[B)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2828
    invoke-static {v0}, Lcom/sec/android/app/camera/ImageManager;->getExifOrientation(Ljava/lang/String;)I

    move-result v1

    .line 2829
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_0
    move v0, v1

    .line 2833
    const v1, 0xc800

    invoke-static {p1, v1}, Lcom/sec/android/app/camera/Util;->makeBitmap([BI)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 2834
    invoke-static {v1, v0}, Lcom/sec/android/app/camera/Util;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2835
    return-object v0
.end method

.method private dismissResetSettingPopup()V
    .locals 1

    .prologue
    .line 2424
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mResetCameraSettingPopup:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 2425
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mResetCameraSettingPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 2426
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mResetCameraSettingPopup:Landroid/app/AlertDialog;

    .line 2428
    :cond_0
    return-void
.end method

.method private handleShutterKey()Z
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string v2, "Camera"

    .line 2430
    const-string v0, "Camera"

    const-string v0, "handleShutter"

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2432
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraEngine;->mCurrentState:Lcom/sec/android/app/camera/AbstractCeState;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v0

    if-ne v0, v5, :cond_0

    .line 2433
    const-string v0, "Camera"

    const-string v0, "handleShutter - CE_STATE_STARTING_PREVIEW"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v4

    .line 2477
    :goto_0
    return v0

    .line 2437
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->isCaptureAfterCancelAF()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2438
    const-string v0, "Camera"

    const-string v0, "returning because it is wating the message of autofocus callback."

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    .line 2441
    goto :goto_0

    .line 2444
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->isCapturing()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->isContinuousShotInProgress()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2448
    :cond_2
    const-string v0, "Camera"

    const-string v0, "returning because it is capturing.."

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    .line 2449
    goto :goto_0

    .line 2452
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    if-ne v0, v5, :cond_5

    .line 2453
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v1, 0x7f030037

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/SmileShotView;

    .line 2455
    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/SmileShotView;->setOnSmileDetectingStoppedListener(Lcom/sec/android/app/camera/SmileShotView$OnSmileDetectingStoppedListener;)V

    .line 2456
    invoke-virtual {v0}, Lcom/sec/android/app/camera/SmileShotView;->isDetecting()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2457
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->handleShutterEvent()V

    move v0, v3

    .line 2458
    goto :goto_0

    :cond_4
    move v0, v4

    .line 2460
    goto :goto_0

    .line 2462
    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_6

    .line 2463
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->handleShutterEvent()V

    move v0, v3

    .line 2464
    goto :goto_0

    .line 2465
    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_8

    .line 2466
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v1, 0x7f030027

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/Panoramax1View;

    .line 2468
    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/Panoramax1View;->setOnPanoramaCaptureCancelledListener(Lcom/sec/android/app/camera/Panoramax1View$OnPanoramaCaptureCancelListener;)V

    .line 2469
    invoke-virtual {v0}, Lcom/sec/android/app/camera/Panoramax1View;->isPanoramaCapturing()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2470
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->handleShutterEvent()V

    move v0, v3

    .line 2471
    goto/16 :goto_0

    :cond_7
    move v0, v4

    .line 2473
    goto/16 :goto_0

    :cond_8
    move v0, v4

    .line 2477
    goto/16 :goto_0
.end method

.method private handleShutterKeyReleased()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const-string v2, "Camera"

    .line 2481
    const-string v0, "Camera"

    const-string v0, "handleShutterReleased"

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2483
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->isCapturing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2484
    const-string v0, "Camera"

    const-string v0, "handleShutterReleased - returning because it is capturing.."

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    .line 2521
    :goto_0
    return v0

    .line 2490
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->isContinuousShotInProgress()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2494
    const-string v0, "Camera"

    const-string v0, "handleShutterReleased - continuous shot is not started"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    .line 2497
    goto :goto_0

    .line 2498
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 2499
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v1, 0x7f030037

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/SmileShotView;

    .line 2501
    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/SmileShotView;->setOnSmileDetectingStoppedListener(Lcom/sec/android/app/camera/SmileShotView$OnSmileDetectingStoppedListener;)V

    .line 2502
    invoke-virtual {v0}, Lcom/sec/android/app/camera/SmileShotView;->isDetecting()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2503
    invoke-virtual {v0}, Lcom/sec/android/app/camera/SmileShotView;->stopSmileShot()V

    .line 2504
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStopSmileDetection()V

    .line 2505
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->handleShutterReleaseEvent()V

    move v0, v3

    .line 2506
    goto :goto_0

    .line 2508
    :cond_2
    invoke-virtual {v0}, Lcom/sec/android/app/camera/SmileShotView;->startDetect()V

    .line 2509
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStartSmileDetection()V

    .line 2510
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStartPreview()V

    move v0, v3

    .line 2511
    goto :goto_0

    .line 2513
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 2514
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v1, 0x7f030027

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/camera/Panoramax1View;

    .line 2516
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Panoramax1View;->isPostCaptureLayoutVisible()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v3

    .line 2517
    goto/16 :goto_0

    .line 2521
    :cond_4
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method private initBlinkdetection()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 407
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/camera/Camera;->mChkBlinkDection:Z

    .line 408
    move-object v0, v2

    check-cast v0, [[I

    move-object v1, v0

    iput-object v1, p0, Lcom/sec/android/app/camera/Camera;->mBlinkDetectionRects:[[I

    .line 409
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->args:Ljava/util/ArrayList;

    .line 410
    return-void
.end method

.method private initIntentFilter()V
    .locals 5

    .prologue
    .line 331
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 334
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 335
    const-string v4, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 336
    const-string v4, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 337
    const-string v4, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 338
    const-string v4, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 339
    const-string v4, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 340
    const-string v4, "com.android.camera.NEW_PICTURE"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 341
    const-string v4, "file"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 342
    iget-object v4, p0, Lcom/sec/android/app/camera/Camera;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4, v0}, Lcom/sec/android/app/camera/Camera;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 345
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 346
    .local v1, intentFilterBattery:Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 347
    const-string v4, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 348
    const-string v4, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 349
    iget-object v4, p0, Lcom/sec/android/app/camera/Camera;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4, v1}, Lcom/sec/android/app/camera/Camera;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 351
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 352
    .local v2, intentFilterSecurity:Landroid/content/IntentFilter;
    const-string v4, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 353
    iget-object v4, p0, Lcom/sec/android/app/camera/Camera;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4, v2}, Lcom/sec/android/app/camera/Camera;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 356
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 357
    .local v3, intentFilterShutDown:Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 358
    iget-object v4, p0, Lcom/sec/android/app/camera/Camera;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4, v3}, Lcom/sec/android/app/camera/Camera;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 359
    return-void
.end method

.method private initIntentReceive()V
    .locals 3

    .prologue
    .line 394
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 396
    .local v0, myExtras:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 397
    const-string v1, "output"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcom/sec/android/app/camera/Camera;->mSaveUri:Landroid/net/Uri;

    .line 398
    const-string v1, "crop"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCropValue:Ljava/lang/String;

    .line 399
    const-string v1, "return-uri"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/camera/Camera;->mReturnUri:Z

    .line 404
    :goto_0
    return-void

    .line 402
    :cond_0
    const-string v1, "Camera"

    const-string v2, "Extra is null"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private initRemains()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 363
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->searchForInitialLastContentUri()V

    .line 366
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/CameraEngine;->setOnFocusStateChangedListener(Lcom/sec/android/app/camera/CameraEngine$OnFocusStateChangedListener;)V

    .line 367
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/CameraEngine;->setOnTimerEventListener(Lcom/sec/android/app/camera/CameraEngine$OnTimerEventListener;)V

    .line 370
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/CameraSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSideMenu;->updateBackgroundTransparency()V

    .line 372
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->initBlinkdetection()V

    .line 374
    invoke-static {}, Lcom/sec/android/app/camera/CheckMemory;->isStorageMounted()Z

    move-result v0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/Camera;->checkStorage(ZZ)V

    .line 375
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraIndicators:Lcom/sec/android/app/camera/CameraIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraIndicators;->initIndicators()V

    .line 377
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->pauseAudioPlayback()V

    .line 378
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/Camera;->setIsLaunchGallery(Z)V

    .line 379
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->updateQuickViewButtonDimmed()V

    .line 380
    return-void
.end method

.method private isTouchAutoFocusEnabled()Z
    .locals 2

    .prologue
    .line 1095
    const/4 v0, 0x0

    .line 1096
    .local v0, shootingmode:Z
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 1103
    :goto_0
    return v0

    .line 1100
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 1096
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method private onChkImageCaptureIntent()Z
    .locals 2

    .prologue
    .line 389
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 390
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private setImmutableView(Lcom/sec/android/app/camera/MenuBase;)V
    .locals 5
    .parameter "view"

    .prologue
    .line 317
    const v2, 0x7f0a00ad

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 318
    .local v1, image:Landroid/widget/ImageView;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 320
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraBaseIndicators:Lcom/sec/android/app/camera/CameraBaseIndicators;

    invoke-virtual {v2, p1}, Lcom/sec/android/app/camera/CameraBaseIndicators;->setChild(Lcom/sec/android/app/camera/MenuBase;)V

    .line 321
    if-nez p1, :cond_0

    .line 322
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v3, 0x7f030016

    iget-object v4, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/EmptyView;

    .line 324
    .local v0, emptyview:Lcom/sec/android/app/camera/EmptyView;
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraBaseIndicators:Lcom/sec/android/app/camera/CameraBaseIndicators;

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/CameraBaseIndicators;->setChild(Lcom/sec/android/app/camera/MenuBase;)V

    .line 325
    invoke-virtual {v0}, Lcom/sec/android/app/camera/EmptyView;->showMenu()V

    .line 327
    .end local v0           #emptyview:Lcom/sec/android/app/camera/EmptyView;
    :cond_0
    return-void
.end method

.method private showHelptextPopup()V
    .locals 3

    .prologue
    .line 1431
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v1, 0x7f030021

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/camera/HelptextForShootingMode;

    .line 1433
    invoke-virtual {p0}, Lcom/sec/android/app/camera/HelptextForShootingMode;->showMenu()V

    .line 1434
    return-void
.end method

.method private switchToCamcorder()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1742
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/camera/Camcorder;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1743
    const-string v1, "TurnOnScrAB"

    iget-boolean v2, p0, Lcom/sec/android/app/camera/Camera;->bTurnOnScrAB:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1751
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/MenuDimController;->restoreUserSettingValues()V

    .line 1753
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camera;->startActivity(Landroid/content/Intent;)V

    .line 1755
    iput-boolean v3, p0, Lcom/sec/android/app/camera/Camera;->bTurnOnScrAB:Z

    .line 1756
    const-string v0, "Camera"

    const-string v1, "Camera finishing"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1757
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->finish()V

    .line 1760
    invoke-virtual {p0, v3, v3}, Lcom/sec/android/app/camera/Camera;->overridePendingTransition(II)V

    .line 1761
    return-void
.end method


# virtual methods
.method public cancelShutterTimer()V
    .locals 2

    .prologue
    .line 3089
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->doCancelShutterTimer()V

    .line 3091
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/CameraSideMenu;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSideMenu;->setAnimationEnabled(Z)V

    .line 3092
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/CameraSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSideMenu;->showMenu()V

    .line 3093
    return-void
.end method

.method public changeContrastPreview(I)V
    .locals 2
    .parameter "contrast"

    .prologue
    .line 1694
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    const/16 v1, 0x18

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/camera/CameraEngine;->onCameraSettingsChanged(II)V

    .line 1696
    return-void
.end method

.method public changeEffectPreview(I)V
    .locals 3
    .parameter "effect"

    .prologue
    .line 1555
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/camera/CameraEngine;->onCameraSettingsChanged(II)V

    .line 1558
    if-eqz p1, :cond_0

    .line 1559
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    const/16 v1, 0x9

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/CameraEngine;->onCameraSettingsChanged(II)V

    .line 1561
    :cond_0
    return-void
.end method

.method public changeSaturationPreview(I)V
    .locals 2
    .parameter "saturation"

    .prologue
    .line 1703
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    const/16 v1, 0x19

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/camera/CameraEngine;->onCameraSettingsChanged(II)V

    .line 1705
    return-void
.end method

.method public changeSceneModePreview(I)V
    .locals 2
    .parameter "sceneMode"

    .prologue
    .line 1218
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/camera/CameraEngine;->onCameraSettingsChanged(II)V

    .line 1220
    return-void
.end method

.method public changeSharpnessPreview(I)V
    .locals 2
    .parameter "sharpness"

    .prologue
    .line 1712
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    const/16 v1, 0x1a

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/camera/CameraEngine;->onCameraSettingsChanged(II)V

    .line 1714
    return-void
.end method

.method public changeWhiteBalancePreview(I)V
    .locals 3
    .parameter "whiteBalance"

    .prologue
    .line 1574
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    const/16 v1, 0x9

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/camera/CameraEngine;->onCameraSettingsChanged(II)V

    .line 1577
    if-eqz p1, :cond_0

    .line 1578
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/CameraEngine;->onCameraSettingsChanged(II)V

    .line 1580
    :cond_0
    return-void
.end method

.method public checkStorage(ZZ)V
    .locals 0
    .parameter "bMediaStorage"
    .parameter "bBroadcastReceiver"

    .prologue
    .line 3208
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->checkStorage(ZZ)V

    .line 3209
    return-void
.end method

.method public checkStorageLow()V
    .locals 6

    .prologue
    .line 3193
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getAvailableStorage()J

    move-result-wide v0

    .line 3194
    .local v0, lAvailableStorage:J
    const-wide/16 v2, -0x2

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 3195
    const/4 v2, 0x2

    iput v2, p0, Lcom/sec/android/app/camera/Camera;->mStorageStatus:I

    .line 3205
    :goto_0
    return-void

    .line 3198
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getCameraQuality()I

    move-result v3

    invoke-static {v2, v3}, Lcom/sec/android/app/camera/CheckMemory;->getMaxSizeOfImage(II)J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1

    .line 3201
    const/4 v2, 0x1

    iput v2, p0, Lcom/sec/android/app/camera/Camera;->mStorageStatus:I

    goto :goto_0

    .line 3203
    :cond_1
    const/4 v2, 0x0

    iput v2, p0, Lcom/sec/android/app/camera/Camera;->mStorageStatus:I

    goto :goto_0
.end method

.method public clearContinuousPostCaptureLayout()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 475
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v2, 0x7f030011

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/ContinuousShotView;

    .line 477
    .local v0, continuousView:Lcom/sec/android/app/camera/ContinuousShotView;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/ContinuousShotView;->isPostCaptureLayoutVisible()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 478
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mShutterButton:Lcom/sec/android/app/camera/ShutterButton;

    if-eqz v1, :cond_0

    .line 479
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mShutterButton:Lcom/sec/android/app/camera/ShutterButton;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ShutterButton;->hideMenu()V

    .line 481
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getReview()I

    move-result v1

    if-eq v1, v5, :cond_1

    .line 482
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/CameraSideMenu;

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/CameraSideMenu;->setAnimationEnabled(Z)V

    .line 483
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/CameraSideMenu;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSideMenu;->restoreMenu()V

    .line 485
    :cond_1
    invoke-virtual {v0}, Lcom/sec/android/app/camera/ContinuousShotView;->resetCapture()V

    .line 486
    invoke-virtual {v0}, Lcom/sec/android/app/camera/ContinuousShotView;->showCaptureLayout()V

    .line 487
    invoke-virtual {v0}, Lcom/sec/android/app/camera/ContinuousShotView;->hidePostCaptureLayout()V

    .line 488
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/CameraSettings;->setNumberOfCsShotSaved(I)V

    .line 490
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/CameraEngine;->setContinuousShotInProgress(Z)V

    .line 492
    :cond_2
    return-void
.end method

.method public clearPostCaptureLayout()V
    .locals 1

    .prologue
    .line 495
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 500
    :goto_0
    return-void

    .line 497
    :pswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->clearContinuousPostCaptureLayout()V

    goto :goto_0

    .line 495
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public decreaseRemainCount()V
    .locals 2

    .prologue
    .line 3160
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraBaseIndicators:Lcom/sec/android/app/camera/CameraBaseIndicators;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraBaseIndicators;->getRemainCount()I

    move-result v0

    .line 3161
    .local v0, nRemainCount:I
    if-lez v0, :cond_0

    .line 3162
    add-int/lit8 v0, v0, -0x1

    .line 3164
    :cond_0
    if-gtz v0, :cond_1

    .line 3165
    const/4 v0, 0x0

    .line 3166
    const/4 v1, 0x1

    iput v1, p0, Lcom/sec/android/app/camera/Camera;->mStorageStatus:I

    .line 3167
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->mediaStorageDialog()V

    .line 3169
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraBaseIndicators:Lcom/sec/android/app/camera/CameraBaseIndicators;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/CameraBaseIndicators;->setRemainCount(I)V

    .line 3170
    return-void
.end method

.method public doTerminateContinuous()V
    .locals 1

    .prologue
    .line 470
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    if-eqz v0, :cond_0

    .line 471
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->doTerminateContinuous()V

    .line 472
    :cond_0
    return-void
.end method

.method public getChkKeyFromApp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2525
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mChkKeyFromApp:Ljava/lang/String;

    return-object v0
.end method

.method public getIsLaunchGallery()Z
    .locals 1

    .prologue
    .line 1071
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mChkLaunchGallery:Z

    return v0
.end method

.method public getPanoramaStarted()Z
    .locals 1

    .prologue
    .line 2001
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mPanoramaStarted:Z

    return v0
.end method

.method public getTouchAutoFocusActive()Z
    .locals 1

    .prologue
    .line 1090
    const/4 v0, 0x0

    return v0
.end method

.method public handleResolutionChanged(I)V
    .locals 1
    .parameter "resolution"

    .prologue
    .line 1489
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/camera/Camera;->handleResolutionChanged(IZ)V

    .line 1490
    return-void
.end method

.method public handleResolutionChanged(IZ)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1493
    const-string v0, "Camera"

    const-string v1, "handleResolutionChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1496
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v1, 0x7f03000e

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/CameraSettingsMenu;

    .line 1498
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettingsMenu;->lockResolutionChanging()V

    .line 1500
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStopPreview()V

    .line 1501
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/camera/CameraEngine;->scheduleChangeParameter(II)V

    .line 1504
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->resizeForPreviewAspectRatio()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1507
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStartPreview()V

    .line 1509
    :cond_0
    return-void
.end method

.method public handleShootingModeChanged(I)V
    .locals 7
    .parameter

    .prologue
    const/4 v4, 0x6

    const/4 v3, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1242
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleShootingModeChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1248
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStopPreview()V

    .line 1250
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v1, 0x7f03000f

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/CameraSideMenu;

    .line 1252
    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSideMenu;->setOverLappingMenu(Lcom/sec/android/app/camera/MenuBase;)V

    .line 1253
    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSideMenu;->setInflatedMenu(Lcom/sec/android/app/camera/MenuBase;)V

    .line 1255
    if-ne p1, v4, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->isMainCameraSelected()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1257
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/CameraEngine;->scheduleSwitchCamera(Z)V

    .line 1263
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v1

    invoke-virtual {v1, v6, p1}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)Z

    move-result v2

    .line 1265
    if-eqz p1, :cond_1

    .line 1266
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->initBlinkdetection()V

    .line 1270
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->getFocusState()I

    move-result v1

    if-ne v1, v6, :cond_2

    .line 1271
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->cancelAutoFocus()V

    .line 1274
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->clearFocusState()V

    .line 1275
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->updateFocusIndicator()V

    .line 1278
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    move v0, v2

    .line 1415
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1, v6, p1}, Lcom/sec/android/app/camera/CameraEngine;->scheduleChangeParameter(II)V

    .line 1419
    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->needToResizeForPreviewAspectRatio()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1420
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->resizeForPreviewAspectRatio()Z

    .line 1427
    :goto_2
    return-void

    .line 1258
    :cond_3
    if-eq p1, v4, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->isMainCameraSelected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1260
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/CameraEngine;->scheduleSwitchCamera(Z)V

    goto :goto_0

    .line 1280
    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v2, 0x7f030027

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/Panoramax1View;

    .line 1282
    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSideMenu;->setOverLappingMenu(Lcom/sec/android/app/camera/MenuBase;)V

    .line 1283
    invoke-virtual {v1, p0}, Lcom/sec/android/app/camera/Panoramax1View;->setOnPanoramaCaptureCancelledListener(Lcom/sec/android/app/camera/Panoramax1View$OnPanoramaCaptureCancelListener;)V

    .line 1284
    invoke-virtual {v1}, Lcom/sec/android/app/camera/Panoramax1View;->showMenu()V

    .line 1285
    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/Camera;->setImmutableView(Lcom/sec/android/app/camera/MenuBase;)V

    .line 1287
    invoke-direct {p0, v5}, Lcom/sec/android/app/camera/Camera;->changeResolutionToPreviewSize(Z)Z

    move-result v0

    .line 1288
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraZoomValue(I)V

    goto :goto_1

    .line 1293
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v1, 0x7f03001d

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/FrameShotMenu;

    .line 1296
    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/FrameShotMenu;->setOnFrameShotMenuChangedListener(Lcom/sec/android/app/camera/FrameShotMenu$OnFrameShotMenuChangedListener;)V

    .line 1297
    invoke-virtual {v0}, Lcom/sec/android/app/camera/FrameShotMenu;->showMenu()V

    .line 1299
    invoke-direct {p0, v5}, Lcom/sec/android/app/camera/Camera;->changeResolutionToPreviewSize(Z)Z

    move-result v0

    goto :goto_1

    .line 1303
    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v1, 0x7f030025

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/MosaicShotMenu;

    .line 1306
    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/MosaicShotMenu;->setOnMosaicShotMenuChangedListener(Lcom/sec/android/app/camera/MosaicShotMenu$OnMosaicShotMenuChangedListener;)V

    .line 1307
    invoke-virtual {v0}, Lcom/sec/android/app/camera/MosaicShotMenu;->showMenu()V

    .line 1309
    invoke-direct {p0, v5}, Lcom/sec/android/app/camera/Camera;->changeResolutionToPreviewSize(Z)Z

    move-result v0

    goto :goto_1

    .line 1313
    :pswitch_4
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v2, 0x7f030011

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/ContinuousShotView;

    .line 1315
    invoke-virtual {v1}, Lcom/sec/android/app/camera/ContinuousShotView;->showMenu()V

    .line 1316
    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/Camera;->setImmutableView(Lcom/sec/android/app/camera/MenuBase;)V

    .line 1318
    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSideMenu;->setOverLappingMenu(Lcom/sec/android/app/camera/MenuBase;)V

    .line 1319
    invoke-direct {p0, v5}, Lcom/sec/android/app/camera/Camera;->changeResolutionToPreviewSize(Z)Z

    move-result v0

    .line 1320
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraZoomValue(I)V

    goto/16 :goto_1

    .line 1325
    :pswitch_5
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v1, 0x7f030037

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/SmileShotView;

    .line 1327
    invoke-virtual {v0}, Lcom/sec/android/app/camera/SmileShotView;->showMenu()V

    .line 1328
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/Camera;->setImmutableView(Lcom/sec/android/app/camera/MenuBase;)V

    .line 1329
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraZoomValue(I)V

    move v0, v2

    .line 1332
    goto/16 :goto_1

    .line 1334
    :pswitch_6
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v2, 0x7f030038

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/StopMotionPreview;

    .line 1337
    invoke-virtual {v1}, Lcom/sec/android/app/camera/StopMotionPreview;->reset()V

    .line 1338
    invoke-virtual {v1, p0}, Lcom/sec/android/app/camera/StopMotionPreview;->setStopMotionPreviewEventListener(Lcom/sec/android/app/camera/StopMotionPreview$OnStopMotionPreviewEventListener;)V

    .line 1339
    invoke-virtual {v1}, Lcom/sec/android/app/camera/StopMotionPreview;->showMenu()V

    .line 1340
    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/Camera;->setImmutableView(Lcom/sec/android/app/camera/MenuBase;)V

    .line 1342
    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSideMenu;->setOverLappingMenu(Lcom/sec/android/app/camera/MenuBase;)V

    .line 1343
    invoke-direct {p0, v5}, Lcom/sec/android/app/camera/Camera;->changeResolutionToPreviewSize(Z)Z

    move-result v0

    .line 1344
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->showHelptextPopup()V

    goto/16 :goto_1

    .line 1348
    :pswitch_7
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const/high16 v1, 0x7f03

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/ActionShotView;

    .line 1350
    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/ActionShotView;->setActionShotCancelListener(Lcom/sec/android/app/camera/ActionShotView$ActionShotCaptureCancelListener;)V

    .line 1351
    invoke-virtual {v0}, Lcom/sec/android/app/camera/ActionShotView;->hidePostCaptureLayout()V

    .line 1352
    invoke-virtual {v0}, Lcom/sec/android/app/camera/ActionShotView;->hideCaptureLayout()V

    .line 1353
    invoke-virtual {v0}, Lcom/sec/android/app/camera/ActionShotView;->showMenu()V

    .line 1354
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/Camera;->setImmutableView(Lcom/sec/android/app/camera/MenuBase;)V

    .line 1355
    invoke-direct {p0, v5}, Lcom/sec/android/app/camera/Camera;->changeResolutionToPreviewSize(Z)Z

    move-result v0

    .line 1356
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraZoomValue(I)V

    .line 1358
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->showHelptextPopup()V

    goto/16 :goto_1

    .line 1362
    :pswitch_8
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v3, 0x7f03003e

    iget-object v4, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3, v4}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/VintageShotView;

    .line 1365
    invoke-virtual {v1}, Lcom/sec/android/app/camera/VintageShotView;->showMenu()V

    .line 1366
    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/Camera;->setImmutableView(Lcom/sec/android/app/camera/MenuBase;)V

    .line 1368
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getShootingVintageMode()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_4

    .line 1369
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/sec/android/app/camera/CameraSettings;->setShootingVintageMode(I)V

    .line 1372
    :cond_4
    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSideMenu;->setOverLappingMenu(Lcom/sec/android/app/camera/MenuBase;)V

    move v0, v2

    .line 1374
    goto/16 :goto_1

    .line 1376
    :pswitch_9
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v1, 0x7f030001

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/AddMeView;

    .line 1378
    invoke-virtual {v0}, Lcom/sec/android/app/camera/AddMeView;->reset()V

    .line 1379
    invoke-virtual {v0}, Lcom/sec/android/app/camera/AddMeView;->showMenu()V

    .line 1380
    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/AddMeView;->setOnAddMeCancelListener(Lcom/sec/android/app/camera/AddMeView$OnAddMeCancelListener;)V

    .line 1381
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/Camera;->setImmutableView(Lcom/sec/android/app/camera/MenuBase;)V

    .line 1382
    invoke-direct {p0, v5}, Lcom/sec/android/app/camera/Camera;->changeResolutionToPreviewSize(Z)Z

    move-result v0

    .line 1383
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraZoomValue(I)V

    .line 1385
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->showHelptextPopup()V

    goto/16 :goto_1

    .line 1390
    :pswitch_a
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraZoomValue(I)V

    .line 1392
    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/Camera;->setImmutableView(Lcom/sec/android/app/camera/MenuBase;)V

    move v0, v2

    .line 1393
    goto/16 :goto_1

    .line 1395
    :pswitch_b
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v1, 0x7f030010

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/CartoonShotView;

    .line 1398
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CartoonShotView;->showMenu()V

    .line 1399
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/Camera;->setImmutableView(Lcom/sec/android/app/camera/MenuBase;)V

    .line 1400
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->showHelptextPopup()V

    move v0, v2

    .line 1401
    goto/16 :goto_1

    .line 1403
    :pswitch_c
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v1, 0x7f030030

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/SelfShotView;

    .line 1405
    invoke-virtual {v0}, Lcom/sec/android/app/camera/SelfShotView;->showMenu()V

    .line 1406
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/Camera;->setImmutableView(Lcom/sec/android/app/camera/MenuBase;)V

    .line 1408
    invoke-direct {p0, v5}, Lcom/sec/android/app/camera/Camera;->changeResolutionToPreviewSize(Z)Z

    move-result v0

    goto/16 :goto_1

    .line 1425
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStartPreview()V

    goto/16 :goto_2

    .line 1278
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_4
        :pswitch_1
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_c
        :pswitch_a
        :pswitch_8
        :pswitch_9
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_b
    .end packed-switch
.end method

.method public hideFocusText()V
    .locals 0

    .prologue
    .line 3136
    return-void
.end method

.method public hideLaunchIcon()V
    .locals 1

    .prologue
    .line 3083
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraBaseIndicators:Lcom/sec/android/app/camera/CameraBaseIndicators;

    if-eqz v0, :cond_0

    .line 3084
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraBaseIndicators:Lcom/sec/android/app/camera/CameraBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraBaseIndicators;->hideLaunchIcon()V

    .line 3086
    :cond_0
    return-void
.end method

.method public hideReviewMenu()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 2988
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    if-nez v1, :cond_1

    .line 3014
    :cond_0
    :goto_0
    return-void

    .line 2990
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v2, 0x7f030028

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/PostView;

    .line 2993
    .local v0, menu:Lcom/sec/android/app/camera/PostView;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/PostView;->getVisibility()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2994
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 2996
    iget-boolean v1, v0, Lcom/sec/android/app/camera/PostView;->mPrevSideMenuVisible:Z

    if-nez v1, :cond_2

    .line 2997
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/CameraSideMenu;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSideMenu;->hideMenu()V

    .line 2998
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraBaseIndicators:Lcom/sec/android/app/camera/CameraBaseIndicators;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraBaseIndicators;->restoreMenu()V

    .line 2999
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mShutterButton:Lcom/sec/android/app/camera/ShutterButton;

    if-eqz v1, :cond_2

    .line 3000
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mShutterButton:Lcom/sec/android/app/camera/ShutterButton;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ShutterButton;->restoreMenu()V

    .line 3005
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    if-ne v1, v4, :cond_4

    .line 3006
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mShutterButton:Lcom/sec/android/app/camera/ShutterButton;

    if-eqz v1, :cond_3

    .line 3007
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mShutterButton:Lcom/sec/android/app/camera/ShutterButton;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ShutterButton;->hideMenu()V

    .line 3009
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/CameraSideMenu;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/CameraSideMenu;->setAnimationEnabled(Z)V

    .line 3010
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/CameraSideMenu;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSideMenu;->restoreMenu()V

    goto :goto_0

    .line 3011
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 3012
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->onSmileDetectingStopped()V

    goto :goto_0
.end method

.method public hideShutterButton()V
    .locals 1

    .prologue
    .line 3102
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mShutterButton:Lcom/sec/android/app/camera/ShutterButton;

    if-eqz v0, :cond_0

    .line 3103
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mShutterButton:Lcom/sec/android/app/camera/ShutterButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/ShutterButton;->hideMenu()V

    .line 3105
    :cond_0
    return-void
.end method

.method public hideSideMenu()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 3043
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/CameraSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSideMenu;->isAnimationInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3054
    :goto_0
    return-void

    .line 3046
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/CameraSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSideMenu;->getVisibility()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3047
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/CameraSideMenu;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSideMenu;->setAnimationEnabled(Z)V

    .line 3048
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/CameraSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSideMenu;->restoreMenu()V

    goto :goto_0

    .line 3050
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/CameraSideMenu;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSideMenu;->setAnimationEnabled(Z)V

    .line 3051
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/CameraSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSideMenu;->hideMenu()V

    .line 3052
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraBaseIndicators:Lcom/sec/android/app/camera/CameraBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraBaseIndicators;->restoreMenu()V

    goto :goto_0
.end method

.method public hideTrayButton()V
    .locals 1

    .prologue
    .line 3114
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mShutterButton:Lcom/sec/android/app/camera/ShutterButton;

    if-eqz v0, :cond_0

    .line 3115
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mShutterButton:Lcom/sec/android/app/camera/ShutterButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/ShutterButton;->hideTrayButton()V

    .line 3117
    :cond_0
    return-void
.end method

.method public initCameraSound()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2312
    const-string v0, "Camera"

    const-string v1, "Initialize Camera Sound"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2313
    const-string v0, "ro.csc.sales_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2315
    const-string v1, "OPS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v4, :cond_0

    .line 2316
    new-instance v0, Landroid/media/SoundPool;

    const/4 v1, 0x7

    invoke-direct {v0, v6, v1, v5}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mSoundPool:Landroid/media/SoundPool;

    .line 2324
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mSoundPoolId:[I

    if-nez v0, :cond_1

    .line 2341
    :goto_1
    return-void

    .line 2320
    :cond_0
    new-instance v0, Landroid/media/SoundPool;

    invoke-direct {v0, v6, v4, v5}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mSoundPool:Landroid/media/SoundPool;

    goto :goto_0

    .line 2326
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mSoundPoolId:[I

    aput v5, v0, v5

    .line 2327
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mSoundPoolId:[I

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f050005

    invoke-virtual {v1, v2, v3, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    aput v1, v0, v4

    .line 2328
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mSoundPoolId:[I

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f050006

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    aput v2, v0, v1

    .line 2329
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mSoundPoolId:[I

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f050007

    invoke-virtual {v1, v2, v3, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    aput v1, v0, v6

    .line 2332
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mSoundPoolId:[I

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f050004

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    aput v2, v0, v1

    .line 2336
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mSoundPoolId:[I

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f050001

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    aput v2, v0, v1

    .line 2338
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mSoundPoolId:[I

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x7f05

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    aput v2, v0, v1

    goto :goto_1
.end method

.method public isCapturing()Z
    .locals 2

    .prologue
    .line 3212
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    if-nez v0, :cond_0

    .line 3213
    const-string v0, "Camera"

    const-string v1, "isCapturing - mCameraEngine is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3214
    const/4 v0, 0x0

    .line 3216
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->isCapturing()Z

    move-result v0

    goto :goto_0
.end method

.method public isContinuousShotInProgress()Z
    .locals 2

    .prologue
    .line 3232
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    if-nez v0, :cond_0

    .line 3233
    const-string v0, "Camera"

    const-string v1, "isContinuousShotInProgress - mCameraEngine is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3234
    const/4 v0, 0x0

    .line 3236
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->isContinuousShotInProgress()Z

    move-result v0

    goto :goto_0
.end method

.method public isStartPreview()Z
    .locals 1

    .prologue
    .line 3228
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->isStartPreview()Z

    move-result v0

    return v0
.end method

.method public isSystemKeyEventRequested(I)Z
    .locals 3
    .parameter "keyCode"

    .prologue
    .line 3267
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mWindowManager:Landroid/view/IWindowManager;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Landroid/view/IWindowManager;->isSystemKeyEventRequested(ILandroid/content/ComponentName;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3273
    :goto_0
    return v1

    .line 3269
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 3270
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 3273
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isTimerCounting()Z
    .locals 2

    .prologue
    .line 3220
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    if-nez v0, :cond_0

    .line 3221
    const-string v0, "Camera"

    const-string v1, "isTimerCounting - mCameraEngine is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3222
    const/4 v0, 0x0

    .line 3224
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->isTimerCounting()Z

    move-result v0

    goto :goto_0
.end method

.method public needToResizeForPreviewAspectRatio()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1778
    .line 1780
    const v0, 0x7f0a00ab

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/PreviewFrameLayout;

    .line 1782
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/CameraResolution;->isWideResolution(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1784
    invoke-virtual {v0}, Lcom/sec/android/app/camera/PreviewFrameLayout;->getCurAspectRatio()D

    move-result-wide v0

    const-wide v2, 0x3ffaaaaaaaaaaaabL

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    move v0, v4

    .line 1795
    :goto_0
    const-string v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "needToResizeForPreviewAspectRatio : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1796
    return v0

    :cond_0
    move v0, v5

    .line 1787
    goto :goto_0

    .line 1789
    :cond_1
    invoke-virtual {v0}, Lcom/sec/android/app/camera/PreviewFrameLayout;->getCurAspectRatio()D

    move-result-wide v0

    const-wide v2, 0x3ff5555555555555L

    cmpl-double v0, v0, v2

    if-nez v0, :cond_2

    move v0, v4

    .line 1790
    goto :goto_0

    :cond_2
    move v0, v5

    .line 1792
    goto :goto_0
.end method

.method public onActionShotAcquisitionProgress(I)V
    .locals 3
    .parameter

    .prologue
    .line 2936
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActionShotAcquisitionProgress : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2938
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const/high16 v1, 0x7f03

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/camera/ActionShotView;

    .line 2941
    if-ltz p1, :cond_0

    const/16 v0, 0x64

    if-le p1, v0, :cond_1

    .line 2942
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ActionShotView;->resetAcquisitionProgress()V

    .line 2945
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ActionShotView;->hidePostCaptureLayout()V

    .line 2946
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ActionShotView;->showCaptureLayout()V

    .line 2947
    return-void

    .line 2944
    :cond_1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/ActionShotView;->setAcquisitionProgress(I)V

    goto :goto_0
.end method

.method public onActionShotCaptureCancelled()V
    .locals 3

    .prologue
    .line 3073
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->cancelSeriesActionShot()V

    .line 3075
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const/high16 v1, 0x7f03

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/camera/ActionShotView;

    .line 3078
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ActionShotView;->hidePostCaptureLayout()V

    .line 3079
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ActionShotView;->hideCaptureLayout()V

    .line 3080
    return-void
.end method

.method public onActionShotCaptured()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2567
    const-string v0, "Camera"

    const-string v1, "onActionShotCaptured"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2568
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShutterSound()I

    move-result v0

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/Camera;->playCameraSound(II)V

    .line 2569
    return-void
.end method

.method public onActionShotCreatingResultCompleted(Z)V
    .locals 3
    .parameter

    .prologue
    .line 2529
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraEngine;->mCurrentState:Lcom/sec/android/app/camera/AbstractCeState;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 2530
    const-string v0, "Camera"

    const-string v1, "onActionShotCreatingResultCompleted - CE_STATE_SHUTDOWN"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2539
    :goto_0
    return-void

    .line 2534
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const/high16 v1, 0x7f03

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/camera/ActionShotView;

    .line 2536
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ActionShotView;->hidePostCaptureLayout()V

    .line 2537
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ActionShotView;->hideCaptureLayout()V

    .line 2538
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ActionShotView;->resetAcquisitionProgress()V

    goto :goto_0
.end method

.method public onActionShotCreatingResultProgress(I)V
    .locals 3
    .parameter

    .prologue
    .line 2542
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraEngine;->mCurrentState:Lcom/sec/android/app/camera/AbstractCeState;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    .line 2543
    const-string v0, "Camera"

    const-string v1, "onActionShotCreatingResultProgress - CE_STATE_SHUTDOWN"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2555
    :cond_0
    :goto_0
    return-void

    .line 2548
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const/high16 v1, 0x7f03

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/ActionShotView;

    .line 2550
    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/ActionShotView;->setPostCaptureProgress(I)V

    .line 2552
    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    .line 2553
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camera;->setIsLaunchGallery(Z)V

    goto :goto_0
.end method

.method public onActionShotCreatingResultStarted()V
    .locals 3

    .prologue
    .line 2558
    const-string v0, "Camera"

    const-string v1, "onActionShotCreatingResultStarted"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2559
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const/high16 v1, 0x7f03

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/camera/ActionShotView;

    .line 2561
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ActionShotView;->hideCaptureLayout()V

    .line 2562
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ActionShotView;->showPostCaptureLayout()V

    .line 2563
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/ActionShotView;->setPostCaptureProgressMax(I)V

    .line 2564
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x0

    const-string v2, "Camera"

    .line 2858
    const-string v0, "Camera"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--onActivityResult--requestCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2859
    const-string v0, "Camera"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--onActivityResult--resultCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2860
    const-string v0, "Camera"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--onActivityResult--data: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2862
    packed-switch p1, :pswitch_data_0

    .line 2933
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 2864
    :pswitch_1
    if-ne p2, v4, :cond_3

    if-eqz p3, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->getLastCaptureData()Lcom/sec/android/app/camera/CaptureData;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2866
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCropValue:Ljava/lang/String;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mSaveUri:Landroid/net/Uri;

    if-eqz v0, :cond_2

    const-string v0, "specify-data"

    invoke-virtual {p3, v0, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2870
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2872
    :try_start_1
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->getLastCaptureData()Lcom/sec/android/app/camera/CaptureData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CaptureData;->getCaptureData()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 2874
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 2876
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->clearCaptureImageData()V

    .line 2877
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/Camera;->setResult(I)V

    .line 2878
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->finish()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 2882
    invoke-static {v0}, Lcom/sec/android/app/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 2891
    :cond_1
    :goto_1
    invoke-virtual {p0, p2, p3}, Lcom/sec/android/app/camera/Camera;->setResult(ILandroid/content/Intent;)V

    .line 2892
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->finish()V

    goto :goto_0

    .line 2879
    :catch_0
    move-exception v0

    move-object v0, v3

    .line 2882
    :goto_2
    invoke-static {v0}, Lcom/sec/android/app/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v1, v3

    :goto_3
    invoke-static {v1}, Lcom/sec/android/app/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v0

    .line 2884
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCropValue:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, "bitmap-data"

    invoke-virtual {p3, v0, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2886
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->getLastCaptureData()Lcom/sec/android/app/camera/CaptureData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CaptureData;->getCaptureData()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/Camera;->createCaptureBitmap([B)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2888
    const-string v1, "data"

    invoke-virtual {p3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_1

    .line 2893
    :cond_3
    if-nez p2, :cond_0

    .line 2894
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->getLastCapturedFileName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2897
    :try_start_2
    const-string v0, "Camera"

    const-string v1, "Deleting cancelled attach image file name "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2898
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->getLastCapturedFileName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 2901
    const-string v0, "Camera"

    const-string v1, "Deleting cancelled attach image uri name "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2902
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 2905
    :catch_1
    move-exception v0

    goto/16 :goto_0

    .line 2913
    :pswitch_2
    if-nez p2, :cond_0

    .line 2914
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->getLastCapturedFileName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2917
    :try_start_3
    const-string v0, "Camera"

    const-string v1, "Deleting cancelled blink detection image file name "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2918
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->getLastCapturedFileName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 2921
    const-string v0, "Camera"

    const-string v1, "Deleting cancelled blink detection image uri name "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2922
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    .line 2925
    :catch_2
    move-exception v0

    goto/16 :goto_0

    .line 2882
    :catchall_1
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto/16 :goto_3

    .line 2879
    :catch_3
    move-exception v1

    goto/16 :goto_2

    .line 2862
    :pswitch_data_0
    .packed-switch 0x7d1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onAddMeCancelled()V
    .locals 1

    .prologue
    .line 2641
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->cancelAddMe()V

    .line 2642
    return-void
.end method

.method public onAddMeCapturedFirstPerson()V
    .locals 3

    .prologue
    .line 2605
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraEngine;->mCurrentState:Lcom/sec/android/app/camera/AbstractCeState;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 2606
    const-string v0, "Camera"

    const-string v1, "onAddMeCapturedFirstPerson - CE_STATE_SHUTDOWN"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2614
    :goto_0
    return-void

    .line 2609
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v1, 0x7f030001

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/camera/AddMeView;

    .line 2612
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/AddMeView;->setIsCapturedFirstPerson(Z)V

    .line 2613
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AddMeView;->showMenu()V

    goto :goto_0
.end method

.method public onAddMeError(I)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 2576
    const-string v0, "Camera"

    const-string v1, "onAddMeError - error"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2578
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f070116

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0700d0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070030

    new-instance v2, Lcom/sec/android/app/camera/Camera$6;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/Camera$6;-><init>(Lcom/sec/android/app/camera/Camera;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 2588
    return-void
.end method

.method public onAddMeInit()V
    .locals 3

    .prologue
    .line 2591
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStopPreview()V

    .line 2593
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v1, 0x7f030001

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/AddMeView;

    .line 2595
    invoke-virtual {v0}, Lcom/sec/android/app/camera/AddMeView;->reset()V

    .line 2596
    invoke-virtual {v0}, Lcom/sec/android/app/camera/AddMeView;->showMenu()V

    .line 2597
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/Camera;->setImmutableView(Lcom/sec/android/app/camera/MenuBase;)V

    .line 2598
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraZoomValue(I)V

    .line 2601
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStartPreview()V

    .line 2602
    return-void
.end method

.method public onAddMePositionSwitched(I)V
    .locals 1
    .parameter "setLeft"

    .prologue
    .line 2572
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraEngine;->switchAddMePosition(I)V

    .line 2573
    return-void
.end method

.method public onAddMeProgressStitching(I)V
    .locals 5
    .parameter

    .prologue
    const/16 v4, 0x64

    const/4 v3, 0x1

    .line 2617
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAddMeProgressStitching - Stitch progress:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2619
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v1, 0x7f030001

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/AddMeView;

    .line 2623
    invoke-virtual {v0}, Lcom/sec/android/app/camera/AddMeView;->getIsCapturedFirstPerson()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2638
    :cond_0
    :goto_0
    return-void

    .line 2627
    :cond_1
    invoke-virtual {v0}, Lcom/sec/android/app/camera/AddMeView;->showPostCaptureLayout()V

    .line 2628
    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/AddMeView;->setPostCaptureProgressMax(I)V

    .line 2629
    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/AddMeView;->setPostCaptureProgress(I)V

    .line 2630
    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/AddMeView;->onAddMeProgressStitching(I)V

    .line 2632
    if-ne p1, v4, :cond_0

    .line 2633
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/CameraEngine;->setAddMeStichingCompleted(Z)V

    .line 2634
    invoke-virtual {v0}, Lcom/sec/android/app/camera/AddMeView;->reset()V

    .line 2635
    invoke-virtual {v0}, Lcom/sec/android/app/camera/AddMeView;->showMenu()V

    .line 2636
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/Camera;->setIsLaunchGallery(Z)V

    goto :goto_0
.end method

.method public onAntishakeChanged(I)V
    .locals 3
    .parameter "antishake"

    .prologue
    .line 1599
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sec/android/app/camera/CameraSettings;->setAntishake(I)V

    .line 1601
    const/4 v0, 0x0

    .line 1602
    .local v0, resolutionChanged:Z
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v1

    const/16 v2, 0xd

    invoke-virtual {v1, v2, p1}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)Z

    move-result v0

    .line 1604
    if-eqz v0, :cond_0

    .line 1605
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/Camera;->handleResolutionChanged(I)V

    .line 1607
    :cond_0
    return-void
.end method

.method public onBlinkDetectionEvent(I[I[I[I[I)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2144
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBlinkDetectionEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2146
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getReview()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2148
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->clearRequest()V

    .line 2151
    :cond_0
    if-nez p1, :cond_2

    .line 2152
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mChkBlinkDection:Z

    .line 2190
    :cond_1
    return-void

    .line 2154
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mChkBlinkDection:Z

    .line 2156
    const/4 v0, 0x4

    new-array v0, v0, [[I

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mBlinkDetectionRects:[[I

    .line 2157
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_3

    .line 2158
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mBlinkDetectionRects:[[I

    new-array v2, p1, [I

    aput-object v2, v1, v0

    .line 2157
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2160
    :cond_3
    const/4 v0, 0x0

    :goto_1
    if-ge v0, p1, :cond_4

    .line 2161
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mBlinkDetectionRects:[[I

    const/4 v2, 0x0

    aget-object v1, v1, v2

    aget v2, p2, v0

    aput v2, v1, v0

    .line 2160
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2162
    :cond_4
    const/4 v0, 0x0

    :goto_2
    if-ge v0, p1, :cond_5

    .line 2163
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mBlinkDetectionRects:[[I

    const/4 v2, 0x1

    aget-object v1, v1, v2

    aget v2, p3, v0

    aput v2, v1, v0

    .line 2162
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2164
    :cond_5
    const/4 v0, 0x0

    :goto_3
    if-ge v0, p1, :cond_6

    .line 2165
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mBlinkDetectionRects:[[I

    const/4 v2, 0x2

    aget-object v1, v1, v2

    aget v2, p4, v0

    aput v2, v1, v0

    .line 2164
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 2166
    :cond_6
    const/4 v0, 0x0

    :goto_4
    if-ge v0, p1, :cond_7

    .line 2167
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mBlinkDetectionRects:[[I

    const/4 v2, 0x3

    aget-object v1, v1, v2

    aget v2, p5, v0

    aput v2, v1, v0

    .line 2166
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 2169
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2170
    const/4 v1, 0x0

    :goto_5
    if-ge v1, p1, :cond_8

    .line 2171
    const-string v2, "OnBlinkDetectonRectSave Complete : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2172
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mBlinkDetectionRects:[[I

    const/4 v3, 0x0

    aget-object v2, v2, v3

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2173
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2174
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mBlinkDetectionRects:[[I

    const/4 v3, 0x1

    aget-object v2, v2, v3

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2175
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2176
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mBlinkDetectionRects:[[I

    const/4 v3, 0x2

    aget-object v2, v2, v3

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2177
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2178
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mBlinkDetectionRects:[[I

    const/4 v3, 0x3

    aget-object v2, v2, v3

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2179
    const-string v2, "Camera"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2180
    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 2170
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 2183
    :cond_8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->args:Ljava/util/ArrayList;

    .line 2184
    const/4 v0, 0x0

    :goto_6
    if-ge v0, p1, :cond_1

    .line 2185
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->args:Ljava/util/ArrayList;

    new-instance v2, Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mBlinkDetectionRects:[[I

    const/4 v4, 0x0

    aget-object v3, v3, v4

    aget v3, v3, v0

    int-to-float v3, v3

    iget-object v4, p0, Lcom/sec/android/app/camera/Camera;->mBlinkDetectionRects:[[I

    const/4 v5, 0x1

    aget-object v4, v4, v5

    aget v4, v4, v0

    int-to-float v4, v4

    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mBlinkDetectionRects:[[I

    const/4 v6, 0x2

    aget-object v5, v5, v6

    aget v5, v5, v0

    int-to-float v5, v5

    iget-object v6, p0, Lcom/sec/android/app/camera/Camera;->mBlinkDetectionRects:[[I

    const/4 v7, 0x3

    aget-object v6, v6, v7

    aget v6, v6, v0

    int-to-float v6, v6

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2184
    add-int/lit8 v0, v0, 0x1

    goto :goto_6
.end method

.method public onBlinkdetectionChanged(I)V
    .locals 1
    .parameter "blinkdetection"

    .prologue
    .line 1621
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setBlinkdetection(I)V

    .line 1622
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->initBlinkdetection()V

    .line 1623
    return-void
.end method

.method public onCameraAutocontrastChanged(I)V
    .locals 3
    .parameter "autocontrast"

    .prologue
    .line 1610
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraAutocontrast(I)V

    .line 1612
    const/4 v0, 0x0

    .line 1613
    .local v0, resolutionChanged:Z
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v1

    const/16 v2, 0xe

    invoke-virtual {v1, v2, p1}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)Z

    move-result v0

    .line 1615
    if-eqz v0, :cond_0

    .line 1616
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/Camera;->handleResolutionChanged(I)V

    .line 1618
    :cond_0
    return-void
.end method

.method public onCameraQualityChanged(I)V
    .locals 1
    .parameter "quality"

    .prologue
    .line 1626
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraQuality(I)V

    .line 1627
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 1628
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->updateRemainStorageIndicator()V

    .line 1629
    return-void
.end method

.method public onCameraResolutionChanged(I)V
    .locals 1
    .parameter "resolution"

    .prologue
    .line 1482
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraResolution(I)Z

    .line 1483
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 1484
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->updateRemainStorageIndicator()V

    .line 1485
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camera;->onZoomValueChanged(I)V

    .line 1486
    return-void
.end method

.method public onCartoonShotProgressRendering(I)V
    .locals 3
    .parameter

    .prologue
    .line 2950
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCartoonShotProgressRendering : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2952
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v1, 0x7f030010

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/CartoonShotView;

    .line 2955
    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CartoonShotView;->setRederingProgress(I)V

    .line 2956
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CartoonShotView;->showPostCaptureLayout()V

    .line 2958
    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    .line 2959
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camera;->setIsLaunchGallery(Z)V

    .line 2961
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .parameter "newConfig"

    .prologue
    const/4 v2, 0x1

    const-string v3, "Camera"

    .line 240
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 242
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 243
    const-string v0, "Camera"

    const-string v0, "!!!!!!!!!!!!!!!ORIENTATION_LANDSCAPE!!!!!!!!!!!!!!!!!!!!"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraEngine;->setLandscapeActive(Z)V

    .line 251
    :cond_0
    :goto_0
    return-void

    .line 246
    :cond_1
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v2, :cond_0

    .line 247
    const-string v0, "Camera"

    const-string v0, "!!!!!!!!!!!!!!!ORIENTATION_PORTRAIT!!!!!!!!!!!!!!!!!!!!"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraEngine;->setLandscapeActive(Z)V

    goto :goto_0
.end method

.method public onContinuousShotCapturingProgressed(II)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const-string v4, "Camera"

    .line 1906
    const-string v0, "Camera"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onContinuousShotCapturingProgressed() - curCapturedNum:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",maxImageNum:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1909
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->isContinuousShotInProgress()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1910
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraEngine;->setContinuousShotInProgress(Z)V

    .line 1912
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setNumberOfCsShotCaptured(I)V

    .line 1913
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v1, 0x7f030011

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/ContinuousShotView;

    .line 1915
    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/ContinuousShotView;->setTouchHandled(Z)V

    .line 1916
    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/ContinuousShotView;->setCaptureProgress(I)V

    .line 1917
    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/ContinuousShotView;->setProgressText(I)V

    .line 1918
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->isContinuousShotStopRequested()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1919
    const-string v1, "Camera"

    const-string v1, "capture progress not expected in continuous shot anymore"

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1921
    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/ContinuousShotView;->setPostCaptureProgressMax(I)V

    .line 1922
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getNumberOfCsShotSaved()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/ContinuousShotView;->setPostCaptureProgress(I)V

    .line 1924
    invoke-virtual {v0}, Lcom/sec/android/app/camera/ContinuousShotView;->showPostCaptureLayout()V

    .line 1925
    invoke-virtual {v0}, Lcom/sec/android/app/camera/ContinuousShotView;->hideCaptureLayout()V

    .line 1930
    :cond_1
    if-ne p1, p2, :cond_2

    .line 1931
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStopContinuous()V

    .line 1932
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/CameraEngine;->setContinuousShotShutterEventProcessing(Z)V

    .line 1935
    :cond_2
    invoke-virtual {v0}, Lcom/sec/android/app/camera/ContinuousShotView;->showMenu()V

    .line 1936
    return-void
.end method

.method public onContinuousShotCapturingStopped(I)V
    .locals 3
    .parameter

    .prologue
    .line 1971
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onContinuousShotCapturingStopped() - lastImageNum:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1973
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraEngine;->setContinuousShotStopRequested(Z)V

    .line 1975
    if-nez p1, :cond_1

    .line 1996
    :cond_0
    :goto_0
    return-void

    .line 1979
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v1, 0x7f030011

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/ContinuousShotView;

    .line 1982
    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/ContinuousShotView;->setPostCaptureProgressMax(I)V

    .line 1983
    invoke-virtual {v0}, Lcom/sec/android/app/camera/ContinuousShotView;->getPostCaptureProgress()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/ContinuousShotView;->setPostCaptureProgress(I)V

    .line 1985
    invoke-virtual {v0}, Lcom/sec/android/app/camera/ContinuousShotView;->showPostCaptureLayout()V

    .line 1986
    invoke-virtual {v0}, Lcom/sec/android/app/camera/ContinuousShotView;->hideCaptureLayout()V

    .line 1988
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/CameraSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSideMenu;->getVisibility()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1989
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/CameraSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSideMenu;->hideMenu()V

    .line 1990
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraBaseIndicators:Lcom/sec/android/app/camera/CameraBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraBaseIndicators;->restoreMenu()V

    goto :goto_0

    .line 1992
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mShutterButton:Lcom/sec/android/app/camera/ShutterButton;

    if-eqz v0, :cond_0

    .line 1993
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mShutterButton:Lcom/sec/android/app/camera/ShutterButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/ShutterButton;->hideMenu()V

    goto :goto_0
.end method

.method public onContinuousShotSavingCompleted()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const-string v4, "Camera"

    .line 1939
    const-string v0, "Camera"

    const-string v0, "onContinuousShotEncodingFromSECCoreCompleted"

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1941
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mIsDestroying:Z

    if-eqz v0, :cond_1

    .line 1967
    :cond_0
    :goto_0
    return-void

    .line 1944
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v1, 0x7f030011

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/ContinuousShotView;

    .line 1946
    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/ContinuousShotView;->setTouchHandled(Z)V

    .line 1948
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getReview()I

    move-result v0

    if-eqz v0, :cond_2

    .line 1949
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->waitForCurrentPictureSaving()V

    .line 1952
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getReview()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 1953
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getNumberOfCsShotCaptured()I

    move-result v0

    if-ne v0, v3, :cond_3

    .line 1954
    const-string v0, "Camera"

    const-string v0, "ContinuousShot Deley"

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1955
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraEngine;->scheduleWait(I)V

    .line 1957
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setNumberOfCsShotCaptured(I)V

    .line 1959
    const-string v0, "reviewon"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/Camera;->onLaunchGallery(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 1960
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getReview()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 1961
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->doStopPreviewSync()V

    .line 1962
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->scheduleShowReviewScreen()V

    .line 1963
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    const/16 v1, 0x9c4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraEngine;->scheduleWait(I)V

    .line 1964
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->scheduleHideReviewScreen()V

    .line 1965
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStartPreview()V

    goto :goto_0
.end method

.method public onContrastChanged(I)V
    .locals 1
    .parameter "contrast"

    .prologue
    .line 1690
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraContrast(I)V

    .line 1691
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 254
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onCreate(Landroid/os/Bundle;)V

    .line 256
    const-string v1, "Camera"

    const-string v2, "onCreate"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->onChkImageCaptureIntent()Z

    move-result v1

    if-nez v1, :cond_1

    sget v1, Lcom/sec/android/app/camera/Camera;->mSelectedMode:I

    if-ne v1, v3, :cond_1

    .line 260
    const v1, 0x7f030003

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/Camera;->setContentView(I)V

    .line 264
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->switchToCamcorder()V

    .line 265
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->stopInactivityTimer()V

    .line 266
    iput-object v4, p0, Lcom/sec/android/app/camera/Camera;->mInactivityHandler:Landroid/os/Handler;

    .line 314
    :cond_0
    :goto_0
    return-void

    .line 270
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 271
    .local v0, win:Landroid/view/Window;
    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 273
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->clear()V

    .line 274
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/MenuDimController;->clear()V

    .line 276
    const v1, 0x7f030023

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/Camera;->setContentView(I)V

    .line 277
    const v1, 0x7f0a00aa

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    .line 278
    const v1, 0x7f0a00ae

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/app/camera/Camera;->mFocusText:Landroid/widget/TextView;

    .line 279
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mFocusText:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 280
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->showFocusText()V

    .line 282
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CameraSettings;->setMode(I)V

    .line 283
    new-instance v1, Lcom/sec/android/app/camera/MenuResourceData;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/MenuResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    .line 285
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v2, 0x7f03000a

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/CameraBaseIndicators;

    iput-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraBaseIndicators:Lcom/sec/android/app/camera/CameraBaseIndicators;

    .line 287
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v2, 0x7f03000b

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/CameraIndicators;

    iput-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraIndicators:Lcom/sec/android/app/camera/CameraIndicators;

    .line 289
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v2, 0x7f03000f

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/CameraSideMenu;

    iput-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/CameraSideMenu;

    .line 291
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v2, 0x7f030034

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/ShutterButton;

    iput-object v1, p0, Lcom/sec/android/app/camera/Camera;->mShutterButton:Lcom/sec/android/app/camera/ShutterButton;

    .line 294
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/CameraSideMenu;

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraIndicators:Lcom/sec/android/app/camera/CameraIndicators;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CameraSideMenu;->setChild(Lcom/sec/android/app/camera/MenuBase;)V

    .line 295
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraIndicators:Lcom/sec/android/app/camera/CameraIndicators;

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraBaseIndicators:Lcom/sec/android/app/camera/CameraBaseIndicators;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CameraIndicators;->setChild(Lcom/sec/android/app/camera/MenuBase;)V

    .line 296
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/CameraSideMenu;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSideMenu;->showMenu()V

    .line 297
    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/Camera;->setImmutableView(Lcom/sec/android/app/camera/MenuBase;)V

    .line 299
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->resizeForPreviewAspectRatio()Z

    .line 301
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 303
    new-instance v1, Lcom/sec/android/app/camera/CameraEngine;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/CameraEngine;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    .line 305
    const-string v1, "window"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/Camera;->mWindowManager:Landroid/view/IWindowManager;

    .line 308
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->initializeCamera()V

    .line 310
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mAudioManager:Landroid/media/AudioManager;

    if-nez v1, :cond_0

    .line 311
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/Camera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/sec/android/app/camera/Camera;->mAudioManager:Landroid/media/AudioManager;

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 652
    const-string v1, "Camera"

    const-string v3, "onDestroy"

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    iput-boolean v4, p0, Lcom/sec/android/app/camera/Camera;->mIsDestroying:Z

    .line 656
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/CameraSettings;->setMainCameraSelected(Z)V

    .line 658
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/MenuDimController;->restoreUserSettingValues()V

    .line 660
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    if-eqz v1, :cond_0

    .line 661
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/MenuResourceData;->onDestroy()V

    .line 662
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    .line 665
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    if-eqz v1, :cond_1

    .line 666
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->waitForCurrentPictureSaving()V

    .line 667
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->clearCaptureImageData()V

    .line 668
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->clearErrorMessageHandler()V

    .line 669
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->clearSearchingHandler()V

    .line 671
    :cond_1
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    .line 673
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    .line 674
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/CameraSideMenu;

    .line 675
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraIndicators:Lcom/sec/android/app/camera/CameraIndicators;

    .line 677
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraBaseIndicators:Lcom/sec/android/app/camera/CameraBaseIndicators;

    if-eqz v1, :cond_2

    .line 678
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraBaseIndicators:Lcom/sec/android/app/camera/CameraBaseIndicators;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraBaseIndicators;->onDestroy()V

    .line 679
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraBaseIndicators:Lcom/sec/android/app/camera/CameraBaseIndicators;

    .line 681
    :cond_2
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mShutterButton:Lcom/sec/android/app/camera/ShutterButton;

    .line 682
    move-object v0, v2

    check-cast v0, [[I

    move-object v1, v0

    iput-object v1, p0, Lcom/sec/android/app/camera/Camera;->mBlinkDetectionRects:[[I

    .line 683
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->args:Ljava/util/ArrayList;

    .line 684
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mSoundPoolId:[I

    .line 685
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mSaveUri:Landroid/net/Uri;

    .line 686
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCropValue:Ljava/lang/String;

    .line 687
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mFocusText:Landroid/widget/TextView;

    .line 688
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;

    .line 689
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 690
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mInactivityHandler:Landroid/os/Handler;

    .line 692
    invoke-super {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onDestroy()V

    .line 693
    return-void
.end method

.method public onEffectChanged(I)V
    .locals 2
    .parameter "effect"

    .prologue
    .line 1546
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraEffect(I)V

    .line 1547
    if-eqz p1, :cond_0

    .line 1548
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraWB(I)V

    .line 1551
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 1552
    return-void
.end method

.method public onExposureValueChanged(I)V
    .locals 1
    .parameter "exposureValue"

    .prologue
    .line 1190
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraExposureValue(I)V

    .line 1191
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->invalidatePreview()V

    .line 1192
    return-void
.end method

.method public onExposuremeterChanged(I)V
    .locals 1
    .parameter "exposuremeter"

    .prologue
    .line 1589
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setExposuremeter(I)V

    .line 1591
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 1592
    return-void
.end method

.method public onFlashModeChanged(I)V
    .locals 1
    .parameter "flashMode"

    .prologue
    .line 1195
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFlashMode(I)V

    .line 1197
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 1198
    return-void
.end method

.method public onFocusModeChanged(I)V
    .locals 1
    .parameter "focusMode"

    .prologue
    .line 1460
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setFocusMode(I)V

    .line 1464
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 1473
    return-void
.end method

.method public onFocusStateChanged(I)V
    .locals 3
    .parameter

    .prologue
    .line 1841
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFocusStateChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1843
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->isTouchAutoFocusEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1844
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->getTouchFocusPositioned()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getTouchAutoFocusActive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1846
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraBaseIndicators:Lcom/sec/android/app/camera/CameraBaseIndicators;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraBaseIndicators;->setFocusIndicator(I)V

    .line 1852
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_4

    .line 1876
    :cond_2
    :goto_1
    return-void

    .line 1849
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraBaseIndicators:Lcom/sec/android/app/camera/CameraBaseIndicators;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraBaseIndicators;->setFocusIndicator(I)V

    goto :goto_0

    .line 1860
    :cond_4
    if-nez p1, :cond_6

    .line 1861
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getObjecttracking()I

    move-result v0

    if-nez v0, :cond_6

    .line 1862
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->isTouchAutoFocusing()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1863
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->forSetOrgFocus()V

    .line 1864
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->stopTouchAutoFocus()V

    .line 1867
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraBaseIndicators:Lcom/sec/android/app/camera/CameraBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraBaseIndicators;->showFocusIndicator()V

    .line 1869
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraBaseIndicators:Lcom/sec/android/app/camera/CameraBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraBaseIndicators;->hideTouchFocusIndicator()V

    .line 1870
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camera;->setTouchAutoFocusActive(Z)V

    .line 1875
    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->invalidatePreview()V

    goto :goto_1
.end method

.method public onFrameShotMenuChanged(I)V
    .locals 5
    .parameter

    .prologue
    .line 2121
    const-string v0, "Camera"

    const-string v1, "onFrameShotMenuChanged(%d)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2123
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v1, 0x7f03001c

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/FrameCaptureMenu;

    .line 2125
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/Camera;->setImmutableView(Lcom/sec/android/app/camera/MenuBase;)V

    .line 2127
    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/FrameCaptureMenu;->setImage(I)V

    .line 2128
    invoke-virtual {v0}, Lcom/sec/android/app/camera/FrameCaptureMenu;->showMenu()V

    .line 2129
    return-void
.end method

.method public onGpsChanged(I)V
    .locals 1
    .parameter "gps"

    .prologue
    .line 1659
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->isProviderEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1660
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->IsGpsEnableInSettings()V

    .line 1664
    :goto_0
    return-void

    .line 1662
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setGps(I)V

    goto :goto_0
.end method

.method public onGuidelineChanged(I)V
    .locals 1
    .parameter "guideline"

    .prologue
    .line 1632
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setGuideline(I)V

    .line 1633
    return-void
.end method

.method public onISOChanged(I)V
    .locals 1
    .parameter "iso"

    .prologue
    .line 1583
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setISO(I)V

    .line 1585
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 1586
    return-void
.end method

.method protected onImageStoringCompleted()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 2226
    const-string v0, "Camera"

    const-string v1, "onImageStoringCompleted"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2228
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mIsDestroying:Z

    if-eqz v0, :cond_1

    .line 2298
    :cond_0
    :goto_0
    return-void

    .line 2231
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->decreaseRemainCount()V

    .line 2232
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->checkStorageLow()V

    .line 2233
    iget v0, p0, Lcom/sec/android/app/camera/Camera;->mStorageStatus:I

    if-ne v0, v2, :cond_2

    .line 2234
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->updateRemainStorageIndicator()V

    .line 2236
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->updateQuickViewButtonDimmed()V

    .line 2238
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    if-ne v0, v2, :cond_4

    .line 2239
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getNumberOfCsShotSaved()I

    move-result v0

    .line 2240
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getNumberOfCsShotCaptured()I

    move-result v1

    .line 2241
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/CameraSettings;->setNumberOfCsShotSaved(I)V

    .line 2243
    if-lt v0, v1, :cond_3

    .line 2244
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->clearContinuousPostCaptureLayout()V

    goto :goto_0

    .line 2246
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v1, 0x7f030011

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/camera/ContinuousShotView;

    .line 2248
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ContinuousShotView;->getPostCaptureProgress()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/ContinuousShotView;->setPostCaptureProgress(I)V

    goto :goto_0

    .line 2252
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_7

    .line 2253
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v1, 0x7f030038

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/StopMotionPreview;

    .line 2256
    invoke-virtual {v0}, Lcom/sec/android/app/camera/StopMotionPreview;->hideStopMotionProgressLayout()V

    .line 2257
    invoke-virtual {v0}, Lcom/sec/android/app/camera/StopMotionPreview;->reset()V

    .line 2278
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mShutterButton:Lcom/sec/android/app/camera/ShutterButton;

    if-eqz v0, :cond_6

    .line 2279
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mShutterButton:Lcom/sec/android/app/camera/ShutterButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/ShutterButton;->setSutterButtonSoundOff()V

    .line 2282
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mChkKeyFromApp:Ljava/lang/String;

    if-nez v0, :cond_c

    .line 2283
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mChkBlinkDection:Z

    if-eqz v0, :cond_b

    .line 2284
    const-string v0, "blinkdetection"

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->args:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/Camera;->onLaunchGallery(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 2258
    :cond_7
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    if-ne v0, v3, :cond_8

    .line 2259
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v1, 0x7f030027

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/Panoramax1View;

    .line 2261
    invoke-virtual {v0}, Lcom/sec/android/app/camera/Panoramax1View;->hidePostCaptureLayout()V

    .line 2262
    invoke-virtual {v0}, Lcom/sec/android/app/camera/Panoramax1View;->reset()V

    goto :goto_1

    .line 2263
    :cond_8
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_9

    .line 2264
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v1, 0x7f030010

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/CartoonShotView;

    .line 2267
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CartoonShotView;->hidePostCaptureLayout()V

    goto :goto_1

    .line 2268
    :cond_9
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    .line 2269
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mShutterButton:Lcom/sec/android/app/camera/ShutterButton;

    if-eqz v0, :cond_a

    .line 2270
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mShutterButton:Lcom/sec/android/app/camera/ShutterButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/ShutterButton;->setButtonUnlocked()V

    .line 2273
    :cond_a
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getReview()I

    move-result v0

    if-eq v0, v2, :cond_5

    .line 2274
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->onSmileDetectingStopped()V

    goto :goto_1

    .line 2286
    :cond_b
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getReview()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 2287
    const-string v0, "reviewon"

    invoke-virtual {p0, v0, v4}, Lcom/sec/android/app/camera/Camera;->onLaunchGallery(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 2291
    :cond_c
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mChkBlinkDection:Z

    if-eqz v0, :cond_d

    .line 2292
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mChkKeyFromApp:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->args:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/Camera;->onLaunchGallery(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 2294
    :cond_d
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mChkKeyFromApp:Ljava/lang/String;

    invoke-virtual {p0, v0, v4}, Lcom/sec/android/app/camera/Camera;->onLaunchGallery(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto/16 :goto_0
.end method

.method public onInflatedMenuHidden()V
    .locals 2

    .prologue
    .line 3139
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/CameraSideMenu;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSideMenu;->setInflatedMenu(Lcom/sec/android/app/camera/MenuBase;)V

    .line 3140
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/16 v4, 0x18

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v1, "Camera"

    .line 696
    const-string v0, "Camera"

    const-string v0, "onDown()"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/camera/MenuBase;->onKeyDown(ILandroid/view/KeyEvent;)Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    .line 838
    :goto_0
    return v0

    .line 702
    :catch_0
    move-exception v0

    .line 706
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getLock()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v3

    .line 707
    goto :goto_0

    .line 712
    :cond_1
    sparse-switch p1, :sswitch_data_0

    .line 838
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 714
    :sswitch_0
    sput-boolean v3, Lcom/sec/android/app/camera/Camera;->mBackKeyDown:Z

    :sswitch_1
    move v0, v3

    .line 718
    goto :goto_0

    .line 720
    :sswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->scheduleAutoFocus()V

    goto :goto_1

    .line 726
    :sswitch_3
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mFirstFrameReceived:Z

    if-nez v0, :cond_2

    .line 727
    const-string v0, "Camera"

    const-string v0, "returning because preview first frame is not received yet."

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    .line 730
    goto :goto_0

    .line 733
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->isCaptureEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v3

    .line 734
    goto :goto_0

    .line 736
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getIsLaunchGallery()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 737
    const-string v0, "Camera"

    const-string v0, "returning because it is launch gallery"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    .line 738
    goto :goto_0

    .line 740
    :cond_4
    iget v0, p0, Lcom/sec/android/app/camera/Camera;->mStorageStatus:I

    if-eqz v0, :cond_5

    .line 741
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/Camera;->showDlg(I)V

    move v0, v3

    .line 742
    goto :goto_0

    .line 745
    :cond_5
    if-eqz p2, :cond_6

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-lez v0, :cond_6

    move v0, v3

    .line 746
    goto :goto_0

    .line 747
    :cond_6
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->handleShutterKey()Z

    move-result v0

    if-nez v0, :cond_9

    .line 748
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mShutterButton:Lcom/sec/android/app/camera/ShutterButton;

    if-eqz v0, :cond_7

    .line 749
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mShutterButton:Lcom/sec/android/app/camera/ShutterButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/ShutterButton;->setSutterButtonSoundOff()V

    .line 755
    :cond_7
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getTouchAutoFocusActive()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getFocusMode()I

    move-result v0

    if-eqz v0, :cond_8

    .line 760
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraEngine;->scheduleWait(I)V

    .line 762
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->scheduleAutoFocus()V

    .line 765
    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->handleShutterEvent()V

    :cond_9
    move v0, v3

    .line 767
    goto/16 :goto_0

    .line 773
    :sswitch_4
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->isCapturing()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->isContinuousShotInProgress()Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_a
    move v0, v3

    .line 777
    goto/16 :goto_0

    .line 779
    :cond_b
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v0

    if-nez v0, :cond_e

    .line 781
    sget-object v0, Lcom/sec/android/app/camera/Camera;->mMaxToast:Landroid/widget/Toast;

    if-nez v0, :cond_c

    .line 782
    const v0, 0x7f070117

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/camera/Camera;->mMaxToast:Landroid/widget/Toast;

    .line 787
    :cond_c
    sget-object v0, Lcom/sec/android/app/camera/Camera;->mMaxToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->getDuration()I

    move-result v0

    if-nez v0, :cond_d

    .line 788
    sget-object v0, Lcom/sec/android/app/camera/Camera;->mMaxToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_d
    move v0, v3

    .line 790
    goto/16 :goto_0

    .line 793
    :cond_e
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v1, 0x7f030041

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/ZoomMenu;

    .line 795
    invoke-virtual {v0}, Lcom/sec/android/app/camera/ZoomMenu;->updateSlider()V

    .line 796
    invoke-virtual {v0}, Lcom/sec/android/app/camera/ZoomMenu;->updateSliderMaxValue()V

    .line 797
    invoke-virtual {v0}, Lcom/sec/android/app/camera/ZoomMenu;->getVisibility()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 799
    if-eq p1, v4, :cond_f

    const/16 v1, 0x15

    if-ne p1, v1, :cond_11

    .line 801
    :cond_f
    invoke-virtual {v0}, Lcom/sec/android/app/camera/ZoomMenu;->zoomOut()V

    .line 817
    :cond_10
    :goto_2
    invoke-virtual {v0}, Lcom/sec/android/app/camera/ZoomMenu;->startZoomMenuTimer()V

    .line 818
    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/ZoomMenu;->setOnZoomValueChangedListener(Lcom/sec/android/app/camera/ZoomMenu$OnZoomValueChangedListener;)V

    move v0, v3

    .line 820
    goto/16 :goto_0

    .line 803
    :cond_11
    invoke-virtual {v0}, Lcom/sec/android/app/camera/ZoomMenu;->zoomIn()V

    goto :goto_2

    .line 813
    :cond_12
    if-eq p1, v4, :cond_13

    const/16 v1, 0x19

    if-ne p1, v1, :cond_10

    .line 815
    :cond_13
    invoke-virtual {v0}, Lcom/sec/android/app/camera/ZoomMenu;->showMenu()V

    goto :goto_2

    .line 823
    :sswitch_5
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v1, 0x7f030018

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/camera/ExposureValueMenu;

    .line 825
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ExposureValueMenu;->getVisibility()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 826
    const/16 v0, 0x13

    if-ne p1, v0, :cond_15

    .line 827
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ExposureValueMenu;->setPlus()V

    :cond_14
    :goto_3
    move v0, v3

    .line 832
    goto/16 :goto_0

    .line 829
    :cond_15
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ExposureValueMenu;->setMinus()V

    goto :goto_3

    .line 712
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x13 -> :sswitch_5
        0x14 -> :sswitch_5
        0x15 -> :sswitch_4
        0x16 -> :sswitch_4
        0x17 -> :sswitch_3
        0x18 -> :sswitch_4
        0x19 -> :sswitch_4
        0x1a -> :sswitch_1
        0x1b -> :sswitch_3
        0x42 -> :sswitch_3
        0x43 -> :sswitch_1
        0x50 -> :sswitch_2
        0x52 -> :sswitch_1
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string v5, "Camera"

    .line 842
    const-string v0, "Camera"

    const-string v0, "onUp()"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v1, 0x7f030037

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/SmileShotView;

    .line 847
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {v1, p1, p2}, Lcom/sec/android/app/camera/MenuBase;->onKeyUp(ILandroid/view/KeyEvent;)Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    move v0, v3

    .line 983
    :goto_0
    return v0

    .line 850
    :catch_0
    move-exception v1

    .line 854
    :cond_0
    iget-boolean v1, p0, Lcom/sec/android/app/camera/Camera;->mIsDestroying:Z

    if-eqz v1, :cond_1

    move v0, v3

    .line 855
    goto :goto_0

    .line 857
    :cond_1
    const/16 v1, 0x1a

    if-ne p1, v1, :cond_4

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v1

    const/16 v2, 0x20

    if-eq v1, v2, :cond_4

    .line 859
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getLock()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 860
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setLock(Z)V

    .line 861
    invoke-virtual {p0, v6, v4}, Lcom/sec/android/app/camera/Camera;->requestSystemKeyEvent(IZ)Z

    :cond_2
    move v0, v3

    .line 869
    goto :goto_0

    .line 863
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setLock(Z)V

    .line 864
    invoke-virtual {p0, v6, v3}, Lcom/sec/android/app/camera/Camera;->requestSystemKeyEvent(IZ)Z

    .line 865
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->isCaptureEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 866
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    goto :goto_1

    .line 872
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getLock()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 874
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->getFocusState()I

    move-result v0

    if-eqz v0, :cond_5

    .line 875
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->cancelAutoFocus()V

    .line 876
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->clearFocusState()V

    .line 877
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->updateFocusIndicator()V

    :cond_5
    move v0, v3

    .line 880
    goto :goto_0

    .line 885
    :cond_6
    sparse-switch p1, :sswitch_data_0

    .line 983
    :cond_7
    :goto_2
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 887
    :sswitch_0
    const-string v1, "Camera"

    const-string v1, "User want to go out camera"

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->isStartingPreview()Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->isCapturing()Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/CameraEngine;->isCurrentState(I)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 900
    :cond_8
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->isTimerCounting()Z

    move-result v1

    if-nez v1, :cond_9

    .line 904
    const-string v0, "Camera"

    const-string v0, "Ignoring it because preview is being started!"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    .line 907
    goto/16 :goto_0

    .line 911
    :cond_9
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->isContinuousShotInProgress()Z

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v1

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 914
    :cond_a
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->isTimerCounting()Z

    move-result v1

    if-nez v1, :cond_b

    .line 915
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStopContinuous()V

    .line 916
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraEngine;->setContinuousShotShutterEventProcessing(Z)V

    move v0, v3

    .line 918
    goto/16 :goto_0

    .line 927
    :cond_b
    invoke-virtual {v0}, Lcom/sec/android/app/camera/SmileShotView;->isDetecting()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 928
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->cancelAutoFocus()V

    .line 929
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->clearFocusState()V

    .line 932
    :cond_c
    sget-boolean v0, Lcom/sec/android/app/camera/Camera;->mBackKeyDown:Z

    if-eqz v0, :cond_d

    .line 933
    sput-boolean v4, Lcom/sec/android/app/camera/Camera;->mBackKeyDown:Z

    .line 938
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    move v0, v3

    .line 939
    goto/16 :goto_0

    :cond_d
    move v0, v3

    .line 935
    goto/16 :goto_0

    :sswitch_1
    move v0, v3

    .line 942
    goto/16 :goto_0

    .line 947
    :sswitch_2
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mFirstFrameReceived:Z

    if-nez v0, :cond_e

    .line 948
    const-string v0, "Camera"

    const-string v0, "returning because preview first frame is not received yet."

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    .line 951
    goto/16 :goto_0

    .line 954
    :cond_e
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->isCaptureEnabled()Z

    move-result v0

    if-nez v0, :cond_f

    move v0, v3

    .line 955
    goto/16 :goto_0

    .line 957
    :cond_f
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getIsLaunchGallery()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 958
    const-string v0, "Camera"

    const-string v0, "returning because it is launch gallery"

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    .line 959
    goto/16 :goto_0

    .line 961
    :cond_10
    iget v0, p0, Lcom/sec/android/app/camera/Camera;->mStorageStatus:I

    if-eqz v0, :cond_11

    .line 962
    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/Camera;->showDlg(I)V

    move v0, v3

    .line 963
    goto/16 :goto_0

    .line 965
    :cond_11
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->handleShutterKeyReleased()Z

    move-result v0

    if-nez v0, :cond_7

    .line 966
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mShutterButton:Lcom/sec/android/app/camera/ShutterButton;

    if-eqz v0, :cond_12

    .line 967
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mShutterButton:Lcom/sec/android/app/camera/ShutterButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/ShutterButton;->setSutterButtonSoundOff()V

    .line 969
    :cond_12
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    if-ne v0, v3, :cond_13

    .line 970
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraEngine;->scheduleWait(I)V

    .line 972
    :cond_13
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->handleShutterReleaseEvent()V

    goto/16 :goto_2

    :sswitch_3
    move v0, v3

    .line 981
    goto/16 :goto_0

    .line 885
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x13 -> :sswitch_3
        0x14 -> :sswitch_3
        0x15 -> :sswitch_3
        0x16 -> :sswitch_3
        0x17 -> :sswitch_2
        0x18 -> :sswitch_3
        0x19 -> :sswitch_3
        0x1b -> :sswitch_2
        0x42 -> :sswitch_2
        0x43 -> :sswitch_1
        0x52 -> :sswitch_1
    .end sparse-switch
.end method

.method public onLaunchGallery(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/RectF;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2685
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLaunchGalleryFromCamera: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2687
    if-nez p1, :cond_0

    .line 2697
    :goto_0
    return-void

    .line 2690
    :cond_0
    new-instance v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;

    invoke-direct {v0, p0, p1, p2}, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;-><init>(Lcom/sec/android/app/camera/Camera;Ljava/lang/String;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mLastContentUriCallback:Lcom/sec/android/app/camera/Camera$LastContentUriCallback;

    .line 2691
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2692
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mLastContentUriCallback:Lcom/sec/android/app/camera/Camera$LastContentUriCallback;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->onCompleted()V

    .line 2693
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mLastContentUriCallback:Lcom/sec/android/app/camera/Camera$LastContentUriCallback;

    goto :goto_0

    .line 2695
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->searchForLastContentUri()V

    goto :goto_0
.end method

.method public onModechanged()V
    .locals 3

    .prologue
    const-string v2, "Camera"

    .line 1717
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/CameraSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSideMenu;->resetPressedButtons()V

    .line 1719
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraEngine;->mCurrentState:Lcom/sec/android/app/camera/AbstractCeState;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 1720
    const-string v0, "Camera"

    const-string v0, "changeMode failed - engine not started"

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1739
    :goto_0
    return-void

    .line 1724
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->isCapturing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1727
    :cond_1
    const-string v0, "Camera"

    const-string v0, "changeMode failed - image capturing"

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1731
    :cond_2
    const-string v0, "Camera"

    const-string v0, "changeMode Started"

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1734
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->doStopPreviewSync()V

    .line 1735
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->doStopEngineSync()V

    .line 1737
    const/4 v0, 0x1

    sput v0, Lcom/sec/android/app/camera/Camera;->mSelectedMode:I

    .line 1738
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->switchToCamcorder()V

    goto :goto_0
.end method

.method public onMosaicShotMenuChanged(I)V
    .locals 5
    .parameter

    .prologue
    .line 2132
    const-string v0, "Camera"

    const-string v1, "onMosaicShotMenuChanged(%d)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2134
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v1, 0x7f030024

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/MosaicCaptureMenu;

    .line 2136
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/Camera;->setImmutableView(Lcom/sec/android/app/camera/MenuBase;)V

    .line 2138
    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/MosaicCaptureMenu;->setImage(I)V

    .line 2139
    invoke-virtual {v0}, Lcom/sec/android/app/camera/MosaicCaptureMenu;->showMenu()V

    .line 2140
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 383
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 385
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/Camera;->setIntent(Landroid/content/Intent;)V

    .line 386
    return-void
.end method

.method public onObjectTrackingStatus(I)V
    .locals 4
    .parameter

    .prologue
    const-string v3, "]"

    const-string v2, "Camera"

    .line 3023
    const-string v0, "Camera"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onObjectTrackingStatus - msg["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3024
    packed-switch p1, :pswitch_data_0

    .line 3036
    const-string v0, "Camera"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onObjectTrackingStatus - undefined msg["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3040
    :pswitch_0
    return-void

    .line 3024
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onObjecttrackingChanged(I)V
    .locals 1
    .parameter "objecttracking"

    .prologue
    .line 1595
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setObjecttracking(I)V

    .line 1596
    return-void
.end method

.method public onPanoramaCaptureCancelled()V
    .locals 1

    .prologue
    .line 2116
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->cancelCaptureForPanorama()V

    .line 2117
    return-void
.end method

.method public onPanoramaCaptured()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2105
    const-string v0, "Camera"

    const-string v1, "onPanoramaCaptured"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2106
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v1, 0x7f030027

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/Panoramax1View;

    .line 2108
    invoke-virtual {v0}, Lcom/sec/android/app/camera/Panoramax1View;->setCaptureProgressIncreased()V

    .line 2110
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShutterSound()I

    move-result v1

    invoke-virtual {p0, v1, v3}, Lcom/sec/android/app/camera/Camera;->playCameraSound(II)V

    .line 2112
    invoke-virtual {v0}, Lcom/sec/android/app/camera/Panoramax1View;->restartCancelTimer()V

    .line 2113
    return-void
.end method

.method public onPanoramaCapturedNew()V
    .locals 3

    .prologue
    .line 2006
    const-string v0, "Camera"

    const-string v1, "onPanoramaCapturedNew"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2007
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mPanoramaStarted:Z

    .line 2008
    return-void
.end method

.method public onPanoramaDirectionChanged(I)V
    .locals 5
    .parameter

    .prologue
    .line 2012
    const-string v0, "Camera"

    const-string v1, "onPanoramaDirectionChanged - direct"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2037
    return-void
.end method

.method public onPanoramaError(I)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 2041
    const-string v0, "Camera"

    const-string v1, "onPanoramaError - error"

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2042
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->cancelCaptureForPanorama()V

    .line 2043
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v1, 0x7f030027

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/Panoramax1View;

    .line 2045
    invoke-virtual {v0}, Lcom/sec/android/app/camera/Panoramax1View;->hidePostCaptureLayout()V

    .line 2046
    invoke-virtual {v0}, Lcom/sec/android/app/camera/Panoramax1View;->showCaptureLayout()V

    .line 2047
    invoke-virtual {v0}, Lcom/sec/android/app/camera/Panoramax1View;->reset()V

    .line 2048
    invoke-virtual {v0}, Lcom/sec/android/app/camera/Panoramax1View;->stopCancelTimer()V

    .line 2050
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/CameraSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSideMenu;->resetPressedButtons()V

    .line 2053
    sget-boolean v0, Lcom/sec/android/app/camera/Camera;->mPause:Z

    if-nez v0, :cond_0

    .line 2054
    const v0, 0x7f0700f9

    invoke-static {p0, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2057
    :cond_0
    return-void
.end method

.method public onPanoramaProgressStitching(I)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x64

    .line 2074
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPanoramaProgressStitching - Stitch progress:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2078
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mPanoramaStarted:Z

    if-eqz v0, :cond_0

    .line 2079
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->doStopPreviewSync()V

    .line 2080
    iput-boolean v4, p0, Lcom/sec/android/app/camera/Camera;->mPanoramaStarted:Z

    .line 2083
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v1, 0x7f030027

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/Panoramax1View;

    .line 2086
    invoke-virtual {v0}, Lcom/sec/android/app/camera/Panoramax1View;->stopCancelTimer()V

    .line 2088
    if-ne p1, v3, :cond_1

    .line 2089
    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/Panoramax1View;->setPostCaptureProgressMax(I)V

    .line 2090
    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/Panoramax1View;->setPostCaptureProgress(I)V

    .line 2091
    invoke-virtual {v0}, Lcom/sec/android/app/camera/Panoramax1View;->showCaptureLayout()V

    .line 2092
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camera;->setIsLaunchGallery(Z)V

    .line 2101
    :goto_0
    return-void

    .line 2094
    :cond_1
    invoke-virtual {v0}, Lcom/sec/android/app/camera/Panoramax1View;->hideCaptureLayout()V

    .line 2095
    invoke-virtual {v0}, Lcom/sec/android/app/camera/Panoramax1View;->showPostCaptureLayout()V

    .line 2096
    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/Panoramax1View;->setPostCaptureProgressMax(I)V

    .line 2097
    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/Panoramax1View;->setPostCaptureProgress(I)V

    .line 2099
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->invalidatePreview()V

    goto :goto_0
.end method

.method public onPanoramaRectChanged(II)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 2061
    const-string v0, "Camera"

    const-string v1, "onPanoramaRectChanged - rect"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2070
    return-void
.end method

.method protected onPause()V
    .locals 9

    .prologue
    const-wide/16 v7, 0x7d0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 413
    const-string v3, "Camera"

    const-string v4, "onPause"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    const/16 v3, 0x1a

    invoke-virtual {p0, v3, v5}, Lcom/sec/android/app/camera/Camera;->requestSystemKeyEvent(IZ)Z

    .line 417
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    if-nez v3, :cond_0

    .line 467
    :goto_0
    return-void

    .line 420
    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    if-eqz v3, :cond_1

    .line 421
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraEngine;->waitForEngineStartingThread()V

    .line 422
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraEngine;->waitForStartPreviewThreadComplete()V

    .line 425
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 426
    const v3, 0x7f0a00b6

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 427
    .local v0, PostCaptureLayout:Landroid/widget/RelativeLayout;
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2

    .line 428
    invoke-static {v7, v8}, Landroid/os/SystemClock;->sleep(J)V

    .line 432
    .end local v0           #PostCaptureLayout:Landroid/widget/RelativeLayout;
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v3

    if-ne v3, v6, :cond_3

    .line 433
    const v3, 0x7f0a0068

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 434
    .restart local v0       #PostCaptureLayout:Landroid/widget/RelativeLayout;
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v3

    if-nez v3, :cond_3

    .line 435
    invoke-static {v7, v8}, Landroid/os/SystemClock;->sleep(J)V

    .line 439
    .end local v0           #PostCaptureLayout:Landroid/widget/RelativeLayout;
    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraEngine;->enableStatusBar()V

    .line 441
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/CameraSideMenu;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSideMenu;->stopHideMenuTimer()V

    .line 442
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/Camera;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 443
    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/Camera;->onFocusStateChanged(I)V

    .line 444
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->hideAllDlg()V

    .line 446
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    if-eqz v3, :cond_4

    .line 447
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraEngine;->clearTimer()V

    .line 448
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v3, v3, Lcom/sec/android/app/camera/CameraEngine;->mCurrentState:Lcom/sec/android/app/camera/AbstractCeState;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v2

    .line 449
    .local v2, oldState:I
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/CameraEngine;->changeEngineState(I)V

    .line 451
    if-eqz v2, :cond_4

    .line 452
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStopPreview()V

    .line 453
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStopEngine()V

    .line 458
    .end local v2           #oldState:I
    :cond_4
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v4, 0x7f030028

    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/PostView;

    .line 460
    .local v1, menu:Lcom/sec/android/app/camera/PostView;
    invoke-virtual {v1}, Lcom/sec/android/app/camera/PostView;->getVisibility()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 461
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 464
    :cond_5
    sput-boolean v6, Lcom/sec/android/app/camera/Camera;->mPause:Z

    .line 466
    invoke-super {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onPause()V

    goto/16 :goto_0
.end method

.method public onPreviewFrame([BLcom/sec/android/seccamera/SecCamera;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 2673
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreviewFrame - data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", camera: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2675
    iput-boolean v3, p0, Lcom/sec/android/app/camera/Camera;->mFirstFrameReceived:Z

    .line 2677
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mFirstFrameReceived_check:Z

    if-nez v0, :cond_0

    .line 2678
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->initCameraSound()V

    .line 2679
    iput-boolean v3, p0, Lcom/sec/android/app/camera/Camera;->mFirstFrameReceived_check:Z

    .line 2681
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v4, "Camera"

    .line 503
    const-string v2, "Camera"

    const-string v2, "onResume"

    invoke-static {v4, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "device_policy"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 508
    .local v0, mDPM:Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v0, v7}, Landroid/app/admin/DevicePolicyManager;->getAllowCamera(Landroid/content/ComponentName;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 509
    const-string v2, "Camera"

    const-string v2, "onResume CAMERA disable"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    const v2, 0x7f0700ca

    invoke-static {p0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 512
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->finish()V

    .line 516
    :cond_0
    iput-boolean v5, p0, Lcom/sec/android/app/camera/Camera;->mFirstFrameReceived:Z

    .line 517
    iput-boolean v5, p0, Lcom/sec/android/app/camera/Camera;->mFirstFrameReceived_check:Z

    .line 519
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 520
    .local v1, win:Landroid/view/Window;
    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 522
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraEngine;->disableStatusBar()V

    .line 524
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->clearPostCaptureLayout()V

    .line 526
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraEngine;->initEngineField()V

    .line 527
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraEngine;->clearRequest()V

    .line 528
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v2, v5}, Lcom/sec/android/app/camera/CameraEngine;->changeEngineState(I)V

    .line 530
    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/Camera;->setTouchAutoFocusActive(Z)V

    .line 531
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraEngine;->clearFocusState()V

    .line 533
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->initIntentFilter()V

    .line 535
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->checkCameraStartCondition_Call()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 536
    invoke-super {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onResume()V

    .line 537
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getAndSetLock()V

    .line 649
    :goto_0
    return-void

    .line 541
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v2, p0}, Lcom/sec/android/app/camera/CameraEngine;->isMediaScannerScanning(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 542
    const-string v2, "Camera"

    const-string v2, "onResume - MediaScanner is Scanning"

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    sget-object v2, Lcom/sec/android/app/camera/Camera;->mScanToast:Landroid/widget/Toast;

    if-nez v2, :cond_2

    .line 544
    const-string v2, ""

    invoke-static {p0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    sput-object v2, Lcom/sec/android/app/camera/Camera;->mScanToast:Landroid/widget/Toast;

    .line 548
    :goto_1
    sget-object v2, Lcom/sec/android/app/camera/Camera;->mScanToast:Landroid/widget/Toast;

    const v3, 0x7f0700fd

    invoke-virtual {v2, v3}, Landroid/widget/Toast;->setText(I)V

    .line 549
    sget-object v2, Lcom/sec/android/app/camera/Camera;->mScanToast:Landroid/widget/Toast;

    invoke-virtual {v2, v6}, Landroid/widget/Toast;->setDuration(I)V

    .line 550
    sget-object v2, Lcom/sec/android/app/camera/Camera;->mScanToast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 551
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->finish()V

    .line 552
    invoke-super {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onResume()V

    goto :goto_0

    .line 546
    :cond_2
    sget-object v2, Lcom/sec/android/app/camera/Camera;->mScanToast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->cancel()V

    goto :goto_1

    .line 555
    :cond_3
    sput-object v7, Lcom/sec/android/app/camera/Camera;->mScanToast:Landroid/widget/Toast;

    .line 569
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    if-eqz v2, :cond_4

    .line 570
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/CameraSettings;->setShootingModeforResume(I)V

    .line 574
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getSceneMode()I

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    if-eqz v2, :cond_5

    .line 575
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getSceneMode()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/CameraSettings;->setSceneModeforResume(I)V

    .line 577
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getSceneMode()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)Z

    .line 582
    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    if-nez v2, :cond_7

    .line 583
    const-string v2, "2048x1536"

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2, v5}, Lcom/sec/android/app/camera/CameraResolution;->compare(II)I

    move-result v2

    if-ltz v2, :cond_6

    .line 586
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v2

    const/16 v3, 0xc

    if-lt v2, v3, :cond_6

    .line 587
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraResolution(I)Z

    .line 591
    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getFocusMode()I

    move-result v2

    if-nez v2, :cond_7

    .line 592
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/sec/android/app/camera/CameraSettings;->setFocusMode(I)V

    .line 596
    :cond_7
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getLock()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 597
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/sec/android/app/camera/CameraSettings;->setLockForResume(Z)V

    .line 602
    :goto_2
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStartEngine()V

    .line 603
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraEngine;->schedulePostInit()V

    .line 604
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraEngine;->scheduleSetAllParams()V

    .line 605
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/CameraSideMenu;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSideMenu;->resetPressedButtons()V

    .line 606
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mShutterButton:Lcom/sec/android/app/camera/ShutterButton;

    if-eqz v2, :cond_8

    .line 607
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mShutterButton:Lcom/sec/android/app/camera/ShutterButton;

    invoke-virtual {v2, v5}, Lcom/sec/android/app/camera/ShutterButton;->updateButton(I)V

    .line 610
    :cond_8
    iput-object v7, p0, Lcom/sec/android/app/camera/Camera;->mChkKeyFromApp:Ljava/lang/String;

    .line 611
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->initIntentReceive()V

    .line 614
    const/16 v2, 0x1a

    invoke-virtual {p0, v2, v6}, Lcom/sec/android/app/camera/Camera;->requestSystemKeyEvent(IZ)Z

    .line 615
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/Camera;->isSystemKeyEventRequested(I)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 616
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/sec/android/app/camera/CameraSettings;->setLock(Z)V

    .line 620
    :goto_3
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->onChkImageCaptureIntent()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 621
    const-string v2, "from_app"

    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mChkKeyFromApp:Ljava/lang/String;

    .line 622
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v2

    invoke-virtual {v2, v5, v6}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)Z

    .line 624
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/sec/android/app/camera/CameraSettings;->setAttachMode(Z)V

    .line 639
    :goto_4
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v2, v6}, Lcom/sec/android/app/camera/CameraEngine;->scheduleWait(I)V

    .line 640
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStartPreview()V

    .line 642
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->initRemains()V

    .line 644
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getAndSetLock()V

    .line 645
    sput-boolean v5, Lcom/sec/android/app/camera/Camera;->mBackKeyDown:Z

    .line 646
    sput-boolean v5, Lcom/sec/android/app/camera/Camera;->mPause:Z

    .line 648
    invoke-super {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onResume()V

    goto/16 :goto_0

    .line 599
    :cond_9
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/sec/android/app/camera/CameraSettings;->setLockForResume(Z)V

    goto :goto_2

    .line 618
    :cond_a
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/sec/android/app/camera/CameraSettings;->setLock(Z)V

    goto :goto_3

    .line 626
    :cond_b
    iput-object v7, p0, Lcom/sec/android/app/camera/Camera;->mChkKeyFromApp:Ljava/lang/String;

    .line 632
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v2

    invoke-virtual {v2, v5, v5}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)Z

    .line 636
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/sec/android/app/camera/CameraSettings;->setAttachMode(Z)V

    goto :goto_4
.end method

.method public onReviewChanged(I)V
    .locals 1
    .parameter "review"

    .prologue
    .line 1636
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setReview(I)V

    .line 1640
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 1642
    return-void
.end method

.method public onSaturationChanged(I)V
    .locals 1
    .parameter "saturation"

    .prologue
    .line 1699
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraSaturation(I)V

    .line 1700
    return-void
.end method

.method public onSceneModeChanged(I)V
    .locals 3
    .parameter

    .prologue
    .line 1201
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSceneModeChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1202
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v1, 0x7f03000f

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/CameraSideMenu;

    .line 1204
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSideMenu;->setInflatedMenu(Lcom/sec/android/app/camera/MenuBase;)V

    .line 1205
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setSceneMode(I)V

    .line 1207
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 1210
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)Z

    move-result v0

    .line 1212
    if-eqz v0, :cond_0

    .line 1213
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camera;->handleResolutionChanged(I)V

    .line 1215
    :cond_0
    return-void
.end method

.method public onSearchingLastContentUriCompleted()V
    .locals 1

    .prologue
    .line 2700
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mLastContentUriCallback:Lcom/sec/android/app/camera/Camera$LastContentUriCallback;

    if-eqz v0, :cond_0

    .line 2701
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mLastContentUriCallback:Lcom/sec/android/app/camera/Camera$LastContentUriCallback;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->onCompleted()V

    .line 2702
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mLastContentUriCallback:Lcom/sec/android/app/camera/Camera$LastContentUriCallback;

    .line 2704
    :cond_0
    return-void
.end method

.method public onSharpnessChanged(I)V
    .locals 1
    .parameter "sharpness"

    .prologue
    .line 1708
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraSharpness(I)V

    .line 1709
    return-void
.end method

.method public onShootingModeChanged(I)V
    .locals 3
    .parameter

    .prologue
    .line 1223
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onShootingModeChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1225
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->isTimerCounting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1239
    :goto_0
    return-void

    .line 1229
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 1230
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setShootingMode(I)V

    .line 1231
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->updateRemainStorageIndicator()V

    goto :goto_0
.end method

.method public onShutterSoundChanged(I)V
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 1645
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setShutterSound(I)V

    .line 1646
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 1647
    const-string v0, "Camera"

    const-string v1, "onShutterSoundChanged"

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1648
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraEngine;->setContinuousShotSound(I)V

    .line 1650
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 1651
    return-void
.end method

.method public onSmileDetectingStopped()V
    .locals 3

    .prologue
    .line 1887
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStopSmileDetection()V

    .line 1888
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v1, 0x7f030037

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/camera/SmileShotView;

    .line 1890
    invoke-virtual {p0}, Lcom/sec/android/app/camera/SmileShotView;->stopDetect()V

    .line 1891
    return-void
.end method

.method public onSmileShotDetectionSuccess()V
    .locals 2

    .prologue
    .line 1894
    const-string v0, "Camera"

    const-string v1, "onOnSmileShotDetectionSuccess"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1895
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mShutterButton:Lcom/sec/android/app/camera/ShutterButton;

    if-eqz v0, :cond_0

    .line 1896
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mShutterButton:Lcom/sec/android/app/camera/ShutterButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/ShutterButton;->setButtonLocked()V

    .line 1898
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraEngine;->scheduleWait(I)V

    .line 1899
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->handleShutterEvent()V

    .line 1900
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->handleShutterReleaseEvent()V

    .line 1901
    return-void
.end method

.method public onStartingPreviewCompleted()V
    .locals 3

    .prologue
    .line 1824
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v1, 0x7f03000e

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/camera/CameraSettingsMenu;

    .line 1826
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettingsMenu;->unlockResolutionChanging()V

    .line 1827
    return-void
.end method

.method public onStopMotionCaptured([B)V
    .locals 3
    .parameter

    .prologue
    .line 2193
    const-string v0, "Camera"

    const-string v1, "onStopMotionCaptured"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2195
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v1, 0x7f030038

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/camera/StopMotionPreview;

    .line 2198
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/StopMotionPreview;->addThumbnailImage([B)V

    .line 2199
    return-void
.end method

.method public onStopMotionPreviewEditingFinished([BZ)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 2203
    const-string v0, "Camera"

    const-string v1, "onStopMotionPreviewEditingFinished"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2205
    if-eqz p2, :cond_0

    .line 2206
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/camera/Camera$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/sec/android/app/camera/Camera$4;-><init>(Lcom/sec/android/app/camera/Camera;[BZ)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2212
    const-string v1, "stopMotionThread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 2213
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2218
    :goto_0
    return-void

    .line 2215
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/camera/CameraEngine;->appendStopMotionFrame([BZ)V

    goto :goto_0
.end method

.method public onStopMotionProgressStitching(I)V
    .locals 4
    .parameter

    .prologue
    const/16 v3, 0x64

    .line 2645
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStopMotionProgressStitching - Stitch progress:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2649
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v1, 0x7f030038

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/StopMotionPreview;

    .line 2651
    invoke-virtual {v0}, Lcom/sec/android/app/camera/StopMotionPreview;->showStopMotionProgressLayout()V

    .line 2652
    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/StopMotionPreview;->setStopMotionProgressMax(I)V

    .line 2653
    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/StopMotionPreview;->setStopMotionProgress(I)V

    .line 2655
    if-ne p1, v3, :cond_0

    .line 2656
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camera;->setIsLaunchGallery(Z)V

    .line 2658
    :cond_0
    return-void
.end method

.method public onStopMotionRestoreMenu()V
    .locals 2

    .prologue
    .line 2221
    const-string v0, "Camera"

    const-string v1, "onStopMotionRestoreMenu"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2222
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 2223
    return-void
.end method

.method public onStorageChanged(I)V
    .locals 1
    .parameter "storage"

    .prologue
    .line 1654
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setStorage(I)V

    .line 1655
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 1656
    return-void
.end method

.method public onTimerChanged(I)V
    .locals 1
    .parameter "timer"

    .prologue
    .line 1476
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraTimer(I)V

    .line 1478
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 1479
    return-void
.end method

.method public onTimerEvent(I)V
    .locals 3
    .parameter

    .prologue
    .line 1879
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v1, 0x7f03003b

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/camera/TimerCounting;

    .line 1881
    invoke-virtual {p0}, Lcom/sec/android/app/camera/TimerCounting;->showMenu()V

    .line 1882
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/TimerCounting;->updateCountingNum(I)V

    .line 1883
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x1

    const-string v2, "Camera"

    .line 988
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    if-nez v0, :cond_0

    .line 989
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1063
    :goto_0
    return v0

    .line 991
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    if-nez v0, :cond_1

    .line 992
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 994
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/CameraSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSideMenu;->resetPressedButtons()V

    .line 997
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/MenuBase;->onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 998
    goto :goto_0

    .line 1000
    :catch_0
    move-exception v0

    .line 1005
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getLock()Z
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    .line 1006
    goto :goto_0

    .line 1008
    :catch_1
    move-exception v0

    .line 1009
    const-string v0, "Camera"

    const-string v0, "getCameraSettings() return null."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 1010
    goto :goto_0

    .line 1013
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->isPreviewTouchEnabled()Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    .line 1014
    goto :goto_0

    .line 1017
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1063
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 1019
    :pswitch_0
    const-string v0, "Camera"

    const-string v0, "MotionEvent.ACTION_UP"

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->hideSideMenu()V

    move v0, v1

    .line 1032
    goto :goto_0

    .line 1034
    :pswitch_1
    const-string v0, "Camera"

    const-string v0, "MotionEvent.ACTION_DOWN"

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 1046
    goto :goto_0

    :pswitch_2
    move v0, v1

    .line 1055
    goto :goto_0

    .line 1057
    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->cancelAutoFocus()V

    .line 1058
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->clearFocusState()V

    .line 1059
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->updateFocusIndicator()V

    move v0, v1

    .line 1060
    goto :goto_0

    .line 1017
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onUserInteraction()V
    .locals 0

    .prologue
    .line 1185
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->restartInactivityTimer()V

    .line 1186
    invoke-super {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onUserInteraction()V

    .line 1187
    return-void
.end method

.method public onVintageChanged(I)V
    .locals 3
    .parameter

    .prologue
    .line 1764
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setShootingVintageMode(I)V

    .line 1767
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v1, 0x7f03003e

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/VintageShotView;

    .line 1769
    const/16 v1, 0x8

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/camera/VintageShotView;->updateVintageModeButton(II)V

    .line 1771
    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/VintageShotView;->updateVintageText(I)V

    .line 1773
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 1774
    invoke-virtual {v0}, Lcom/sec/android/app/camera/VintageShotView;->showMenu()V

    .line 1775
    return-void
.end method

.method public onWhiteBalanceChanged(I)V
    .locals 2
    .parameter "whiteBalance"

    .prologue
    .line 1565
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraWB(I)V

    .line 1566
    if-eqz p1, :cond_0

    .line 1567
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraEffect(I)V

    .line 1570
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 1571
    return-void
.end method

.method public onZoomValueChanged(I)V
    .locals 1
    .parameter "zoomValue"

    .prologue
    .line 1686
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraZoomValue(I)V

    .line 1687
    return-void
.end method

.method public playCameraSound(II)V
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 2346
    if-ltz p1, :cond_1

    const/4 v0, 0x4

    if-ge p1, v0, :cond_1

    .line 2347
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mAudioManager:Landroid/media/AudioManager;

    const-string v1, "situation=3;device=0"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/Camera;->mStreamVolume:F

    .line 2357
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShutterSound()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2358
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mSoundPoolId:[I

    aget v1, v1, p1

    iget v2, p0, Lcom/sec/android/app/camera/Camera;->mStreamVolume:F

    iget v3, p0, Lcom/sec/android/app/camera/Camera;->mStreamVolume:F

    const/4 v4, 0x0

    const/high16 v6, 0x3f80

    move v5, p2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 2362
    :cond_0
    return-void

    .line 2352
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mAudioManager:Landroid/media/AudioManager;

    const-string v1, "situation=4;device=0"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/Camera;->mStreamVolume:F

    goto :goto_0
.end method

.method public playMenuCameraSound(II)V
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 2366
    if-ltz p1, :cond_0

    const/4 v0, 0x4

    if-ge p1, v0, :cond_0

    .line 2367
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mAudioManager:Landroid/media/AudioManager;

    const-string v1, "situation=3;device=0"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/Camera;->mStreamVolume:F

    .line 2376
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mSoundPoolId:[I

    aget v1, v1, p1

    iget v2, p0, Lcom/sec/android/app/camera/Camera;->mStreamVolume:F

    iget v3, p0, Lcom/sec/android/app/camera/Camera;->mStreamVolume:F

    const/4 v4, 0x0

    const/high16 v6, 0x3f80

    move v5, p2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 2379
    return-void

    .line 2372
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mAudioManager:Landroid/media/AudioManager;

    const-string v1, "situation=4;device=0"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/Camera;->mStreamVolume:F

    goto :goto_0
.end method

.method public requestSystemKeyEvent(IZ)Z
    .locals 3
    .parameter "keyCode"
    .parameter "request"

    .prologue
    .line 3255
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mWindowManager:Landroid/view/IWindowManager;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-interface {v1, p1, v2, p2}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3261
    :goto_0
    return v1

    .line 3257
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 3258
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 3261
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public resetContinuousShot()V
    .locals 2

    .prologue
    .line 3147
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mShutterButton:Lcom/sec/android/app/camera/ShutterButton;

    if-eqz v0, :cond_0

    .line 3148
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mShutterButton:Lcom/sec/android/app/camera/ShutterButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/ShutterButton;->hideMenu()V

    .line 3151
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/CameraSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSideMenu;->restoreMenu()V

    .line 3152
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraEngine;->setContinuousShotInProgress(Z)V

    .line 3153
    return-void
.end method

.method protected resetToDefaultSettings()V
    .locals 3

    .prologue
    .line 2382
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mResetCameraSettingPopup:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mResetCameraSettingPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2384
    const-string v0, "Camera"

    const-string v1, "mResetCameraSettingPopup is showing"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2421
    :goto_0
    return-void

    .line 2388
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0700ab

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0700ac

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f07000b

    new-instance v2, Lcom/sec/android/app/camera/Camera$5;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/Camera$5;-><init>(Lcom/sec/android/app/camera/Camera;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f07000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mResetCameraSettingPopup:Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method public resetTouchFocus()V
    .locals 2

    .prologue
    .line 3057
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->isTouchAutoFocusing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3058
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->forSetOrgFocus()V

    .line 3059
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->stopTouchAutoFocus()V

    .line 3060
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraBaseIndicators:Lcom/sec/android/app/camera/CameraBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraBaseIndicators;->showFocusIndicator()V

    .line 3061
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraBaseIndicators:Lcom/sec/android/app/camera/CameraBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraBaseIndicators;->hideTouchFocusIndicator()V

    .line 3064
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->getFocusState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 3065
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->cancelAutoFocus()V

    .line 3068
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->clearFocusState()V

    .line 3069
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camera;->setTouchAutoFocusActive(Z)V

    .line 3070
    return-void
.end method

.method public resizeForPreviewAspectRatio()Z
    .locals 3

    .prologue
    .line 1800
    const-string v0, "Camera"

    const-string v1, "resizeForPreviewAspectRatio"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1806
    const v0, 0x7f0a00ab

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/PreviewFrameLayout;

    .line 1808
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/CameraResolution;->isWideResolution(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1810
    const-wide v1, 0x3ffaaaaaaaaaaaabL

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/PreviewFrameLayout;->setAspectRatio(D)Z

    move-result v0

    .line 1818
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/CameraSideMenu;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSideMenu;->updateBackgroundTransparency()V

    .line 1819
    return v0

    .line 1813
    :cond_0
    const-wide v1, 0x3ff5555555555555L

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/PreviewFrameLayout;->setAspectRatio(D)Z

    move-result v0

    goto :goto_0
.end method

.method public saveDataToFile(Ljava/lang/String;[B)Z
    .locals 5
    .parameter "filePath"
    .parameter "data"

    .prologue
    .line 2839
    const/4 v1, 0x0

    .line 2841
    .local v1, f:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2842
    .end local v1           #f:Ljava/io/FileOutputStream;
    .local v2, f:Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v2, p2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 2846
    if-eqz v2, :cond_0

    .line 2848
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 2854
    :cond_0
    :goto_0
    const/4 v3, 0x1

    move-object v1, v2

    .end local v2           #f:Ljava/io/FileOutputStream;
    .restart local v1       #f:Ljava/io/FileOutputStream;
    :cond_1
    :goto_1
    return v3

    .line 2843
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 2844
    .local v0, e:Ljava/io/IOException;
    :goto_2
    const/4 v3, 0x0

    .line 2846
    if-eqz v1, :cond_1

    .line 2848
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 2849
    :catch_1
    move-exception v4

    goto :goto_1

    .line 2846
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v3

    :goto_3
    if-eqz v1, :cond_2

    .line 2848
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    .line 2851
    :cond_2
    :goto_4
    throw v3

    .line 2849
    .end local v1           #f:Ljava/io/FileOutputStream;
    .restart local v2       #f:Ljava/io/FileOutputStream;
    :catch_2
    move-exception v3

    goto :goto_0

    .end local v2           #f:Ljava/io/FileOutputStream;
    .restart local v1       #f:Ljava/io/FileOutputStream;
    :catch_3
    move-exception v4

    goto :goto_4

    .line 2846
    .end local v1           #f:Ljava/io/FileOutputStream;
    .restart local v2       #f:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2           #f:Ljava/io/FileOutputStream;
    .restart local v1       #f:Ljava/io/FileOutputStream;
    goto :goto_3

    .line 2843
    .end local v1           #f:Ljava/io/FileOutputStream;
    .restart local v2       #f:Ljava/io/FileOutputStream;
    :catch_4
    move-exception v3

    move-object v0, v3

    move-object v1, v2

    .end local v2           #f:Ljava/io/FileOutputStream;
    .restart local v1       #f:Ljava/io/FileOutputStream;
    goto :goto_2
.end method

.method public setConnectingStateGPS(I)V
    .locals 1
    .parameter "state"

    .prologue
    .line 3249
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraIndicators:Lcom/sec/android/app/camera/CameraIndicators;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraIndicators;->setConnectingStateGPS(I)V

    .line 3250
    return-void
.end method

.method public setFirstFrameReceived(Z)V
    .locals 0
    .parameter "firstFrameReceived"

    .prologue
    .line 2668
    iput-boolean p1, p0, Lcom/sec/android/app/camera/Camera;->mFirstFrameReceived:Z

    .line 2669
    return-void
.end method

.method public setIsLaunchGallery(Z)V
    .locals 0
    .parameter "chkLaunchGallery"

    .prologue
    .line 1067
    iput-boolean p1, p0, Lcom/sec/android/app/camera/Camera;->mChkLaunchGallery:Z

    .line 1068
    return-void
.end method

.method public setResolutionAndShootingModeToDefault()V
    .locals 8

    .prologue
    const/4 v7, 0x6

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1512
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStopPreview()V

    .line 1514
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    const/4 v3, 0x4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultCameraResolution()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/CameraEngine;->scheduleChangeParameter(II)V

    .line 1517
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v3, 0x7f03000f

    iget-object v4, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/CameraSideMenu;

    .line 1519
    .local v0, cameraSideMenu:Lcom/sec/android/app/camera/CameraSideMenu;
    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSideMenu;->setOverLappingMenu(Lcom/sec/android/app/camera/MenuBase;)V

    .line 1520
    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSideMenu;->setInflatedMenu(Lcom/sec/android/app/camera/MenuBase;)V

    .line 1522
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    .line 1524
    .local v1, shootingMode:I
    if-ne v1, v7, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->isMainCameraSelected()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1526
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/CameraEngine;->scheduleSwitchCamera(Z)V

    .line 1532
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->showFocusText()V

    .line 1533
    invoke-direct {p0, v5}, Lcom/sec/android/app/camera/Camera;->setImmutableView(Lcom/sec/android/app/camera/MenuBase;)V

    .line 1535
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v2, v6, v1}, Lcom/sec/android/app/camera/CameraEngine;->scheduleChangeParameter(II)V

    .line 1538
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->resizeForPreviewAspectRatio()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1541
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStartPreview()V

    .line 1543
    :cond_1
    return-void

    .line 1527
    :cond_2
    if-eq v1, v7, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->isMainCameraSelected()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1529
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v2, v6}, Lcom/sec/android/app/camera/CameraEngine;->scheduleSwitchCamera(Z)V

    goto :goto_0
.end method

.method public setTouchAutoFocusActive(Z)V
    .locals 1
    .parameter "active"

    .prologue
    .line 1082
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mTouchAutoFocusActive:Z

    .line 1084
    return-void
.end method

.method public showFocusText()V
    .locals 0

    .prologue
    .line 3127
    return-void
.end method

.method public showReviewMenu()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 2965
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v2, 0x7f030028

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/PostView;

    .line 2968
    .local v0, menu:Lcom/sec/android/app/camera/PostView;
    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/PostView;->setImageUri(Landroid/net/Uri;)V

    .line 2969
    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/PostView;->setImagePath(Ljava/lang/String;)V

    .line 2970
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    if-ne v1, v4, :cond_0

    .line 2971
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    if-eqz v1, :cond_0

    .line 2972
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->getLastCapturedFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/PostView;->setImagePath(Ljava/lang/String;)V

    .line 2974
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->hideFocusText()V

    .line 2975
    invoke-virtual {v0}, Lcom/sec/android/app/camera/PostView;->showMenu()V

    .line 2978
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mShutterButton:Lcom/sec/android/app/camera/ShutterButton;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mShutterButton:Lcom/sec/android/app/camera/ShutterButton;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ShutterButton;->getVisibility()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2979
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sec/android/app/camera/PostView;->mPrevSideMenuVisible:Z

    .line 2980
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mShutterButton:Lcom/sec/android/app/camera/ShutterButton;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ShutterButton;->hideMenu()V

    .line 2984
    :goto_0
    return-void

    .line 2982
    :cond_1
    iput-boolean v4, v0, Lcom/sec/android/app/camera/PostView;->mPrevSideMenuVisible:Z

    goto :goto_0
.end method

.method public showShutterButton()V
    .locals 1

    .prologue
    .line 3096
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mShutterButton:Lcom/sec/android/app/camera/ShutterButton;

    if-eqz v0, :cond_0

    .line 3097
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mShutterButton:Lcom/sec/android/app/camera/ShutterButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/ShutterButton;->restoreMenu()V

    .line 3099
    :cond_0
    return-void
.end method

.method public showTrayButton()V
    .locals 1

    .prologue
    .line 3108
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mShutterButton:Lcom/sec/android/app/camera/ShutterButton;

    if-eqz v0, :cond_0

    .line 3109
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mShutterButton:Lcom/sec/android/app/camera/ShutterButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/ShutterButton;->showTrayButton()V

    .line 3111
    :cond_0
    return-void
.end method

.method public updateBatteryIndicator(II)V
    .locals 1
    .parameter "battStatus"
    .parameter "LevelRatio"

    .prologue
    .line 1830
    packed-switch p1, :pswitch_data_0

    .line 1835
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraBaseIndicators:Lcom/sec/android/app/camera/CameraBaseIndicators;

    invoke-virtual {v0, p2}, Lcom/sec/android/app/camera/CameraBaseIndicators;->setBatteryLevel(I)V

    .line 1838
    :goto_0
    return-void

    .line 1832
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraBaseIndicators:Lcom/sec/android/app/camera/CameraBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraBaseIndicators;->setBatteryCharging()V

    goto :goto_0

    .line 1830
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public updateQuickViewButtonDimmed()V
    .locals 3

    .prologue
    const/16 v2, 0x1d

    .line 2301
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    .line 2302
    .local v0, dim:Lcom/sec/android/app/camera/MenuDimController;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    if-eqz v1, :cond_0

    .line 2303
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->waitForCurrentSearchingLastContentUri()V

    .line 2304
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2305
    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)Z

    .line 2310
    :cond_0
    :goto_0
    return-void

    .line 2307
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)Z

    goto :goto_0
.end method

.method public updateRemainStorageIndicator()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 3173
    const/4 v0, 0x0

    .line 3174
    .local v0, nRemainCount:I
    iget v1, p0, Lcom/sec/android/app/camera/Camera;->mStorageStatus:I

    if-eq v1, v4, :cond_0

    .line 3175
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->checkStorageLow()V

    .line 3176
    iget v1, p0, Lcom/sec/android/app/camera/Camera;->mStorageStatus:I

    if-nez v1, :cond_0

    .line 3177
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getCameraQuality()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/camera/CheckMemory;->getRemainCount(III)I

    move-result v0

    .line 3181
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 3182
    iput v4, p0, Lcom/sec/android/app/camera/Camera;->mStorageStatus:I

    .line 3186
    :cond_0
    iget v1, p0, Lcom/sec/android/app/camera/Camera;->mStorageStatus:I

    if-eqz v1, :cond_1

    .line 3187
    const/4 v0, 0x0

    .line 3189
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraBaseIndicators:Lcom/sec/android/app/camera/CameraBaseIndicators;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/CameraBaseIndicators;->setRemainCount(I)V

    .line 3190
    return-void
.end method
