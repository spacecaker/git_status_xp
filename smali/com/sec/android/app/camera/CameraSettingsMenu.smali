.class public Lcom/sec/android/app/camera/CameraSettingsMenu;
.super Lcom/sec/android/app/camera/MenuBase;
.source "CameraSettingsMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;
.implements Lcom/sec/android/app/camera/MenuTabController$OnMenuTabChangedListener;
.implements Lcom/sec/android/app/camera/widget/TwSettingList$OnInvalidatePreviewListener;


# instance fields
.field mCameraSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

.field private mCameraSettingsMenuResourceData:Lcom/sec/android/app/camera/CameraSettingsMenuResourceData;

.field mCameraTabButton:Lcom/sec/android/app/camera/widget/TwSelectButton;

.field mCurrentTab:Lcom/sec/android/app/camera/widget/TwSettingList;

.field private mHelpTicker:Lcom/sec/android/app/camera/widget/TwTickerView;

.field mMenuItemMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sec/android/app/camera/widget/TwSettingListItem;",
            ">;"
        }
    .end annotation
.end field

.field private mResolutionChangingLocked:Z

.field mSetupSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

.field mSetupTabButton:Lcom/sec/android/app/camera/widget/TwSelectButton;

.field mTabController:Lcom/sec/android/app/camera/MenuTabController;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;IILandroid/view/ViewGroup;Lcom/sec/android/app/camera/MenuResourceData;Lcom/sec/android/app/camera/CameraSettingsMenuResourceData;I)V
    .locals 7
    .parameter "activityContext"
    .parameter "layoutId"
    .parameter "baseViewId"
    .parameter "baseLayout"
    .parameter "menuResourceData"
    .parameter "cameraSettingsMenuResourceData"
    .parameter "zOrder"

    .prologue
    .line 84
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;IILandroid/view/ViewGroup;Lcom/sec/android/app/camera/MenuResourceData;I)V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mCurrentTab:Lcom/sec/android/app/camera/widget/TwSettingList;

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mResolutionChangingLocked:Z

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mMenuItemMap:Ljava/util/Map;

    .line 86
    invoke-direct {p0, p6}, Lcom/sec/android/app/camera/CameraSettingsMenu;->init(Lcom/sec/android/app/camera/CameraSettingsMenuResourceData;)V

    .line 87
    return-void
.end method

.method private init(Lcom/sec/android/app/camera/CameraSettingsMenuResourceData;)V
    .locals 2
    .parameter "cameraSettingsMenuResourceData"

    .prologue
    .line 98
    iput-object p1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mCameraSettingsMenuResourceData:Lcom/sec/android/app/camera/CameraSettingsMenuResourceData;

    .line 99
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettingsMenu;->initSettingTab()V

    .line 100
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettingsMenu;->initCameraSettingList()V

    .line 101
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettingsMenu;->initSetupSettingList()V

    .line 102
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettingsMenu;->refreashButtonText()V

    .line 103
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettingsMenu;->refreashButtonState()V

    .line 104
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a0055

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 105
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mCameraSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mCurrentTab:Lcom/sec/android/app/camera/widget/TwSettingList;

    .line 106
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/CameraSettings;->registerCameraSettingsChangedObserver(Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;)V

    .line 107
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/CameraSettings;->registerCameraSettingsUIChangedObserver(Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;)V

    .line 108
    return-void
.end method

