.class Lcom/android/internal/policy/impl/PatternUnlockScreen$UnlockPatternListener;
.super Ljava/lang/Object;
.source "PatternUnlockScreen.java"

# interfaces
.implements Lcom/android/internal/widget/LockPatternView$OnPatternListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PatternUnlockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UnlockPatternListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PatternUnlockScreen;


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/impl/PatternUnlockScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 542
    iput-object p1, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/PatternUnlockScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/impl/PatternUnlockScreen;Lcom/android/internal/policy/impl/PatternUnlockScreen$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 542
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PatternUnlockScreen$UnlockPatternListener;-><init>(Lcom/android/internal/policy/impl/PatternUnlockScreen;)V

    return-void
.end method


# virtual methods
.method public onPatternCellAdded(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 555
    .local p1, pattern:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 556
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/PatternUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/PatternUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->access$100(Lcom/android/internal/policy/impl/PatternUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    const/16 v1, 0x1b58

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    .line 561
    :goto_0
    return-void

    .line 559
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/PatternUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/PatternUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->access$100(Lcom/android/internal/policy/impl/PatternUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    const/16 v1, 0x7d0

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    goto :goto_0
.end method

.method public onPatternCleared()V
    .locals 0

    .prologue
    .line 550
    return-void
.end method

.method public onPatternDetected(Ljava/util/List;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 564
    .local p1, pattern:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    iget-object v2, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/PatternUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/PatternUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v2}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->access$400(Lcom/android/internal/policy/impl/PatternUnlockScreen;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/internal/widget/LockPatternUtils;->checkPattern(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 565
    iget-object v2, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/PatternUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/PatternUnlockScreen;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;
    invoke-static {v2}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->access$000(Lcom/android/internal/policy/impl/PatternUnlockScreen;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v2

    sget-object v3, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    .line 567
    iget-object v2, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/PatternUnlockScreen;

    const-string v3, ""

    #setter for: Lcom/android/internal/policy/impl/PatternUnlockScreen;->mInstructions:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->access$502(Lcom/android/internal/policy/impl/PatternUnlockScreen;Ljava/lang/String;)Ljava/lang/String;

    .line 568
    iget-object v2, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/PatternUnlockScreen;

    #calls: Lcom/android/internal/policy/impl/PatternUnlockScreen;->updateStatusLines()V
    invoke-static {v2}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->access$600(Lcom/android/internal/policy/impl/PatternUnlockScreen;)V

    .line 569
    iget-object v2, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/PatternUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/PatternUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v2}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->access$100(Lcom/android/internal/policy/impl/PatternUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->keyguardDone(Z)V

    .line 570
    iget-object v2, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/PatternUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/PatternUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v2}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->access$100(Lcom/android/internal/policy/impl/PatternUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->reportSuccessfulUnlockAttempt()V

    .line 593
    :goto_0
    return-void

    .line 572
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-le v2, v3, :cond_1

    .line 573
    iget-object v2, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/PatternUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/PatternUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v2}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->access$100(Lcom/android/internal/policy/impl/PatternUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v2

    const/16 v3, 0x1b58

    invoke-interface {v2, v3}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    .line 575
    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/PatternUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/PatternUnlockScreen;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;
    invoke-static {v2}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->access$000(Lcom/android/internal/policy/impl/PatternUnlockScreen;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v2

    sget-object v3, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    .line 576
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x3

    if-lt v2, v3, :cond_2

    .line 577
    iget-object v2, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/PatternUnlockScreen;

    invoke-static {v2}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->access$708(Lcom/android/internal/policy/impl/PatternUnlockScreen;)I

    .line 578
    iget-object v2, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/PatternUnlockScreen;

    invoke-static {v2}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->access$808(Lcom/android/internal/policy/impl/PatternUnlockScreen;)I

    .line 579
    iget-object v2, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/PatternUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/PatternUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v2}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->access$100(Lcom/android/internal/policy/impl/PatternUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->reportFailedUnlockAttempt()V

    .line 581
    :cond_2
    iget-object v2, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/PatternUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/PatternUnlockScreen;->mFailedPatternAttemptsSinceLastTimeout:I
    invoke-static {v2}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->access$800(Lcom/android/internal/policy/impl/PatternUnlockScreen;)I

    move-result v2

    const/4 v3, 0x5

    if-lt v2, v3, :cond_3

    .line 582
    iget-object v2, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/PatternUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/PatternUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v2}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->access$400(Lcom/android/internal/policy/impl/PatternUnlockScreen;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline()J

    move-result-wide v0

    .line 583
    .local v0, deadline:J
    iget-object v2, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/PatternUnlockScreen;

    #calls: Lcom/android/internal/policy/impl/PatternUnlockScreen;->handleAttemptLockout(J)V
    invoke-static {v2, v0, v1}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->access$900(Lcom/android/internal/policy/impl/PatternUnlockScreen;J)V

    goto :goto_0

    .line 586
    .end local v0           #deadline:J
    :cond_3
    iget-object v2, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/PatternUnlockScreen;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/PatternUnlockScreen;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x1040315

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/android/internal/policy/impl/PatternUnlockScreen;->mInstructions:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->access$502(Lcom/android/internal/policy/impl/PatternUnlockScreen;Ljava/lang/String;)Ljava/lang/String;

    .line 587
    iget-object v2, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/PatternUnlockScreen;

    #calls: Lcom/android/internal/policy/impl/PatternUnlockScreen;->updateStatusLines()V
    invoke-static {v2}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->access$600(Lcom/android/internal/policy/impl/PatternUnlockScreen;)V

    .line 588
    iget-object v2, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/PatternUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/PatternUnlockScreen;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;
    invoke-static {v2}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->access$000(Lcom/android/internal/policy/impl/PatternUnlockScreen;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/PatternUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/PatternUnlockScreen;->mCancelPatternRunnable:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->access$300(Lcom/android/internal/policy/impl/PatternUnlockScreen;)Ljava/lang/Runnable;

    move-result-object v3

    const-wide/16 v4, 0x7d0

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/internal/widget/LockPatternView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public onPatternStart()V
    .locals 2

    .prologue
    .line 546
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/PatternUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/PatternUnlockScreen;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->access$000(Lcom/android/internal/policy/impl/PatternUnlockScreen;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/PatternUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/PatternUnlockScreen;->mCancelPatternRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->access$300(Lcom/android/internal/policy/impl/PatternUnlockScreen;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 547
    return-void
.end method
