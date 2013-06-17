.class public Lcom/sec/android/app/camera/CamcorderSideMenu;
.super Lcom/sec/android/app/camera/MenuBase;
.source "CamcorderSideMenu.java"

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

.field private mCamcorderSideMenuResourceData:Lcom/sec/android/app/camera/CamcorderSideMenuResourceData;

.field mHideAnimRunnable:Ljava/lang/Runnable;

.field private mHideAnimation:Z

.field private mHideMenuTimeoutHandler:Landroid/os/Handler;

.field private mHideMenuTimeoutRunnable:Ljava/lang/Runnable;

.field private mHidingSideMenu:Z

.field private mInflatedMenu:Lcom/sec/android/app/camera/MenuBase;

.field private mLeftSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

.field private mRightSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

.field mShowAnimRunnable:Ljava/lang/Runnable;

.field private mShutterButton:Lcom/sec/android/app/camera/widget/TwImageButton;

.field private mTrayButton:Lcom/sec/android/app/camera/widget/TwImageButton;

.field private rightOpaqueBackground:I

.field private rightTransparentBackground:I


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;IILandroid/view/ViewGroup;Lcom/sec/android/app/camera/MenuResourceData;ILcom/sec/android/app/camera/CamcorderSideMenuResourceData;)V
    .locals 4
    .parameter "camcorder"
    .parameter "layoutId"
    .parameter "baseViewId"
    .parameter "baseLayout"
    .parameter "menuResourceData"
    .parameter "zOrder"
    .parameter "cameraSMenuResourceData"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 133
    invoke-direct/range {p0 .. p6}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;IILandroid/view/ViewGroup;Lcom/sec/android/app/camera/MenuResourceData;I)V

    .line 39
    iput-object v2, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mCamcorderSideMenuResourceData:Lcom/sec/android/app/camera/CamcorderSideMenuResourceData;

    .line 48
    iput-object v2, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mShutterButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    .line 51
    iput-boolean v3, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mAutoHiding:Z

    .line 52
    iput-boolean v1, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mAnimationEnabled:Z

    .line 53
    const/4 v0, 0x5

    iput v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mAnimDelay:I

    .line 56
    iput-object v2, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mInflatedMenu:Lcom/sec/android/app/camera/MenuBase;

    .line 58
    const/16 v0, 0x14

    iput v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mAnimDelta:I

    .line 59
    iput-boolean v1, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mAnimInProgress:Z

    .line 60
    iput-boolean v1, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mHideAnimation:Z

    .line 61
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mAnimHandler:Landroid/os/Handler;

    .line 62
    new-instance v0, Lcom/sec/android/app/camera/CamcorderSideMenu$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/CamcorderSideMenu$1;-><init>(Lcom/sec/android/app/camera/CamcorderSideMenu;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mHideAnimRunnable:Ljava/lang/Runnable;

    .line 87
    new-instance v0, Lcom/sec/android/app/camera/CamcorderSideMenu$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/CamcorderSideMenu$2;-><init>(Lcom/sec/android/app/camera/CamcorderSideMenu;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mShowAnimRunnable:Ljava/lang/Runnable;

    .line 119
    iput-boolean v1, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mHidingSideMenu:Z

    .line 120
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mHideMenuTimeoutHandler:Landroid/os/Handler;

    .line 121
    new-instance v0, Lcom/sec/android/app/camera/CamcorderSideMenu$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/CamcorderSideMenu$3;-><init>(Lcom/sec/android/app/camera/CamcorderSideMenu;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mHideMenuTimeoutRunnable:Ljava/lang/Runnable;

    .line 135
    iput-object p7, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mCamcorderSideMenuResourceData:Lcom/sec/android/app/camera/CamcorderSideMenuResourceData;

    .line 136
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/CamcorderSideMenu;->setTouchHandled(Z)V

    .line 137
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderSideMenu;->init()V

    .line 139
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/CameraSettings;->registerCameraSettingsChangedObserver(Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;)V

    .line 140
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/CamcorderSideMenu;)Lcom/sec/android/app/camera/widget/TwSideMenu;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mLeftSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/CamcorderSideMenu;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mAnimDelta:I

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/CamcorderSideMenu;)Lcom/sec/android/app/camera/widget/TwSideMenu;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mRightSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/CamcorderSideMenu;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mAnimDelay:I

    return v0
.end method

.method static synthetic access$402(Lcom/sec/android/app/camera/CamcorderSideMenu;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mAnimInProgress:Z

    return p1
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/CamcorderSideMenu;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderSideMenu;->stopHideAnimation()V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/CamcorderSideMenu;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderSideMenu;->stopShowAnimation()V

    return-void
.end method

.method private init()V
    .locals 13

    .prologue
    .line 143
    const/4 v5, 0x0

    .line 144
    .local v5, modeButton:Lcom/sec/android/app/camera/widget/TwImageButton;
    const/4 v7, 0x0

    .line 145
    .local v7, recordingModeButton:Lcom/sec/android/app/camera/widget/TwImageButton;
    const/4 v8, 0x0

    .line 146
    .local v8, sceneModeButton:Lcom/sec/android/app/camera/widget/TwImageButton;
    const/4 v3, 0x0

    .line 147
    .local v3, imageViewerButton:Lcom/sec/android/app/camera/widget/TwImageButton;
    const/4 v2, 0x0

    .line 149
    .local v2, exposureValueButton:Lcom/sec/android/app/camera/widget/TwImageButton;
    iget-object v9, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v10, 0x7f0a0041

    invoke-virtual {v9, v10}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/TwSideMenu;

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mLeftSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    .line 150
    iget-object v9, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v10, 0x7f0a0042

    invoke-virtual {v9, v10}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/TwSideMenu;

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mRightSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    .line 152
    iget-object v9, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mLeftSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    iget-object v10, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mCamcorderSideMenuResourceData:Lcom/sec/android/app/camera/CamcorderSideMenuResourceData;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/CamcorderSideMenuResourceData;->getResource()Ljava/util/HashMap;

    move-result-object v10

    invoke-virtual {v9, v10, p0}, Lcom/sec/android/app/camera/widget/TwSideMenu;->initSideMenu(Ljava/util/HashMap;Landroid/view/View$OnTouchListener;)V

    .line 153
    iget-object v9, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mRightSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    iget-object v10, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mCamcorderSideMenuResourceData:Lcom/sec/android/app/camera/CamcorderSideMenuResourceData;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/CamcorderSideMenuResourceData;->getResource()Ljava/util/HashMap;

    move-result-object v10

    invoke-virtual {v9, v10, p0}, Lcom/sec/android/app/camera/widget/TwSideMenu;->initSideMenu(Ljava/util/HashMap;Landroid/view/View$OnTouchListener;)V

    .line 155
    iget-object v9, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v10, 0x7f0a0044

    invoke-virtual {v9, v10}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/camera/widget/TwSideMenuPopupTextLayout;

    .line 157
    .local v4, lPopups:Lcom/sec/android/app/camera/widget/TwSideMenuPopupTextLayout;
    iget-object v9, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v10, 0x7f0a0045

    invoke-virtual {v9, v10}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/camera/widget/TwSideMenuPopupTextLayout;

    .line 160
    .local v6, rPopups:Lcom/sec/android/app/camera/widget/TwSideMenuPopupTextLayout;
    iget-object v9, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mCamcorderSideMenuResourceData:Lcom/sec/android/app/camera/CamcorderSideMenuResourceData;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CamcorderSideMenuResourceData;->getResource()Ljava/util/HashMap;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/sec/android/app/camera/widget/TwSideMenuPopupTextLayout;->initResources(Ljava/util/HashMap;)V

    .line 161
    iget-object v9, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mCamcorderSideMenuResourceData:Lcom/sec/android/app/camera/CamcorderSideMenuResourceData;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CamcorderSideMenuResourceData;->getResource()Ljava/util/HashMap;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/sec/android/app/camera/widget/TwSideMenuPopupTextLayout;->initResources(Ljava/util/HashMap;)V

    .line 197
    iget-object v9, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mLeftSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    const/16 v10, 0x65

    const/16 v11, 0x65

    invoke-virtual {v4, v11}, Lcom/sec/android/app/camera/widget/TwSideMenuPopupTextLayout;->addPopupText(I)Landroid/widget/LinearLayout;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/sec/android/app/camera/widget/TwSideMenu;->addSideMenuButton(ILandroid/widget/LinearLayout;)V

    .line 211
    iget-object v9, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mLeftSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    const/16 v10, 0x66

    const/16 v11, 0x66

    invoke-virtual {v4, v11}, Lcom/sec/android/app/camera/widget/TwSideMenuPopupTextLayout;->addPopupText(I)Landroid/widget/LinearLayout;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/sec/android/app/camera/widget/TwSideMenu;->addSideMenuButton(ILandroid/widget/LinearLayout;)V

    .line 214
    iget-object v9, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mLeftSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    const/16 v10, 0x67

    const/16 v11, 0x67

    invoke-virtual {v4, v11}, Lcom/sec/android/app/camera/widget/TwSideMenuPopupTextLayout;->addPopupText(I)Landroid/widget/LinearLayout;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/sec/android/app/camera/widget/TwSideMenu;->addSideMenuButton(ILandroid/widget/LinearLayout;)V

    .line 216
    iget-object v9, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mLeftSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    const/16 v10, 0x67

    iget-object v11, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v11}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderFlashMode()I

    move-result v11

    invoke-virtual {v9, v10, v11}, Lcom/sec/android/app/camera/widget/TwSideMenu;->updateButtonImage(II)V

    .line 223
    iget-object v9, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mLeftSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    const/16 v10, 0x1b

    const/16 v11, 0x1b

    invoke-virtual {v4, v11}, Lcom/sec/android/app/camera/widget/TwSideMenuPopupTextLayout;->addPopupText(I)Landroid/widget/LinearLayout;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/sec/android/app/camera/widget/TwSideMenu;->addSideMenuButton(ILandroid/widget/LinearLayout;)V

    .line 225
    iget-object v9, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mLeftSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    const/16 v10, 0x1b

    invoke-virtual {v9, v10}, Lcom/sec/android/app/camera/widget/TwSideMenu;->setBottomButton(I)V

    .line 226
    iget-object v9, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mRightSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v6, v11}, Lcom/sec/android/app/camera/widget/TwSideMenuPopupTextLayout;->addPopupText(I)Landroid/widget/LinearLayout;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/sec/android/app/camera/widget/TwSideMenu;->addSideMenuButton(ILandroid/widget/LinearLayout;)V

    .line 228
    iget-object v9, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mRightSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    const/16 v10, 0x20

    const/16 v11, 0x20

    const/4 v12, 0x2

    invoke-virtual {v6, v11, v12}, Lcom/sec/android/app/camera/widget/TwSideMenuPopupTextLayout;->addEmptyPopupText(II)Landroid/widget/LinearLayout;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/sec/android/app/camera/widget/TwSideMenu;->addSideMenuButton(ILandroid/widget/LinearLayout;)V

    .line 230
    iget-object v9, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mRightSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    const/16 v10, 0x1d

    const/16 v11, 0x1d

    invoke-virtual {v6, v11}, Lcom/sec/android/app/camera/widget/TwSideMenuPopupTextLayout;->addPopupText(I)Landroid/widget/LinearLayout;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/sec/android/app/camera/widget/TwSideMenu;->addSideMenuButton(ILandroid/widget/LinearLayout;)V

    .line 232
    iget-object v9, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mRightSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    const/16 v10, 0x1d

    invoke-virtual {v9, v10}, Lcom/sec/android/app/camera/widget/TwSideMenu;->setBottomButton(I)V

    .line 234
    iget-object v9, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mRightSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/sec/android/app/camera/widget/TwSideMenu;->getSideMenuButton(I)Lcom/sec/android/app/camera/widget/TwImageButton;

    move-result-object v5

    .line 235
    iget-object v9, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mLeftSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    const/16 v10, 0x65

    invoke-virtual {v9, v10}, Lcom/sec/android/app/camera/widget/TwSideMenu;->getSideMenuButton(I)Lcom/sec/android/app/camera/widget/TwImageButton;

    move-result-object v7

    .line 236
    iget-object v9, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mLeftSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    const/16 v10, 0x66

    invoke-virtual {v9, v10}, Lcom/sec/android/app/camera/widget/TwSideMenu;->getSideMenuButton(I)Lcom/sec/android/app/camera/widget/TwImageButton;

    move-result-object v8

    .line 237
    iget-object v9, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mLeftSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    const/16 v10, 0x6d

    invoke-virtual {v9, v10}, Lcom/sec/android/app/camera/widget/TwSideMenu;->getSideMenuButton(I)Lcom/sec/android/app/camera/widget/TwImageButton;

    move-result-object v2

    .line 238
    iget-object v9, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mRightSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    const/16 v10, 0x1d

    invoke-virtual {v9, v10}, Lcom/sec/android/app/camera/widget/TwSideMenu;->getSideMenuButton(I)Lcom/sec/android/app/camera/widget/TwImageButton;

    move-result-object v3

    .line 240
    iget-object v9, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mRightSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    const/16 v10, 0x20

    invoke-virtual {v9, v10}, Lcom/sec/android/app/camera/widget/TwSideMenu;->getSideMenuButton(I)Lcom/sec/android/app/camera/widget/TwImageButton;

    move-result-object v9

    iput-object v9, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mShutterButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    .line 246
    const v9, 0x7f020075

    iput v9, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->leftTransparentBackground:I

    .line 247
    const v9, 0x7f020074

    iput v9, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->leftOpaqueBackground:I

    .line 254
    const v9, 0x7f0201c2

    iput v9, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->rightTransparentBackground:I

    .line 255
    const v9, 0x7f0201c1

    iput v9, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->rightOpaqueBackground:I

    .line 262
    iget-object v9, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v10, 0x7f0a0043

    invoke-virtual {v9, v10}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 263
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mTrayButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    .line 266
    iget-object v9, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    .line 267
    .local v0, dimController:Lcom/sec/android/app/camera/MenuDimController;
    const/16 v9, 0x18

    invoke-virtual {v0, v9, v5}, Lcom/sec/android/app/camera/MenuDimController;->addButton(ILcom/sec/android/app/camera/widget/TwImageButton;)V

    .line 268
    const/16 v9, 0x19

    invoke-virtual {v0, v9, v7}, Lcom/sec/android/app/camera/MenuDimController;->addButton(ILcom/sec/android/app/camera/widget/TwImageButton;)V

    .line 269
    const/16 v9, 0x1b

    invoke-virtual {v0, v9, v2}, Lcom/sec/android/app/camera/MenuDimController;->addButton(ILcom/sec/android/app/camera/widget/TwImageButton;)V

    .line 270
    const/16 v9, 0x1a

    invoke-virtual {v0, v9, v8}, Lcom/sec/android/app/camera/MenuDimController;->addButton(ILcom/sec/android/app/camera/widget/TwImageButton;)V

    .line 271
    const/16 v9, 0x17

    invoke-virtual {v0, v9, v3}, Lcom/sec/android/app/camera/MenuDimController;->addButton(ILcom/sec/android/app/camera/widget/TwImageButton;)V

    .line 272
    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuDimController;->synchronizeDim()V

    .line 274
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderSideMenu;->updateBackgroundTransparency()V

    .line 277
    iget-object v9, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v9

    invoke-interface {v9}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 278
    .local v1, display:Landroid/view/Display;
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v9

    const/16 v10, 0x190

    if-gt v9, v10, :cond_0

    .line 279
    const/16 v9, 0xa

    iput v9, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mAnimDelta:I

    .line 283
    :goto_0
    return-void

    .line 281
    :cond_0
    const/16 v9, 0x14

    iput v9, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mAnimDelta:I

    goto :goto_0
