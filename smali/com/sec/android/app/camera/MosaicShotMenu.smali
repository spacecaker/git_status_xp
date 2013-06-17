.class public Lcom/sec/android/app/camera/MosaicShotMenu;
.super Lcom/sec/android/app/camera/MenuBase;
.source "MosaicShotMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/MosaicShotMenu$OnMosaicShotMenuChangedListener;
    }
.end annotation


# instance fields
.field protected mOnMosaicShotMenuChangedListener:Lcom/sec/android/app/camera/MosaicShotMenu$OnMosaicShotMenuChangedListener;

.field private mSelectedMosaicFrame:I


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;IILandroid/view/ViewGroup;Lcom/sec/android/app/camera/MosaicShotSelectionResourceData;Lcom/sec/android/app/camera/MenuResourceData;I)V
    .locals 8
    .parameter "activityContext"
    .parameter "layoutId"
    .parameter "baseViewId"
    .parameter "baseLayout"
    .parameter "resourceData"
    .parameter "menuResourceData"
    .parameter "zOrder"

    .prologue
    const/4 v7, 0x1

    .line 42
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;IILandroid/view/ViewGroup;Lcom/sec/android/app/camera/MenuResourceData;I)V

    .line 45
    invoke-virtual {p0, v7}, Lcom/sec/android/app/camera/MosaicShotMenu;->setCaptureEnabled(Z)V

    .line 46
    invoke-virtual {p0, v7}, Lcom/sec/android/app/camera/MosaicShotMenu;->setTouchHandled(Z)V

    .line 47
    invoke-direct {p0, p5}, Lcom/sec/android/app/camera/MosaicShotMenu;->init(Lcom/sec/android/app/camera/MosaicShotSelectionResourceData;)V

    .line 48
    return-void
.end method

.method private init(Lcom/sec/android/app/camera/MosaicShotSelectionResourceData;)V
    .locals 3
    .parameter "resourceData"

    .prologue
    .line 51
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getFrame()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/MosaicShotMenu;->mSelectedMosaicFrame:I

    .line 52
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v2, 0x7f0a00b0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/TwGridView;

    .line 54
    .local v0, mGrid:Lcom/sec/android/app/camera/widget/TwGridView;
    iget v1, p0, Lcom/sec/android/app/camera/MosaicShotMenu;->mSelectedMosaicFrame:I

    invoke-virtual {v0, p1, v1}, Lcom/sec/android/app/camera/widget/TwGridView;->initializeView(Lcom/sec/android/app/camera/MenuResourceBase;I)V

    .line 55
    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/widget/TwGridView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 60
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a00a4

    if-eq v0, v1, :cond_0

    .line 61
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/MosaicShotMenu;->mSelectedMosaicFrame:I

    .line 62
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    .line 63
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/camera/MosaicShotMenu;->mSelectedMosaicFrame:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setMosaicFrame(I)V

    .line 64
    iget-object v0, p0, Lcom/sec/android/app/camera/MosaicShotMenu;->mOnMosaicShotMenuChangedListener:Lcom/sec/android/app/camera/MosaicShotMenu$OnMosaicShotMenuChangedListener;

    iget v1, p0, Lcom/sec/android/app/camera/MosaicShotMenu;->mSelectedMosaicFrame:I

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/MosaicShotMenu$OnMosaicShotMenuChangedListener;->onMosaicShotMenuChanged(I)V

    .line 66
    :cond_0
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/MenuBase;->onClick(Landroid/view/View;)V

    .line 67
    return-void
.end method

.method public setOnMosaicShotMenuChangedListener(Lcom/sec/android/app/camera/MosaicShotMenu$OnMosaicShotMenuChangedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/sec/android/app/camera/MosaicShotMenu;->mOnMosaicShotMenuChangedListener:Lcom/sec/android/app/camera/MosaicShotMenu$OnMosaicShotMenuChangedListener;

    .line 71
    return-void
.end method
