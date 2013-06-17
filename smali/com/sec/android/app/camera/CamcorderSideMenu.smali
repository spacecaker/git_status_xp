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

    .line 205
    iget-object v9, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mLeftSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    const/16 v10, 0x66

    const/16 v11, 0x66

    invoke-virtual {v4, v11}, Lcom/sec/android/app/camera/widget/TwSideMenuPopupTextLayout;->addPopupText(I)Landroid/widget/LinearLayout;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/sec/android/app/camera/widget/TwSideMenu;->addSideMenuButton(ILandroid/widget/LinearLayout;)V

    .line 208
    iget-object v9, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mLeftSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    const/16 v10, 0x6d

    const/16 v11, 0x6d

    invoke-virtual {v4, v11}, Lcom/sec/android/app/camera/widget/TwSideMenuPopupTextLayout;->addPopupText(I)Landroid/widget/LinearLayout;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/sec/android/app/camera/widget/TwSideMenu;->addSideMenuButton(ILandroid/widget/LinearLayout;)V

    .line 210
    iget-object v9, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mLeftSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    const/16 v10, 0x1b

    const/16 v11, 0x1b

    invoke-virtual {v4, v11}, Lcom/sec/android/app/camera/widget/TwSideMenuPopupTextLayout;->addPopupText(I)Landroid/widget/LinearLayout;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/sec/android/app/camera/widget/TwSideMenu;->addSideMenuButton(ILandroid/widget/LinearLayout;)V

    .line 212
    iget-object v9, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mLeftSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    const/16 v10, 0x1b

    invoke-virtual {v9, v10}, Lcom/sec/android/app/camera/widget/TwSideMenu;->setBottomButton(I)V

    .line 213
    iget-object v9, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mRightSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v6, v11}, Lcom/sec/android/app/camera/widget/TwSideMenuPopupTextLayout;->addPopupText(I)Landroid/widget/LinearLayout;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/sec/android/app/camera/widget/TwSideMenu;->addSideMenuButton(ILandroid/widget/LinearLayout;)V

    .line 215
    iget-object v9, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mRightSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    const/16 v10, 0x20

    const/16 v11, 0x20

    const/4 v12, 0x2

    invoke-virtual {v6, v11, v12}, Lcom/sec/android/app/camera/widget/TwSideMenuPopupTextLayout;->addEmptyPopupText(II)Landroid/widget/LinearLayout;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/sec/android/app/camera/widget/TwSideMenu;->addSideMenuButton(ILandroid/widget/LinearLayout;)V

    .line 217
    iget-object v9, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mRightSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    const/16 v10, 0x1d

    const/16 v11, 0x1d

    invoke-virtual {v6, v11}, Lcom/sec/android/app/camera/widget/TwSideMenuPopupTextLayout;->addPopupText(I)Landroid/widget/LinearLayout;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/sec/android/app/camera/widget/TwSideMenu;->addSideMenuButton(ILandroid/widget/LinearLayout;)V

    .line 219
    iget-object v9, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mRightSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    const/16 v10, 0x1d

    invoke-virtual {v9, v10}, Lcom/sec/android/app/camera/widget/TwSideMenu;->setBottomButton(I)V

    .line 221
    iget-object v9, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mRightSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/sec/android/app/camera/widget/TwSideMenu;->getSideMenuButton(I)Lcom/sec/android/app/camera/widget/TwImageButton;

    move-result-object v5

    .line 222
    iget-object v9, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mLeftSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    const/16 v10, 0x65

    invoke-virtual {v9, v10}, Lcom/sec/android/app/camera/widget/TwSideMenu;->getSideMenuButton(I)Lcom/sec/android/app/camera/widget/TwImageButton;

    move-result-object v7

    .line 223
    iget-object v9, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mLeftSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    const/16 v10, 0x66

    invoke-virtual {v9, v10}, Lcom/sec/android/app/camera/widget/TwSideMenu;->getSideMenuButton(I)Lcom/sec/android/app/camera/widget/TwImageButton;

    move-result-object v8

    .line 224
    iget-object v9, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mLeftSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    const/16 v10, 0x6d

    invoke-virtual {v9, v10}, Lcom/sec/android/app/camera/widget/TwSideMenu;->getSideMenuButton(I)Lcom/sec/android/app/camera/widget/TwImageButton;

    move-result-object v2

    .line 225
    iget-object v9, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mRightSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    const/16 v10, 0x1d

    invoke-virtual {v9, v10}, Lcom/sec/android/app/camera/widget/TwSideMenu;->getSideMenuButton(I)Lcom/sec/android/app/camera/widget/TwImageButton;

    move-result-object v3

    .line 227
    iget-object v9, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mRightSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    const/16 v10, 0x20

    invoke-virtual {v9, v10}, Lcom/sec/android/app/camera/widget/TwSideMenu;->getSideMenuButton(I)Lcom/sec/android/app/camera/widget/TwImageButton;

    move-result-object v9

    iput-object v9, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mShutterButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    .line 231
    iget-object v9, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mLeftSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    const/16 v10, 0x66

    const/4 v11, 0x1

    invoke-virtual {v9, v10, v11}, Lcom/sec/android/app/camera/widget/TwSideMenu;->dimButton(IZ)V

    .line 233
    const v9, 0x7f020070

    iput v9, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->leftTransparentBackground:I

    .line 234
    const v9, 0x7f02006f

    iput v9, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->leftOpaqueBackground:I

    .line 241
    const v9, 0x7f0201de

    iput v9, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->rightTransparentBackground:I

    .line 242
    const v9, 0x7f0201dd

    iput v9, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->rightOpaqueBackground:I

    .line 249
    iget-object v9, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v10, 0x7f0a0043

    invoke-virtual {v9, v10}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 250
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mTrayButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    .line 253
    iget-object v9, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    .line 254
    .local v0, dimController:Lcom/sec/android/app/camera/MenuDimController;
    const/16 v9, 0x18

    invoke-virtual {v0, v9, v5}, Lcom/sec/android/app/camera/MenuDimController;->addButton(ILcom/sec/android/app/camera/widget/TwImageButton;)V

    .line 255
    const/16 v9, 0x19

    invoke-virtual {v0, v9, v7}, Lcom/sec/android/app/camera/MenuDimController;->addButton(ILcom/sec/android/app/camera/widget/TwImageButton;)V

    .line 256
    const/16 v9, 0x1b

    invoke-virtual {v0, v9, v2}, Lcom/sec/android/app/camera/MenuDimController;->addButton(ILcom/sec/android/app/camera/widget/TwImageButton;)V

    .line 257
    const/16 v9, 0x1a

    invoke-virtual {v0, v9, v8}, Lcom/sec/android/app/camera/MenuDimController;->addButton(ILcom/sec/android/app/camera/widget/TwImageButton;)V

    .line 258
    const/16 v9, 0x17

    invoke-virtual {v0, v9, v3}, Lcom/sec/android/app/camera/MenuDimController;->addButton(ILcom/sec/android/app/camera/widget/TwImageButton;)V

    .line 259
    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuDimController;->synchronizeDim()V

    .line 261
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderSideMenu;->updateBackgroundTransparency()V

    .line 264
    iget-object v9, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v9

    invoke-interface {v9}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 265
    .local v1, display:Landroid/view/Display;
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v9

    const/16 v10, 0x190

    if-gt v9, v10, :cond_0

    .line 266
    const/16 v9, 0xa

    iput v9, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mAnimDelta:I

    .line 270
    :goto_0
    return-void

    .line 268
    :cond_0
    const/16 v9, 0x14

    iput v9, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mAnimDelta:I

    goto :goto_0
