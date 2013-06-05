.class Lcom/android/internal/policy/impl/LockScreen$3;
.super Ljava/lang/Object;
.source "LockScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/LockScreen;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/LockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/LockScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/internal/policy/impl/LockScreen$3;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    .line 534
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    const/16 v2, 0x8

    .line 536
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$3;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockScreen;->access$0(Lcom/android/internal/policy/impl/LockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 537
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$3;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #calls: Lcom/android/internal/policy/impl/LockScreen;->refreshMusicStatus()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockScreen;->access$1(Lcom/android/internal/policy/impl/LockScreen;)V

    .line 538
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$3;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->am:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockScreen;->access$2(Lcom/android/internal/policy/impl/LockScreen;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 539
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$3;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mPlayIcon:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockScreen;->access$4(Lcom/android/internal/policy/impl/LockScreen;)Landroid/widget/ImageButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 540
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$3;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mPauseIcon:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockScreen;->access$3(Lcom/android/internal/policy/impl/LockScreen;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 541
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$3;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mRewindIcon:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockScreen;->access$5(Lcom/android/internal/policy/impl/LockScreen;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 542
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$3;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mForwardIcon:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockScreen;->access$6(Lcom/android/internal/policy/impl/LockScreen;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 543
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$3;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    const/16 v1, 0x55

    #calls: Lcom/android/internal/policy/impl/LockScreen;->sendMediaButtonEvent(I)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/LockScreen;->access$7(Lcom/android/internal/policy/impl/LockScreen;I)V

    .line 545
    :cond_0
    return-void
.end method