.end method

.method private setButtonLocked()V
    .locals 2

    .prologue
    .line 495
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mLeftSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/TwSideMenu;->setButtonLocked()V

    .line 496
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mRightSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/TwSideMenu;->setButtonLocked()V

    .line 497
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mTrayButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    if-eqz v0, :cond_0

    .line 498
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mTrayButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwImageButton;->setDisabled(Z)V

    .line 499
    :cond_0
    return-void
.end method

.method private setButtonUnlocked()V
    .locals 2

    .prologue
    .line 502
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mLeftSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/TwSideMenu;->setButtonUnlocked()V

    .line 503
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mRightSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/TwSideMenu;->setButtonUnlocked()V

    .line 504
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mTrayButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    if-eqz v0, :cond_0

    .line 505
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mTrayButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwImageButton;->setDisabled(Z)V

    .line 506
    :cond_0
    return-void
.end method

.method private startHideAnimation()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 576
    iput-boolean v2, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mHideAnimation:Z

    .line 577
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget v1, p0, Lcom/sec/android/app/camera/MenuBase;->mBaseViewId:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 579
    iput-boolean v2, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mAnimInProgress:Z

    .line 580
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mAnimHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mHideAnimRunnable:Ljava/lang/Runnable;

    iget v2, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mAnimDelay:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 581
    return-void
