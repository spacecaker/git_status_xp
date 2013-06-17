.class public Lcom/sec/android/app/camera/CameraSideMenu;
.super Lcom/sec/android/app/camera/MenuBase;
.source "CameraSideMenu.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;


# instance fields
.field private leftOpaqueBackground:I

.field private leftTransparentBackground:I

.field private mAnimDelay:I

.field private mAnimDelta:I

.field mAnimHandler:Landroid/os/Handler;

.field private mAnimInProgress:Z

.field private mAnimationEnabled:Z

.field private mAutoHiding:Z

.field private mCameraSideMenuResourceData:Lcom/sec/android/app/camera/CameraSideMenuResourceData;

.field private mContinousProgressing:Z

.field mHideAnimRunnable:Ljava/lang/Runnable;

.field private mHideAnimation:Z

.field private mHideMenuTimeoutHandler:Landroid/os/Handler;

.field private mHideMenuTimeoutRunnable:Ljava/lang/Runnable;

.field private mHidingSideMenu:Z

.field private mInflatedMenu:Lcom/sec/android/app/camera/MenuBase;

.field private mLeftSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

.field private mOverlappingMenu:Lcom/sec/android/app/camera/MenuBase;

.field private mRightSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

.field mShowAnimRunnable:Ljava/lang/Runnable;

.field private mShutterButton:Lcom/sec/android/app/camera/widget/TwImageButton;

.field private mTrayButton:Lcom/sec/android/app/camera/widget/TwImageButton;

.field private rightOpaqueBackground:I

