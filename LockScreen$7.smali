.class Lcom/android/internal/policy/impl/LockScreen$7;
.super Ljava/lang/Object;
.source "LockScreen.java"

# interfaces
.implements Lcom/android/emanon/internal/widget/SlidingTab$OnTriggerListener;


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
    iput-object p1, p0, Lcom/android/internal/policy/impl/LockScreen$7;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    .line 726
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGrabbedStateChange(Landroid/view/View;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 742
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$7;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockScreen;->access$0(Lcom/android/internal/policy/impl/LockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 743
    return-void
.end method

.method public onTrigger(Landroid/view/View;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 728
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 729
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 730
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 731
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen$7;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/LockScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 732
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$7;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockScreen;->access$0(Lcom/android/internal/policy/impl/LockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 738
    :cond_0
    :goto_0
    return-void

    .line 733
    :cond_1
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 734
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$7;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mCustomAppActivity:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockScreen;->access$9(Lcom/android/internal/policy/impl/LockScreen;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 735
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$7;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen$7;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mCustomAppActivity:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockScreen;->access$9(Lcom/android/internal/policy/impl/LockScreen;)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/internal/policy/impl/LockScreen;->runActivity(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/LockScreen;->access$10(Lcom/android/internal/policy/impl/LockScreen;Ljava/lang/String;)V

    goto :goto_0
.end method
