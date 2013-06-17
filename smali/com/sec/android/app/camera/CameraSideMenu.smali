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

    .line 141
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

    .line 127
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mHideMenuTimeoutHandler:Landroid/os/Handler;

    .line 128
    new-instance v0, Lcom/sec/android/app/camera/CameraSideMenu$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/CameraSideMenu$3;-><init>(Lcom/sec/android/app/camera/CameraSideMenu;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mHideMenuTimeoutRunnable:Ljava/lang/Runnable;

    .line 143
    iput-object p7, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mCameraSideMenuResourceData:Lcom/sec/android/app/camera/CameraSideMenuResourceData;

    .line 144
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/CameraSideMenu;->setTouchHandled(Z)V

    .line 145
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSideMenu;->init()V

    .line 147
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/CameraSettings;->registerCameraSettingsChangedObserver(Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;)V

    .line 148
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/CameraSettings;->registerCameraSettingsUIChangedObserver(Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;)V

    .line 149
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
    .locals 13

    .prologue
    .line 152
    const/4 v5, 0x0

    .line 153
    .local v5, modeButton:Lcom/sec/android/app/camera/widget/TwImageButton;
    const/4 v7, 0x0

    .line 154
    .local v7, sceneButton:Lcom/sec/android/app/camera/widget/TwImageButton;
    const/4 v8, 0x0

    .line 155
    .local v8, shootingModeButton:Lcom/sec/android/app/camera/widget/TwImageButton;
    const/4 v2, 0x0

    .line 156
    .local v2, exposureValueButton:Lcom/sec/android/app/camera/widget/TwImageButton;
    const/4 v3, 0x0

    .line 158
    .local v3, imageViewerButton:Lcom/sec/android/app/camera/widget/TwImageButton;
    iget-object v9, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v10, 0x7f0a005c

    invoke-virtual {v9, v10}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/TwSideMenu;

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mLeftSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    .line 159
    iget-object v9, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v10, 0x7f0a005d

    invoke-virtual {v9, v10}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/TwSideMenu;

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mRightSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    .line 161
    iget-object v9, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mLeftSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    iget-object v10, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mCameraSideMenuResourceData:Lcom/sec/android/app/camera/CameraSideMenuResourceData;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/CameraSideMenuResourceData;->getResource()Ljava/util/HashMap;

    move-result-object v10

    invoke-virtual {v9, v10, p0}, Lcom/sec/android/app/camera/widget/TwSideMenu;->initSideMenu(Ljava/util/HashMap;Landroid/view/View$OnTouchListener;)V

    .line 162
    iget-object v9, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mRightSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    iget-object v10, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mCameraSideMenuResourceData:Lcom/sec/android/app/camera/CameraSideMenuResourceData;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/CameraSideMenuResourceData;->getResource()Ljava/util/HashMap;

    move-result-object v10

    invoke-virtual {v9, v10, p0}, Lcom/sec/android/app/camera/widget/TwSideMenu;->initSideMenu(Ljava/util/HashMap;Landroid/view/View$OnTouchListener;)V

    .line 164
    iget-object v9, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v10, 0x7f0a005f

    invoke-virtual {v9, v10}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/camera/widget/TwSideMenuPopupTextLayout;

    .line 166
    .local v4, lPopups:Lcom/sec/android/app/camera/widget/TwSideMenuPopupTextLayout;
    iget-object v9, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v10, 0x7f0a0060

    invoke-virtual {v9, v10}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/camera/widget/TwSideMenuPopupTextLayout;

    .line 169
    .local v6, rPopups:Lcom/sec/android/app/camera/widget/TwSideMenuPopupTextLayout;
    iget-object v9, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mCameraSideMenuResourceData:Lcom/sec/android/app/camera/CameraSideMenuResourceData;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CameraSideMenuResourceData;->getResource()Ljava/util/HashMap;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/sec/android/app/camera/widget/TwSideMenuPopupTextLayout;->initResources(Ljava/util/HashMap;)V

    .line 170
    iget-object v9, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mCameraSideMenuResourceData:Lcom/sec/android/app/camera/CameraSideMenuResourceData;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CameraSideMenuResourceData;->getResource()Ljava/util/HashMap;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/sec/android/app/camera/widget/TwSideMenuPopupTextLayout;->initResources(Ljava/util/HashMap;)V

    .line 206
    iget-object v9, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mLeftSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    const/4 v10, 0x1

    const/4 v11, 0x1

    invoke-virtual {v4, v11}, Lcom/sec/android/app/camera/widget/TwSideMenuPopupTextLayout;->addPopupText(I)Landroid/widget/LinearLayout;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/sec/android/app/camera/widget/TwSideMenu;->addSideMenuButton(ILandroid/widget/LinearLayout;)V

    .line 214
    iget-object v9, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mLeftSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    const/4 v10, 0x2

    const/4 v11, 0x2

    invoke-virtual {v4, v11}, Lcom/sec/android/app/camera/widget/TwSideMenuPopupTextLayout;->addPopupText(I)Landroid/widget/LinearLayout;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/sec/android/app/camera/widget/TwSideMenu;->addSideMenuButton(ILandroid/widget/LinearLayout;)V

    .line 217
    iget-object v9, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mLeftSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    const/4 v10, 0x7

    const/4 v11, 0x7

    invoke-virtual {v4, v11}, Lcom/sec/android/app/camera/widget/TwSideMenuPopupTextLayout;->addPopupText(I)Landroid/widget/LinearLayout;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/sec/android/app/camera/widget/TwSideMenu;->addSideMenuButton(ILandroid/widget/LinearLayout;)V

    .line 220
    iget-object v9, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mLeftSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    const/16 v10, 0x1b

    const/16 v11, 0x1b

    invoke-virtual {v4, v11}, Lcom/sec/android/app/camera/widget/TwSideMenuPopupTextLayout;->addPopupText(I)Landroid/widget/LinearLayout;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/sec/android/app/camera/widget/TwSideMenu;->addSideMenuButton(ILandroid/widget/LinearLayout;)V

    .line 222
    iget-object v9, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mLeftSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    const/16 v10, 0x1b

    invoke-virtual {v9, v10}, Lcom/sec/android/app/camera/widget/TwSideMenu;->setBottomButton(I)V

    .line 223
    iget-object v9, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mRightSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v6, v11}, Lcom/sec/android/app/camera/widget/TwSideMenuPopupTextLayout;->addPopupText(I)Landroid/widget/LinearLayout;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/sec/android/app/camera/widget/TwSideMenu;->addSideMenuButton(ILandroid/widget/LinearLayout;)V

    .line 225
    iget-object v9, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mRightSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    const/16 v10, 0x20

    const/16 v11, 0x20

    const/4 v12, 0x2

    invoke-virtual {v6, v11, v12}, Lcom/sec/android/app/camera/widget/TwSideMenuPopupTextLayout;->addEmptyPopupText(II)Landroid/widget/LinearLayout;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/sec/android/app/camera/widget/TwSideMenu;->addSideMenuButton(ILandroid/widget/LinearLayout;)V

    .line 227
    iget-object v9, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mRightSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    const/16 v10, 0x1d

    const/16 v11, 0x1d

    invoke-virtual {v6, v11}, Lcom/sec/android/app/camera/widget/TwSideMenuPopupTextLayout;->addPopupText(I)Landroid/widget/LinearLayout;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/sec/android/app/camera/widget/TwSideMenu;->addSideMenuButton(ILandroid/widget/LinearLayout;)V

    .line 229
    iget-object v9, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mRightSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    const/16 v10, 0x1d

    invoke-virtual {v9, v10}, Lcom/sec/android/app/camera/widget/TwSideMenu;->setBottomButton(I)V

    .line 231
    iget-object v9, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mRightSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/sec/android/app/camera/widget/TwSideMenu;->getSideMenuButton(I)Lcom/sec/android/app/camera/widget/TwImageButton;

    move-result-object v5

    .line 232
    iget-object v9, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mLeftSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Lcom/sec/android/app/camera/widget/TwSideMenu;->getSideMenuButton(I)Lcom/sec/android/app/camera/widget/TwImageButton;

    move-result-object v7

    .line 233
    iget-object v9, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mLeftSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/sec/android/app/camera/widget/TwSideMenu;->getSideMenuButton(I)Lcom/sec/android/app/camera/widget/TwImageButton;

    move-result-object v8

    .line 234
    iget-object v9, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mLeftSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    const/4 v10, 0x7

    invoke-virtual {v9, v10}, Lcom/sec/android/app/camera/widget/TwSideMenu;->getSideMenuButton(I)Lcom/sec/android/app/camera/widget/TwImageButton;

    move-result-object v2

    .line 235
    iget-object v9, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mRightSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    const/16 v10, 0x1d

    invoke-virtual {v9, v10}, Lcom/sec/android/app/camera/widget/TwSideMenu;->getSideMenuButton(I)Lcom/sec/android/app/camera/widget/TwImageButton;

    move-result-object v3

    .line 237
    iget-object v9, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mRightSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    const/16 v10, 0x20

    invoke-virtual {v9, v10}, Lcom/sec/android/app/camera/widget/TwSideMenu;->getSideMenuButton(I)Lcom/sec/android/app/camera/widget/TwImageButton;

    move-result-object v9

    iput-object v9, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mShutterButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    .line 240
    const v9, 0x7f020070

    iput v9, p0, Lcom/sec/android/app/camera/CameraSideMenu;->leftTransparentBackground:I

    .line 241
    const v9, 0x7f02006f

    iput v9, p0, Lcom/sec/android/app/camera/CameraSideMenu;->leftOpaqueBackground:I

    .line 247
    const v9, 0x7f0201de

    iput v9, p0, Lcom/sec/android/app/camera/CameraSideMenu;->rightTransparentBackground:I

    .line 248
    const v9, 0x7f0201dd

    iput v9, p0, Lcom/sec/android/app/camera/CameraSideMenu;->rightOpaqueBackground:I

    .line 255
    iget-object v9, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v10, 0x7f0a005e

    invoke-virtual {v9, v10}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 256
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mTrayButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    .line 259
    iget-object v9, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    .line 260
    .local v0, dimController:Lcom/sec/android/app/camera/MenuDimController;
    const/4 v9, 0x0

    invoke-virtual {v0, v9, v5}, Lcom/sec/android/app/camera/MenuDimController;->addButton(ILcom/sec/android/app/camera/widget/TwImageButton;)V

    .line 261
    const/4 v9, 0x4

    invoke-virtual {v0, v9, v7}, Lcom/sec/android/app/camera/MenuDimController;->addButton(ILcom/sec/android/app/camera/widget/TwImageButton;)V

    .line 262
    const/4 v9, 0x5

    invoke-virtual {v0, v9, v8}, Lcom/sec/android/app/camera/MenuDimController;->addButton(ILcom/sec/android/app/camera/widget/TwImageButton;)V

    .line 263
    const/16 v9, 0xf

    invoke-virtual {v0, v9, v2}, Lcom/sec/android/app/camera/MenuDimController;->addButton(ILcom/sec/android/app/camera/widget/TwImageButton;)V

    .line 264
    const/16 v9, 0x17

    invoke-virtual {v0, v9, v3}, Lcom/sec/android/app/camera/MenuDimController;->addButton(ILcom/sec/android/app/camera/widget/TwImageButton;)V

    .line 265
    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuDimController;->synchronizeDim()V

    .line 267
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSideMenu;->updateBackgroundTransparency()V

    .line 270
    iget-object v9, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v9

    invoke-interface {v9}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 271
    .local v1, display:Landroid/view/Display;
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v9

    const/16 v10, 0x190

    if-gt v9, v10, :cond_0

    .line 272
    const/16 v9, 0xa

    iput v9, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mAnimDelta:I

    .line 276
    :goto_0
    return-void

    .line 274
    :cond_0
    const/16 v9, 0x14

    iput v9, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mAnimDelta:I

    goto :goto_0
