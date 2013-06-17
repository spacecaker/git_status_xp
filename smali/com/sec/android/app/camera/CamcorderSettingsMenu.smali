.class public Lcom/sec/android/app/camera/CamcorderSettingsMenu;
.super Lcom/sec/android/app/camera/MenuBase;
.source "CamcorderSettingsMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;
.implements Lcom/sec/android/app/camera/MenuTabController$OnMenuTabChangedListener;
.implements Lcom/sec/android/app/camera/widget/TwSettingList$OnInvalidatePreviewListener;


# instance fields
.field mCamcorderSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

.field private mCamcorderSettingsMenuResourceData:Lcom/sec/android/app/camera/CamcorderSettingsMenuResourceData;

.field mCamcorderTabButton:Lcom/sec/android/app/camera/widget/TwSelectButton;

.field mCurrentTab:Lcom/sec/android/app/camera/widget/TwSettingList;

.field private mHelpTicker:Lcom/sec/android/app/camera/widget/TwTickerView;

.field private mMenuItemMap:Ljava/util/Map;
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
.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;IILandroid/view/ViewGroup;Lcom/sec/android/app/camera/MenuResourceData;Lcom/sec/android/app/camera/CamcorderSettingsMenuResourceData;I)V
    .locals 7
    .parameter "activityContext"
    .parameter "layoutId"
    .parameter "baseViewId"
    .parameter "baseLayout"
    .parameter "menuResourceData"
    .parameter "camcorderSettingsMenuResourceData"
    .parameter "zOrder"

    .prologue
    .line 80
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;IILandroid/view/ViewGroup;Lcom/sec/android/app/camera/MenuResourceData;I)V

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mCurrentTab:Lcom/sec/android/app/camera/widget/TwSettingList;

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mMenuItemMap:Ljava/util/Map;

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mResolutionChangingLocked:Z

    .line 82
    invoke-direct {p0, p6}, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->init(Lcom/sec/android/app/camera/CamcorderSettingsMenuResourceData;)V

    .line 83
    return-void
.end method

.method private init(Lcom/sec/android/app/camera/CamcorderSettingsMenuResourceData;)V
    .locals 2
    .parameter "camcorderSettingsMenuResourceData"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mCamcorderSettingsMenuResourceData:Lcom/sec/android/app/camera/CamcorderSettingsMenuResourceData;

    .line 95
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->initSettingTab()V

    .line 96
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->initCamcorderSettingList()V

    .line 97
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->initSetupSettingList()V

    .line 98
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->refreashButtonText()V

    .line 99
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->refreashButtonState()V

    .line 100
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a0036

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 101
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mCamcorderSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mCurrentTab:Lcom/sec/android/app/camera/widget/TwSettingList;

    .line 102
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/CameraSettings;->registerCameraSettingsChangedObserver(Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;)V

    .line 103
    return-void
.end method