.end method

.method private setButtonLocked()V
    .locals 2

    .prologue
    .line 484
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mLeftSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/TwSideMenu;->setButtonLocked()V

    .line 485
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mRightSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/TwSideMenu;->setButtonLocked()V

    .line 486
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mTrayButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    if-eqz v0, :cond_0

    .line 487
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mTrayButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwImageButton;->setDisabled(Z)V

    .line 488
    :cond_0
    return-void
.end method

.method private setButtonUnlocked()V
    .locals 2

    .prologue
    .line 491
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mLeftSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/TwSideMenu;->setButtonUnlocked()V

    .line 492
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mRightSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/TwSideMenu;->setButtonUnlocked()V

    .line 493
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mTrayButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    if-eqz v0, :cond_0

    .line 494
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mTrayButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwImageButton;->setDisabled(Z)V

    .line 495
    :cond_0
    return-void
.end method

.method private startHideAnimation()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 565
    iput-boolean v2, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mHideAnimation:Z

    .line 566
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget v1, p0, Lcom/sec/android/app/camera/MenuBase;->mBaseViewId:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 568
    iput-boolean v2, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mAnimInProgress:Z

    .line 569
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mAnimHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mHideAnimRunnable:Ljava/lang/Runnable;

    iget v2, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mAnimDelay:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 570
    return-void