.end method

.method private startHideMenuTimer()V
    .locals 4

    .prologue
    .line 584
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mHideMenuTimeoutHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mHideMenuTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 585
    return-void
.end method

.method private startShowAnimation()V
    .locals 4

    .prologue
    .line 538
    const-string v0, "CamcorderSideMenu"

    const-string v1, "startShowAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget v1, p0, Lcom/sec/android/app/camera/MenuBase;->mBaseViewId:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 541
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mAnimInProgress:Z

    .line 542
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mAnimHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mShowAnimRunnable:Ljava/lang/Runnable;

    iget v2, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mAnimDelay:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 543
    return-void
.end method

.method private stopHideAnimation()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 563
    iput-boolean v2, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mHideAnimation:Z

    .line 564
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderSideMenu;->getVisibility()Z

    move-result v0

    if-nez v0, :cond_0

    .line 565
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget v1, p0, Lcom/sec/android/app/camera/MenuBase;->mBaseViewId:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 566
    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mAnimInProgress:Z

    if-nez v0, :cond_1

    .line 573
    :goto_0
    return-void

    .line 569
    :cond_1
    iput-boolean v2, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mAnimInProgress:Z

    .line 570
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mAnimHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mHideAnimRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 572
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CamcorderSideMenu;->setAnimationEnabled(Z)V

    goto :goto_0
