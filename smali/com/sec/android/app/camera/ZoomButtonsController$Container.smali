.class Lcom/sec/android/app/camera/ZoomButtonsController$Container;
.super Landroid/widget/FrameLayout;
.source "ZoomButtonsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/ZoomButtonsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Container"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/ZoomButtonsController;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/ZoomButtonsController;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 724
    iput-object p1, p0, Lcom/sec/android/app/camera/ZoomButtonsController$Container;->this$0:Lcom/sec/android/app/camera/ZoomButtonsController;

    .line 725
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 726
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 736
    iget-object v0, p0, Lcom/sec/android/app/camera/ZoomButtonsController$Container;->this$0:Lcom/sec/android/app/camera/ZoomButtonsController;

    #calls: Lcom/sec/android/app/camera/ZoomButtonsController;->onContainerKey(Landroid/view/KeyEvent;)Z
    invoke-static {v0, p1}, Lcom/sec/android/app/camera/ZoomButtonsController;->access$800(Lcom/sec/android/app/camera/ZoomButtonsController;Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