.end method

.method private setButtonLocked()V
    .locals 2

    .prologue
    .line 580
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mLeftSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/TwSideMenu;->setButtonLocked()V

    .line 581
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mRightSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/TwSideMenu;->setButtonLocked()V

    .line 582
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mTrayButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    if-eqz v0, :cond_0

    .line 583
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mTrayButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwImageButton;->setDisabled(Z)V

    .line 584
    :cond_0
    return-void
.end method

.method private setButtonUnlocked()V
    .locals 2

    .prologue
    .line 587
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mLeftSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/TwSideMenu;->setButtonUnlocked()V

    .line 588
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mRightSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/TwSideMenu;->setButtonUnlocked()V

    .line 589
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mTrayButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    if-eqz v0, :cond_0

    .line 590
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mTrayButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwImageButton;->setDisabled(Z)V

    .line 591
    :cond_0
    return-void
.end method

.method private startHideAnimation()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 661
    iput-boolean v2, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mHideAnimation:Z

    .line 662
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget v1, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mBaseViewId:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 664
    iput-boolean v2, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mAnimInProgress:Z

    .line 665
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mAnimHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mHideAnimRunnable:Ljava/lang/Runnable;

    iget v2, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mAnimDelay:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 666
    return-void
.end method

.method private startHideMenuTimer()V
    .locals 4

    .prologue
    .line 677
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mHideMenuTimeoutHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mHideMenuTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 678
    return-void
