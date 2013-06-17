.class public Lcom/sec/android/app/camera/FocusModeMenu;
.super Lcom/sec/android/app/camera/MenuBase;
.source "FocusModeMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/FocusModeMenu$OnFocusModeChangedListener;
    }
.end annotation


# instance fields
.field mGrid:Lcom/sec/android/app/camera/widget/TwGridView;

.field protected mOnFocusModeChangedListener:Lcom/sec/android/app/camera/FocusModeMenu$OnFocusModeChangedListener;

.field mSelectedFocusMode:I


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;IILandroid/view/ViewGroup;Lcom/sec/android/app/camera/FocusModeResourceData;Lcom/sec/android/app/camera/MenuResourceData;I)V
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
    invoke-direct {p0, p5}, Lcom/sec/android/app/camera/FocusModeMenu;->init(Lcom/sec/android/app/camera/FocusModeResourceData;)V

    .line 45
    return-void
.end method

.method private init(Lcom/sec/android/app/camera/FocusModeResourceData;)V
    .locals 2
    .parameter "resourceData"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getFocusMode()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/FocusModeMenu;->mSelectedFocusMode:I

    .line 49
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a009f

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/TwGridView;

    iput-object v0, p0, Lcom/sec/android/app/camera/FocusModeMenu;->mGrid:Lcom/sec/android/app/camera/widget/TwGridView;

    .line 50
    iget-object v0, p0, Lcom/sec/android/app/camera/FocusModeMenu;->mGrid:Lcom/sec/android/app/camera/widget/TwGridView;

    iget v1, p0, Lcom/sec/android/app/camera/FocusModeMenu;->mSelectedFocusMode:I

    invoke-virtual {v0, p1, v1}, Lcom/sec/android/app/camera/widget/TwGridView;->initializeView(Lcom/sec/android/app/camera/MenuResourceBase;I)V

    .line 51
    iget-object v0, p0, Lcom/sec/android/app/camera/FocusModeMenu;->mGrid:Lcom/sec/android/app/camera/widget/TwGridView;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/widget/TwGridView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    return-void
.end method


# virtual methods
.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 78
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 80
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    .line 83
    :cond_0
    return v1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 55
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a00a3

    if-eq v0, v1, :cond_0

    .line 56
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/FocusModeMenu;->mSelectedFocusMode:I

    .line 57
    iget-object v0, p0, Lcom/sec/android/app/camera/FocusModeMenu;->mOnFocusModeChangedListener:Lcom/sec/android/app/camera/FocusModeMenu$OnFocusModeChangedListener;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/sec/android/app/camera/FocusModeMenu;->mOnFocusModeChangedListener:Lcom/sec/android/app/camera/FocusModeMenu$OnFocusModeChangedListener;

    iget v1, p0, Lcom/sec/android/app/camera/FocusModeMenu;->mSelectedFocusMode:I

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/FocusModeMenu$OnFocusModeChangedListener;->onFocusModeChanged(I)V

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/FocusModeMenu;->mOnFocusModeChangedListener:Lcom/sec/android/app/camera/FocusModeMenu$OnFocusModeChangedListener;

    .line 62
    :cond_0
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/MenuBase;->onClick(Landroid/view/View;)V

    .line 63
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 87
    const/16 v0, 0x1a

    if-ne p1, v0, :cond_0

    move v0, v2

    .line 106
    :goto_0
    return v0

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getLock()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 92
    goto :goto_0

    .line 95
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

    .line 97
    goto :goto_0

    .line 100
    :cond_3
    const/16 v0, 0x1b

    if-eq p1, v0, :cond_4

    const/16 v0, 0x17

    if-eq p1, v0, :cond_4

    const/16 v0, 0x42

    if-ne p1, v0, :cond_5

    :cond_4
    move v0, v1

    .line 103
    goto :goto_0

    :cond_5
    move v0, v2

    .line 106
    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 110
    const/16 v0, 0x1a

    if-ne p1, v0, :cond_0

    move v0, v2

    .line 129
    :goto_0
    return v0

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getLock()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 115
    goto :goto_0

    .line 118
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

    .line 120
    goto :goto_0

    .line 123
    :cond_3
    const/16 v0, 0x1b

    if-eq p1, v0, :cond_4

    const/16 v0, 0x17

    if-eq p1, v0, :cond_4

    const/16 v0, 0x42

    if-ne p1, v0, :cond_5

    :cond_4
    move v0, v1

    .line 126
    goto :goto_0

    :cond_5
    move v0, v2

    .line 129
    goto :goto_0
.end method

.method protected onShow()V
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getFocusMode()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/FocusModeMenu;->mSelectedFocusMode:I

    .line 72
    iget-object v0, p0, Lcom/sec/android/app/camera/FocusModeMenu;->mGrid:Lcom/sec/android/app/camera/widget/TwGridView;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/sec/android/app/camera/FocusModeMenu;->mGrid:Lcom/sec/android/app/camera/widget/TwGridView;

    iget v1, p0, Lcom/sec/android/app/camera/FocusModeMenu;->mSelectedFocusMode:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwGridView;->setCurrentSelectedItem(I)V

    .line 74
    :cond_0
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onShow()V

    .line 75
    return-void
.end method

.method public setOnFocusModeChangedListener(Lcom/sec/android/app/camera/FocusModeMenu$OnFocusModeChangedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/sec/android/app/camera/FocusModeMenu;->mOnFocusModeChangedListener:Lcom/sec/android/app/camera/FocusModeMenu$OnFocusModeChangedListener;

    .line 68
    return-void
.end method
