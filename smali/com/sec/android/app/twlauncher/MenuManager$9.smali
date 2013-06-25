.class Lcom/sec/android/app/twlauncher/MenuManager$9;
.super Ljava/lang/Object;
.source "MenuManager.java"

# interfaces
.implements Lcom/sec/android/app/twlauncher/MenuManager$InterruptableAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/MenuManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mIsEnd:Z

.field final synthetic this$0:Lcom/sec/android/app/twlauncher/MenuManager;


# direct methods
.method constructor <init>(Lcom/sec/android/app/twlauncher/MenuManager;)V
    .locals 0
    .parameter

    .prologue
    .line 2563
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/MenuManager$9;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public interrupt()V
    .locals 2

    .prologue
    .line 2588
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/MenuManager$9;->mIsEnd:Z

    .line 2589
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager$9;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/app/twlauncher/MenuManager;->mIsClosing:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->access$1702(Lcom/sec/android/app/twlauncher/MenuManager;Z)Z

    .line 2590
    return-void
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "arg0"

    .prologue
    const/4 v1, 0x1

    .line 2566
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/MenuManager$9;->mIsEnd:Z

    if-eqz v0, :cond_0

    .line 2573
    :goto_0
    return-void

    .line 2567
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager$9;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    #getter for: Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;
    invoke-static {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->access$300(Lcom/sec/android/app/twlauncher/MenuManager;)Lcom/sec/android/app/twlauncher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Workspace;->setShowIndicator()V

    .line 2568
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager$9;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    #getter for: Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;
    invoke-static {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->access$300(Lcom/sec/android/app/twlauncher/MenuManager;)Lcom/sec/android/app/twlauncher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Workspace;->postInvalidate()V

    .line 2569
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager$9;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->setClipChildren(Z)V

    .line 2570
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager$9;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->unlock()V

    .line 2571
    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/MenuManager$9;->mIsEnd:Z

    .line 2572
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager$9;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/app/twlauncher/MenuManager;->mIsClosing:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->access$1702(Lcom/sec/android/app/twlauncher/MenuManager;Z)Z

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 2577
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 4
    .parameter "arg0"

    .prologue
    const/4 v3, 0x0

    .line 2580
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager$9;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/twlauncher/MenuManager;->setClipChildren(Z)V

    .line 2581
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager$9;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    neg-long v1, v1

    #setter for: Lcom/sec/android/app/twlauncher/MenuManager;->mAnimationStartTime:J
    invoke-static {v0, v1, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->access$1602(Lcom/sec/android/app/twlauncher/MenuManager;J)J

    .line 2582
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager$9;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->lock()V

    .line 2583
    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/MenuManager$9;->mIsEnd:Z

    .line 2584
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager$9;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    const/4 v1, 0x1

    #setter for: Lcom/sec/android/app/twlauncher/MenuManager;->mIsClosing:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->access$1702(Lcom/sec/android/app/twlauncher/MenuManager;Z)Z

    .line 2585
    return-void
.end method