.method private initCameraSettingList()V
    .locals 9

    .prologue
    const/4 v8, 0x6

    const/4 v7, 0x5

    const/4 v6, 0x4

    const/16 v5, 0x10

    const/16 v4, 0xb

    .line 134
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v2, 0x7f0a0057

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/widget/TwSettingList;

    iput-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mCameraSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    .line 135
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mCameraSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mCameraSettingsMenuResourceData:Lcom/sec/android/app/camera/CameraSettingsMenuResourceData;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettingsMenuResourceData;->getResource()Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mMenuItemMap:Ljava/util/Map;

    invoke-virtual {v1, v2, p0, v3}, Lcom/sec/android/app/camera/widget/TwSettingList;->initializeParams(Ljava/util/HashMap;Landroid/view/View$OnClickListener;Ljava/util/Map;)V

    .line 137
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mCameraSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    const/16 v2, 0xa

    invoke-virtual {v1, v2, v7}, Lcom/sec/android/app/camera/widget/TwSettingList;->initializeList(II)V

    .line 145
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mCameraSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    invoke-virtual {v1, v4, v8}, Lcom/sec/android/app/camera/widget/TwSettingList;->initializeList(II)V

    .line 147
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mCameraSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    const/16 v2, 0xc

    invoke-virtual {v1, v2, v6}, Lcom/sec/android/app/camera/widget/TwSettingList;->initializeList(II)V

    .line 148
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mCameraSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    const/16 v2, 0xd

    const/16 v3, 0x9

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/widget/TwSettingList;->initializeList(II)V

    .line 149
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mCameraSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    const/16 v2, 0xe

    const/16 v3, 0x8

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/widget/TwSettingList;->initializeList(II)V

    .line 155
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mCameraSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    invoke-virtual {v1, v5, v4}, Lcom/sec/android/app/camera/widget/TwSettingList;->initializeList(II)V

    .line 171
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mCameraSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    const/16 v2, 0x15

    invoke-virtual {v1, v2, v5}, Lcom/sec/android/app/camera/widget/TwSettingList;->initializeList(II)V

    .line 172
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mCameraSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    const/16 v2, 0x16

    const/16 v3, 0x17

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/widget/TwSettingList;->initializeList(II)V

    .line 174
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mCameraSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mHelpTicker:Lcom/sec/android/app/camera/widget/TwTickerView;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/TwSettingList;->setHelpTextView(Lcom/sec/android/app/camera/widget/TwTickerView;)V

    .line 176
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mCameraSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/TwSettingList;->initializeScroller()V

    .line 179
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    .line 180
    .local v0, dimController:Lcom/sec/android/app/camera/MenuDimController;
    const/16 v1, 0xc

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mCameraSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    const/16 v3, 0x17

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/TwSettingList;->getItemButton(I)Lcom/sec/android/app/camera/widget/TwImageButton;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController;->addButton(ILcom/sec/android/app/camera/widget/TwImageButton;)V

    .line 182
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mCameraSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/TwSettingList;->getItemButton(I)Lcom/sec/android/app/camera/widget/TwImageButton;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController;->addButton(ILcom/sec/android/app/camera/widget/TwImageButton;)V

    .line 184
    const/16 v1, 0x11

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mCameraSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/TwSettingList;->getItemButton(I)Lcom/sec/android/app/camera/widget/TwImageButton;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController;->addButton(ILcom/sec/android/app/camera/widget/TwImageButton;)V

    .line 186
    const/16 v1, 0x22

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mCameraSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    invoke-virtual {v2, v5}, Lcom/sec/android/app/camera/widget/TwSettingList;->getItemButton(I)Lcom/sec/android/app/camera/widget/TwImageButton;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController;->addButton(ILcom/sec/android/app/camera/widget/TwImageButton;)V

    .line 188
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mCameraSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/widget/TwSettingList;->getItemButton(I)Lcom/sec/android/app/camera/widget/TwImageButton;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Lcom/sec/android/app/camera/MenuDimController;->addButton(ILcom/sec/android/app/camera/widget/TwImageButton;)V

    .line 191
    const/16 v1, 0x13

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mCameraSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    invoke-virtual {v2, v8}, Lcom/sec/android/app/camera/widget/TwSettingList;->getItemButton(I)Lcom/sec/android/app/camera/widget/TwImageButton;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController;->addButton(ILcom/sec/android/app/camera/widget/TwImageButton;)V

    .line 199
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mCameraSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    invoke-virtual {v1, v7}, Lcom/sec/android/app/camera/widget/TwSettingList;->getItemButton(I)Lcom/sec/android/app/camera/widget/TwImageButton;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lcom/sec/android/app/camera/MenuDimController;->addButton(ILcom/sec/android/app/camera/widget/TwImageButton;)V

    .line 201
    const/16 v1, 0xd

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mCameraSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/camera/widget/TwSettingList;->getItemButton(I)Lcom/sec/android/app/camera/widget/TwImageButton;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController;->addButton(ILcom/sec/android/app/camera/widget/TwImageButton;)V

    .line 224
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mCameraSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    invoke-virtual {v1, p0}, Lcom/sec/android/app/camera/widget/TwSettingList;->setOnInvalidatePreviewListener(Lcom/sec/android/app/camera/widget/TwSettingList$OnInvalidatePreviewListener;)V

    .line 225
    return-void