.field private rightTransparentBackground:I


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;IILandroid/view/ViewGroup;Lcom/sec/android/app/camera/MenuResourceData;ILcom/sec/android/app/camera/CameraSideMenuResourceData;)V
    .locals 4
    .parameter "camera"
    .parameter "layoutId"
    .parameter "baseViewId"
    .parameter "baseLayout"
    .parameter "menuResourceData"
    .parameter "zOrder"
    .parameter "cameraSideMenuResourceData"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 137
    invoke-direct/range {p0 .. p6}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;IILandroid/view/ViewGroup;Lcom/sec/android/app/camera/MenuResourceData;I)V

    .line 41
    iput-object v2, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mCameraSideMenuResourceData:Lcom/sec/android/app/camera/CameraSideMenuResourceData;

    .line 45
    iput-object v2, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mShutterButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    .line 53
    iput-boolean v1, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mContinousProgressing:Z

    .line 54
    iput-boolean v3, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mAutoHiding:Z

    .line 55
    iput-boolean v1, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mAnimationEnabled:Z

    .line 56
    const/4 v0, 0x5

    iput v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mAnimDelay:I

    .line 59
    iput-object v2, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mOverlappingMenu:Lcom/sec/android/app/camera/MenuBase;

    .line 60
    iput-boolean v1, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mHidingSideMenu:Z

    .line 61
    iput-object v2, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mInflatedMenu:Lcom/sec/android/app/camera/MenuBase;

    .line 62
    const/16 v0, 0x14

    iput v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mAnimDelta:I

    .line 63
    iput-boolean v1, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mAnimInProgress:Z

    .line 64
    iput-boolean v1, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mHideAnimation:Z

    .line 65
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mAnimHandler:Landroid/os/Handler;

    .line 66
    new-instance v0, Lcom/sec/android/app/camera/CameraSideMenu$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/CameraSideMenu$1;-><init>(Lcom/sec/android/app/camera/CameraSideMenu;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mHideAnimRunnable:Ljava/lang/Runnable;

    .line 91
    new-instance v0, Lcom/sec/android/app/camera/CameraSideMenu$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/CameraSideMenu$2;-><init>(Lcom/sec/android/app/camera/CameraSideMenu;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mShowAnimRunnable:Ljava/lang/Runnable;

    .line 123
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mHideMenuTimeoutHandler:Landroid/os/Handler;

    .line 124
    new-instance v0, Lcom/sec/android/app/camera/CameraSideMenu$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/CameraSideMenu$3;-><init>(Lcom/sec/android/app/camera/CameraSideMenu;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mHideMenuTimeoutRunnable:Ljava/lang/Runnable;

    .line 139
    iput-object p7, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mCameraSideMenuResourceData:Lcom/sec/android/app/camera/CameraSideMenuResourceData;

    .line 140
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/CameraSideMenu;->setTouchHandled(Z)V

    .line 141
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSideMenu;->init()V

    .line 143
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/CameraSettings;->registerCameraSettingsChangedObserver(Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;)V

    .line 144
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/CameraSettings;->registerCameraSettingsUIChangedObserver(Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;)V

    .line 145
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/CameraSideMenu;)Lcom/sec/android/app/camera/widget/TwSideMenu;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mLeftSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/CameraSideMenu;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mAnimDelta:I

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/CameraSideMenu;)Lcom/sec/android/app/camera/widget/TwSideMenu;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mRightSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/CameraSideMenu;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mAnimDelay:I

    return v0
.end method

.method static synthetic access$402(Lcom/sec/android/app/camera/CameraSideMenu;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mAnimInProgress:Z

    return p1
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/CameraSideMenu;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSideMenu;->stopHideAnimation()V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/CameraSideMenu;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSideMenu;->stopShowAnimation()V

    return-void
.end method

.method private init()V
    .locals 14

    .prologue
    .line 148
    const/4 v6, 0x0

    .line 149
    .local v6, modeButton:Lcom/sec/android/app/camera/widget/TwImageButton;
    const/4 v8, 0x0

    .line 150
    .local v8, sceneButton:Lcom/sec/android/app/camera/widget/TwImageButton;
    const/4 v9, 0x0

    .line 151
    .local v9, shootingModeButton:Lcom/sec/android/app/camera/widget/TwImageButton;
    const/4 v3, 0x0

    .line 152
    .local v3, flashModeButton:Lcom/sec/android/app/camera/widget/TwImageButton;
    const/4 v2, 0x0

    .line 153
    .local v2, exposureValueButton:Lcom/sec/android/app/camera/widget/TwImageButton;
    const/4 v4, 0x0

    .line 155
    .local v4, imageViewerButton:Lcom/sec/android/app/camera/widget/TwImageButton;
    iget-object v10, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v11, 0x7f0a005c

    invoke-virtual {v10, v11}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/TwSideMenu;

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mLeftSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    .line 156
    iget-object v10, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v11, 0x7f0a005d

    invoke-virtual {v10, v11}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/TwSideMenu;

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mRightSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    .line 158
    iget-object v10, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mLeftSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    iget-object v11, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mCameraSideMenuResourceData:Lcom/sec/android/app/camera/CameraSideMenuResourceData;

    invoke-virtual {v11}, Lcom/sec/android/app/camera/CameraSideMenuResourceData;->getResource()Ljava/util/HashMap;

    move-result-object v11

    invoke-virtual {v10, v11, p0}, Lcom/sec/android/app/camera/widget/TwSideMenu;->initSideMenu(Ljava/util/HashMap;Landroid/view/View$OnTouchListener;)V

    .line 159
    iget-object v10, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mRightSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    iget-object v11, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mCameraSideMenuResourceData:Lcom/sec/android/app/camera/CameraSideMenuResourceData;

    invoke-virtual {v11}, Lcom/sec/android/app/camera/CameraSideMenuResourceData;->getResource()Ljava/util/HashMap;

    move-result-object v11

    invoke-virtual {v10, v11, p0}, Lcom/sec/android/app/camera/widget/TwSideMenu;->initSideMenu(Ljava/util/HashMap;Landroid/view/View$OnTouchListener;)V

    .line 161
    iget-object v10, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v11, 0x7f0a005f

    invoke-virtual {v10, v11}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/camera/widget/TwSideMenuPopupTextLayout;

    .line 163
    .local v5, lPopups:Lcom/sec/android/app/camera/widget/TwSideMenuPopupTextLayout;
    iget-object v10, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v11, 0x7f0a0060

    invoke-virtual {v10, v11}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/sec/android/app/camera/widget/TwSideMenuPopupTextLayout;

    .line 166
    .local v7, rPopups:Lcom/sec/android/app/camera/widget/TwSideMenuPopupTextLayout;
    iget-object v10, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mCameraSideMenuResourceData:Lcom/sec/android/app/camera/CameraSideMenuResourceData;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/CameraSideMenuResourceData;->getResource()Ljava/util/HashMap;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/sec/android/app/camera/widget/TwSideMenuPopupTextLayout;->initResources(Ljava/util/HashMap;)V

    .line 167
    iget-object v10, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mCameraSideMenuResourceData:Lcom/sec/android/app/camera/CameraSideMenuResourceData;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/CameraSideMenuResourceData;->getResource()Ljava/util/HashMap;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/sec/android/app/camera/widget/TwSideMenuPopupTextLayout;->initResources(Ljava/util/HashMap;)V

    .line 203
    iget-object v10, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mLeftSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    const/4 v11, 0x1

    const/4 v12, 0x1

    invoke-virtual {v5, v12}, Lcom/sec/android/app/camera/widget/TwSideMenuPopupTextLayout;->addPopupText(I)Landroid/widget/LinearLayout;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/sec/android/app/camera/widget/TwSideMenu;->addSideMenuButton(ILandroid/widget/LinearLayout;)V

    .line 218
    iget-object v10, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mLeftSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    const/4 v11, 0x2

    const/4 v12, 0x2

    invoke-virtual {v5, v12}, Lcom/sec/android/app/camera/widget/TwSideMenuPopupTextLayout;->addPopupText(I)Landroid/widget/LinearLayout;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/sec/android/app/camera/widget/TwSideMenu;->addSideMenuButton(ILandroid/widget/LinearLayout;)V

    .line 221
    iget-object v10, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mLeftSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    const/4 v11, 0x3

    const/4 v12, 0x3

    invoke-virtual {v5, v12}, Lcom/sec/android/app/camera/widget/TwSideMenuPopupTextLayout;->addPopupText(I)Landroid/widget/LinearLayout;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/sec/android/app/camera/widget/TwSideMenu;->addSideMenuButton(ILandroid/widget/LinearLayout;)V

    .line 223
    iget-object v10, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mLeftSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    const/4 v11, 0x3

    iget-object v12, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v12}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/android/app/camera/CameraSettings;->getCameraFlashMode()I

    move-result v12

    invoke-virtual {v10, v11, v12}, Lcom/sec/android/app/camera/widget/TwSideMenu;->updateButtonImage(II)V

    .line 231
    iget-object v10, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mLeftSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    const/16 v11, 0x1b

    const/16 v12, 0x1b

    invoke-virtual {v5, v12}, Lcom/sec/android/app/camera/widget/TwSideMenuPopupTextLayout;->addPopupText(I)Landroid/widget/LinearLayout;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/sec/android/app/camera/widget/TwSideMenu;->addSideMenuButton(ILandroid/widget/LinearLayout;)V

    .line 233
    iget-object v10, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mLeftSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    const/16 v11, 0x1b

    invoke-virtual {v10, v11}, Lcom/sec/android/app/camera/widget/TwSideMenu;->setBottomButton(I)V

    .line 234
    iget-object v10, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mRightSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v7, v12}, Lcom/sec/android/app/camera/widget/TwSideMenuPopupTextLayout;->addPopupText(I)Landroid/widget/LinearLayout;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/sec/android/app/camera/widget/TwSideMenu;->addSideMenuButton(ILandroid/widget/LinearLayout;)V

    .line 236
    iget-object v10, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mRightSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    const/16 v11, 0x20

    const/16 v12, 0x20

    const/4 v13, 0x2

    invoke-virtual {v7, v12, v13}, Lcom/sec/android/app/camera/widget/TwSideMenuPopupTextLayout;->addEmptyPopupText(II)Landroid/widget/LinearLayout;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/sec/android/app/camera/widget/TwSideMenu;->addSideMenuButton(ILandroid/widget/LinearLayout;)V

    .line 238
    iget-object v10, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mRightSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    const/16 v11, 0x1d

    const/16 v12, 0x1d

    invoke-virtual {v7, v12}, Lcom/sec/android/app/camera/widget/TwSideMenuPopupTextLayout;->addPopupText(I)Landroid/widget/LinearLayout;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/sec/android/app/camera/widget/TwSideMenu;->addSideMenuButton(ILandroid/widget/LinearLayout;)V

    .line 240
    iget-object v10, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mRightSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    const/16 v11, 0x1d

    invoke-virtual {v10, v11}, Lcom/sec/android/app/camera/widget/TwSideMenu;->setBottomButton(I)V

    .line 242
    iget-object v10, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mRightSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/sec/android/app/camera/widget/TwSideMenu;->getSideMenuButton(I)Lcom/sec/android/app/camera/widget/TwImageButton;

    move-result-object v6

    .line 243
    iget-object v10, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mLeftSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Lcom/sec/android/app/camera/widget/TwSideMenu;->getSideMenuButton(I)Lcom/sec/android/app/camera/widget/TwImageButton;

    move-result-object v8

    .line 244
    iget-object v10, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mLeftSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/sec/android/app/camera/widget/TwSideMenu;->getSideMenuButton(I)Lcom/sec/android/app/camera/widget/TwImageButton;

    move-result-object v9

    .line 247
    iget-object v10, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mLeftSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    const/4 v11, 0x3

    invoke-virtual {v10, v11}, Lcom/sec/android/app/camera/widget/TwSideMenu;->getSideMenuButton(I)Lcom/sec/android/app/camera/widget/TwImageButton;

    move-result-object v3

    .line 251
    iget-object v10, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mRightSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    const/16 v11, 0x1d

    invoke-virtual {v10, v11}, Lcom/sec/android/app/camera/widget/TwSideMenu;->getSideMenuButton(I)Lcom/sec/android/app/camera/widget/TwImageButton;

    move-result-object v4

    .line 253
    iget-object v10, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mRightSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    const/16 v11, 0x20

    invoke-virtual {v10, v11}, Lcom/sec/android/app/camera/widget/TwSideMenu;->getSideMenuButton(I)Lcom/sec/android/app/camera/widget/TwImageButton;

    move-result-object v10

    iput-object v10, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mShutterButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    .line 256
    const v10, 0x7f020075

    iput v10, p0, Lcom/sec/android/app/camera/CameraSideMenu;->leftTransparentBackground:I

    .line 257
    const v10, 0x7f020074

    iput v10, p0, Lcom/sec/android/app/camera/CameraSideMenu;->leftOpaqueBackground:I

    .line 263
    const v10, 0x7f0201c2

    iput v10, p0, Lcom/sec/android/app/camera/CameraSideMenu;->rightTransparentBackground:I

    .line 264
    const v10, 0x7f0201c1

    iput v10, p0, Lcom/sec/android/app/camera/CameraSideMenu;->rightOpaqueBackground:I

    .line 271
    iget-object v10, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v11, 0x7f0a005e

    invoke-virtual {v10, v11}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 272
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mTrayButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    .line 275
    iget-object v10, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    .line 276
    .local v0, dimController:Lcom/sec/android/app/camera/MenuDimController;
    const/4 v10, 0x0

    invoke-virtual {v0, v10, v6}, Lcom/sec/android/app/camera/MenuDimController;->addButton(ILcom/sec/android/app/camera/widget/TwImageButton;)V

    .line 277
    const/4 v10, 0x4

    invoke-virtual {v0, v10, v8}, Lcom/sec/android/app/camera/MenuDimController;->addButton(ILcom/sec/android/app/camera/widget/TwImageButton;)V

    .line 278
    const/4 v10, 0x5

    invoke-virtual {v0, v10, v9}, Lcom/sec/android/app/camera/MenuDimController;->addButton(ILcom/sec/android/app/camera/widget/TwImageButton;)V

    .line 280
    const/16 v10, 0xa

    invoke-virtual {v0, v10, v3}, Lcom/sec/android/app/camera/MenuDimController;->addButton(ILcom/sec/android/app/camera/widget/TwImageButton;)V

    .line 284
    const/16 v10, 0x17

    invoke-virtual {v0, v10, v4}, Lcom/sec/android/app/camera/MenuDimController;->addButton(ILcom/sec/android/app/camera/widget/TwImageButton;)V

    .line 285
    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuDimController;->synchronizeDim()V

    .line 287
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSideMenu;->updateBackgroundTransparency()V

    .line 290
    iget-object v10, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v10

    invoke-interface {v10}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 291
    .local v1, display:Landroid/view/Display;
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v10

    const/16 v11, 0x190

    if-gt v10, v11, :cond_0

    .line 292
    const/16 v10, 0xa

    iput v10, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mAnimDelta:I

    .line 296
    :goto_0
    return-void

    .line 294
    :cond_0
    const/16 v10, 0x14

    iput v10, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mAnimDelta:I

    goto :goto_0