.end method

.method private startHideMenuTimer()V
    .locals 4

    .prologue
    .line 573
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mHideMenuTimeoutHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mHideMenuTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 574
    return-void
.end method

.method private startShowAnimation()V
    .locals 4

    .prologue
    .line 527
    const-string v0, "CamcorderSideMenu"

    const-string v1, "startShowAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget v1, p0, Lcom/sec/android/app/camera/MenuBase;->mBaseViewId:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 530
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mAnimInProgress:Z

    .line 531
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mAnimHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mShowAnimRunnable:Ljava/lang/Runnable;

    iget v2, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mAnimDelay:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 532
    return-void
.end method

.method private stopHideAnimation()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 552
    iput-boolean v2, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mHideAnimation:Z

    .line 553
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderSideMenu;->getVisibility()Z

    move-result v0

    if-nez v0, :cond_0

    .line 554
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget v1, p0, Lcom/sec/android/app/camera/MenuBase;->mBaseViewId:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 555
    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mAnimInProgress:Z

    if-nez v0, :cond_1

    .line 562
    :goto_0
    return-void

    .line 558
    :cond_1
    iput-boolean v2, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mAnimInProgress:Z

    .line 559
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mAnimHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mHideAnimRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 561
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CamcorderSideMenu;->setAnimationEnabled(Z)V

    goto :goto_0
.end method

