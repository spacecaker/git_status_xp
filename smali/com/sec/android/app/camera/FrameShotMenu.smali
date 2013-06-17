.class public Lcom/sec/android/app/camera/FrameShotMenu;
.super Lcom/sec/android/app/camera/MenuBase;
.source "FrameShotMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/FrameShotMenu$OnFrameShotMenuChangedListener;
    }
.end annotation


# instance fields
.field protected mOnFrameShotMenuChangedListener:Lcom/sec/android/app/camera/FrameShotMenu$OnFrameShotMenuChangedListener;

.field mSelectedFrame:I


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;IILandroid/view/ViewGroup;Lcom/sec/android/app/camera/FrameShotSelectionResourceData;Lcom/sec/android/app/camera/MenuResourceData;I)V
    .locals 7
    .parameter "activityContext"
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
    invoke-direct {p0, p5}, Lcom/sec/android/app/camera/FrameShotMenu;->init(Lcom/sec/android/app/camera/FrameShotSelectionResourceData;)V

    .line 45
    return-void
.end method

.method private init(Lcom/sec/android/app/camera/FrameShotSelectionResourceData;)V
    .locals 3
    .parameter "resourceData"

    .prologue
    .line 48
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getFrame()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/FrameShotMenu;->mSelectedFrame:I

    .line 49
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v2, 0x7f0a00a2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/TwGridView;

    .line 51
    .local v0, mGrid:Lcom/sec/android/app/camera/widget/TwGridView;
    iget v1, p0, Lcom/sec/android/app/camera/FrameShotMenu;->mSelectedFrame:I

    invoke-virtual {v0, p1, v1}, Lcom/sec/android/app/camera/widget/TwGridView;->initializeView(Lcom/sec/android/app/camera/MenuResourceBase;I)V

    .line 52
    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/widget/TwGridView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 57
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a00a3

    if-eq v0, v1, :cond_0

    .line 58
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/FrameShotMenu;->mSelectedFrame:I

    .line 59
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    .line 60
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/camera/FrameShotMenu;->mSelectedFrame:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setFrame(I)V

    .line 61
    iget-object v0, p0, Lcom/sec/android/app/camera/FrameShotMenu;->mOnFrameShotMenuChangedListener:Lcom/sec/android/app/camera/FrameShotMenu$OnFrameShotMenuChangedListener;

    if-eqz v0, :cond_0

    .line 62
    iget-object v1, p0, Lcom/sec/android/app/camera/FrameShotMenu;->mOnFrameShotMenuChangedListener:Lcom/sec/android/app/camera/FrameShotMenu$OnFrameShotMenuChangedListener;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x0

    sub-int/2addr v0, v2

    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/FrameShotMenu$OnFrameShotMenuChangedListener;->onFrameShotMenuChanged(I)V

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/FrameShotMenu;->mOnFrameShotMenuChangedListener:Lcom/sec/android/app/camera/FrameShotMenu$OnFrameShotMenuChangedListener;

    .line 66
    :cond_0
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/MenuBase;->onClick(Landroid/view/View;)V

    .line 67
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 74
    const/16 v0, 0x1a

    if-ne p1, v0, :cond_0

    move v0, v2

    .line 93
    :goto_0
    return v0

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getLock()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 79
    goto :goto_0

    .line 82
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

    .line 84
    goto :goto_0

    .line 87
    :cond_3
    const/16 v0, 0x1b

    if-eq p1, v0, :cond_4

    const/16 v0, 0x17

    if-eq p1, v0, :cond_4

    const/16 v0, 0x42

    if-ne p1, v0, :cond_5

    :cond_4
    move v0, v1

    .line 90
    goto :goto_0

    :cond_5
    move v0, v2

    .line 93
    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 97
    const/16 v0, 0x1a

    if-ne p1, v0, :cond_0

    move v0, v2

    .line 116
    :goto_0
    return v0

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getLock()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 102
    goto :goto_0

    .line 105
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

    .line 107
    goto :goto_0

    .line 110
    :cond_3
    const/16 v0, 0x1b

    if-eq p1, v0, :cond_4

    const/16 v0, 0x17

    if-eq p1, v0, :cond_4

    const/16 v0, 0x42

    if-ne p1, v0, :cond_5

    :cond_4
    move v0, v1

    .line 113
    goto :goto_0

    :cond_5
    move v0, v2

    .line 116
    goto :goto_0
.end method

.method public setOnFrameShotMenuChangedListener(Lcom/sec/android/app/camera/FrameShotMenu$OnFrameShotMenuChangedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/sec/android/app/camera/FrameShotMenu;->mOnFrameShotMenuChangedListener:Lcom/sec/android/app/camera/FrameShotMenu$OnFrameShotMenuChangedListener;

    .line 71
    return-void
.end method
