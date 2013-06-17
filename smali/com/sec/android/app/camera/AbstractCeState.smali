.class public abstract Lcom/sec/android/app/camera/AbstractCeState;
.super Ljava/lang/Object;
.source "AbstractCeState.java"


# instance fields
.field private mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

.field private mId:I

.field private mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/CameraEngine;Lcom/sec/android/app/camera/CeRequestQueue;I)V
    .locals 0
    .parameter "cameraEngine"
    .parameter "requestQueue"
    .parameter "id"

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/sec/android/app/camera/AbstractCeState;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    .line 43
    iput-object p2, p0, Lcom/sec/android/app/camera/AbstractCeState;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    .line 44
    iput p3, p0, Lcom/sec/android/app/camera/AbstractCeState;->mId:I

    .line 45
    return-void
.end method


# virtual methods
.method protected getCameraEngine()Lcom/sec/android/app/camera/CameraEngine;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCeState;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/sec/android/app/camera/AbstractCeState;->mId:I

    return v0
.end method

.method protected getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCeState;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    return-object v0
.end method

.method public abstract handleMessage(Landroid/os/Message;)V
.end method

.method public abstract handleRequest(Lcom/sec/android/app/camera/CeRequest;)Z
.end method