.end method

.method private initSettingTab()V
    .locals 4

    .prologue
    .line 111
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a0056

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/TwSelectButton;

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mCameraTabButton:Lcom/sec/android/app/camera/widget/TwSelectButton;

    .line 112
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a003a

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/TwSelectButton;

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mSetupTabButton:Lcom/sec/android/app/camera/widget/TwSelectButton;

    .line 114
    new-instance v0, Lcom/sec/android/app/camera/MenuTabController;

    invoke-direct {v0}, Lcom/sec/android/app/camera/MenuTabController;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mTabController:Lcom/sec/android/app/camera/MenuTabController;

    .line 116
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mTabController:Lcom/sec/android/app/camera/MenuTabController;

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mCameraTabButton:Lcom/sec/android/app/camera/widget/TwSelectButton;

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v3, 0x7f0a0057

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v0}, Lcom/sec/android/app/camera/MenuTabController;->addTab(Lcom/sec/android/app/camera/widget/TwSelectButton;Landroid/view/ViewGroup;)V

    .line 117
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mTabController:Lcom/sec/android/app/camera/MenuTabController;

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mSetupTabButton:Lcom/sec/android/app/camera/widget/TwSelectButton;

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v3, 0x7f0a0058

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v0}, Lcom/sec/android/app/camera/MenuTabController;->addTab(Lcom/sec/android/app/camera/widget/TwSelectButton;Landroid/view/ViewGroup;)V

    .line 119
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mTabController:Lcom/sec/android/app/camera/MenuTabController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/MenuTabController;->setTabVisible(I)V

    .line 120
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mTabController:Lcom/sec/android/app/camera/MenuTabController;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/MenuTabController;->setOnMenuTablChangedListener(Lcom/sec/android/app/camera/MenuTabController$OnMenuTabChangedListener;)V

    .line 127
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a0059

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/TwTickerView;

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mHelpTicker:Lcom/sec/android/app/camera/widget/TwTickerView;

    .line 129
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mHelpTicker:Lcom/sec/android/app/camera/widget/TwTickerView;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060074

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwTickerView;->setTextSize(F)V

    .line 131
    return-void
.end method