.method private initCamcorderSettingList()V
    .locals 8

    .prologue
    const/16 v7, 0x71

    const/16 v6, 0x6c

    const/16 v5, 0x6b

    const/16 v4, 0x68

    .line 129
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v2, 0x7f0a003d

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/widget/TwSettingList;

    iput-object v1, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mCamcorderSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    .line 130
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mCamcorderSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mCamcorderSettingsMenuResourceData:Lcom/sec/android/app/camera/CamcorderSettingsMenuResourceData;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CamcorderSettingsMenuResourceData;->getResource()Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mMenuItemMap:Ljava/util/Map;

    invoke-virtual {v1, v2, p0, v3}, Lcom/sec/android/app/camera/widget/TwSettingList;->initializeParams(Ljava/util/HashMap;Landroid/view/View$OnClickListener;Ljava/util/Map;)V

    .line 133
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mCamcorderSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    const/16 v2, 0xb

    const/16 v3, 0x6a

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/widget/TwSettingList;->initializeList(II)V

    .line 135
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mCamcorderSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    const/16 v2, 0xa

    invoke-virtual {v1, v2, v4}, Lcom/sec/android/app/camera/widget/TwSettingList;->initializeList(II)V

    .line 136
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mCamcorderSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    const/16 v2, 0xc

    invoke-virtual {v1, v2, v5}, Lcom/sec/android/app/camera/widget/TwSettingList;->initializeList(II)V

    .line 137
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mCamcorderSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    const/16 v2, 0xd

    invoke-virtual {v1, v2, v6}, Lcom/sec/android/app/camera/widget/TwSettingList;->initializeList(II)V

    .line 138
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mCamcorderSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    const/16 v2, 0xf

    const/16 v3, 0x6f

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/widget/TwSettingList;->initializeList(II)V

    .line 139
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mCamcorderSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    const/16 v2, 0x10

    invoke-virtual {v1, v2, v7}, Lcom/sec/android/app/camera/widget/TwSettingList;->initializeList(II)V

    .line 141
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mCamcorderSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mHelpTicker:Lcom/sec/android/app/camera/widget/TwTickerView;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/TwSettingList;->setHelpTextView(Lcom/sec/android/app/camera/widget/TwTickerView;)V

    .line 142
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mCamcorderSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/TwSettingList;->initializeScroller()V

    .line 145
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    .line 147
    .local v0, dimController:Lcom/sec/android/app/camera/MenuDimController;
    const/16 v1, 0x1c

    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mCamcorderSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/camera/widget/TwSettingList;->getItemButton(I)Lcom/sec/android/app/camera/widget/TwImageButton;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController;->addButton(ILcom/sec/android/app/camera/widget/TwImageButton;)V

    .line 148
    const/16 v1, 0x1d

    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mCamcorderSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    invoke-virtual {v2, v5}, Lcom/sec/android/app/camera/widget/TwSettingList;->getItemButton(I)Lcom/sec/android/app/camera/widget/TwImageButton;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController;->addButton(ILcom/sec/android/app/camera/widget/TwImageButton;)V

    .line 149
    const/16 v1, 0x1e

    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mCamcorderSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    invoke-virtual {v2, v6}, Lcom/sec/android/app/camera/widget/TwSettingList;->getItemButton(I)Lcom/sec/android/app/camera/widget/TwImageButton;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController;->addButton(ILcom/sec/android/app/camera/widget/TwImageButton;)V

    .line 150
    const/16 v1, 0x1f

    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mCamcorderSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    invoke-virtual {v2, v7}, Lcom/sec/android/app/camera/widget/TwSettingList;->getItemButton(I)Lcom/sec/android/app/camera/widget/TwImageButton;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController;->addButton(ILcom/sec/android/app/camera/widget/TwImageButton;)V

    .line 152
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mCamcorderSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    invoke-virtual {v1, p0}, Lcom/sec/android/app/camera/widget/TwSettingList;->setOnInvalidatePreviewListener(Lcom/sec/android/app/camera/widget/TwSettingList$OnInvalidatePreviewListener;)V

    .line 153
    return-void
.end method

.method private initSettingTab()V
    .locals 4

    .prologue
    .line 106
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a0039

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/TwSelectButton;

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mCamcorderTabButton:Lcom/sec/android/app/camera/widget/TwSelectButton;

    .line 107
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a003a

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/TwSelectButton;

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mSetupTabButton:Lcom/sec/android/app/camera/widget/TwSelectButton;

    .line 109
    new-instance v0, Lcom/sec/android/app/camera/MenuTabController;

    invoke-direct {v0}, Lcom/sec/android/app/camera/MenuTabController;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mTabController:Lcom/sec/android/app/camera/MenuTabController;

    .line 111
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mTabController:Lcom/sec/android/app/camera/MenuTabController;

    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mCamcorderTabButton:Lcom/sec/android/app/camera/widget/TwSelectButton;

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v3, 0x7f0a003d

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v0}, Lcom/sec/android/app/camera/MenuTabController;->addTab(Lcom/sec/android/app/camera/widget/TwSelectButton;Landroid/view/ViewGroup;)V

    .line 112
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mTabController:Lcom/sec/android/app/camera/MenuTabController;

    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mSetupTabButton:Lcom/sec/android/app/camera/widget/TwSelectButton;

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v3, 0x7f0a003e

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v0}, Lcom/sec/android/app/camera/MenuTabController;->addTab(Lcom/sec/android/app/camera/widget/TwSelectButton;Landroid/view/ViewGroup;)V

    .line 114
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mTabController:Lcom/sec/android/app/camera/MenuTabController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/MenuTabController;->setTabVisible(I)V

    .line 115
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mTabController:Lcom/sec/android/app/camera/MenuTabController;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/MenuTabController;->setOnMenuTablChangedListener(Lcom/sec/android/app/camera/MenuTabController$OnMenuTabChangedListener;)V

    .line 122
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a003f

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/TwTickerView;

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mHelpTicker:Lcom/sec/android/app/camera/widget/TwTickerView;

    .line 124
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mHelpTicker:Lcom/sec/android/app/camera/widget/TwTickerView;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060074

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwTickerView;->setTextSize(F)V

    .line 126
    return-void
