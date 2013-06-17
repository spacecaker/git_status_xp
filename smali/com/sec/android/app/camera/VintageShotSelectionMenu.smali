.class public Lcom/sec/android/app/camera/VintageShotSelectionMenu;
.super Lcom/sec/android/app/camera/MenuBase;
.source "VintageShotSelectionMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/VintageShotSelectionMenu$OnVintageChangedListener;
    }
.end annotation


# instance fields
.field mGrid:Lcom/sec/android/app/camera/widget/TwGridView;

.field protected mOnVintageChangedListener:Lcom/sec/android/app/camera/VintageShotSelectionMenu$OnVintageChangedListener;

.field mSelectedVintage:I


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;IILandroid/view/ViewGroup;Lcom/sec/android/app/camera/VintageShotSelectionResourceData;Lcom/sec/android/app/camera/MenuResourceData;I)V
    .locals 7
    .parameter "camera"
    .parameter "layoutId"
    .parameter "baseViewId"
    .parameter "baseLayout"
    .parameter "resourceData"
    .parameter "menuResourceData"
    .parameter "zOrder"

    .prologue
    .line 42
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;IILandroid/view/ViewGroup;Lcom/sec/android/app/camera/MenuResourceData;I)V

    .line 44
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/VintageShotSelectionMenu;->setTouchHandled(Z)V

    .line 45
    invoke-direct {p0, p5}, Lcom/sec/android/app/camera/VintageShotSelectionMenu;->init(Lcom/sec/android/app/camera/VintageShotSelectionResourceData;)V

    .line 46
    return-void
.end method

.method private init(Lcom/sec/android/app/camera/VintageShotSelectionResourceData;)V
    .locals 2
    .parameter "resourceData"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingVintageMode()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/VintageShotSelectionMenu;->mSelectedVintage:I

    .line 50
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a00f4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/TwGridView;

    iput-object v0, p0, Lcom/sec/android/app/camera/VintageShotSelectionMenu;->mGrid:Lcom/sec/android/app/camera/widget/TwGridView;

    .line 52
    iget-object v0, p0, Lcom/sec/android/app/camera/VintageShotSelectionMenu;->mGrid:Lcom/sec/android/app/camera/widget/TwGridView;

    iget v1, p0, Lcom/sec/android/app/camera/VintageShotSelectionMenu;->mSelectedVintage:I

    invoke-virtual {v0, p1, v1}, Lcom/sec/android/app/camera/widget/TwGridView;->initializeView(Lcom/sec/android/app/camera/MenuResourceBase;I)V

    .line 53
    iget-object v0, p0, Lcom/sec/android/app/camera/VintageShotSelectionMenu;->mGrid:Lcom/sec/android/app/camera/widget/TwGridView;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/widget/TwGridView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    return-void
.end method


# virtual methods
.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 80
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 82
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    .line 85
    :cond_0
    return v1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 58
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a00a4

    if-eq v0, v1, :cond_0

    .line 59
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/VintageShotSelectionMenu;->mSelectedVintage:I

    .line 60
    iget-object v0, p0, Lcom/sec/android/app/camera/VintageShotSelectionMenu;->mOnVintageChangedListener:Lcom/sec/android/app/camera/VintageShotSelectionMenu$OnVintageChangedListener;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/sec/android/app/camera/VintageShotSelectionMenu;->mOnVintageChangedListener:Lcom/sec/android/app/camera/VintageShotSelectionMenu$OnVintageChangedListener;

    iget v1, p0, Lcom/sec/android/app/camera/VintageShotSelectionMenu;->mSelectedVintage:I

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/VintageShotSelectionMenu$OnVintageChangedListener;->onVintageChanged(I)V

    .line 64
    :cond_0
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/MenuBase;->onClick(Landroid/view/View;)V

    .line 65
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 89
    const/16 v0, 0x1a

    if-ne p1, v0, :cond_0

    move v0, v2

    .line 108
    :goto_0
    return v0

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getLock()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 94
    goto :goto_0

    .line 97
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

    .line 99
    goto :goto_0

    .line 102
    :cond_3
    const/16 v0, 0x1b

    if-eq p1, v0, :cond_4

    const/16 v0, 0x17

    if-eq p1, v0, :cond_4

    const/16 v0, 0x42

    if-ne p1, v0, :cond_5

    :cond_4
    move v0, v1

    .line 105
    goto :goto_0

    :cond_5
    move v0, v2

    .line 108
    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 112
    const/16 v0, 0x1a

    if-ne p1, v0, :cond_0

    move v0, v2

    .line 131
    :goto_0
    return v0

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getLock()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 117
    goto :goto_0

    .line 120
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

    .line 122
    goto :goto_0

    .line 125
    :cond_3
    const/16 v0, 0x1b

    if-eq p1, v0, :cond_4

    const/16 v0, 0x17

    if-eq p1, v0, :cond_4

    const/16 v0, 0x42

    if-ne p1, v0, :cond_5

    :cond_4
    move v0, v1

    .line 128
    goto :goto_0

    :cond_5
    move v0, v2

    .line 131
    goto :goto_0
.end method

.method protected onShow()V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingVintageMode()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/VintageShotSelectionMenu;->mSelectedVintage:I

    .line 73
    iget-object v0, p0, Lcom/sec/android/app/camera/VintageShotSelectionMenu;->mGrid:Lcom/sec/android/app/camera/widget/TwGridView;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/sec/android/app/camera/VintageShotSelectionMenu;->mGrid:Lcom/sec/android/app/camera/widget/TwGridView;

    iget v1, p0, Lcom/sec/android/app/camera/VintageShotSelectionMenu;->mSelectedVintage:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwGridView;->setCurrentSelectedItem(I)V

    .line 76
    :cond_0
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onShow()V

    .line 77
    return-void
.end method

.method public setOnVintageChangedListener(Lcom/sec/android/app/camera/VintageShotSelectionMenu$OnVintageChangedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/sec/android/app/camera/VintageShotSelectionMenu;->mOnVintageChangedListener:Lcom/sec/android/app/camera/VintageShotSelectionMenu$OnVintageChangedListener;

    .line 69
    return-void
.end method