.method private initSetupSettingList()V
    .locals 9

    .prologue
    const/16 v8, 0x1e

    const/16 v7, 0x15

    const/16 v6, 0x14

    const/16 v5, 0x13

    const/16 v4, 0x11

    .line 228
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v2, 0x7f0a0058

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/widget/TwSettingList;

    iput-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mSetupSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    .line 229
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mSetupSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mCameraSettingsMenuResourceData:Lcom/sec/android/app/camera/CameraSettingsMenuResourceData;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettingsMenuResourceData;->getResource()Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mMenuItemMap:Ljava/util/Map;

    invoke-virtual {v1, v2, p0, v3}, Lcom/sec/android/app/camera/widget/TwSettingList;->initializeParams(Ljava/util/HashMap;Landroid/view/View$OnClickListener;Ljava/util/Map;)V

    .line 230
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mSetupSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    const/16 v2, 0x17

    invoke-virtual {v1, v2, v5}, Lcom/sec/android/app/camera/widget/TwSettingList;->initializeList(II)V

    .line 231
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mSetupSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    const/16 v2, 0x18

    invoke-virtual {v1, v2, v4}, Lcom/sec/android/app/camera/widget/TwSettingList;->initializeList(II)V

    .line 232
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mSetupSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    const/16 v2, 0x19

    invoke-virtual {v1, v2, v6}, Lcom/sec/android/app/camera/widget/TwSettingList;->initializeList(II)V

    .line 233
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mSetupSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    const/16 v2, 0x1a

    invoke-virtual {v1, v2, v7}, Lcom/sec/android/app/camera/widget/TwSettingList;->initializeList(II)V

    .line 237
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mSetupSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    invoke-virtual {v1, v8, v8}, Lcom/sec/android/app/camera/widget/TwSettingList;->initializeList(II)V

    .line 239
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mSetupSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mHelpTicker:Lcom/sec/android/app/camera/widget/TwTickerView;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/TwSettingList;->setHelpTextView(Lcom/sec/android/app/camera/widget/TwTickerView;)V

    .line 240
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mSetupSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/TwSettingList;->initializeScroller()V

    .line 243
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    .line 244
    .local v0, dimController:Lcom/sec/android/app/camera/MenuDimController;
    const/16 v1, 0x16

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mSetupSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    invoke-virtual {v2, v5}, Lcom/sec/android/app/camera/widget/TwSettingList;->getItemButton(I)Lcom/sec/android/app/camera/widget/TwImageButton;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController;->addButton(ILcom/sec/android/app/camera/widget/TwImageButton;)V

    .line 245
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mSetupSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/widget/TwSettingList;->getItemButton(I)Lcom/sec/android/app/camera/widget/TwImageButton;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Lcom/sec/android/app/camera/MenuDimController;->addButton(ILcom/sec/android/app/camera/widget/TwImageButton;)V

    .line 257
    const/16 v1, 0x21

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mCameraSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    invoke-virtual {v2, v7}, Lcom/sec/android/app/camera/widget/TwSettingList;->getItemButton(I)Lcom/sec/android/app/camera/widget/TwImageButton;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController;->addButton(ILcom/sec/android/app/camera/widget/TwImageButton;)V

    .line 260
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mSetupSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    invoke-virtual {v1, p0}, Lcom/sec/android/app/camera/widget/TwSettingList;->setOnInvalidatePreviewListener(Lcom/sec/android/app/camera/widget/TwSettingList$OnInvalidatePreviewListener;)V

    .line 261
    return-void
.end method


# virtual methods
.method public OnMenuTabChanged(Landroid/view/ViewGroup;)V
    .locals 2
    .parameter "tab"

    .prologue
    .line 470
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mCurrentTab:Lcom/sec/android/app/camera/widget/TwSettingList;

    if-eqz v0, :cond_0

    .line 471
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mCurrentTab:Lcom/sec/android/app/camera/widget/TwSettingList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwSettingList;->onTwSettingListItemHighlighted(Lcom/sec/android/app/camera/widget/TwSettingListItem;)V

    .line 473
    :cond_0
    check-cast p1, Lcom/sec/android/app/camera/widget/TwSettingList;

    .end local p1
    iput-object p1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mCurrentTab:Lcom/sec/android/app/camera/widget/TwSettingList;

    .line 474
    return-void
.end method

.method public lockResolutionChanging()V
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mResolutionChangingLocked:Z

    .line 91
    return-void
.end method

.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 620
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 622
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    .line 625
    :cond_0
    return v1
.end method

.method public onBack()V
    .locals 2

    .prologue
    .line 598
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mCameraTabButton:Lcom/sec/android/app/camera/widget/TwSelectButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwSelectButton;->onClick(Landroid/view/View;)V

    .line 599
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mCameraSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/TwSettingList;->scrollToFirstPage()V

    .line 600
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mSetupSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/TwSettingList;->scrollToFirstPage()V

    .line 601
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onInflatedMenuHidden()V

    .line 603
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onBack()V

    .line 604
    return-void
.end method