.end method

.method private stopShowAnimation()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 525
    const-string v0, "CamcorderSideMenu"

    const-string v1, "stopShowAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderSideMenu;->getVisibility()Z

    move-result v0

    if-nez v0, :cond_0

    .line 527
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget v1, p0, Lcom/sec/android/app/camera/MenuBase;->mBaseViewId:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 528
    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mAnimInProgress:Z

    if-nez v0, :cond_1

    .line 535
    :goto_0
    return-void

    .line 531
    :cond_1
    iput-boolean v2, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mAnimInProgress:Z

    .line 532
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mAnimHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mShowAnimRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 534
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CamcorderSideMenu;->setAnimationEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method public handleTouchUp(Landroid/view/View;)V
    .locals 9
    .parameter "v"

    .prologue
    const v8, 0x7f030029

    const v7, 0x7f030019

    const v6, 0x7f030018

    const v4, 0x7f030008

    const/4 v5, 0x0

    .line 333
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mRightSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/TwSideMenu;->resetPressedButtons()V

    .line 334
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mLeftSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/TwSideMenu;->resetPressedButtons()V

    .line 335
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/MenuDimController;->synchronizeDim()V

    .line 336
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/View;->setSelected(Z)V

    .line 338
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v1, Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camcorder;->isTimerCounting()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x20

    if-eq v1, v2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x1c

    if-eq v1, v2, :cond_1

    .line 341
    const-string v1, "CamcorderSideMenu"

    const-string v2, "return isTimerCounting.."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    :cond_0
    :goto_0
    return-void

    .line 346
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 348
    :sswitch_0
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onModechanged()V

    goto :goto_0

    .line 351
    :sswitch_1
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mInflatedMenu:Lcom/sec/android/app/camera/MenuBase;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mInflatedMenu:Lcom/sec/android/app/camera/MenuBase;

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v8, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 352
    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/CamcorderSideMenu;->setInflatedMenu(Lcom/sec/android/app/camera/MenuBase;)V

    .line 353
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    goto :goto_0

    .line 355
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v8, v2}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/RecordingModeMenu;

    .line 356
    .local v0, menu:Lcom/sec/android/app/camera/RecordingModeMenu;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/RecordingModeMenu;->showMenu()V

    .line 357
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/RecordingModeMenu;->setOnRecordingModeChangedListener(Lcom/sec/android/app/camera/RecordingModeMenu$OnRecordingModeChangedListener;)V

    .line 358
    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mInflatedMenu:Lcom/sec/android/app/camera/MenuBase;

    goto :goto_0

    .line 362
    .end local v0           #menu:Lcom/sec/android/app/camera/RecordingModeMenu;
    :sswitch_2
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v2, 0x7f03002f

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/MenuBase;->getVisibility()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 363
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    goto :goto_0

    .line 365
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v2, 0x7f03002f

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/SceneModeMenu;

    .line 366
    .local v0, menu:Lcom/sec/android/app/camera/SceneModeMenu;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/SceneModeMenu;->showMenu()V

    .line 367
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/SceneModeMenu;->setOnSceneModeChangedListener(Lcom/sec/android/app/camera/SceneModeMenu$OnSceneModeChangedListener;)V

    goto :goto_0

    .line 371
    .end local v0           #menu:Lcom/sec/android/app/camera/SceneModeMenu;
    :sswitch_3
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mInflatedMenu:Lcom/sec/android/app/camera/MenuBase;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mInflatedMenu:Lcom/sec/android/app/camera/MenuBase;

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v4, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 372
    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/CamcorderSideMenu;->setInflatedMenu(Lcom/sec/android/app/camera/MenuBase;)V

    .line 373
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    goto/16 :goto_0

    .line 376
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4, v2}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;

    .line 377
    .local v0, menu:Lcom/sec/android/app/camera/CamcorderSettingsMenu;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->showMenu()V

    .line 378
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->refreashButtonText()V

    .line 379
    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mInflatedMenu:Lcom/sec/android/app/camera/MenuBase;

    goto/16 :goto_0

    .line 383
    .end local v0           #menu:Lcom/sec/android/app/camera/CamcorderSettingsMenu;
    :sswitch_4
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mInflatedMenu:Lcom/sec/android/app/camera/MenuBase;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mInflatedMenu:Lcom/sec/android/app/camera/MenuBase;

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v7, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 384
    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/CamcorderSideMenu;->setInflatedMenu(Lcom/sec/android/app/camera/MenuBase;)V

    .line 385
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    goto/16 :goto_0

    .line 387
    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v7, v2}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/FlashModeMenu;

    .line 388
    .local v0, menu:Lcom/sec/android/app/camera/FlashModeMenu;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/FlashModeMenu;->showMenu()V

    .line 389
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/FlashModeMenu;->setOnFlashModeChangedListener(Lcom/sec/android/app/camera/FlashModeMenu$OnFlashModeChangedListener;)V

    .line 390
    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mInflatedMenu:Lcom/sec/android/app/camera/MenuBase;

    goto/16 :goto_0

    .line 394
    .end local v0           #menu:Lcom/sec/android/app/camera/FlashModeMenu;
    :sswitch_5
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mInflatedMenu:Lcom/sec/android/app/camera/MenuBase;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mInflatedMenu:Lcom/sec/android/app/camera/MenuBase;

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v3, 0x7f030039

    iget-object v4, p0, Lcom/sec/android/app/camera/MenuBase;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 395
    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/CamcorderSideMenu;->setInflatedMenu(Lcom/sec/android/app/camera/MenuBase;)V

    .line 396
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    goto/16 :goto_0

    .line 398
    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v2, 0x7f030039

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/TimerMenu;

    .line 399
    .local v0, menu:Lcom/sec/android/app/camera/TimerMenu;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/TimerMenu;->showMenu()V

    .line 400
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/TimerMenu;->setOnTimerChangedListener(Lcom/sec/android/app/camera/TimerMenu$OnTimerChangedListener;)V

    .line 401
    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mInflatedMenu:Lcom/sec/android/app/camera/MenuBase;

    goto/16 :goto_0

    .line 405
    .end local v0           #menu:Lcom/sec/android/app/camera/TimerMenu;
    :sswitch_6
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mInflatedMenu:Lcom/sec/android/app/camera/MenuBase;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mInflatedMenu:Lcom/sec/android/app/camera/MenuBase;

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v6, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 406
    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/CamcorderSideMenu;->setInflatedMenu(Lcom/sec/android/app/camera/MenuBase;)V

    .line 407
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    goto/16 :goto_0

    .line 409
    :cond_7
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v6, v2}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/ExposureValueMenu;

    .line 410
    .local v0, menu:Lcom/sec/android/app/camera/ExposureValueMenu;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/ExposureValueMenu;->showMenu()V

    .line 411
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/ExposureValueMenu;->setOnExposureValueChangedListener(Lcom/sec/android/app/camera/ExposureValueMenu$OnExposureValueChangedListener;)V

    .line 412
    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mInflatedMenu:Lcom/sec/android/app/camera/MenuBase;

    goto/16 :goto_0

    .line 416
    .end local v0           #menu:Lcom/sec/android/app/camera/ExposureValueMenu;
    :sswitch_7
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    goto/16 :goto_0

    .line 419
    :sswitch_8
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v1, Lcom/sec/android/app/camera/Camcorder;

    const-string v2, "quickview"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camcorder;->onLaunchGallery(Ljava/lang/String;)V

    .line 420
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->isCaptureEnabled()Z

    move-result v1

    if-nez v1, :cond_8

    .line 421
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    .line 423
    :cond_8
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mRightSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/TwSideMenu;->resetPressedButtons()V

    goto/16 :goto_0

    .line 431
    :sswitch_9
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const/16 v2, 0x1b

    invoke-virtual {v1, v2, v5}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 432
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mRightSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/TwSideMenu;->resetPressedButtons()V

    .line 434
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mInflatedMenu:Lcom/sec/android/app/camera/MenuBase;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mInflatedMenu:Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/MenuBase;->getVisibility()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 435
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    .line 436
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onInflatedMenuHidden()V

    .line 437
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mShutterButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/TwImageButton;->setSelected(Z)V

    goto/16 :goto_0

    .line 346
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1b -> :sswitch_3
        0x1c -> :sswitch_7
        0x1d -> :sswitch_8
        0x20 -> :sswitch_9
        0x65 -> :sswitch_1
        0x66 -> :sswitch_2
        0x67 -> :sswitch_4
        0x6a -> :sswitch_5
        0x6d -> :sswitch_6
    .end sparse-switch