.end method

.method private initSetupSettingList()V
    .locals 7

    .prologue
    const/16 v6, 0x77

    const/16 v5, 0x16

    const/16 v4, 0x13

    .line 156
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v2, 0x7f0a003e

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/widget/TwSettingList;

    iput-object v1, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mSetupSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    .line 157
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mSetupSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mCamcorderSettingsMenuResourceData:Lcom/sec/android/app/camera/CamcorderSettingsMenuResourceData;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CamcorderSettingsMenuResourceData;->getResource()Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mMenuItemMap:Ljava/util/Map;

    invoke-virtual {v1, v2, p0, v3}, Lcom/sec/android/app/camera/widget/TwSettingList;->initializeParams(Ljava/util/HashMap;Landroid/view/View$OnClickListener;Ljava/util/Map;)V

    .line 159
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mSetupSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    invoke-virtual {v1, v4, v4}, Lcom/sec/android/app/camera/widget/TwSettingList;->initializeList(II)V

    .line 160
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mSetupSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    const/16 v2, 0x14

    const/16 v3, 0x76

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/widget/TwSettingList;->initializeList(II)V

    .line 161
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mSetupSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    invoke-virtual {v1, v5, v6}, Lcom/sec/android/app/camera/widget/TwSettingList;->initializeList(II)V

    .line 165
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mSetupSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    const/16 v2, 0x11

    const/16 v3, 0x75

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/widget/TwSettingList;->initializeList(II)V

    .line 167
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mSetupSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mHelpTicker:Lcom/sec/android/app/camera/widget/TwTickerView;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/TwSettingList;->setHelpTextView(Lcom/sec/android/app/camera/widget/TwTickerView;)V

    .line 168
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mSetupSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/TwSettingList;->initializeScroller()V

    .line 171
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    .line 172
    .local v0, dimController:Lcom/sec/android/app/camera/MenuDimController;
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mSetupSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/widget/TwSettingList;->getItemButton(I)Lcom/sec/android/app/camera/widget/TwImageButton;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Lcom/sec/android/app/camera/MenuDimController;->addButton(ILcom/sec/android/app/camera/widget/TwImageButton;)V

    .line 173
    const/16 v1, 0x20

    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mSetupSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    invoke-virtual {v2, v6}, Lcom/sec/android/app/camera/widget/TwSettingList;->getItemButton(I)Lcom/sec/android/app/camera/widget/TwImageButton;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController;->addButton(ILcom/sec/android/app/camera/widget/TwImageButton;)V

    .line 184
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mSetupSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    invoke-virtual {v1, p0}, Lcom/sec/android/app/camera/widget/TwSettingList;->setOnInvalidatePreviewListener(Lcom/sec/android/app/camera/widget/TwSettingList$OnInvalidatePreviewListener;)V

    .line 185
    return-void
.end method


# virtual methods
.method public OnMenuTabChanged(Landroid/view/ViewGroup;)V
    .locals 2
    .parameter "tab"

    .prologue
    .line 305
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mCurrentTab:Lcom/sec/android/app/camera/widget/TwSettingList;

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mCurrentTab:Lcom/sec/android/app/camera/widget/TwSettingList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwSettingList;->onTwSettingListItemHighlighted(Lcom/sec/android/app/camera/widget/TwSettingListItem;)V

    .line 308
    :cond_0
    check-cast p1, Lcom/sec/android/app/camera/widget/TwSettingList;

    .end local p1
    iput-object p1, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mCurrentTab:Lcom/sec/android/app/camera/widget/TwSettingList;

    .line 309
    return-void
.end method

.method public lockResolutionChanging()V
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mResolutionChangingLocked:Z

    .line 87
    return-void
.end method

.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 391
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 393
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    .line 396
    :cond_0
    return v1
.end method