.method public onCameraSettingsChanged(II)V
    .locals 1
    .parameter "menuid"
    .parameter "modeid"

    .prologue
    .line 553
    packed-switch p1, :pswitch_data_0

    .line 580
    :goto_0
    :pswitch_0
    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    .line 584
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/camera/CameraSettingsMenu;->updateButtonText(II)V

    .line 587
    :cond_0
    const/16 v0, 0x11

    if-ne p1, v0, :cond_1

    .line 589
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/camera/CameraSettingsMenu;->updateButtonText(II)V

    .line 594
    :cond_1
    return-void

    .line 564
    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/camera/CameraSettingsMenu;->updateButtonText(II)V

    goto :goto_0

    .line 572
    :pswitch_2
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/camera/CameraSettingsMenu;->updateButtonState(II)V

    goto :goto_0

    .line 553
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 264
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mCurrentTab:Lcom/sec/android/app/camera/widget/TwSettingList;

    if-eqz v1, :cond_0

    .line 265
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mCurrentTab:Lcom/sec/android/app/camera/widget/TwSettingList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/TwSettingList;->onTwSettingListItemHighlighted(Lcom/sec/android/app/camera/widget/TwSettingListItem;)V

    .line 267
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0a003b

    if-ne v1, v2, :cond_2

    .line 268
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    .line 467
    :cond_1
    :goto_0
    return-void

    .line 272
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 282
    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    if-eq v1, v3, :cond_3

    .line 283
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v2, 0x7f03001a

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/FocusModeMenu;

    .line 284
    .local v0, menu:Lcom/sec/android/app/camera/FocusModeMenu;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/FocusModeMenu;->showMenu()V

    .line 285
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/FocusModeMenu;->setOnFocusModeChangedListener(Lcom/sec/android/app/camera/FocusModeMenu$OnFocusModeChangedListener;)V

    goto :goto_0

    .line 287
    .end local v0           #menu:Lcom/sec/android/app/camera/FocusModeMenu;
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v2, 0x7f03001b

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/FocusModeContinuousMenu;

    .line 288
    .local v0, menu:Lcom/sec/android/app/camera/FocusModeContinuousMenu;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/FocusModeContinuousMenu;->showMenu()V

    .line 289
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/FocusModeContinuousMenu;->setOnFocusModeChangedListener(Lcom/sec/android/app/camera/FocusModeMenu$OnFocusModeChangedListener;)V

    goto :goto_0

    .line 296
    .end local v0           #menu:Lcom/sec/android/app/camera/FocusModeContinuousMenu;
    :pswitch_2
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v2, 0x7f03002f

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/SceneModeMenu;

    .line 297
    .local v0, menu:Lcom/sec/android/app/camera/SceneModeMenu;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/SceneModeMenu;->showMenu()V

    .line 298
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/SceneModeMenu;->setOnSceneModeChangedListener(Lcom/sec/android/app/camera/SceneModeMenu$OnSceneModeChangedListener;)V

    goto :goto_0

    .line 303
    .end local v0           #menu:Lcom/sec/android/app/camera/SceneModeMenu;
    :pswitch_3
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v2, 0x7f03003a

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/TimerMenu;

    .line 304
    .local v0, menu:Lcom/sec/android/app/camera/TimerMenu;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/TimerMenu;->showMenu()V

    .line 305
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/TimerMenu;->setOnTimerChangedListener(Lcom/sec/android/app/camera/TimerMenu$OnTimerChangedListener;)V

    goto :goto_0

    .line 310
    .end local v0           #menu:Lcom/sec/android/app/camera/TimerMenu;
    :pswitch_4
    iget-boolean v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mResolutionChangingLocked:Z

    if-nez v1, :cond_1

    .line 314
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v2, 0x7f03000d

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/CameraResolutionMenu;

    .line 316
    .local v0, menu:Lcom/sec/android/app/camera/CameraResolutionMenu;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraResolutionMenu;->showMenu()V

    .line 317
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraResolutionMenu;->setOnCameraResolutionChangedListener(Lcom/sec/android/app/camera/CameraResolutionMenu$OnCameraResolutionChangedListener;)V

    goto/16 :goto_0

    .line 322
    .end local v0           #menu:Lcom/sec/android/app/camera/CameraResolutionMenu;
    :pswitch_5
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v2, 0x7f030040

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/WhiteBalanceMenu;

    .line 324
    .local v0, menu:Lcom/sec/android/app/camera/WhiteBalanceMenu;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/WhiteBalanceMenu;->showMenu()V

    .line 325
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/WhiteBalanceMenu;->setOnWhiteBalanceChangedListener(Lcom/sec/android/app/camera/WhiteBalanceMenu$OnWhiteBalanceChangedListener;)V

    goto/16 :goto_0

    .line 330
    .end local v0           #menu:Lcom/sec/android/app/camera/WhiteBalanceMenu;
    :pswitch_6
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v2, 0x7f030015

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/EffectMenu;

    .line 331
    .local v0, menu:Lcom/sec/android/app/camera/EffectMenu;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/EffectMenu;->showMenu()V

    .line 332
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/EffectMenu;->setOnEffectChangedListener(Lcom/sec/android/app/camera/EffectMenu$OnEffectChangedListener;)V

    goto/16 :goto_0

    .line 337
    .end local v0           #menu:Lcom/sec/android/app/camera/EffectMenu;
    :pswitch_7
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v2, 0x7f030022

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/ISOMenu;

    .line 338
    .local v0, menu:Lcom/sec/android/app/camera/ISOMenu;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/ISOMenu;->showMenu()V

    .line 339
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/ISOMenu;->setOnISOChangedListener(Lcom/sec/android/app/camera/ISOMenu$OnISOChangedListener;)V

    goto/16 :goto_0

    .line 344
    .end local v0           #menu:Lcom/sec/android/app/camera/ISOMenu;
    :pswitch_8
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v2, 0x7f030017

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/ExposuremeterMenu;

    .line 346
    .local v0, menu:Lcom/sec/android/app/camera/ExposuremeterMenu;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/ExposuremeterMenu;->showMenu()V

    .line 347
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/ExposuremeterMenu;->setOnExposuremeterChangedListener(Lcom/sec/android/app/camera/ExposuremeterMenu$OnExposuremeterChangedListener;)V

    goto/16 :goto_0

    .line 352
    .end local v0           #menu:Lcom/sec/android/app/camera/ExposuremeterMenu;
    :pswitch_9
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getObjecttracking()I

    move-result v1

    if-nez v1, :cond_4

    .line 353
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onObjecttrackingChanged(I)V

    goto/16 :goto_0

    .line 355
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onObjecttrackingChanged(I)V

    goto/16 :goto_0

    .line 361
    :pswitch_a
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getAntishake()I

    move-result v1

    if-nez v1, :cond_5

    .line 362
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onAntishakeChanged(I)V

    goto/16 :goto_0

    .line 364
    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onAntishakeChanged(I)V

    goto/16 :goto_0

    .line 370
    :pswitch_b
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraAutocontrast()I

    move-result v1

    if-nez v1, :cond_6

    .line 371
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onCameraAutocontrastChanged(I)V

    goto/16 :goto_0

    .line 373
    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onCameraAutocontrastChanged(I)V

    goto/16 :goto_0

    .line 378
    :pswitch_c
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getBlinkdetection()I

    move-result v1

    if-nez v1, :cond_7

    .line 379
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onBlinkdetectionChanged(I)V

    goto/16 :goto_0

    .line 381
    :cond_7
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onBlinkdetectionChanged(I)V

    goto/16 :goto_0

    .line 387
    :pswitch_d
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v2, 0x7f03000c

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/CameraQualityMenu;

    .line 389
    .local v0, menu:Lcom/sec/android/app/camera/CameraQualityMenu;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraQualityMenu;->showMenu()V

    .line 390
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraQualityMenu;->setOnCameraQualityChangedListener(Lcom/sec/android/app/camera/CameraQualityMenu$OnCameraQualityChangedListener;)V

    goto/16 :goto_0

    .line 395
    .end local v0           #menu:Lcom/sec/android/app/camera/CameraQualityMenu;
    :pswitch_e
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getGuideline()I

    move-result v1

    if-nez v1, :cond_8

    .line 396
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onGuidelineChanged(I)V

    .line 400
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->invalidatePreview()V

    goto/16 :goto_0

    .line 398
    :cond_8
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onGuidelineChanged(I)V

    goto :goto_1

    .line 406
    :pswitch_f
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v2, 0x7f03002a

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/ReviewMenu;

    .line 407
    .local v0, menu:Lcom/sec/android/app/camera/ReviewMenu;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/ReviewMenu;->showMenu()V

    .line 408
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/ReviewMenu;->setOnReviewChangedListener(Lcom/sec/android/app/camera/ReviewMenu$OnReviewChangedListener;)V

    goto/16 :goto_0

    .line 419
    .end local v0           #menu:Lcom/sec/android/app/camera/ReviewMenu;
    :pswitch_10
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getGps()I

    move-result v1

    if-nez v1, :cond_9

    .line 420
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onGpsChanged(I)V

    .line 424
    :goto_2
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->invalidatePreview()V

    goto/16 :goto_0

    .line 422
    :cond_9
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onGpsChanged(I)V

    goto :goto_2

    .line 429
    :pswitch_11
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    if-eq v1, v3, :cond_a

    .line 430
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v2, 0x7f030035

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/ShutterSoundMenu;

    .line 432
    .local v0, menu:Lcom/sec/android/app/camera/ShutterSoundMenu;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/ShutterSoundMenu;->showMenu()V

    .line 433
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/ShutterSoundMenu;->setOnShutterSoundChangedListener(Lcom/sec/android/app/camera/ShutterSoundMenu$OnShutterSoundChangedListener;)V

    goto/16 :goto_0

    .line 435
    .end local v0           #menu:Lcom/sec/android/app/camera/ShutterSoundMenu;
    :cond_a
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v2, 0x7f030036

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/ShutterSoundContinuousMenu;

    .line 437
    .local v0, menu:Lcom/sec/android/app/camera/ShutterSoundContinuousMenu;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/ShutterSoundContinuousMenu;->showMenu()V

    .line 438
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/ShutterSoundContinuousMenu;->setOnShutterSoundChangedListener(Lcom/sec/android/app/camera/ShutterSoundMenu$OnShutterSoundChangedListener;)V

    goto/16 :goto_0

    .line 444
    .end local v0           #menu:Lcom/sec/android/app/camera/ShutterSoundContinuousMenu;
    :pswitch_12
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v2, 0x7f030039

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/StorageMenu;

    .line 445
    .local v0, menu:Lcom/sec/android/app/camera/StorageMenu;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/StorageMenu;->showMenu()V

    .line 446
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/StorageMenu;->setOnStorageChangedListener(Lcom/sec/android/app/camera/StorageMenu$OnStorageChangedListener;)V

    goto/16 :goto_0

    .line 451
    .end local v0           #menu:Lcom/sec/android/app/camera/StorageMenu;
    :pswitch_13
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v2, 0x7f030002

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/AdjustMenu;

    .line 452
    .local v0, menu:Lcom/sec/android/app/camera/AdjustMenu;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/AdjustMenu;->showMenu()V

    .line 453
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AdjustMenu;->setOnContrastChangedListener(Lcom/sec/android/app/camera/AdjustMenu$OnContrastChangedListener;)V

    .line 454
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AdjustMenu;->setOnSaturationChangedListener(Lcom/sec/android/app/camera/AdjustMenu$OnSaturationChangedListener;)V

    .line 455
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AdjustMenu;->setOnSharpnessChangedListener(Lcom/sec/android/app/camera/AdjustMenu$OnSharpnessChangedListener;)V

    goto/16 :goto_0

    .line 461
    .end local v0           #menu:Lcom/sec/android/app/camera/AdjustMenu;
    :pswitch_14
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->resetToDefaultSettings()V

    .line 466
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/MenuBase;->onClick(Landroid/view/View;)V

    goto/16 :goto_0

    .line 272
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_13
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_0
        :pswitch_0
        :pswitch_14
        :pswitch_2
    .end packed-switch
