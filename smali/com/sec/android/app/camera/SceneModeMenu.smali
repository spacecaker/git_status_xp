.class public Lcom/sec/android/app/camera/SceneModeMenu;
.super Lcom/sec/android/app/camera/MenuBase;
.source "SceneModeMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/SceneModeMenu$OnSceneModeChangedListener;
    }
.end annotation


# instance fields
.field mGrid:Lcom/sec/android/app/camera/widget/TwGridView;

.field protected mOnSceneModeChangedListener:Lcom/sec/android/app/camera/SceneModeMenu$OnSceneModeChangedListener;

.field mSelectedSceneMode:I


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;IILandroid/view/ViewGroup;Lcom/sec/android/app/camera/SceneModeResourceData;Lcom/sec/android/app/camera/MenuResourceData;I)V
    .locals 7
    .parameter "camera"
    .parameter "layoutId"
    .parameter "baseViewId"
    .parameter "baseLayout"
    .parameter "resourceData"
    .parameter "menuResourceData"
    .parameter "zOrder"

    .prologue
    .line 43
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;IILandroid/view/ViewGroup;Lcom/sec/android/app/camera/MenuResourceData;I)V

    .line 45
    invoke-direct {p0, p5}, Lcom/sec/android/app/camera/SceneModeMenu;->init(Lcom/sec/android/app/camera/SceneModeResourceData;)V

    .line 46
    return-void
.end method

.method private init(Lcom/sec/android/app/camera/SceneModeResourceData;)V
    .locals 2
    .parameter "resourceData"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getSceneMode()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/SceneModeMenu;->mSelectedSceneMode:I

    .line 50
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a00cb

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/TwGridView;

    iput-object v0, p0, Lcom/sec/android/app/camera/SceneModeMenu;->mGrid:Lcom/sec/android/app/camera/widget/TwGridView;

    .line 51
    iget-object v0, p0, Lcom/sec/android/app/camera/SceneModeMenu;->mGrid:Lcom/sec/android/app/camera/widget/TwGridView;

    iget v1, p0, Lcom/sec/android/app/camera/SceneModeMenu;->mSelectedSceneMode:I

    invoke-virtual {v0, p1, v1}, Lcom/sec/android/app/camera/widget/TwGridView;->initializeView(Lcom/sec/android/app/camera/MenuResourceBase;I)V

    .line 52
    iget-object v0, p0, Lcom/sec/android/app/camera/SceneModeMenu;->mGrid:Lcom/sec/android/app/camera/widget/TwGridView;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/widget/TwGridView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    return-void
.end method

.method private setSavedSceneMode()V
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getSceneMode()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/SceneModeMenu;->mSelectedSceneMode:I

    .line 92
    iget-object v0, p0, Lcom/sec/android/app/camera/SceneModeMenu;->mGrid:Lcom/sec/android/app/camera/widget/TwGridView;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/sec/android/app/camera/SceneModeMenu;->mGrid:Lcom/sec/android/app/camera/widget/TwGridView;

    iget v1, p0, Lcom/sec/android/app/camera/SceneModeMenu;->mSelectedSceneMode:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwGridView;->setCurrentSelectedItem(I)V

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget v1, p0, Lcom/sec/android/app/camera/SceneModeMenu;->mSelectedSceneMode:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->changeSceneModePreview(I)V

    .line 96
    return-void
.end method


# virtual methods
.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 114
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 116
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    .line 119
    :cond_0
    return v1
.end method

.method public onBack()V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onInflatedMenuHidden()V

    .line 110
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onBack()V

    .line 111
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 76
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a00a3

    if-eq v0, v1, :cond_0

    .line 77
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/SceneModeMenu;->mSelectedSceneMode:I

    .line 78
    iget-object v0, p0, Lcom/sec/android/app/camera/SceneModeMenu;->mOnSceneModeChangedListener:Lcom/sec/android/app/camera/SceneModeMenu$OnSceneModeChangedListener;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/sec/android/app/camera/SceneModeMenu;->mOnSceneModeChangedListener:Lcom/sec/android/app/camera/SceneModeMenu$OnSceneModeChangedListener;

    iget v1, p0, Lcom/sec/android/app/camera/SceneModeMenu;->mSelectedSceneMode:I

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/SceneModeMenu$OnSceneModeChangedListener;->onSceneModeChanged(I)V

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/SceneModeMenu;->mOnSceneModeChangedListener:Lcom/sec/android/app/camera/SceneModeMenu$OnSceneModeChangedListener;

    .line 83
    :cond_0
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/MenuBase;->onClick(Landroid/view/View;)V

    .line 84
    return-void
.end method

.method protected onHide()V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/sec/android/app/camera/SceneModeMenu;->setSavedSceneMode()V

    .line 100
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onHide()V

    .line 101
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 123
    const/16 v0, 0x1a

    if-ne p1, v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/sec/android/app/camera/SceneModeMenu;->mGrid:Lcom/sec/android/app/camera/widget/TwGridView;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwGridView;->setClickPass(Z)V

    move v0, v2

    .line 142
    :goto_0
    return v0

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getLock()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 129
    goto :goto_0

    .line 132
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

    .line 134
    goto :goto_0

    .line 137
    :cond_3
    const/16 v0, 0x1b

    if-eq p1, v0, :cond_4

    const/16 v0, 0x17

    if-eq p1, v0, :cond_4

    const/16 v0, 0x42

    if-ne p1, v0, :cond_5

    :cond_4
    move v0, v1

    .line 139
    goto :goto_0

    :cond_5
    move v0, v2

    .line 142
    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 146
    const/16 v0, 0x1a

    if-ne p1, v0, :cond_0

    move v0, v2

    .line 164
    :goto_0
    return v0

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getLock()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 151
    goto :goto_0

    .line 154
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

    .line 156
    goto :goto_0

    .line 159
    :cond_3
    const/16 v0, 0x1b

    if-eq p1, v0, :cond_4

    const/16 v0, 0x17

    if-eq p1, v0, :cond_4

    const/16 v0, 0x42

    if-ne p1, v0, :cond_5

    :cond_4
    move v0, v1

    .line 161
    goto :goto_0

    :cond_5
    move v0, v2

    .line 164
    goto :goto_0
.end method

.method protected onShow()V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/sec/android/app/camera/SceneModeMenu;->setSavedSceneMode()V

    .line 105
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onShow()V

    .line 106
    return-void
.end method

.method public setOnSceneModeChangedListener(Lcom/sec/android/app/camera/SceneModeMenu$OnSceneModeChangedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/sec/android/app/camera/SceneModeMenu;->mOnSceneModeChangedListener:Lcom/sec/android/app/camera/SceneModeMenu$OnSceneModeChangedListener;

    .line 88
    return-void
.end method
