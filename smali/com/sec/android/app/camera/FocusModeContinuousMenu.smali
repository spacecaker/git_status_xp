.class public Lcom/sec/android/app/camera/FocusModeContinuousMenu;
.super Lcom/sec/android/app/camera/MenuBase;
.source "FocusModeContinuousMenu.java"


# instance fields
.field mGrid:Lcom/sec/android/app/camera/widget/TwGridView;

.field protected mOnFocusModeChangedListener:Lcom/sec/android/app/camera/FocusModeMenu$OnFocusModeChangedListener;

.field mSelectedFocusMode:I


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;IILandroid/view/ViewGroup;Lcom/sec/android/app/camera/FocusModeContinuousResourceData;Lcom/sec/android/app/camera/MenuResourceData;I)V
    .locals 7
    .parameter "camera"
    .parameter "layoutId"
    .parameter "baseViewId"
    .parameter "baseLayout"
    .parameter "resourceData"
    .parameter "menuResourceData"
    .parameter "zOrder"

    .prologue
    .line 39
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;IILandroid/view/ViewGroup;Lcom/sec/android/app/camera/MenuResourceData;I)V

    .line 41
    invoke-direct {p0, p5}, Lcom/sec/android/app/camera/FocusModeContinuousMenu;->init(Lcom/sec/android/app/camera/FocusModeContinuousResourceData;)V

    .line 42
    return-void
.end method

.method private init(Lcom/sec/android/app/camera/FocusModeContinuousResourceData;)V
    .locals 2
    .parameter "resourceData"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getFocusMode()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/FocusModeContinuousMenu;->mSelectedFocusMode:I

    .line 46
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a00a0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/TwGridView;

    iput-object v0, p0, Lcom/sec/android/app/camera/FocusModeContinuousMenu;->mGrid:Lcom/sec/android/app/camera/widget/TwGridView;

    .line 47
    iget-object v0, p0, Lcom/sec/android/app/camera/FocusModeContinuousMenu;->mGrid:Lcom/sec/android/app/camera/widget/TwGridView;

    iget v1, p0, Lcom/sec/android/app/camera/FocusModeContinuousMenu;->mSelectedFocusMode:I

    invoke-virtual {v0, p1, v1}, Lcom/sec/android/app/camera/widget/TwGridView;->initializeView(Lcom/sec/android/app/camera/MenuResourceBase;I)V

    .line 48
    iget-object v0, p0, Lcom/sec/android/app/camera/FocusModeContinuousMenu;->mGrid:Lcom/sec/android/app/camera/widget/TwGridView;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/widget/TwGridView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    return-void
.end method


# virtual methods
.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 75
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 77
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    .line 80
    :cond_0
    return v1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 52
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a00a3

    if-eq v0, v1, :cond_0

    .line 53
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/FocusModeContinuousMenu;->mSelectedFocusMode:I

    .line 54
    iget-object v0, p0, Lcom/sec/android/app/camera/FocusModeContinuousMenu;->mOnFocusModeChangedListener:Lcom/sec/android/app/camera/FocusModeMenu$OnFocusModeChangedListener;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/sec/android/app/camera/FocusModeContinuousMenu;->mOnFocusModeChangedListener:Lcom/sec/android/app/camera/FocusModeMenu$OnFocusModeChangedListener;

    iget v1, p0, Lcom/sec/android/app/camera/FocusModeContinuousMenu;->mSelectedFocusMode:I

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/FocusModeMenu$OnFocusModeChangedListener;->onFocusModeChanged(I)V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/FocusModeContinuousMenu;->mOnFocusModeChangedListener:Lcom/sec/android/app/camera/FocusModeMenu$OnFocusModeChangedListener;

    .line 59
    :cond_0
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/MenuBase;->onClick(Landroid/view/View;)V

    .line 60
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 98
    const/16 v0, 0x1b

    if-eq p1, v0, :cond_0

    const/16 v0, 0x17

    if-eq p1, v0, :cond_0

    const/16 v0, 0x42

    if-ne p1, v0, :cond_1

    .line 101
    :cond_0
    const/4 v0, 0x1

    .line 104
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
    .line 122
    const/16 v0, 0x1b

    if-eq p1, v0, :cond_0

    const/16 v0, 0x17

    if-eq p1, v0, :cond_0

    const/16 v0, 0x42

    if-ne p1, v0, :cond_1

    .line 125
    :cond_0
    const/4 v0, 0x1

    .line 128
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onShow()V
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getFocusMode()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/FocusModeContinuousMenu;->mSelectedFocusMode:I

    .line 69
    iget-object v0, p0, Lcom/sec/android/app/camera/FocusModeContinuousMenu;->mGrid:Lcom/sec/android/app/camera/widget/TwGridView;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/sec/android/app/camera/FocusModeContinuousMenu;->mGrid:Lcom/sec/android/app/camera/widget/TwGridView;

    iget v1, p0, Lcom/sec/android/app/camera/FocusModeContinuousMenu;->mSelectedFocusMode:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwGridView;->setCurrentSelectedItem(I)V

    .line 71
    :cond_0
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onShow()V

    .line 72
    return-void
.end method

.method public setOnFocusModeChangedListener(Lcom/sec/android/app/camera/FocusModeMenu$OnFocusModeChangedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/sec/android/app/camera/FocusModeContinuousMenu;->mOnFocusModeChangedListener:Lcom/sec/android/app/camera/FocusModeMenu$OnFocusModeChangedListener;

    .line 65
    return-void
.end method
