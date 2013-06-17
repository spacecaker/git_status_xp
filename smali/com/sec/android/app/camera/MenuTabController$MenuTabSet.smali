.class Lcom/sec/android/app/camera/MenuTabController$MenuTabSet;
.super Ljava/lang/Object;
.source "MenuTabController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/MenuTabController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MenuTabSet"
.end annotation


# instance fields
.field public mButton:Lcom/sec/android/app/camera/widget/TwSelectButton;

.field public mTab:Landroid/view/ViewGroup;

.field final synthetic this$0:Lcom/sec/android/app/camera/MenuTabController;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/MenuTabController;Lcom/sec/android/app/camera/widget/TwSelectButton;Landroid/view/ViewGroup;)V
    .locals 0
    .parameter
    .parameter "button"
    .parameter "tab"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/sec/android/app/camera/MenuTabController$MenuTabSet;->this$0:Lcom/sec/android/app/camera/MenuTabController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p2, p0, Lcom/sec/android/app/camera/MenuTabController$MenuTabSet;->mButton:Lcom/sec/android/app/camera/widget/TwSelectButton;

    .line 39
    iput-object p3, p0, Lcom/sec/android/app/camera/MenuTabController$MenuTabSet;->mTab:Landroid/view/ViewGroup;

    .line 40
    return-void
.end method