.end method

.method private setButtonLocked()V
    .locals 2

    .prologue
    .line 588
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mLeftSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/TwSideMenu;->setButtonLocked()V

    .line 589
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mRightSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/TwSideMenu;->setButtonLocked()V

    .line 590
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mTrayButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    if-eqz v0, :cond_0

    .line 591
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mTrayButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwImageButton;->setDisabled(Z)V

    .line 592
    :cond_0
    return-void
.end method

.method private setButtonUnlocked()V
    .locals 2

    .prologue
    .line 595
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mLeftSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/TwSideMenu;->setButtonUnlocked()V

    .line 596
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mRightSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/TwSideMenu;->setButtonUnlocked()V

    .line 597
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mTrayButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    if-eqz v0, :cond_0

    .line 598
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mTrayButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwImageButton;->setDisabled(Z)V

    .line 599
    :cond_0
    return-void
.end method

.method private startHideAnimation()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 669
    iput-boolean v2, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mHideAnimation:Z

    .line 670
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget v1, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mBaseViewId:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 672
    iput-boolean v2, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mAnimInProgress:Z

    .line 673
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mAnimHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mHideAnimRunnable:Ljava/lang/Runnable;

    iget v2, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mAnimDelay:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 674
    return-void
.end method

.method private startHideMenuTimer()V
    .locals 4

    .prologue
    .line 685
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mHideMenuTimeoutHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mHideMenuTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 686
    return-void