.end method

.method public onInvalidatePreview()V
    .locals 1

    .prologue
    .line 612
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->invalidatePreview()V

    .line 613
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 629
    const/16 v0, 0x1a

    if-ne p1, v0, :cond_0

    move v0, v2

    .line 648
    :goto_0
    return v0

    .line 633
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getLock()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 634
    goto :goto_0

    .line 637
    :cond_1
    const/16 v0, 0x18

    if-eq p1, v0, :cond_2

    const/16 v0, 0x19

    if-eq p1, v0, :cond_2

    const/16 v0, 0x15

    if-eq p1, v0, :cond_2

    const/16 v0, 0x16

    if-ne p1, v0, :cond_3

    :cond_2
    move v0, v1

    .line 639
    goto :goto_0

    .line 642
    :cond_3
    const/16 v0, 0x1b

    if-eq p1, v0, :cond_4

    const/16 v0, 0x17

    if-eq p1, v0, :cond_4

    const/16 v0, 0x42

    if-ne p1, v0, :cond_5

    :cond_4
    move v0, v1

    .line 645
    goto :goto_0

    :cond_5
    move v0, v2

    .line 648
    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 652
    const/16 v0, 0x1a

    if-ne p1, v0, :cond_0

    move v0, v2

    .line 671
    :goto_0
    return v0

    .line 656
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getLock()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 657
    goto :goto_0

    .line 660
    :cond_1
    const/16 v0, 0x18

    if-eq p1, v0, :cond_2

    const/16 v0, 0x19

    if-eq p1, v0, :cond_2

    const/16 v0, 0x15

    if-eq p1, v0, :cond_2

    const/16 v0, 0x16

    if-ne p1, v0, :cond_3

    :cond_2
    move v0, v1

    .line 662
    goto :goto_0

    .line 665
    :cond_3
    const/16 v0, 0x1b

    if-eq p1, v0, :cond_4

    const/16 v0, 0x17

    if-eq p1, v0, :cond_4

    const/16 v0, 0x42

    if-ne p1, v0, :cond_5

    :cond_4
    move v0, v1

    .line 668
    goto :goto_0

    :cond_5
    move v0, v2

    .line 671
    goto :goto_0
