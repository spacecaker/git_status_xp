.class Lcom/sec/android/app/camera/VintageShotView$ButtonSet;
.super Ljava/lang/Object;
.source "VintageShotView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/VintageShotView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ButtonSet"
.end annotation


# instance fields
.field public mButton:Lcom/sec/android/app/camera/widget/TwImageButton;

.field public mClickedBackgroundId:I

.field public mMenuNumber:I

.field public mModeNumber:I

.field public mNormalBackgroundId:I

.field final synthetic this$0:Lcom/sec/android/app/camera/VintageShotView;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/VintageShotView;IILcom/sec/android/app/camera/widget/TwImageButton;II)V
    .locals 0
    .parameter
    .parameter "menuNumber"
    .parameter "modeNumber"
    .parameter "button"
    .parameter "normalBackgroundId"
    .parameter "clickedBackgroundId"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/sec/android/app/camera/VintageShotView$ButtonSet;->this$0:Lcom/sec/android/app/camera/VintageShotView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput p2, p0, Lcom/sec/android/app/camera/VintageShotView$ButtonSet;->mMenuNumber:I

    .line 52
    iput p3, p0, Lcom/sec/android/app/camera/VintageShotView$ButtonSet;->mModeNumber:I

    .line 53
    iput-object p4, p0, Lcom/sec/android/app/camera/VintageShotView$ButtonSet;->mButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    .line 54
    iput p5, p0, Lcom/sec/android/app/camera/VintageShotView$ButtonSet;->mNormalBackgroundId:I

    .line 55
    iput p6, p0, Lcom/sec/android/app/camera/VintageShotView$ButtonSet;->mClickedBackgroundId:I

    .line 56
    return-void
.end method