.end method

.method public hideMenu()V
    .locals 2

    .prologue
    .line 546
    const-string v0, "CamcorderSideMenu"

    const-string v1, "hideMenu"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mAnimationEnabled:Z

    if-nez v0, :cond_0

    .line 549
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->hideMenu()V

    .line 560
    :goto_0
    return-void

    .line 553
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderSideMenu;->hideShutterButton()V

    .line 554
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->showShutterButton()V

    .line 555
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->hideTrayButton()V

    .line 556
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderSideMenu;->startHideAnimation()V

    .line 558
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->hideMenu()V

    .line 559
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget v1, p0, Lcom/sec/android/app/camera/MenuBase;->mBaseViewId:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public hideShutterButton()V
    .locals 2

    .prologue
    .line 286
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mShutterButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mShutterButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwImageButton;->setVisibility(I)V

    .line 288
    :cond_0
    return-void
.end method

.method public isAnimationInProgress()Z
    .locals 1

    .prologue
    .line 610
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mAnimInProgress:Z

    return v0
.end method

.method public onBack()V
    .locals 1

    .prologue
    .line 509
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->finish()V

    .line 510
    return-void
.end method

.method public onCameraSettingsChanged(II)V
    .locals 1
    .parameter "menu"
    .parameter "mode"

    .prologue
    .line 447
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mLeftSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/camera/widget/TwSideMenu;->updateButtonImage(II)V

    .line 448
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mRightSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/camera/widget/TwSideMenu;->updateButtonImage(II)V

    .line 450
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->invalidatePreview()V

    .line 452
    packed-switch p1, :pswitch_data_0

    .line 462
    :goto_0
    return-void

    .line 454
    :pswitch_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 455
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderSideMenu;->setButtonLocked()V

    .line 456
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderSideMenu;->resetPressedButtons()V

    goto :goto_0

    .line 458
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderSideMenu;->setButtonUnlocked()V

    goto :goto_0

    .line 452
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
    .line 614
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getLock()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 619
    :cond_0
    :goto_0
    return-void

    .line 617
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a0043

    if-ne v0, v1, :cond_0

    .line 618
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->hideSideMenu()V

    goto :goto_0
