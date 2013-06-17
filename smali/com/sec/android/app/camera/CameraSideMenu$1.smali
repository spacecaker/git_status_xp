.class Lcom/sec/android/app/camera/CameraSideMenu$1;
.super Ljava/lang/Object;
.source "CameraSideMenu.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/CameraSideMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/CameraSideMenu;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/CameraSideMenu;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/sec/android/app/camera/CameraSideMenu$1;->this$0:Lcom/sec/android/app/camera/CameraSideMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 68
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSideMenu$1;->this$0:Lcom/sec/android/app/camera/CameraSideMenu;

    iget-object v2, v2, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    if-nez v2, :cond_0

    .line 89
    :goto_0
    return-void

    .line 71
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSideMenu$1;->this$0:Lcom/sec/android/app/camera/CameraSideMenu;

    iget-object v2, v2, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSideMenu$1;->this$0:Lcom/sec/android/app/camera/CameraSideMenu;

    iget v3, v3, Lcom/sec/android/app/camera/MenuBase;->mBaseViewId:I

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 72
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSideMenu$1;->this$0:Lcom/sec/android/app/camera/CameraSideMenu;

    #getter for: Lcom/sec/android/app/camera/CameraSideMenu;->mLeftSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;
    invoke-static {v2}, Lcom/sec/android/app/camera/CameraSideMenu;->access$000(Lcom/sec/android/app/camera/CameraSideMenu;)Lcom/sec/android/app/camera/widget/TwSideMenu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/widget/TwSideMenu;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 73
    .local v0, leftParams:Landroid/widget/RelativeLayout$LayoutParams;
    iget v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSideMenu$1;->this$0:Lcom/sec/android/app/camera/CameraSideMenu;

    #getter for: Lcom/sec/android/app/camera/CameraSideMenu;->mAnimDelta:I
    invoke-static {v3}, Lcom/sec/android/app/camera/CameraSideMenu;->access$100(Lcom/sec/android/app/camera/CameraSideMenu;)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 74
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSideMenu$1;->this$0:Lcom/sec/android/app/camera/CameraSideMenu;

    #getter for: Lcom/sec/android/app/camera/CameraSideMenu;->mLeftSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;
    invoke-static {v2}, Lcom/sec/android/app/camera/CameraSideMenu;->access$000(Lcom/sec/android/app/camera/CameraSideMenu;)Lcom/sec/android/app/camera/widget/TwSideMenu;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/widget/TwSideMenu;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSideMenu$1;->this$0:Lcom/sec/android/app/camera/CameraSideMenu;

    #getter for: Lcom/sec/android/app/camera/CameraSideMenu;->mRightSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;
    invoke-static {v2}, Lcom/sec/android/app/camera/CameraSideMenu;->access$200(Lcom/sec/android/app/camera/CameraSideMenu;)Lcom/sec/android/app/camera/widget/TwSideMenu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/widget/TwSideMenu;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 77
    .local v1, rightParams:Landroid/widget/RelativeLayout$LayoutParams;
    iget v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSideMenu$1;->this$0:Lcom/sec/android/app/camera/CameraSideMenu;

    #getter for: Lcom/sec/android/app/camera/CameraSideMenu;->mAnimDelta:I
    invoke-static {v3}, Lcom/sec/android/app/camera/CameraSideMenu;->access$100(Lcom/sec/android/app/camera/CameraSideMenu;)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 78
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSideMenu$1;->this$0:Lcom/sec/android/app/camera/CameraSideMenu;

    #getter for: Lcom/sec/android/app/camera/CameraSideMenu;->mRightSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;
    invoke-static {v2}, Lcom/sec/android/app/camera/CameraSideMenu;->access$200(Lcom/sec/android/app/camera/CameraSideMenu;)Lcom/sec/android/app/camera/widget/TwSideMenu;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sec/android/app/camera/widget/TwSideMenu;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 80
    iget v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    mul-int/lit8 v3, v3, -0x1

    if-le v2, v3, :cond_1

    .line 81
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSideMenu$1;->this$0:Lcom/sec/android/app/camera/CameraSideMenu;

    #getter for: Lcom/sec/android/app/camera/CameraSideMenu;->mLeftSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;
    invoke-static {v2}, Lcom/sec/android/app/camera/CameraSideMenu;->access$000(Lcom/sec/android/app/camera/CameraSideMenu;)Lcom/sec/android/app/camera/widget/TwSideMenu;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/widget/TwSideMenu;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 82
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSideMenu$1;->this$0:Lcom/sec/android/app/camera/CameraSideMenu;

    #getter for: Lcom/sec/android/app/camera/CameraSideMenu;->mRightSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;
    invoke-static {v2}, Lcom/sec/android/app/camera/CameraSideMenu;->access$200(Lcom/sec/android/app/camera/CameraSideMenu;)Lcom/sec/android/app/camera/widget/TwSideMenu;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sec/android/app/camera/widget/TwSideMenu;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSideMenu$1;->this$0:Lcom/sec/android/app/camera/CameraSideMenu;

    iget-object v2, v2, Lcom/sec/android/app/camera/CameraSideMenu;->mAnimHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSideMenu$1;->this$0:Lcom/sec/android/app/camera/CameraSideMenu;

    iget-object v3, v3, Lcom/sec/android/app/camera/CameraSideMenu;->mHideAnimRunnable:Ljava/lang/Runnable;

    iget-object v4, p0, Lcom/sec/android/app/camera/CameraSideMenu$1;->this$0:Lcom/sec/android/app/camera/CameraSideMenu;

    #getter for: Lcom/sec/android/app/camera/CameraSideMenu;->mAnimDelay:I
    invoke-static {v4}, Lcom/sec/android/app/camera/CameraSideMenu;->access$300(Lcom/sec/android/app/camera/CameraSideMenu;)I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 84
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSideMenu$1;->this$0:Lcom/sec/android/app/camera/CameraSideMenu;

    const/4 v3, 0x1

    #setter for: Lcom/sec/android/app/camera/CameraSideMenu;->mAnimInProgress:Z
    invoke-static {v2, v3}, Lcom/sec/android/app/camera/CameraSideMenu;->access$402(Lcom/sec/android/app/camera/CameraSideMenu;Z)Z

    goto/16 :goto_0

    .line 86
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSideMenu$1;->this$0:Lcom/sec/android/app/camera/CameraSideMenu;

    #calls: Lcom/sec/android/app/camera/CameraSideMenu;->stopHideAnimation()V
    invoke-static {v2}, Lcom/sec/android/app/camera/CameraSideMenu;->access$500(Lcom/sec/android/app/camera/CameraSideMenu;)V

    .line 87
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSideMenu$1;->this$0:Lcom/sec/android/app/camera/CameraSideMenu;

    iget-object v2, v2, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->showTrayButton()V

    goto/16 :goto_0
.end method