.method public onBack()V
    .locals 2

    .prologue
    .line 369
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mCamcorderTabButton:Lcom/sec/android/app/camera/widget/TwSelectButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwSelectButton;->onClick(Landroid/view/View;)V

    .line 370
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mCamcorderSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/TwSettingList;->scrollToFirstPage()V

    .line 371
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mSetupSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/TwSettingList;->scrollToFirstPage()V

    .line 372
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onInflatedMenuHidden()V

    .line 374
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onBack()V

    .line 375
    return-void
.end method

.method public onCameraSettingsChanged(II)V
    .locals 0
    .parameter "menuid"
    .parameter "modeid"

    .prologue
    .line 348
    sparse-switch p1, :sswitch_data_0

    .line 365
    :goto_0
    return-void

    .line 355
    :sswitch_0
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->updateButtonText(II)V

    goto :goto_0

    .line 361
    :sswitch_1
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->updateButtonState(II)V

    goto :goto_0

    .line 348
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_1
        0x16 -> :sswitch_0
        0x68 -> :sswitch_0
        0x6a -> :sswitch_0
        0x6b -> :sswitch_0
        0x6c -> :sswitch_0
        0x6f -> :sswitch_0
        0x76 -> :sswitch_1
        0x77 -> :sswitch_1
    .end sparse-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 188
    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mCurrentTab:Lcom/sec/android/app/camera/widget/TwSettingList;

    if-eqz v3, :cond_0

    .line 189
    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mCurrentTab:Lcom/sec/android/app/camera/widget/TwSettingList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/widget/TwSettingList;->onTwSettingListItemHighlighted(Lcom/sec/android/app/camera/widget/TwSettingListItem;)V

    .line 192
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0x7f0a003b

    if-ne v3, v4, :cond_2

    .line 193
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    .line 302
    :cond_1
    :goto_0
    return-void

    .line 197
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 206
    :pswitch_1
    iget-boolean v3, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mResolutionChangingLocked:Z

    if-nez v3, :cond_1

    .line 209
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v4, 0x7f030007

    iget-object v5, p0, Lcom/sec/android/app/camera/MenuBase;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/CamcorderResolutionMenu;

    .line 211
    .local v1, menu:Lcom/sec/android/app/camera/CamcorderResolutionMenu;
    invoke-virtual {v1}, Lcom/sec/android/app/camera/CamcorderResolutionMenu;->showMenu()V

    .line 212
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/CamcorderResolutionMenu;->setOnCamcorderResolutionChangedListener(Lcom/sec/android/app/camera/CamcorderResolutionMenu$OnCamcorderResolutionChangedListener;)V

    goto :goto_0

    .line 199
    .end local v1           #menu:Lcom/sec/android/app/camera/CamcorderResolutionMenu;
    :pswitch_2
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v4, 0x7f03003a

    iget-object v5, p0, Lcom/sec/android/app/camera/MenuBase;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/TimerMenu;

    .line 200
    .local v1, menu:Lcom/sec/android/app/camera/TimerMenu;
    invoke-virtual {v1}, Lcom/sec/android/app/camera/TimerMenu;->showMenu()V

    .line 201
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/TimerMenu;->setOnTimerChangedListener(Lcom/sec/android/app/camera/TimerMenu$OnTimerChangedListener;)V

    goto :goto_0

    .line 217
    .end local v1           #menu:Lcom/sec/android/app/camera/TimerMenu;
    :pswitch_3
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v4, 0x7f030040

    iget-object v5, p0, Lcom/sec/android/app/camera/MenuBase;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/WhiteBalanceMenu;

    .line 219
    .local v1, menu:Lcom/sec/android/app/camera/WhiteBalanceMenu;
    invoke-virtual {v1}, Lcom/sec/android/app/camera/WhiteBalanceMenu;->showMenu()V

    .line 220
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/WhiteBalanceMenu;->setOnWhiteBalanceChangedListener(Lcom/sec/android/app/camera/WhiteBalanceMenu$OnWhiteBalanceChangedListener;)V

    goto :goto_0

    .line 225
    .end local v1           #menu:Lcom/sec/android/app/camera/WhiteBalanceMenu;
    :pswitch_4
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v4, 0x7f030015

    iget-object v5, p0, Lcom/sec/android/app/camera/MenuBase;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/EffectMenu;

    .line 226
    .local v1, menu:Lcom/sec/android/app/camera/EffectMenu;
    invoke-virtual {v1}, Lcom/sec/android/app/camera/EffectMenu;->showMenu()V

    .line 227
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/EffectMenu;->setOnEffectChangedListener(Lcom/sec/android/app/camera/EffectMenu$OnEffectChangedListener;)V

    goto :goto_0

    .line 232
    .end local v1           #menu:Lcom/sec/android/app/camera/EffectMenu;
    :pswitch_5
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderAutocontrast()I

    move-result v3

    if-nez v3, :cond_3

    .line 233
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3, v6}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onCamcorderAutocontrastChanged(I)V

    .line 237
    :goto_1
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->invalidatePreview()V

    goto/16 :goto_0

    .line 235
    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3, v5}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onCamcorderAutocontrastChanged(I)V

    goto :goto_1

    .line 242
    :pswitch_6
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v4, 0x7f030006

    iget-object v5, p0, Lcom/sec/android/app/camera/MenuBase;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/CamcorderQualityMenu;

    .line 244
    .local v1, menu:Lcom/sec/android/app/camera/CamcorderQualityMenu;
    invoke-virtual {v1}, Lcom/sec/android/app/camera/CamcorderQualityMenu;->showMenu()V

    .line 245
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/CamcorderQualityMenu;->setOnCamcorderQualityChangedListener(Lcom/sec/android/app/camera/CamcorderQualityMenu$OnCamcorderQualityChangedListener;)V

    goto/16 :goto_0

    .line 250
    .end local v1           #menu:Lcom/sec/android/app/camera/CamcorderQualityMenu;
    :pswitch_7
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v4, 0x7f030002

    iget-object v5, p0, Lcom/sec/android/app/camera/MenuBase;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/AdjustMenu;

    .line 251
    .local v1, menu:Lcom/sec/android/app/camera/AdjustMenu;
    invoke-virtual {v1}, Lcom/sec/android/app/camera/AdjustMenu;->showMenu()V

    .line 252
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/AdjustMenu;->setOnContrastChangedListener(Lcom/sec/android/app/camera/AdjustMenu$OnContrastChangedListener;)V

    .line 253
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/AdjustMenu;->setOnSaturationChangedListener(Lcom/sec/android/app/camera/AdjustMenu$OnSaturationChangedListener;)V

    .line 254
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/AdjustMenu;->setOnSharpnessChangedListener(Lcom/sec/android/app/camera/AdjustMenu$OnSharpnessChangedListener;)V

    goto/16 :goto_0

    .line 259
    .end local v1           #menu:Lcom/sec/android/app/camera/AdjustMenu;
    :pswitch_8
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getGuideline()I

    move-result v3

    if-nez v3, :cond_4

    .line 260
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3, v6}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onGuidelineChanged(I)V

    .line 264
    :goto_2
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->invalidatePreview()V

    goto/16 :goto_0

    .line 262
    :cond_4
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3, v5}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onGuidelineChanged(I)V

    goto :goto_2

    .line 269
    :pswitch_9
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderAudioRecording()Z

    move-result v0

    .line 270
    .local v0, audioRecording:Z
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    if-nez v0, :cond_5

    move v4, v6

    :goto_3
    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderAudioRecording(Z)V

    .line 272
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->invalidatePreview()V

    goto/16 :goto_0

    :cond_5
    move v4, v5

    .line 270
    goto :goto_3

    .line 277
    .end local v0           #audioRecording:Z
    :pswitch_a
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v4, 0x7f030039

    iget-object v5, p0, Lcom/sec/android/app/camera/MenuBase;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/StorageMenu;

    .line 278
    .local v1, menu:Lcom/sec/android/app/camera/StorageMenu;
    invoke-virtual {v1}, Lcom/sec/android/app/camera/StorageMenu;->showMenu()V

    .line 279
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/StorageMenu;->setOnStorageChangedListener(Lcom/sec/android/app/camera/StorageMenu$OnStorageChangedListener;)V

    goto/16 :goto_0

    .line 284
    .end local v1           #menu:Lcom/sec/android/app/camera/StorageMenu;
    :pswitch_b
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->resetToDefaultSettings()V

    .line 301
    :goto_4
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/MenuBase;->onClick(Landroid/view/View;)V

    goto/16 :goto_0

    .line 289
    :pswitch_c
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderReview()I

    move-result v2

    .line 290
    .local v2, review:I
    if-nez v2, :cond_6

    .line 291
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onReviewChanged(I)V

    .line 295
    :goto_5
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->invalidatePreview()V

    goto :goto_4

    .line 293
    :cond_6
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3, v5}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onReviewChanged(I)V

    goto :goto_5

    .line 197
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_b
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_c
    .end packed-switch