.end method

.method protected onHide()V
    .locals 1

    .prologue
    .line 588
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderSideMenu;->stopHideMenuTimer()V

    .line 589
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mHidingSideMenu:Z

    .line 590
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onHide()V

    .line 591
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 622
    const/16 v0, 0x1b

    if-eq p1, v0, :cond_0

    const/16 v0, 0x17

    if-eq p1, v0, :cond_0

    const/16 v0, 0x42

    if-ne p1, v0, :cond_1

    .line 625
    :cond_0
    const/4 v0, 0x1

    .line 628
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
    .line 632
    const/16 v0, 0x1b

    if-eq p1, v0, :cond_0

    const/16 v0, 0x17

    if-eq p1, v0, :cond_0

    const/16 v0, 0x42

    if-ne p1, v0, :cond_1

    .line 635
    :cond_0
    const/4 v0, 0x1

    .line 638
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

    .line 475
    iput-boolean v1, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mHidingSideMenu:Z

    .line 476
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mHideAnimation:Z

    if-eqz v0, :cond_0

    .line 477
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderSideMenu;->stopHideAnimation()V

    .line 478
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderSideMenu;->resetPressedButtons()V

    .line 479
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mAutoHiding:Z

    if-eqz v0, :cond_1

    .line 480
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderSideMenu;->startHideMenuTimer()V

    .line 481
    iput-boolean v1, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mAutoHiding:Z

    .line 484
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuDimController;->synchronizeDim()V

    .line 485
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "v"
    .parameter "arg1"

    .prologue
    const/4 v3, 0x0

    .line 296
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    if-nez v0, :cond_0

    .line 297
    const-string v0, "CamcorderSideMenu"

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

    .line 329
    :goto_0
    return v0

    .line 301
    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mHidingSideMenu:Z

    if-eqz v0, :cond_1

    move v0, v3

    .line 302
    goto :goto_0

    .line 304
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderSideMenu;->stopHideMenuTimer()V

    .line 306
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 329
    :goto_1
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 308
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_3

    .line 309
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mInflatedMenu:Lcom/sec/android/app/camera/MenuBase;

    if-eqz v0, :cond_2

    .line 310
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mInflatedMenu:Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->hideMenu()V

    .line 311
    :cond_2
    invoke-virtual {p1, v3}, Landroid/view/View;->playSoundEffect(I)V

    .line 313
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->invalidatePreview()V

    goto :goto_1

    .line 316
    :pswitch_2
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/CamcorderSideMenu;->handleTouchUp(Landroid/view/View;)V

    .line 317
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->invalidatePreview()V

    goto :goto_1

    .line 320
    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mInflatedMenu:Lcom/sec/android/app/camera/MenuBase;

    if-eqz v0, :cond_4

    .line 321
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mInflatedMenu:Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->getVisibility()Z

    move-result v0

    if-nez v0, :cond_4

    .line 322
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mInflatedMenu:Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->hideMenu()V

    .line 323
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->invalidatePreview()V

    goto :goto_1

    .line 306
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
    .line 488
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mLeftSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/TwSideMenu;->resetPressedButtons()V

    .line 489
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mRightSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/TwSideMenu;->resetPressedButtons()V

    .line 490
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mTrayButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    if-eqz v0, :cond_0

    .line 491
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mTrayButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/TwImageButton;->refreshButtonImage()V

    .line 492
    :cond_0
    return-void
