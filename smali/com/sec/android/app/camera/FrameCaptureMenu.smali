.class public Lcom/sec/android/app/camera/FrameCaptureMenu;
.super Lcom/sec/android/app/camera/MenuBase;
.source "FrameCaptureMenu.java"


# instance fields
.field protected mFrameIndex:I

.field private mFrameResourceData:Lcom/sec/android/app/camera/MenuResourceBase;

.field protected mImage:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;IILandroid/view/ViewGroup;Lcom/sec/android/app/camera/MenuResourceBase;Lcom/sec/android/app/camera/MenuResourceData;I)V
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

    .line 34
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;IILandroid/view/ViewGroup;Lcom/sec/android/app/camera/MenuResourceData;I)V

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/FrameCaptureMenu;->mFrameIndex:I

    .line 37
    iput-object p5, p0, Lcom/sec/android/app/camera/FrameCaptureMenu;->mFrameResourceData:Lcom/sec/android/app/camera/MenuResourceBase;

    .line 39
    invoke-virtual {p0, v7}, Lcom/sec/android/app/camera/FrameCaptureMenu;->setCaptureEnabled(Z)V

    .line 40
    invoke-virtual {p0, v7}, Lcom/sec/android/app/camera/FrameCaptureMenu;->setTouchHandled(Z)V

    .line 41
    invoke-virtual {p0}, Lcom/sec/android/app/camera/FrameCaptureMenu;->init()V

    .line 42
    return-void
.end method


# virtual methods
.method public init()V
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a00ad

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/camera/FrameCaptureMenu;->mImage:Landroid/widget/ImageView;

    .line 46
    return-void
.end method

.method public onBack()V
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sec/android/app/camera/FrameCaptureMenu;->mImage:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 59
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    .line 60
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onBack()V

    .line 61
    return-void
.end method

.method protected onShow()V
    .locals 3

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sec/android/app/camera/FrameCaptureMenu;->mImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/camera/FrameCaptureMenu;->mFrameResourceData:Lcom/sec/android/app/camera/MenuResourceBase;

    iget v2, p0, Lcom/sec/android/app/camera/FrameCaptureMenu;->mFrameIndex:I

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/MenuResourceBase;->getItem(I)Lcom/sec/android/app/camera/MenuResourceBundle;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/MenuResourceBundle;->getResourceID(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 54
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onShow()V

    .line 55
    return-void
.end method

.method public setImage(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 49
    iput p1, p0, Lcom/sec/android/app/camera/FrameCaptureMenu;->mFrameIndex:I

    .line 50
    return-void
.end method