.end method

.method public onInvalidatePreview()V
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->invalidatePreview()V

    .line 384
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 400
    const/16 v0, 0x1a

    if-ne p1, v0, :cond_0

    move v0, v2

    .line 419
    :goto_0
    return v0

    .line 404
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getLock()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 405
    goto :goto_0

    .line 408
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

    .line 410
    goto :goto_0

    .line 413
    :cond_3
    const/16 v0, 0x1b

    if-eq p1, v0, :cond_4

    const/16 v0, 0x17

    if-eq p1, v0, :cond_4

    const/16 v0, 0x42

    if-ne p1, v0, :cond_5

    :cond_4
    move v0, v1

    .line 416
    goto :goto_0

    :cond_5
    move v0, v2

    .line 419
    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 423
    const/16 v0, 0x1a

    if-ne p1, v0, :cond_0

    move v0, v2

    .line 442
    :goto_0
    return v0

    .line 427
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getLock()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 428
    goto :goto_0

    .line 431
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

    .line 433
    goto :goto_0

    .line 436
    :cond_3
    const/16 v0, 0x1b

    if-eq p1, v0, :cond_4

    const/16 v0, 0x17

    if-eq p1, v0, :cond_4

    const/16 v0, 0x42

    if-ne p1, v0, :cond_5

    :cond_4
    move v0, v1

    .line 439
    goto :goto_0

    :cond_5
    move v0, v2

    .line 442
    goto :goto_0
