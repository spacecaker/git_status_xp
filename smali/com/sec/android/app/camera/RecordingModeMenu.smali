.class public Lcom/sec/android/app/camera/RecordingModeMenu;
.super Lcom/sec/android/app/camera/MenuBase;
.source "RecordingModeMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/RecordingModeMenu$OnRecordingModeChangedListener;
    }
.end annotation


# instance fields
.field mGrid:Lcom/sec/android/app/camera/widget/TwGridView;

.field protected mOnRecordingModeChangedListener:Lcom/sec/android/app/camera/RecordingModeMenu$OnRecordingModeChangedListener;

.field mSelectedRecordingMode:I


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;IILandroid/view/ViewGroup;Lcom/sec/android/app/camera/RecordingModeResourceData;Lcom/sec/android/app/camera/MenuResourceData;I)V
    .locals 7
    .parameter "camcorder"
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
    invoke-direct {p0, p5}, Lcom/sec/android/app/camera/RecordingModeMenu;->init(Lcom/sec/android/app/camera/RecordingModeResourceData;)V

    .line 45
    return-void
.end method

.method private init(Lcom/sec/android/app/camera/RecordingModeResourceData;)V
    .locals 2
    .parameter "resourceData"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getRecordingMode()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/RecordingModeMenu;->mSelectedRecordingMode:I

    .line 49
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a00bb

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/TwGridView;

    iput-object v0, p0, Lcom/sec/android/app/camera/RecordingModeMenu;->mGrid:Lcom/sec/android/app/camera/widget/TwGridView;

    .line 50
    iget-object v0, p0, Lcom/sec/android/app/camera/RecordingModeMenu;->mGrid:Lcom/sec/android/app/camera/widget/TwGridView;

    iget v1, p0, Lcom/sec/android/app/camera/RecordingModeMenu;->mSelectedRecordingMode:I

    invoke-virtual {v0, p1, v1}, Lcom/sec/android/app/camera/widget/TwGridView;->initializeView(Lcom/sec/android/app/camera/MenuResourceBase;I)V

    .line 51
    iget-object v0, p0, Lcom/sec/android/app/camera/RecordingModeMenu;->mGrid:Lcom/sec/android/app/camera/widget/TwGridView;

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

    .line 85
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 87
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    .line 90
    :cond_0
    return v1
.end method

.method public onBack()V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onInflatedMenuHidden()V

    .line 81
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onBack()V

    .line 82
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 56
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a00a3

    if-eq v0, v1, :cond_0

    .line 57
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/RecordingModeMenu;->mSelectedRecordingMode:I

    .line 58
    iget-object v0, p0, Lcom/sec/android/app/camera/RecordingModeMenu;->mOnRecordingModeChangedListener:Lcom/sec/android/app/camera/RecordingModeMenu$OnRecordingModeChangedListener;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/sec/android/app/camera/RecordingModeMenu;->mOnRecordingModeChangedListener:Lcom/sec/android/app/camera/RecordingModeMenu$OnRecordingModeChangedListener;

    iget v1, p0, Lcom/sec/android/app/camera/RecordingModeMenu;->mSelectedRecordingMode:I

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/RecordingModeMenu$OnRecordingModeChangedListener;->onRecordingModeChanged(I)V

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/RecordingModeMenu;->mOnRecordingModeChangedListener:Lcom/sec/android/app/camera/RecordingModeMenu$OnRecordingModeChangedListener;

    .line 63
    :cond_0
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/MenuBase;->onClick(Landroid/view/View;)V

    .line 64
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 94
    const/16 v0, 0x1b

    if-eq p1, v0, :cond_0

    const/16 v0, 0x17

    if-eq p1, v0, :cond_0

    const/16 v0, 0x42

    if-ne p1, v0, :cond_1

    .line 97
    :cond_0
    const/4 v0, 0x1

    .line 100
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
    .line 104
    const/16 v0, 0x1b

    if-eq p1, v0, :cond_0

    const/16 v0, 0x17

    if-eq p1, v0, :cond_0

    const/16 v0, 0x42

    if-ne p1, v0, :cond_1

    .line 107
    :cond_0
    const/4 v0, 0x1

    .line 110
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onShow()V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getRecordingMode()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/RecordingModeMenu;->mSelectedRecordingMode:I

    .line 73
    iget-object v0, p0, Lcom/sec/android/app/camera/RecordingModeMenu;->mGrid:Lcom/sec/android/app/camera/widget/TwGridView;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/sec/android/app/camera/RecordingModeMenu;->mGrid:Lcom/sec/android/app/camera/widget/TwGridView;

    iget v1, p0, Lcom/sec/android/app/camera/RecordingModeMenu;->mSelectedRecordingMode:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwGridView;->setCurrentSelectedItem(I)V

    .line 76
    :cond_0
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onShow()V

    .line 77
    return-void
.end method

.method public setOnRecordingModeChangedListener(Lcom/sec/android/app/camera/RecordingModeMenu$OnRecordingModeChangedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/sec/android/app/camera/RecordingModeMenu;->mOnRecordingModeChangedListener:Lcom/sec/android/app/camera/RecordingModeMenu$OnRecordingModeChangedListener;

    .line 69
    return-void
.end method