.end method

.method protected onShow()V
    .locals 1

    .prologue
    .line 607
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuDimController;->synchronizeDim()V

    .line 608
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onShow()V

    .line 609
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 616
    const/4 v0, 0x1

    return v0
.end method

.method protected refreashButtonState()V
    .locals 2

    .prologue
    .line 531
    const/16 v0, 0x13

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getGuideline()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettingsMenu;->updateButtonState(II)V

    .line 532
    const/16 v0, 0x14

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getGps()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettingsMenu;->updateButtonState(II)V

    .line 536
    return-void
.end method

.method protected refreashButtonText()V
    .locals 4

    .prologue
    const/16 v3, 0x1e

    const/16 v2, 0x17

    .line 479
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getFocusMode()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettingsMenu;->updateButtonText(II)V

    .line 486
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraTimer()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettingsMenu;->updateButtonText(II)V

    .line 488
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettingsMenu;->updateButtonText(II)V

    .line 489
    const/16 v0, 0x9

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraWB()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettingsMenu;->updateButtonText(II)V

    .line 490
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraEffect()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettingsMenu;->updateButtonText(II)V

    .line 496
    const/16 v0, 0xb

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getExposuremeter()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettingsMenu;->updateButtonText(II)V

    .line 497
    const/16 v0, 0x10

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraQuality()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettingsMenu;->updateButtonText(II)V

    .line 499
    const/16 v0, 0x11

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getReview()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettingsMenu;->updateButtonText(II)V

    .line 501
    const/16 v0, 0x15

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShutterSound()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettingsMenu;->updateButtonText(II)V

    .line 505
    invoke-virtual {p0, v2, v2}, Lcom/sec/android/app/camera/CameraSettingsMenu;->updateButtonText(II)V

    .line 506
    invoke-virtual {p0, v3, v3}, Lcom/sec/android/app/camera/CameraSettingsMenu;->updateButtonText(II)V

    .line 507
    return-void
.end method

.method public unlockResolutionChanging()V
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mResolutionChangingLocked:Z

    .line 95
    return-void
.end method

.method public updateButtonState(II)V
    .locals 4
    .parameter "menu"
    .parameter "mode"

    .prologue
    .line 545
    const/4 v1, 0x0

    .line 546
    .local v1, press:Z
    if-nez p2, :cond_0

    .line 547
    const/4 v1, 0x1

    .line 548
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mMenuItemMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/TwSettingListItem;

    .line 549
    .local v0, item:Lcom/sec/android/app/camera/widget/TwSettingListItem;
    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwSettingListItem;->setRadioButtonState(Z)V

    .line 550
    return-void
.end method

.method public updateButtonText(II)V
    .locals 2
    .parameter "menu"
    .parameter "mode"

    .prologue
    .line 539
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mMenuItemMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 540
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mMenuItemMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/sec/android/app/camera/widget/TwSettingListItem;

    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/widget/TwSettingListItem;->setButtonText(I)V

    .line 542
    :cond_0
    return-void
.end method