.end method

.method public restoreMenu()V
    .locals 1

    .prologue
    .line 513
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mAnimationEnabled:Z

    if-nez v0, :cond_0

    .line 514
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->restoreMenu()V

    .line 522
    :goto_0
    return-void

    .line 518
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->hideTrayButton()V

    .line 519
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderSideMenu;->startShowAnimation()V

    .line 521
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->restoreMenu()V

    goto :goto_0
.end method

.method public setAnimationEnabled(Z)V
    .locals 0
    .parameter "mAnimationEnabled"

    .prologue
    .line 598
    iput-boolean p1, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mAnimationEnabled:Z

    .line 599
    return-void
.end method

.method public setInflatedMenu(Lcom/sec/android/app/camera/MenuBase;)V
    .locals 0
    .parameter "menu"

    .prologue
    .line 606
    iput-object p1, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mInflatedMenu:Lcom/sec/android/app/camera/MenuBase;

    .line 607
    return-void
.end method

.method public showShutterButton()V
    .locals 2

    .prologue
    .line 291
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mShutterButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mShutterButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwImageButton;->setVisibility(I)V

    .line 293
    :cond_0
    return-void
.end method

.method public stopHideMenuTimer()V
    .locals 2

    .prologue
    .line 594
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mHideMenuTimeoutHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mHideMenuTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 595
    return-void
.end method

.method public updateBackgroundTransparency()V
    .locals 2

    .prologue
    .line 465
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/camera/CameraResolution;->isWideResolution(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 466
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mLeftSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    iget v1, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->leftTransparentBackground:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwSideMenu;->setBackgroundResource(I)V

    .line 467
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mRightSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    iget v1, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->rightTransparentBackground:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwSideMenu;->setBackgroundResource(I)V

    .line 472
    :goto_0
    return-void

    .line 469
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mLeftSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    iget v1, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->leftOpaqueBackground:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwSideMenu;->setBackgroundResource(I)V

    .line 470
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mRightSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    iget v1, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->rightOpaqueBackground:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwSideMenu;->setBackgroundResource(I)V

    goto :goto_0
.end method