.method private stopShowAnimation()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 514
    const-string v0, "CamcorderSideMenu"

    const-string v1, "stopShowAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderSideMenu;->getVisibility()Z

    move-result v0

    if-nez v0, :cond_0

    .line 516
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget v1, p0, Lcom/sec/android/app/camera/MenuBase;->mBaseViewId:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 517
    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mAnimInProgress:Z

    if-nez v0, :cond_1

    .line 524
    :goto_0
    return-void

    .line 520
    :cond_1
    iput-boolean v2, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mAnimInProgress:Z

    .line 521
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mAnimHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mShowAnimRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 523
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

    .line 320
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mRightSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/TwSideMenu;->resetPressedButtons()V

    .line 321
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mLeftSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/TwSideMenu;->resetPressedButtons()V

    .line 322
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/MenuDimController;->synchronizeDim()V

    .line 323
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/View;->setSelected(Z)V

    .line 325
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

    .line 328
    const-string v1, "CamcorderSideMenu"

    const-string v2, "return isTimerCounting.."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    :cond_0
    :goto_0
    return-void

    .line 332
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 334
    :sswitch_0
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onModechanged()V

    goto :goto_0

    .line 337
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

    .line 338
    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/CamcorderSideMenu;->setInflatedMenu(Lcom/sec/android/app/camera/MenuBase;)V

    .line 339
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    goto :goto_0

    .line 341
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v8, v2}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/RecordingModeMenu;

    .line 342
    .local v0, menu:Lcom/sec/android/app/camera/RecordingModeMenu;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/RecordingModeMenu;->showMenu()V

    .line 343
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/RecordingModeMenu;->setOnRecordingModeChangedListener(Lcom/sec/android/app/camera/RecordingModeMenu$OnRecordingModeChangedListener;)V

    .line 344
    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mInflatedMenu:Lcom/sec/android/app/camera/MenuBase;

    goto :goto_0

    .line 348
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

    .line 349
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    goto :goto_0

    .line 351
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v2, 0x7f03002f

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/SceneModeMenu;

    .line 352
    .local v0, menu:Lcom/sec/android/app/camera/SceneModeMenu;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/SceneModeMenu;->showMenu()V

    .line 353
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/SceneModeMenu;->setOnSceneModeChangedListener(Lcom/sec/android/app/camera/SceneModeMenu$OnSceneModeChangedListener;)V

    goto :goto_0

    .line 357
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

    .line 358
    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/CamcorderSideMenu;->setInflatedMenu(Lcom/sec/android/app/camera/MenuBase;)V

    .line 359
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    goto/16 :goto_0

    .line 362
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4, v2}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;

    .line 363
    .local v0, menu:Lcom/sec/android/app/camera/CamcorderSettingsMenu;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->showMenu()V

    .line 364
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->refreashButtonText()V

    .line 365
    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mInflatedMenu:Lcom/sec/android/app/camera/MenuBase;

    goto/16 :goto_0

    .line 369
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

    .line 370
    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/CamcorderSideMenu;->setInflatedMenu(Lcom/sec/android/app/camera/MenuBase;)V

    .line 371
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    goto/16 :goto_0

    .line 373
    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v7, v2}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/FlashModeMenu;

    .line 374
    .local v0, menu:Lcom/sec/android/app/camera/FlashModeMenu;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/FlashModeMenu;->showMenu()V

    .line 375
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/FlashModeMenu;->setOnFlashModeChangedListener(Lcom/sec/android/app/camera/FlashModeMenu$OnFlashModeChangedListener;)V

    .line 376
    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mInflatedMenu:Lcom/sec/android/app/camera/MenuBase;

    goto/16 :goto_0

    .line 380
    .end local v0           #menu:Lcom/sec/android/app/camera/FlashModeMenu;
    :sswitch_5
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mInflatedMenu:Lcom/sec/android/app/camera/MenuBase;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mInflatedMenu:Lcom/sec/android/app/camera/MenuBase;

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v3, 0x7f03003a

    iget-object v4, p0, Lcom/sec/android/app/camera/MenuBase;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 381
    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/CamcorderSideMenu;->setInflatedMenu(Lcom/sec/android/app/camera/MenuBase;)V

    .line 382
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    goto/16 :goto_0

    .line 384
    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v2, 0x7f03003a

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/TimerMenu;

    .line 385
    .local v0, menu:Lcom/sec/android/app/camera/TimerMenu;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/TimerMenu;->showMenu()V

    .line 386
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/TimerMenu;->setOnTimerChangedListener(Lcom/sec/android/app/camera/TimerMenu$OnTimerChangedListener;)V

    .line 387
    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mInflatedMenu:Lcom/sec/android/app/camera/MenuBase;

    goto/16 :goto_0

    .line 391
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

    .line 392
    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/CamcorderSideMenu;->setInflatedMenu(Lcom/sec/android/app/camera/MenuBase;)V

    .line 393
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    goto/16 :goto_0

    .line 395
    :cond_7
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v6, v2}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/ExposureValueMenu;

    .line 396
    .local v0, menu:Lcom/sec/android/app/camera/ExposureValueMenu;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/ExposureValueMenu;->showMenu()V

    .line 397
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/ExposureValueMenu;->setOnExposureValueChangedListener(Lcom/sec/android/app/camera/ExposureValueMenu$OnExposureValueChangedListener;)V

    .line 398
    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mInflatedMenu:Lcom/sec/android/app/camera/MenuBase;

    goto/16 :goto_0

    .line 402
    .end local v0           #menu:Lcom/sec/android/app/camera/ExposureValueMenu;
    :sswitch_7
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    goto/16 :goto_0

    .line 405
    :sswitch_8
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v1, Lcom/sec/android/app/camera/Camcorder;

    const-string v2, "quickview"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camcorder;->onLaunchGallery(Ljava/lang/String;)V

    .line 406
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->isCaptureEnabled()Z

    move-result v1

    if-nez v1, :cond_8

    .line 407
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    .line 409
    :cond_8
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mRightSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/TwSideMenu;->resetPressedButtons()V

    goto/16 :goto_0

    .line 417
    :sswitch_9
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const/16 v2, 0x1b

    invoke-virtual {v1, v2, v5}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 418
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mRightSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/TwSideMenu;->resetPressedButtons()V

    .line 420
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mInflatedMenu:Lcom/sec/android/app/camera/MenuBase;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mInflatedMenu:Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/MenuBase;->getVisibility()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 421
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    .line 422
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onInflatedMenuHidden()V

    .line 423
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mShutterButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/TwImageButton;->setSelected(Z)V

    goto/16 :goto_0

    .line 332
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
    .line 535
    const-string v0, "CamcorderSideMenu"

    const-string v1, "hideMenu"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mAnimationEnabled:Z

    if-nez v0, :cond_0

    .line 538
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->hideMenu()V

    .line 549
    :goto_0
    return-void

    .line 542
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderSideMenu;->hideShutterButton()V

    .line 543
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->showShutterButton()V

    .line 544
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->hideTrayButton()V

    .line 545
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderSideMenu;->startHideAnimation()V

    .line 547
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->hideMenu()V

    .line 548
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
    .line 273
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mShutterButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mShutterButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwImageButton;->setVisibility(I)V

    .line 275
    :cond_0
    return-void