.end method

.method private startShowAnimation()V
    .locals 4

    .prologue
    .line 623
    const-string v0, "CameraSideMenu"

    const-string v1, "startShowAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget v1, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mBaseViewId:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 626
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mAnimInProgress:Z

    .line 627
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mAnimHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mShowAnimRunnable:Ljava/lang/Runnable;

    iget v2, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mAnimDelay:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 628
    return-void
.end method

.method private stopHideAnimation()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 648
    iput-boolean v2, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mHideAnimation:Z

    .line 649
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSideMenu;->getVisibility()Z

    move-result v0

    if-nez v0, :cond_0

    .line 650
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget v1, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mBaseViewId:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 651
    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mAnimInProgress:Z

    if-nez v0, :cond_1

    .line 658
    :goto_0
    return-void

    .line 654
    :cond_1
    iput-boolean v2, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mAnimInProgress:Z

    .line 655
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mAnimHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mHideAnimRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 657
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSideMenu;->setAnimationEnabled(Z)V

    goto :goto_0
.end method

.method private stopShowAnimation()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 610
    const-string v0, "CameraSideMenu"

    const-string v1, "stopShowAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSideMenu;->getVisibility()Z

    move-result v0

    if-nez v0, :cond_0

    .line 612
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget v1, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mBaseViewId:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 613
    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mAnimInProgress:Z

    if-nez v0, :cond_1

    .line 620
    :goto_0
    return-void

    .line 616
    :cond_1
    iput-boolean v2, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mAnimInProgress:Z

    .line 617
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mAnimHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mShowAnimRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 619
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

    .line 349
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isCapturing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 350
    const-string v0, "CameraSideMenu"

    const-string v0, "return isCapturing.."

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    :goto_0
    return-void

    .line 354
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isContinuousShotInProgress()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 355
    const-string v0, "CameraSideMenu"

    const-string v0, "return isContinuousShotInProgress.."

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 359
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isStartPreview()Z

    move-result v0

    if-nez v0, :cond_2

    .line 360
    const-string v0, "CameraSideMenu"

    const-string v0, "return isStartPreview.."

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 364
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getIsLaunchGallery()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 365
    const-string v0, "CameraSideMenu"

    const-string v0, "return getIsLaunchGallery.."

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 369
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 377
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_0

    .line 371
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    if-ne v0, v2, :cond_4

    .line 372
    iput-boolean v2, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mContinousProgressing:Z

    .line 374
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const/16 v1, 0x1b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    goto :goto_0

    .line 369
    :pswitch_data_0
    .packed-switch 0x20
        :pswitch_0
    .end packed-switch
