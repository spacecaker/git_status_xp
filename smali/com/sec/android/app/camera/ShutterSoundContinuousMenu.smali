.class public Lcom/sec/android/app/camera/ShutterSoundContinuousMenu;
.super Lcom/sec/android/app/camera/MenuBase;
.source "ShutterSoundContinuousMenu.java"


# instance fields
.field mGrid:Lcom/sec/android/app/camera/widget/TwGridView;

.field protected mOnShutterSoundChangedListener:Lcom/sec/android/app/camera/ShutterSoundMenu$OnShutterSoundChangedListener;

.field mSelectedShutterSound:I


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;IILandroid/view/ViewGroup;Lcom/sec/android/app/camera/ShutterSoundContinuousResourceData;Lcom/sec/android/app/camera/MenuResourceData;I)V
    .locals 7
    .parameter "camera"
    .parameter "layoutId"
    .parameter "baseViewId"
    .parameter "baseLayout"
    .parameter "resourceData"
    .parameter "menuResourceData"
    .parameter "zOrder"

    .prologue
    .line 40
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;IILandroid/view/ViewGroup;Lcom/sec/android/app/camera/MenuResourceData;I)V

    .line 42
    invoke-direct {p0, p5}, Lcom/sec/android/app/camera/ShutterSoundContinuousMenu;->init(Lcom/sec/android/app/camera/ShutterSoundContinuousResourceData;)V

    .line 43
    return-void
.end method

.method private init(Lcom/sec/android/app/camera/ShutterSoundContinuousResourceData;)V
    .locals 2
    .parameter "resourceData"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShutterSound()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/ShutterSoundContinuousMenu;->mSelectedShutterSound:I

    .line 47
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a00d3

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/TwGridView;

    iput-object v0, p0, Lcom/sec/android/app/camera/ShutterSoundContinuousMenu;->mGrid:Lcom/sec/android/app/camera/widget/TwGridView;

    .line 48
    iget-object v0, p0, Lcom/sec/android/app/camera/ShutterSoundContinuousMenu;->mGrid:Lcom/sec/android/app/camera/widget/TwGridView;

    iget v1, p0, Lcom/sec/android/app/camera/ShutterSoundContinuousMenu;->mSelectedShutterSound:I

    invoke-virtual {v0, p1, v1}, Lcom/sec/android/app/camera/widget/TwGridView;->initializeView(Lcom/sec/android/app/camera/MenuResourceBase;I)V

    .line 49
    iget-object v0, p0, Lcom/sec/android/app/camera/ShutterSoundContinuousMenu;->mGrid:Lcom/sec/android/app/camera/widget/TwGridView;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/widget/TwGridView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    iget-object v0, p0, Lcom/sec/android/app/camera/ShutterSoundContinuousMenu;->mGrid:Lcom/sec/android/app/camera/widget/TwGridView;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/TwGridView;->setClickSoundDisabled()V

    .line 51
    return-void
.end method


# virtual methods
.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 88
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 90
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    .line 93
    :cond_0
    return v1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 54
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 64
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p0, Lcom/sec/android/app/camera/ShutterSoundContinuousMenu;->mSelectedShutterSound:I

    if-eq v0, v1, :cond_1

    .line 65
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/ShutterSoundContinuousMenu;->mSelectedShutterSound:I

    .line 66
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget v1, p0, Lcom/sec/android/app/camera/ShutterSoundContinuousMenu;->mSelectedShutterSound:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->playMenuCameraSound(II)V

    .line 72
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/MenuBase;->onClick(Landroid/view/View;)V

    .line 73
    return-void

    .line 56
    :sswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/ShutterSoundContinuousMenu;->mOnShutterSoundChangedListener:Lcom/sec/android/app/camera/ShutterSoundMenu$OnShutterSoundChangedListener;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/sec/android/app/camera/ShutterSoundContinuousMenu;->mOnShutterSoundChangedListener:Lcom/sec/android/app/camera/ShutterSoundMenu$OnShutterSoundChangedListener;

    iget v1, p0, Lcom/sec/android/app/camera/ShutterSoundContinuousMenu;->mSelectedShutterSound:I

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/ShutterSoundMenu$OnShutterSoundChangedListener;->onShutterSoundChanged(I)V

    goto :goto_0

    .line 61
    :sswitch_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ShutterSoundContinuousMenu;->hideMenu()V

    goto :goto_0

    .line 68
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/ShutterSoundContinuousMenu;->mSelectedShutterSound:I

    goto :goto_0

    .line 54
    :sswitch_data_0
    .sparse-switch
        0x7f0a00a4 -> :sswitch_1
        0x7f0a00ca -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 97
    const/16 v0, 0x1b

    if-eq p1, v0, :cond_0

    const/16 v0, 0x17

    if-eq p1, v0, :cond_0

    const/16 v0, 0x42

    if-ne p1, v0, :cond_1

    .line 100
    :cond_0
    const/4 v0, 0x1

    .line 103
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
    .line 107
    const/16 v0, 0x1b

    if-eq p1, v0, :cond_0

    const/16 v0, 0x17

    if-eq p1, v0, :cond_0

    const/16 v0, 0x42

    if-ne p1, v0, :cond_1

    .line 110
    :cond_0
    const/4 v0, 0x1

    .line 113
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onShow()V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShutterSound()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/ShutterSoundContinuousMenu;->mSelectedShutterSound:I

    .line 81
    iget-object v0, p0, Lcom/sec/android/app/camera/ShutterSoundContinuousMenu;->mGrid:Lcom/sec/android/app/camera/widget/TwGridView;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/sec/android/app/camera/ShutterSoundContinuousMenu;->mGrid:Lcom/sec/android/app/camera/widget/TwGridView;

    iget v1, p0, Lcom/sec/android/app/camera/ShutterSoundContinuousMenu;->mSelectedShutterSound:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwGridView;->setCurrentSelectedItem(I)V

    .line 84
    :cond_0
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onShow()V

    .line 85
    return-void
.end method

.method public setOnShutterSoundChangedListener(Lcom/sec/android/app/camera/ShutterSoundMenu$OnShutterSoundChangedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/sec/android/app/camera/ShutterSoundContinuousMenu;->mOnShutterSoundChangedListener:Lcom/sec/android/app/camera/ShutterSoundMenu$OnShutterSoundChangedListener;

    .line 77
    return-void
.end method
