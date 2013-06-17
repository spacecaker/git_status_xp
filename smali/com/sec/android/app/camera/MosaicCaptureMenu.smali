.class public Lcom/sec/android/app/camera/MosaicCaptureMenu;
.super Lcom/sec/android/app/camera/FrameCaptureMenu;
.source "MosaicCaptureMenu.java"


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;IILandroid/view/ViewGroup;Lcom/sec/android/app/camera/MenuResourceBase;Lcom/sec/android/app/camera/MenuResourceData;I)V
    .locals 0
    .parameter "activityContext"
    .parameter "layoutId"
    .parameter "baseViewId"
    .parameter "baseLayout"
    .parameter "resourceData"
    .parameter "menuResourceData"
    .parameter "order"

    .prologue
    .line 29
    invoke-direct/range {p0 .. p7}, Lcom/sec/android/app/camera/FrameCaptureMenu;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;IILandroid/view/ViewGroup;Lcom/sec/android/app/camera/MenuResourceBase;Lcom/sec/android/app/camera/MenuResourceData;I)V

    .line 32
    return-void
.end method
