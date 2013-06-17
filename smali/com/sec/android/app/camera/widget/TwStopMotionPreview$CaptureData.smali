.class Lcom/sec/android/app/camera/widget/TwStopMotionPreview$CaptureData;
.super Ljava/lang/Object;
.source "TwStopMotionPreview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/widget/TwStopMotionPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CaptureData"
.end annotation


# instance fields
.field private mCaptureData:[B

.field final synthetic this$0:Lcom/sec/android/app/camera/widget/TwStopMotionPreview;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/widget/TwStopMotionPreview;[B)V
    .locals 0
    .parameter
    .parameter "data"

    .prologue
    .line 108
    iput-object p1, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview$CaptureData;->this$0:Lcom/sec/android/app/camera/widget/TwStopMotionPreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/widget/TwStopMotionPreview$CaptureData;->setCaptureData([B)V

    .line 110
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview$CaptureData;->mCaptureData:[B

    .line 122
    return-void
.end method

.method public getCaptureData()[B
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview$CaptureData;->mCaptureData:[B

    return-object v0
.end method

.method public setCaptureData([B)V
    .locals 0
    .parameter "data"

    .prologue
    .line 113
    iput-object p1, p0, Lcom/sec/android/app/camera/widget/TwStopMotionPreview$CaptureData;->mCaptureData:[B

    .line 114
    return-void
.end method