.end method

.method private startShowAnimation()V
    .locals 4

    .prologue
    .line 631
    const-string v0, "CameraSideMenu"

    const-string v1, "startShowAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget v1, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mBaseViewId:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 634
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mAnimInProgress:Z

    .line 635
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mAnimHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mShowAnimRunnable:Ljava/lang/Runnable;

    iget v2, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mAnimDelay:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 636
    return-void
.end method

.method private stopHideAnimation()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 656
    iput-boolean v2, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mHideAnimation:Z

    .line 657
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSideMenu;->getVisibility()Z

    move-result v0

    if-nez v0, :cond_0

    .line 658
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget v1, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mBaseViewId:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 659
    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mAnimInProgress:Z

    if-nez v0, :cond_1

    .line 666
    :goto_0
    return-void

    .line 662
    :cond_1
    iput-boolean v2, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mAnimInProgress:Z

    .line 663
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mAnimHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mHideAnimRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 665
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSideMenu;->setAnimationEnabled(Z)V

    goto :goto_0
.end method

.method private stopShowAnimation()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 618
    const-string v0, "CameraSideMenu"

    const-string v1, "stopShowAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSideMenu;->getVisibility()Z

    move-result v0

    if-nez v0, :cond_0

    .line 620
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget v1, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mBaseViewId:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 621
    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mAnimInProgress:Z

    if-nez v0, :cond_1

    .line 628
    :goto_0
    return-void

    .line 624
    :cond_1
    iput-boolean v2, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mAnimInProgress:Z

    .line 625
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mAnimHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mShowAnimRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 627
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSideMenu;->setAnimationEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method public handleTouchDown(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x1

    const-string v1, "CameraSideMenu"

    .line 369
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isCapturing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 370
    const-string v0, "CameraSideMenu"

    const-string v0, "return isCapturing.."

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    :goto_0
    return-void

    .line 374
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isContinuousShotInProgress()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 375
    const-string v0, "CameraSideMenu"

    const-string v0, "return isContinuousShotInProgress.."

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 379
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isStartPreview()Z

    move-result v0

    if-nez v0, :cond_2

    .line 380
    const-string v0, "CameraSideMenu"

    const-string v0, "return isStartPreview.."

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 384
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getIsLaunchGallery()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 385
    const-string v0, "CameraSideMenu"

    const-string v0, "return getIsLaunchGallery.."

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 389
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 397
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_0

    .line 391
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    if-ne v0, v2, :cond_4

    .line 392
    iput-boolean v2, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mContinousProgressing:Z

    .line 394
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const/16 v1, 0x1b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    goto :goto_0

    .line 389
    :pswitch_data_0
    .packed-switch 0x20
        :pswitch_0
    .end packed-switch
.end method

.method public handleTouchUp(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    const v7, 0x7f030019

    const v6, 0x7f030018

    const v4, 0x7f03000e

    const/4 v5, 0x0

    const-string v2, "CameraSideMenu"

    .line 402
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mRightSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/TwSideMenu;->resetPressedButtons()V

    .line 403
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mLeftSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/TwSideMenu;->resetPressedButtons()V

    .line 404
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    if-nez v1, :cond_1

    .line 536
    :cond_0
    :goto_0
    return-void

    .line 407
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/MenuDimController;->synchronizeDim()V

    .line 409
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v1, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->isCapturing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 410
    const-string v1, "CameraSideMenu"

    const-string v1, "return isCapturing.."

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 414
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v1, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->isStartPreview()Z

    move-result v1

    if-nez v1, :cond_3

    .line 415
    const-string v1, "CameraSideMenu"

    const-string v1, "return isStartPreview.."

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 419
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v1, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getIsLaunchGallery()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 420
    const-string v1, "CameraSideMenu"

    const-string v1, "return getIsLaunchGallery.."

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 423
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v1, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->isContinuousShotInProgress()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_0

    .line 428
    :cond_5
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/View;->setSelected(Z)V

    .line 429
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 431
    :sswitch_0
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onModechanged()V

    goto :goto_0

    .line 434
    :sswitch_1
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mInflatedMenu:Lcom/sec/android/app/camera/MenuBase;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mInflatedMenu:Lcom/sec/android/app/camera/MenuBase;

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v3, 0x7f030032

    iget-object v4, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 435
    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/CameraSideMenu;->setInflatedMenu(Lcom/sec/android/app/camera/MenuBase;)V

    .line 436
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    goto/16 :goto_0

    .line 438
    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v2, 0x7f030032

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/ShootingModeMenu;

    .line 439
    .local v0, menu:Lcom/sec/android/app/camera/ShootingModeMenu;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/ShootingModeMenu;->showMenu()V

    .line 440
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/ShootingModeMenu;->setOnShootingModeChangedListener(Lcom/sec/android/app/camera/ShootingModeMenu$OnShootingModeChangedListener;)V

    .line 441
    iput-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mInflatedMenu:Lcom/sec/android/app/camera/MenuBase;

    goto/16 :goto_0

    .line 445
    .end local v0           #menu:Lcom/sec/android/app/camera/ShootingModeMenu;
    :sswitch_2
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mInflatedMenu:Lcom/sec/android/app/camera/MenuBase;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mInflatedMenu:Lcom/sec/android/app/camera/MenuBase;

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v3, 0x7f03002f

    iget-object v4, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 446
    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/CameraSideMenu;->setInflatedMenu(Lcom/sec/android/app/camera/MenuBase;)V

    .line 447
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    goto/16 :goto_0

    .line 449
    :cond_7
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v2, 0x7f03002f

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/SceneModeMenu;

    .line 450
    .local v0, menu:Lcom/sec/android/app/camera/SceneModeMenu;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/SceneModeMenu;->showMenu()V

    .line 451
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/SceneModeMenu;->setOnSceneModeChangedListener(Lcom/sec/android/app/camera/SceneModeMenu$OnSceneModeChangedListener;)V

    .line 452
    iput-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mInflatedMenu:Lcom/sec/android/app/camera/MenuBase;

    goto/16 :goto_0

    .line 456
    .end local v0           #menu:Lcom/sec/android/app/camera/SceneModeMenu;
    :sswitch_3
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mInflatedMenu:Lcom/sec/android/app/camera/MenuBase;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mInflatedMenu:Lcom/sec/android/app/camera/MenuBase;

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v4, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 457
    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/CameraSideMenu;->setInflatedMenu(Lcom/sec/android/app/camera/MenuBase;)V

    .line 458
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    goto/16 :goto_0

    .line 461
    :cond_8
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4, v2}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/CameraSettingsMenu;

    .line 462
    .local v0, menu:Lcom/sec/android/app/camera/CameraSettingsMenu;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettingsMenu;->showMenu()V

    .line 463
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettingsMenu;->refreashButtonText()V

    .line 464
    iput-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mInflatedMenu:Lcom/sec/android/app/camera/MenuBase;

    goto/16 :goto_0

    .line 468
    .end local v0           #menu:Lcom/sec/android/app/camera/CameraSettingsMenu;
    :sswitch_4
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getSceneMode()I

    move-result v1

    const/16 v2, 0xd

    if-eq v1, v2, :cond_a

    .line 469
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mInflatedMenu:Lcom/sec/android/app/camera/MenuBase;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mInflatedMenu:Lcom/sec/android/app/camera/MenuBase;

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v7, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 470
    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/CameraSideMenu;->setInflatedMenu(Lcom/sec/android/app/camera/MenuBase;)V

    .line 471
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    goto/16 :goto_0

    .line 473
    :cond_9
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v7, v2}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/FlashModeMenu;

    .line 474
    .local v0, menu:Lcom/sec/android/app/camera/FlashModeMenu;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/FlashModeMenu;->showMenu()V

    .line 475
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/FlashModeMenu;->setOnFlashModeChangedListener(Lcom/sec/android/app/camera/FlashModeMenu$OnFlashModeChangedListener;)V

    .line 476
    iput-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mInflatedMenu:Lcom/sec/android/app/camera/MenuBase;

    goto/16 :goto_0

    .line 479
    .end local v0           #menu:Lcom/sec/android/app/camera/FlashModeMenu;
    :cond_a
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mInflatedMenu:Lcom/sec/android/app/camera/MenuBase;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mInflatedMenu:Lcom/sec/android/app/camera/MenuBase;

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v3, 0x7f03001a

    iget-object v4, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 480
    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/CameraSideMenu;->setInflatedMenu(Lcom/sec/android/app/camera/MenuBase;)V

    .line 481
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    goto/16 :goto_0

    .line 483
    :cond_b
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v2, 0x7f03001a

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/FlashModeMenu;

    .line 484
    .restart local v0       #menu:Lcom/sec/android/app/camera/FlashModeMenu;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/FlashModeMenu;->showMenu()V

    .line 485
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/FlashModeMenu;->setOnFlashModeChangedListener(Lcom/sec/android/app/camera/FlashModeMenu$OnFlashModeChangedListener;)V

    .line 486
    iput-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mInflatedMenu:Lcom/sec/android/app/camera/MenuBase;

    goto/16 :goto_0

    .line 491
    .end local v0           #menu:Lcom/sec/android/app/camera/FlashModeMenu;
    :sswitch_5
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mInflatedMenu:Lcom/sec/android/app/camera/MenuBase;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mInflatedMenu:Lcom/sec/android/app/camera/MenuBase;

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v3, 0x7f030039

    iget-object v4, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 492
    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/CameraSideMenu;->setInflatedMenu(Lcom/sec/android/app/camera/MenuBase;)V

    .line 493
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    goto/16 :goto_0

    .line 495
    :cond_c
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v2, 0x7f030039

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/TimerMenu;

    .line 496
    .local v0, menu:Lcom/sec/android/app/camera/TimerMenu;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/TimerMenu;->showMenu()V

    .line 497
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/TimerMenu;->setOnTimerChangedListener(Lcom/sec/android/app/camera/TimerMenu$OnTimerChangedListener;)V

    .line 498
    iput-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mInflatedMenu:Lcom/sec/android/app/camera/MenuBase;

    goto/16 :goto_0

    .line 502
    .end local v0           #menu:Lcom/sec/android/app/camera/TimerMenu;
    :sswitch_6
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mInflatedMenu:Lcom/sec/android/app/camera/MenuBase;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mInflatedMenu:Lcom/sec/android/app/camera/MenuBase;

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v6, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 503
    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/CameraSideMenu;->setInflatedMenu(Lcom/sec/android/app/camera/MenuBase;)V

    .line 504
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    goto/16 :goto_0

    .line 506
    :cond_d
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v6, v2}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/ExposureValueMenu;

    .line 507
    .local v0, menu:Lcom/sec/android/app/camera/ExposureValueMenu;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/ExposureValueMenu;->showMenu()V

    .line 508
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/ExposureValueMenu;->setOnExposureValueChangedListener(Lcom/sec/android/app/camera/ExposureValueMenu$OnExposureValueChangedListener;)V

    .line 509
    iput-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mInflatedMenu:Lcom/sec/android/app/camera/MenuBase;

    goto/16 :goto_0

    .line 513
    .end local v0           #menu:Lcom/sec/android/app/camera/ExposureValueMenu;
    :sswitch_7
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    goto/16 :goto_0

    .line 516
    :sswitch_8
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v1, Lcom/sec/android/app/camera/Camera;

    const-string v2, "quickview"

    invoke-virtual {v1, v2, v5}, Lcom/sec/android/app/camera/Camera;->onLaunchGallery(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 517
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->isCaptureEnabled()Z

    move-result v1

    if-nez v1, :cond_e

    .line 518
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    .line 520
    :cond_e
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mRightSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/TwSideMenu;->resetPressedButtons()V

    .line 521
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mOverlappingMenu:Lcom/sec/android/app/camera/MenuBase;

    if-eqz v1, :cond_0

    .line 522
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mOverlappingMenu:Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/MenuBase;->getVisibility()Z

    move-result v1

    if-nez v1, :cond_0

    .line 523
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mOverlappingMenu:Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/MenuBase;->showMenu()V

    goto/16 :goto_0

    .line 529
    :sswitch_9
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const/16 v2, 0x1b

    invoke-virtual {v1, v2, v5}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 530
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mRightSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/TwSideMenu;->resetPressedButtons()V

    goto/16 :goto_0

    .line 429
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_4
        0x6 -> :sswitch_5
        0x7 -> :sswitch_6
        0x1b -> :sswitch_3
        0x1c -> :sswitch_7
        0x1d -> :sswitch_8
        0x20 -> :sswitch_9
    .end sparse-switch
.end method

.method public hideMenu()V
    .locals 2

    .prologue
    .line 639
    const-string v0, "CameraSideMenu"

    const-string v1, "hideMenu"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mAnimationEnabled:Z

    if-nez v0, :cond_0

    .line 642
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->hideMenu()V

    .line 653
    :goto_0
    return-void

    .line 646
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSideMenu;->hideShutterButton()V

    .line 647
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->showShutterButton()V

    .line 648
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->hideTrayButton()V

    .line 649
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSideMenu;->startHideAnimation()V

    .line 651
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->hideMenu()V

    .line 652
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget v1, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mBaseViewId:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public hideShutterButton()V
    .locals 2

    .prologue
    .line 299
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mShutterButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mShutterButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwImageButton;->setVisibility(I)V

    .line 301
    :cond_0
    return-void
.end method

.method public isAnimationInProgress()Z
    .locals 1

    .prologue
    .line 711
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mAnimInProgress:Z

    return v0
.end method

.method public onBack()V
    .locals 1

    .prologue
    .line 602
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->finish()V

    .line 603
    return-void
.end method

.method public onCameraSettingsChanged(II)V
    .locals 1
    .parameter "menu"
    .parameter "mode"

    .prologue
    .line 539
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mLeftSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/camera/widget/TwSideMenu;->updateButtonImage(II)V

    .line 540
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mRightSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/camera/widget/TwSideMenu;->updateButtonImage(II)V

    .line 542
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->invalidatePreview()V

    .line 544
    packed-switch p1, :pswitch_data_0

    .line 554
    :goto_0
    return-void

    .line 546
    :pswitch_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 547
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSideMenu;->setButtonLocked()V

    .line 548
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSideMenu;->resetPressedButtons()V

    goto :goto_0

    .line 550
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSideMenu;->setButtonUnlocked()V

    goto :goto_0

    .line 544
    nop

    :pswitch_data_0
    .packed-switch 0x22
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 715
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getLock()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 720
    :cond_0
    :goto_0
    return-void

    .line 718
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a005e

    if-ne v0, v1, :cond_0

    .line 719
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->hideSideMenu()V

    goto :goto_0
.end method

.method protected onHide()V
    .locals 1

    .prologue
    .line 689
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSideMenu;->stopHideMenuTimer()V

    .line 690
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mHidingSideMenu:Z

    .line 691
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onHide()V

    .line 692
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 723
    const/16 v0, 0x1b

    if-eq p1, v0, :cond_0

    const/16 v0, 0x17

    if-eq p1, v0, :cond_0

    const/16 v0, 0x42

    if-ne p1, v0, :cond_1

    .line 726
    :cond_0
    const/4 v0, 0x1

    .line 729
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 733
    const/16 v0, 0x1b

    if-eq p1, v0, :cond_0

    const/16 v0, 0x17

    if-eq p1, v0, :cond_0

    const/16 v0, 0x42

    if-ne p1, v0, :cond_1

    .line 736
    :cond_0
    const/4 v0, 0x1

    .line 739
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onShow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 568
    iput-boolean v1, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mHidingSideMenu:Z

    .line 569
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mHideAnimation:Z

    if-eqz v0, :cond_0

    .line 570
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSideMenu;->stopHideAnimation()V

    .line 571
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSideMenu;->resetPressedButtons()V

    .line 572
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mAutoHiding:Z

    if-eqz v0, :cond_1

    .line 573
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSideMenu;->startHideMenuTimer()V

    .line 574
    iput-boolean v1, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mAutoHiding:Z

    .line 577
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuDimController;->synchronizeDim()V

    .line 578
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "v"
    .parameter "arg1"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v1, 0x20

    .line 308
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    if-nez v0, :cond_0

    .line 309
    const-string v0, "CameraSideMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTouch : mActivityContext is null - MotionEvent["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    .line 365
    :goto_0
    return v0

    .line 313
    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mHidingSideMenu:Z

    if-eqz v0, :cond_1

    move v0, v3

    .line 314
    goto :goto_0

    .line 316
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSideMenu;->stopHideMenuTimer()V

    .line 317
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_1
    :pswitch_0
    move v0, v2

    .line 365
    goto :goto_0

    .line 319
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v1, :cond_2

    .line 320
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mInflatedMenu:Lcom/sec/android/app/camera/MenuBase;

    if-eqz v0, :cond_2

    .line 321
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mInflatedMenu:Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->hideMenu()V

    .line 323
    :cond_2
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/CameraSideMenu;->handleTouchDown(Landroid/view/View;)V

    .line 324
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mOverlappingMenu:Lcom/sec/android/app/camera/MenuBase;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v1, :cond_3

    .line 325
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mOverlappingMenu:Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->getVisibility()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 326
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mOverlappingMenu:Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->hideMenu()V

    .line 329
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->invalidatePreview()V

    goto :goto_1

    .line 332
    :pswitch_2
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/CameraSideMenu;->handleTouchUp(Landroid/view/View;)V

    .line 333
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v1, :cond_5

    .line 334
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mContinousProgressing:Z

    if-eq v0, v2, :cond_4

    .line 335
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->resetTouchFocus()V

    .line 343
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->invalidatePreview()V

    goto :goto_1

    .line 338
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mInflatedMenu:Lcom/sec/android/app/camera/MenuBase;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mInflatedMenu:Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->getVisibility()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 339
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    .line 340
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onInflatedMenuHidden()V

    goto :goto_2

    .line 346
    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, p2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 347
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mOverlappingMenu:Lcom/sec/android/app/camera/MenuBase;

    if-eqz v0, :cond_6

    .line 348
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mOverlappingMenu:Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->getVisibility()Z

    move-result v0

    if-nez v0, :cond_6

    .line 349
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mOverlappingMenu:Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->showMenu()V

    .line 351
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mInflatedMenu:Lcom/sec/android/app/camera/MenuBase;

    if-eqz v0, :cond_7

    .line 352
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mInflatedMenu:Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->getVisibility()Z

    move-result v0

    if-nez v0, :cond_7

    .line 353
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mInflatedMenu:Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->showMenu()V

    .line 355
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_8

    iget-boolean v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mContinousProgressing:Z

    if-eqz v0, :cond_8

    .line 356
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/CameraSideMenu;->handleTouchUp(Landroid/view/View;)V

    .line 357
    iput-boolean v3, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mContinousProgressing:Z

    .line 359
    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->invalidatePreview()V

    goto/16 :goto_1

    .line 317
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public resetPressedButtons()V
    .locals 1

    .prologue
    .line 581
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mLeftSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/TwSideMenu;->resetPressedButtons()V

    .line 582
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mRightSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/TwSideMenu;->resetPressedButtons()V

    .line 583
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mTrayButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    if-eqz v0, :cond_0

    .line 584
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mTrayButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/TwImageButton;->refreshButtonImage()V

    .line 585
    :cond_0
    return-void
.end method

.method public restoreMenu()V
    .locals 1

    .prologue
    .line 606
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mAnimationEnabled:Z

    if-nez v0, :cond_0

    .line 607
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->restoreMenu()V

    .line 615
    :goto_0
    return-void

    .line 611
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->hideTrayButton()V

    .line 612
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSideMenu;->startShowAnimation()V

    .line 614
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->restoreMenu()V

    goto :goto_0
.end method

.method public setAnimationEnabled(Z)V
    .locals 0
    .parameter "mAnimationEnabled"

    .prologue
    .line 699
    iput-boolean p1, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mAnimationEnabled:Z

    .line 700
    return-void
.end method

.method public setInflatedMenu(Lcom/sec/android/app/camera/MenuBase;)V
    .locals 0
    .parameter "menu"

    .prologue
    .line 707
    iput-object p1, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mInflatedMenu:Lcom/sec/android/app/camera/MenuBase;

    .line 708
    return-void
.end method

.method public setOverLappingMenu(Lcom/sec/android/app/camera/MenuBase;)V
    .locals 0
    .parameter "menu"

    .prologue
    .line 677
    iput-object p1, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mOverlappingMenu:Lcom/sec/android/app/camera/MenuBase;

    .line 678
    return-void
.end method

.method public showShutterButton()V
    .locals 2

    .prologue
    .line 304
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mShutterButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mShutterButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwImageButton;->setVisibility(I)V

    .line 306
    :cond_0
    return-void
.end method

.method public stopHideMenuTimer()V
    .locals 2

    .prologue
    .line 695
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mHideMenuTimeoutHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mHideMenuTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 696
    return-void
.end method

.method public updateBackgroundTransparency()V
    .locals 2

    .prologue
    .line 557
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/camera/CameraResolution;->isWideResolution(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 558
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mLeftSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    iget v1, p0, Lcom/sec/android/app/camera/CameraSideMenu;->leftTransparentBackground:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwSideMenu;->setBackgroundResource(I)V

    .line 559
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mRightSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    iget v1, p0, Lcom/sec/android/app/camera/CameraSideMenu;->rightTransparentBackground:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwSideMenu;->setBackgroundResource(I)V

    .line 564
    :goto_0
    return-void

    .line 561
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mLeftSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    iget v1, p0, Lcom/sec/android/app/camera/CameraSideMenu;->leftOpaqueBackground:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwSideMenu;->setBackgroundResource(I)V

    .line 562
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mRightSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    iget v1, p0, Lcom/sec/android/app/camera/CameraSideMenu;->rightOpaqueBackground:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwSideMenu;->setBackgroundResource(I)V

    goto :goto_0
.end method