.end method

.method public handleTouchUp(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    const v7, 0x7f030018

    const v5, 0x7f03000e

    const/16 v3, 0x20

    const/4 v6, 0x0

    const-string v4, "CameraSideMenu"

    .line 382
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mRightSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/widget/TwSideMenu;->resetPressedButtons()V

    .line 383
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mLeftSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/widget/TwSideMenu;->resetPressedButtons()V

    .line 384
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    if-nez v2, :cond_1

    .line 526
    :cond_0
    :goto_0
    return-void

    .line 388
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/MenuDimController;->synchronizeDim()V

    .line 390
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v2, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->isCapturing()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 391
    const-string v2, "CameraSideMenu"

    const-string v2, "return isCapturing.."

    invoke-static {v4, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 395
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v2, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->isStartPreview()Z

    move-result v2

    if-nez v2, :cond_3

    .line 396
    const-string v2, "CameraSideMenu"

    const-string v2, "return isStartPreview.."

    invoke-static {v4, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 400
    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v2, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getIsLaunchGallery()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 401
    const-string v2, "CameraSideMenu"

    const-string v2, "return getIsLaunchGallery.."

    invoke-static {v4, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 404
    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v2, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->isContinuousShotInProgress()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v3, :cond_0

    .line 409
    :cond_5
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 411
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v2, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->isTimerCounting()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, v3, :cond_6

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x1c

    if-eq v2, v3, :cond_6

    .line 414
    const-string v2, "CameraSideMenu"

    const-string v2, "return isTimerCounting.."

    invoke-static {v4, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 418
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_0

    .line 420
    :sswitch_0
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onModechanged()V

    goto/16 :goto_0

    .line 433
    :sswitch_1
    const v1, 0x7f030032

    .line 436
    .local v1, modeFile:I
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mInflatedMenu:Lcom/sec/android/app/camera/MenuBase;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mInflatedMenu:Lcom/sec/android/app/camera/MenuBase;

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    iget-object v4, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1, v4}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 437
    invoke-virtual {p0, v6}, Lcom/sec/android/app/camera/CameraSideMenu;->setInflatedMenu(Lcom/sec/android/app/camera/MenuBase;)V

    .line 438
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    goto/16 :goto_0

    .line 440
    :cond_7
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/ShootingModeMenu;

    .line 441
    .local v0, menu:Lcom/sec/android/app/camera/ShootingModeMenu;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/ShootingModeMenu;->showMenu()V

    .line 442
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/ShootingModeMenu;->setOnShootingModeChangedListener(Lcom/sec/android/app/camera/ShootingModeMenu$OnShootingModeChangedListener;)V

    .line 443
    iput-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mInflatedMenu:Lcom/sec/android/app/camera/MenuBase;

    goto/16 :goto_0

    .line 447
    .end local v0           #menu:Lcom/sec/android/app/camera/ShootingModeMenu;
    .end local v1           #modeFile:I
    :sswitch_2
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mInflatedMenu:Lcom/sec/android/app/camera/MenuBase;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mInflatedMenu:Lcom/sec/android/app/camera/MenuBase;

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v4, 0x7f03002f

    iget-object v5, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 448
    invoke-virtual {p0, v6}, Lcom/sec/android/app/camera/CameraSideMenu;->setInflatedMenu(Lcom/sec/android/app/camera/MenuBase;)V

    .line 449
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    goto/16 :goto_0

    .line 451
    :cond_8
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v3, 0x7f03002f

    iget-object v4, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/SceneModeMenu;

    .line 452
    .local v0, menu:Lcom/sec/android/app/camera/SceneModeMenu;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/SceneModeMenu;->showMenu()V

    .line 453
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/SceneModeMenu;->setOnSceneModeChangedListener(Lcom/sec/android/app/camera/SceneModeMenu$OnSceneModeChangedListener;)V

    .line 454
    iput-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mInflatedMenu:Lcom/sec/android/app/camera/MenuBase;

    goto/16 :goto_0

    .line 458
    .end local v0           #menu:Lcom/sec/android/app/camera/SceneModeMenu;
    :sswitch_3
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mInflatedMenu:Lcom/sec/android/app/camera/MenuBase;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mInflatedMenu:Lcom/sec/android/app/camera/MenuBase;

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    iget-object v4, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v5, v4}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 459
    invoke-virtual {p0, v6}, Lcom/sec/android/app/camera/CameraSideMenu;->setInflatedMenu(Lcom/sec/android/app/camera/MenuBase;)V

    .line 460
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    goto/16 :goto_0

    .line 463
    :cond_9
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v5, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/CameraSettingsMenu;

    .line 464
    .local v0, menu:Lcom/sec/android/app/camera/CameraSettingsMenu;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettingsMenu;->showMenu()V

    .line 465
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettingsMenu;->refreashButtonText()V

    .line 466
    iput-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mInflatedMenu:Lcom/sec/android/app/camera/MenuBase;

    goto/16 :goto_0

    .line 470
    .end local v0           #menu:Lcom/sec/android/app/camera/CameraSettingsMenu;
    :sswitch_4
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mInflatedMenu:Lcom/sec/android/app/camera/MenuBase;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mInflatedMenu:Lcom/sec/android/app/camera/MenuBase;

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v4, 0x7f030019

    iget-object v5, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 471
    invoke-virtual {p0, v6}, Lcom/sec/android/app/camera/CameraSideMenu;->setInflatedMenu(Lcom/sec/android/app/camera/MenuBase;)V

    .line 472
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    goto/16 :goto_0

    .line 474
    :cond_a
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v3, 0x7f030019

    iget-object v4, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/FlashModeMenu;

    .line 475
    .local v0, menu:Lcom/sec/android/app/camera/FlashModeMenu;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/FlashModeMenu;->showMenu()V

    .line 476
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/FlashModeMenu;->setOnFlashModeChangedListener(Lcom/sec/android/app/camera/FlashModeMenu$OnFlashModeChangedListener;)V

    .line 477
    iput-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mInflatedMenu:Lcom/sec/android/app/camera/MenuBase;

    goto/16 :goto_0

    .line 481
    .end local v0           #menu:Lcom/sec/android/app/camera/FlashModeMenu;
    :sswitch_5
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mInflatedMenu:Lcom/sec/android/app/camera/MenuBase;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mInflatedMenu:Lcom/sec/android/app/camera/MenuBase;

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v4, 0x7f03003a

    iget-object v5, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 482
    invoke-virtual {p0, v6}, Lcom/sec/android/app/camera/CameraSideMenu;->setInflatedMenu(Lcom/sec/android/app/camera/MenuBase;)V

    .line 483
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    goto/16 :goto_0

    .line 485
    :cond_b
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v3, 0x7f03003a

    iget-object v4, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/TimerMenu;

    .line 486
    .local v0, menu:Lcom/sec/android/app/camera/TimerMenu;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/TimerMenu;->showMenu()V

    .line 487
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/TimerMenu;->setOnTimerChangedListener(Lcom/sec/android/app/camera/TimerMenu$OnTimerChangedListener;)V

    .line 488
    iput-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mInflatedMenu:Lcom/sec/android/app/camera/MenuBase;

    goto/16 :goto_0

    .line 492
    .end local v0           #menu:Lcom/sec/android/app/camera/TimerMenu;
    :sswitch_6
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mInflatedMenu:Lcom/sec/android/app/camera/MenuBase;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mInflatedMenu:Lcom/sec/android/app/camera/MenuBase;

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    iget-object v4, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v7, v4}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 493
    invoke-virtual {p0, v6}, Lcom/sec/android/app/camera/CameraSideMenu;->setInflatedMenu(Lcom/sec/android/app/camera/MenuBase;)V

    .line 494
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    goto/16 :goto_0

    .line 496
    :cond_c
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v7, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/ExposureValueMenu;

    .line 497
    .local v0, menu:Lcom/sec/android/app/camera/ExposureValueMenu;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/ExposureValueMenu;->showMenu()V

    .line 498
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/ExposureValueMenu;->setOnExposureValueChangedListener(Lcom/sec/android/app/camera/ExposureValueMenu$OnExposureValueChangedListener;)V

    .line 499
    iput-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mInflatedMenu:Lcom/sec/android/app/camera/MenuBase;

    goto/16 :goto_0

    .line 503
    .end local v0           #menu:Lcom/sec/android/app/camera/ExposureValueMenu;
    :sswitch_7
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    goto/16 :goto_0

    .line 506
    :sswitch_8
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v2, Lcom/sec/android/app/camera/Camera;

    const-string v3, "quickview"

    invoke-virtual {v2, v3, v6}, Lcom/sec/android/app/camera/Camera;->onLaunchGallery(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 507
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->isCaptureEnabled()Z

    move-result v2

    if-nez v2, :cond_d

    .line 508
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    .line 510
    :cond_d
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mRightSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/widget/TwSideMenu;->resetPressedButtons()V

    .line 511
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mOverlappingMenu:Lcom/sec/android/app/camera/MenuBase;

    if-eqz v2, :cond_0

    .line 512
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mOverlappingMenu:Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/MenuBase;->getVisibility()Z

    move-result v2

    if-nez v2, :cond_0

    .line 513
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mOverlappingMenu:Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/MenuBase;->showMenu()V

    goto/16 :goto_0

    .line 519
    :sswitch_9
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const/16 v3, 0x1b

    invoke-virtual {v2, v3, v6}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 520
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mRightSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/widget/TwSideMenu;->resetPressedButtons()V

    goto/16 :goto_0

    .line 418
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
    .line 631
    const-string v0, "CameraSideMenu"

    const-string v1, "hideMenu"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mAnimationEnabled:Z

    if-nez v0, :cond_0

    .line 634
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->hideMenu()V

    .line 645
    :goto_0
    return-void

    .line 638
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSideMenu;->hideShutterButton()V

    .line 639
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->showShutterButton()V

    .line 640
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->hideTrayButton()V

    .line 641
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSideMenu;->startHideAnimation()V

    .line 643
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->hideMenu()V

    .line 644
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
    .line 279
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mShutterButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mShutterButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwImageButton;->setVisibility(I)V

    .line 281
    :cond_0
    return-void
.end method

.method public isAnimationInProgress()Z
    .locals 1

    .prologue
    .line 703
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mAnimInProgress:Z

    return v0
.end method

.method public onBack()V
    .locals 1

    .prologue
    .line 594
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->finish()V

    .line 595
    return-void
.end method

.method public onCameraSettingsChanged(II)V
    .locals 1
    .parameter "menu"
    .parameter "mode"

    .prologue
    .line 529
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mLeftSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/camera/widget/TwSideMenu;->updateButtonImage(II)V

    .line 530
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mRightSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/camera/widget/TwSideMenu;->updateButtonImage(II)V

    .line 532
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->invalidatePreview()V

    .line 534
    packed-switch p1, :pswitch_data_0

    .line 544
    :goto_0
    return-void

    .line 536
    :pswitch_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 537
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSideMenu;->setButtonLocked()V

    .line 538
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSideMenu;->resetPressedButtons()V

    goto :goto_0

    .line 540
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSideMenu;->setButtonUnlocked()V

    goto :goto_0

    .line 534
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
    .line 707
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getLock()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 712
    :cond_0
    :goto_0
    return-void

    .line 710
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a005e

    if-ne v0, v1, :cond_0

    .line 711
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->hideSideMenu()V

    goto :goto_0
.end method

.method protected onHide()V
    .locals 1

    .prologue
    .line 681
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSideMenu;->stopHideMenuTimer()V

    .line 682
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mHidingSideMenu:Z

    .line 683
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onHide()V

    .line 684
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 715
    const/16 v0, 0x1b

    if-eq p1, v0, :cond_0

    const/16 v0, 0x17

    if-eq p1, v0, :cond_0

    const/16 v0, 0x42

    if-ne p1, v0, :cond_1

    .line 718
    :cond_0
    const/4 v0, 0x1

    .line 721
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
    .line 725
    const/16 v0, 0x1b

    if-eq p1, v0, :cond_0

    const/16 v0, 0x17

    if-eq p1, v0, :cond_0

    const/16 v0, 0x42

    if-ne p1, v0, :cond_1

    .line 728
    :cond_0
    const/4 v0, 0x1

    .line 731
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

    .line 560
    iput-boolean v1, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mHidingSideMenu:Z

    .line 561
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mHideAnimation:Z

    if-eqz v0, :cond_0

    .line 562
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSideMenu;->stopHideAnimation()V

    .line 563
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSideMenu;->resetPressedButtons()V

    .line 564
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mAutoHiding:Z

    if-eqz v0, :cond_1

    .line 565
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSideMenu;->startHideMenuTimer()V

    .line 566
    iput-boolean v1, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mAutoHiding:Z

    .line 569
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuDimController;->synchronizeDim()V

    .line 570
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

    .line 288
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    if-nez v0, :cond_0

    .line 289
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

    .line 345
    :goto_0
    return v0

    .line 293
    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mHidingSideMenu:Z

    if-eqz v0, :cond_1

    move v0, v3

    .line 294
    goto :goto_0

    .line 296
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSideMenu;->stopHideMenuTimer()V

    .line 297
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_1
    :pswitch_0
    move v0, v2

    .line 345
    goto :goto_0

    .line 299
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v1, :cond_2

    .line 300
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mInflatedMenu:Lcom/sec/android/app/camera/MenuBase;

    if-eqz v0, :cond_2

    .line 301
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mInflatedMenu:Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->hideMenu()V

    .line 303
    :cond_2
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/CameraSideMenu;->handleTouchDown(Landroid/view/View;)V

    .line 304
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mOverlappingMenu:Lcom/sec/android/app/camera/MenuBase;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v1, :cond_3

    .line 305
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mOverlappingMenu:Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->getVisibility()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 306
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mOverlappingMenu:Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->hideMenu()V

    .line 309
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->invalidatePreview()V

    goto :goto_1

    .line 312
    :pswitch_2
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/CameraSideMenu;->handleTouchUp(Landroid/view/View;)V

    .line 313
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v1, :cond_5

    .line 314
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mContinousProgressing:Z

    if-eq v0, v2, :cond_4

    .line 315
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->resetTouchFocus()V

    .line 323
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->invalidatePreview()V

    goto :goto_1

    .line 318
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mInflatedMenu:Lcom/sec/android/app/camera/MenuBase;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mInflatedMenu:Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->getVisibility()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 319
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    .line 320
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onInflatedMenuHidden()V

    goto :goto_2

    .line 326
    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, p2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 327
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mOverlappingMenu:Lcom/sec/android/app/camera/MenuBase;

    if-eqz v0, :cond_6

    .line 328
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mOverlappingMenu:Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->getVisibility()Z

    move-result v0

    if-nez v0, :cond_6

    .line 329
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mOverlappingMenu:Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->showMenu()V

    .line 331
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mInflatedMenu:Lcom/sec/android/app/camera/MenuBase;

    if-eqz v0, :cond_7

    .line 332
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mInflatedMenu:Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->getVisibility()Z

    move-result v0

    if-nez v0, :cond_7

    .line 333
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mInflatedMenu:Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->showMenu()V

    .line 335
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_8

    iget-boolean v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mContinousProgressing:Z

    if-eqz v0, :cond_8

    .line 336
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/CameraSideMenu;->handleTouchUp(Landroid/view/View;)V

    .line 337
    iput-boolean v3, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mContinousProgressing:Z

    .line 339
    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->invalidatePreview()V

    goto/16 :goto_1

    .line 297
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
    .line 573
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mLeftSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/TwSideMenu;->resetPressedButtons()V

    .line 574
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mRightSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/TwSideMenu;->resetPressedButtons()V

    .line 575
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mTrayButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    if-eqz v0, :cond_0

    .line 576
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mTrayButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/TwImageButton;->refreshButtonImage()V

    .line 577
    :cond_0
    return-void
.end method

.method public restoreMenu()V
    .locals 1

    .prologue
    .line 598
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mAnimationEnabled:Z

    if-nez v0, :cond_0

    .line 599
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->restoreMenu()V

    .line 607
    :goto_0
    return-void

    .line 603
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->hideTrayButton()V

    .line 604
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSideMenu;->startShowAnimation()V

    .line 606
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->restoreMenu()V

    goto :goto_0
.end method

.method public setAnimationEnabled(Z)V
    .locals 0
    .parameter "mAnimationEnabled"

    .prologue
    .line 691
    iput-boolean p1, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mAnimationEnabled:Z

    .line 692
    return-void
.end method

.method public setInflatedMenu(Lcom/sec/android/app/camera/MenuBase;)V
    .locals 0
    .parameter "menu"

    .prologue
    .line 699
    iput-object p1, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mInflatedMenu:Lcom/sec/android/app/camera/MenuBase;

    .line 700
    return-void
.end method

.method public setOverLappingMenu(Lcom/sec/android/app/camera/MenuBase;)V
    .locals 0
    .parameter "menu"

    .prologue
    .line 669
    iput-object p1, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mOverlappingMenu:Lcom/sec/android/app/camera/MenuBase;

    .line 670
    return-void
.end method

.method public showShutterButton()V
    .locals 2

    .prologue
    .line 284
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mShutterButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mShutterButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwImageButton;->setVisibility(I)V

    .line 286
    :cond_0
    return-void
.end method

.method public stopHideMenuTimer()V
    .locals 2

    .prologue
    .line 687
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mHideMenuTimeoutHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mHideMenuTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 688
    return-void
.end method

.method public updateBackgroundTransparency()V
    .locals 2

    .prologue
    .line 554
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mLeftSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    iget v1, p0, Lcom/sec/android/app/camera/CameraSideMenu;->leftOpaqueBackground:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwSideMenu;->setBackgroundResource(I)V

    .line 555
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mRightSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    iget v1, p0, Lcom/sec/android/app/camera/CameraSideMenu;->rightOpaqueBackground:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwSideMenu;->setBackgroundResource(I)V

    .line 556
    return-void
.end method