.end method

.method protected onShow()V
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuDimController;->synchronizeDim()V

    .line 379
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onShow()V

    .line 380
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 387
    const/4 v0, 0x1

    return v0
.end method

.method protected refreashButtonState()V
    .locals 2

    .prologue
    .line 328
    const/16 v0, 0x13

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getGuideline()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->updateButtonState(II)V

    .line 329
    const/16 v0, 0x77

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderReview()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->updateButtonState(II)V

    .line 331
    return-void
.end method

.method protected refreashButtonText()V
    .locals 4

    .prologue
    const/16 v3, 0x75

    const/16 v2, 0x71

    .line 313
    const/16 v0, 0x6a

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderTimer()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->updateButtonText(II)V

    .line 315
    const/16 v0, 0x68

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->updateButtonText(II)V

    .line 316
    const/16 v0, 0x6b

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderWB()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->updateButtonText(II)V

    .line 317
    const/16 v0, 0x6c

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderEffect()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->updateButtonText(II)V

    .line 318
    const/16 v0, 0x6f

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderQuality()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->updateButtonText(II)V

    .line 323
    invoke-virtual {p0, v2, v2}, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->updateButtonText(II)V

    .line 324
    invoke-virtual {p0, v3, v3}, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->updateButtonText(II)V

    .line 325
    return-void
.end method

.method public unlockResolutionChanging()V
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mResolutionChangingLocked:Z

    .line 91
    return-void
.end method

.method public updateButtonState(II)V
    .locals 4
    .parameter "menu"
    .parameter "mode"

    .prologue
    .line 340
    const/4 v1, 0x0

    .line 341
    .local v1, press:Z
    if-nez p2, :cond_0

    .line 342
    const/4 v1, 0x1

    .line 343
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mMenuItemMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/TwSettingListItem;

    .line 344
    .local v0, item:Lcom/sec/android/app/camera/widget/TwSettingListItem;
    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwSettingListItem;->setRadioButtonState(Z)V

    .line 345
    return-void
.end method

.method public updateButtonText(II)V
    .locals 2
    .parameter "menu"
    .parameter "mode"

    .prologue
    .line 334
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mMenuItemMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mMenuItemMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/sec/android/app/camera/widget/TwSettingListItem;

    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/widget/TwSettingListItem;->setButtonText(I)V

    .line 337
    :cond_0
    return-void
.end method