.end method

.method public isAnimationInProgress()Z
    .locals 1

    .prologue
    .line 599
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mAnimInProgress:Z

    return v0
.end method

.method public onBack()V
    .locals 1

    .prologue
    .line 498
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->finish()V

    .line 499
    return-void
.end method

.method public onCameraSettingsChanged(II)V
    .locals 1
    .parameter "menu"
    .parameter "mode"

    .prologue
    .line 433
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mLeftSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/camera/widget/TwSideMenu;->updateButtonImage(II)V

    .line 434
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mRightSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/camera/widget/TwSideMenu;->updateButtonImage(II)V

    .line 436
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->invalidatePreview()V

    .line 438
    packed-switch p1, :pswitch_data_0

    .line 448
    :goto_0
    return-void

    .line 440
    :pswitch_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 441
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderSideMenu;->setButtonLocked()V

    .line 442
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderSideMenu;->resetPressedButtons()V

    goto :goto_0

    .line 444
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderSideMenu;->setButtonUnlocked()V

    goto :goto_0

    .line 438
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
    .line 603
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getLock()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 608
    :cond_0
    :goto_0
    return-void

    .line 606
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a0043

    if-ne v0, v1, :cond_0

    .line 607
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->hideSideMenu()V

    goto :goto_0
.end method

