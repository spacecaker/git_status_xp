.class Lcom/sec/android/app/camera/ShutterButton$ButtonSet;
.super Ljava/lang/Object;
.source "ShutterButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/ShutterButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ButtonSet"
.end annotation


# instance fields
.field public mButton:Lcom/sec/android/app/camera/widget/TwImageButton;

.field protected mClickedBackgroundId:I

.field protected mDimmedBackgroundId:I

.field public mMode:I

.field protected mNormalBackgroundId:I

.field final synthetic this$0:Lcom/sec/android/app/camera/ShutterButton;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/ShutterButton;ILcom/sec/android/app/camera/widget/TwImageButton;III)V
    .locals 0
    .parameter
    .parameter "mode"
    .parameter "button"
    .parameter "normalBackgroundId"
    .parameter "clickedBackgroundId"
    .parameter "dimmedBackgroundId"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/sec/android/app/camera/ShutterButton$ButtonSet;->this$0:Lcom/sec/android/app/camera/ShutterButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput p2, p0, Lcom/sec/android/app/camera/ShutterButton$ButtonSet;->mMode:I

    .line 54
    iput-object p3, p0, Lcom/sec/android/app/camera/ShutterButton$ButtonSet;->mButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    .line 55
    iput p4, p0, Lcom/sec/android/app/camera/ShutterButton$ButtonSet;->mNormalBackgroundId:I

    .line 56
    iput p5, p0, Lcom/sec/android/app/camera/ShutterButton$ButtonSet;->mClickedBackgroundId:I

    .line 57
    iput p6, p0, Lcom/sec/android/app/camera/ShutterButton$ButtonSet;->mDimmedBackgroundId:I

    .line 58
    return-void
.end method
