.class Lcom/sec/android/app/twlauncher/Workspace$3;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/Workspace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/twlauncher/Workspace;


# direct methods
.method constructor <init>(Lcom/sec/android/app/twlauncher/Workspace;)V
    .locals 0
    .parameter

    .prologue
    .line 2465
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Workspace$3;->this$0:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2467
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace$3;->this$0:Lcom/sec/android/app/twlauncher/Workspace;

    #getter for: Lcom/sec/android/app/twlauncher/Workspace;->mCurrentScreen:I
    invoke-static {v1}, Lcom/sec/android/app/twlauncher/Workspace;->access$300(Lcom/sec/android/app/twlauncher/Workspace;)I

    move-result v0

    .line 2468
    .local v0, nextScreen:I
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace$3;->this$0:Lcom/sec/android/app/twlauncher/Workspace;

    #getter for: Lcom/sec/android/app/twlauncher/Workspace;->mEndScreen:I
    invoke-static {v1}, Lcom/sec/android/app/twlauncher/Workspace;->access$400(Lcom/sec/android/app/twlauncher/Workspace;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 2469
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace$3;->this$0:Lcom/sec/android/app/twlauncher/Workspace;

    #getter for: Lcom/sec/android/app/twlauncher/Workspace;->mScrollDirection:I
    invoke-static {v1}, Lcom/sec/android/app/twlauncher/Workspace;->access$500(Lcom/sec/android/app/twlauncher/Workspace;)I

    move-result v1

    if-lez v1, :cond_0

    .line 2470
    add-int/lit8 v0, v0, 0x1

    .line 2471
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace$3;->this$0:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-static {v1}, Lcom/sec/android/app/twlauncher/Workspace;->access$510(Lcom/sec/android/app/twlauncher/Workspace;)I

    .line 2484
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace$3;->this$0:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_3

    if-ltz v0, :cond_3

    .line 2485
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace$3;->this$0:Lcom/sec/android/app/twlauncher/Workspace;

    const/16 v2, 0x12c

    invoke-virtual {v1, v0, v2}, Lcom/sec/android/app/twlauncher/Workspace;->snapToScreen(II)V

    .line 2486
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace$3;->this$0:Lcom/sec/android/app/twlauncher/Workspace;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, p0, v2, v3}, Lcom/sec/android/app/twlauncher/Workspace;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2490
    :goto_1
    return-void

    .line 2472
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace$3;->this$0:Lcom/sec/android/app/twlauncher/Workspace;

    #getter for: Lcom/sec/android/app/twlauncher/Workspace;->mScrollDirection:I
    invoke-static {v1}, Lcom/sec/android/app/twlauncher/Workspace;->access$500(Lcom/sec/android/app/twlauncher/Workspace;)I

    move-result v1

    if-gez v1, :cond_1

    .line 2473
    add-int/lit8 v0, v0, -0x1

    .line 2474
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace$3;->this$0:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-static {v1}, Lcom/sec/android/app/twlauncher/Workspace;->access$508(Lcom/sec/android/app/twlauncher/Workspace;)I

    goto :goto_0

    .line 2476
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace$3;->this$0:Lcom/sec/android/app/twlauncher/Workspace;

    #setter for: Lcom/sec/android/app/twlauncher/Workspace;->mTouchState:I
    invoke-static {v1, v3}, Lcom/sec/android/app/twlauncher/Workspace;->access$602(Lcom/sec/android/app/twlauncher/Workspace;I)I

    .line 2477
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace$3;->this$0:Lcom/sec/android/app/twlauncher/Workspace;

    #setter for: Lcom/sec/android/app/twlauncher/Workspace;->mIsAutoScrolling:Z
    invoke-static {v1, v3}, Lcom/sec/android/app/twlauncher/Workspace;->access$702(Lcom/sec/android/app/twlauncher/Workspace;Z)Z

    goto :goto_1

    .line 2481
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2488
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace$3;->this$0:Lcom/sec/android/app/twlauncher/Workspace;

    #setter for: Lcom/sec/android/app/twlauncher/Workspace;->mIsAutoScrolling:Z
    invoke-static {v1, v3}, Lcom/sec/android/app/twlauncher/Workspace;->access$702(Lcom/sec/android/app/twlauncher/Workspace;Z)Z

    goto :goto_1
.end method