.method protected onHide()V
    .locals 1

    .prologue
    .line 577
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderSideMenu;->stopHideMenuTimer()V

    .line 578
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mHidingSideMenu:Z

    .line 579
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onHide()V

    .line 580
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 611
    const/16 v0, 0x1b

    if-eq p1, v0, :cond_0

    const/16 v0, 0x17

    if-eq p1, v0, :cond_0

    const/16 v0, 0x42

    if-ne p1, v0, :cond_1

    .line 614
    :cond_0
    const/4 v0, 0x1

    .line 617
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
    .line 621
    const/16 v0, 0x1b

    if-eq p1, v0, :cond_0

    const/16 v0, 0x17

    if-eq p1, v0, :cond_0

    const/16 v0, 0x42

    if-ne p1, v0, :cond_1

    .line 624
    :cond_0
    const/4 v0, 0x1

    .line 627
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

    .line 464
    iput-boolean v1, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mHidingSideMenu:Z

    .line 465
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mHideAnimation:Z

    if-eqz v0, :cond_0

    .line 466
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderSideMenu;->stopHideAnimation()V

    .line 467
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderSideMenu;->resetPressedButtons()V

    .line 468
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mAutoHiding:Z

    if-eqz v0, :cond_1

    .line 469
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderSideMenu;->startHideMenuTimer()V

    .line 470
    iput-boolean v1, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mAutoHiding:Z

    .line 473
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuDimController;->synchronizeDim()V

    .line 474
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "v"
    .parameter "arg1"

    .prologue
    const/4 v3, 0x0

    .line 283
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    if-nez v0, :cond_0

    .line 284
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

    .line 316
    :goto_0
    return v0

    .line 288
    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mHidingSideMenu:Z

    if-eqz v0, :cond_1

    move v0, v3

    .line 289
    goto :goto_0

    .line 291
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderSideMenu;->stopHideMenuTimer()V

    .line 293
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 316
    :goto_1
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 295
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_3

    .line 296
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mInflatedMenu:Lcom/sec/android/app/camera/MenuBase;

    if-eqz v0, :cond_2

    .line 297
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mInflatedMenu:Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->hideMenu()V

    .line 298
    :cond_2
    invoke-virtual {p1, v3}, Landroid/view/View;->playSoundEffect(I)V

    .line 300
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->invalidatePreview()V

    goto :goto_1

    .line 303
    :pswitch_2
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/CamcorderSideMenu;->handleTouchUp(Landroid/view/View;)V

    .line 304
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->invalidatePreview()V

    goto :goto_1

    .line 307
    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mInflatedMenu:Lcom/sec/android/app/camera/MenuBase;

    if-eqz v0, :cond_4

    .line 308
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mInflatedMenu:Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->getVisibility()Z

    move-result v0

    if-nez v0, :cond_4

    .line 309
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mInflatedMenu:Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->hideMenu()V

    .line 310
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->invalidatePreview()V

    goto :goto_1

    .line 293
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
    .line 477
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mLeftSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/TwSideMenu;->resetPressedButtons()V

    .line 478
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mRightSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/TwSideMenu;->resetPressedButtons()V

    .line 479
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mTrayButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    if-eqz v0, :cond_0

    .line 480
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mTrayButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/TwImageButton;->refreshButtonImage()V

    .line 481
    :cond_0
    return-void
.end method

.method public restoreMenu()V
    .locals 1

    .prologue
    .line 502
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mAnimationEnabled:Z

    if-nez v0, :cond_0

    .line 503
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->restoreMenu()V

    .line 511
    :goto_0
    return-void

    .line 507
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->hideTrayButton()V

    .line 508
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderSideMenu;->startShowAnimation()V

    .line 510
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->restoreMenu()V

    goto :goto_0
.end method

.method public setAnimationEnabled(Z)V
    .locals 0
    .parameter "mAnimationEnabled"

    .prologue
    .line 587
    iput-boolean p1, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mAnimationEnabled:Z

    .line 588
    return-void
.end method

.method public setInflatedMenu(Lcom/sec/android/app/camera/MenuBase;)V
    .locals 0
    .parameter "menu"

    .prologue
    .line 595
    iput-object p1, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mInflatedMenu:Lcom/sec/android/app/camera/MenuBase;

    .line 596
    return-void
.end method

.method public showShutterButton()V
    .locals 2

    .prologue
    .line 278
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mShutterButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mShutterButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwImageButton;->setVisibility(I)V

    .line 280
    :cond_0
    return-void
.end method

.method public stopHideMenuTimer()V
    .locals 2

    .prologue
    .line 583
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mHideMenuTimeoutHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mHideMenuTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 584
    return-void
.end method

.method public updateBackgroundTransparency()V
    .locals 2

    .prologue
    .line 459
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mLeftSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    iget v1, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->leftOpaqueBackground:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwSideMenu;->setBackgroundResource(I)V

    .line 460
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mRightSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    iget v1, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->rightOpaqueBackground:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwSideMenu;->setBackgroundResource(I)V

    .line 461
    return-void
.end method
