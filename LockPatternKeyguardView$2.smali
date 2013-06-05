.class Lcom/android/internal/policy/impl/LockPatternKeyguardView$2;
.super Ljava/lang/Object;
.source "LockPatternKeyguardView.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardScreenCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/LockPatternKeyguardView;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardWindowController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V
    .locals 0
    .parameter

    .prologue
    .line 264
    iput-object p1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$2;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doesFallbackUnlockScreenExist()Z
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$2;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mEnableFallback:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$800(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Z

    move-result v0

    return v0
.end method

.method public forgotPattern(Z)V
    .locals 2
    .parameter "isForgotten"

    .prologue
    .line 302
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$2;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mEnableFallback:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$800(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$2;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #setter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mForgotPattern:Z
    invoke-static {v0, p1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$302(Lcom/android/internal/policy/impl/LockPatternKeyguardView;Z)Z

    .line 304
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$2;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    sget-object v1, Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;->UnlockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    #calls: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->updateScreen(Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$500(Lcom/android/internal/policy/impl/LockPatternKeyguardView;Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;)V

    .line 306
    :cond_0
    return-void
.end method

.method public goToLockScreen()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 267
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$2;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #setter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mForgotPattern:Z
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$302(Lcom/android/internal/policy/impl/LockPatternKeyguardView;Z)Z

    .line 268
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$2;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mIsVerifyUnlockOnly:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$400(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$2;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #setter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mIsVerifyUnlockOnly:Z
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$402(Lcom/android/internal/policy/impl/LockPatternKeyguardView;Z)Z

    .line 272
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$2;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getCallback()Lcom/android/internal/policy/impl/KeyguardViewCallback;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/KeyguardViewCallback;->keyguardDone(Z)V

    .line 276
    :goto_0
    return-void

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$2;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    sget-object v1, Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;->LockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    #calls: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->updateScreen(Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$500(Lcom/android/internal/policy/impl/LockPatternKeyguardView;Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;)V

    goto :goto_0
.end method

.method public goToUnlockScreen()V
    .locals 4

    .prologue
    .line 279
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$2;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$600(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

    .line 281
    .local v0, simState:Lcom/android/internal/telephony/IccCard$State;
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$2;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #calls: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->stuckOnLockScreenBecauseSimMissing()Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$700(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 282
    const-string v1, "LockPatternKeyguardView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stuckOnLockScreenBecauseSimMissing retrun 1, simState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    :goto_0
    return-void

    .line 294
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$2;->isSecure()Z

    move-result v1

    if-nez v1, :cond_1

    .line 295
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$2;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getCallback()Lcom/android/internal/policy/impl/KeyguardViewCallback;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/android/internal/policy/impl/KeyguardViewCallback;->keyguardDone(Z)V

    goto :goto_0

    .line 297
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$2;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    sget-object v2, Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;->UnlockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    #calls: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->updateScreen(Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;)V
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$500(Lcom/android/internal/policy/impl/LockPatternKeyguardView;Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;)V

    goto :goto_0
.end method

.method public isSecure()Z
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$2;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #calls: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->isSecure()Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$900(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Z

    move-result v0

    return v0
.end method

.method public isVerifyUnlockOnly()Z
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$2;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mIsVerifyUnlockOnly:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$400(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Z

    move-result v0

    return v0
.end method

.method public keyguardDone(Z)V
    .locals 1
    .parameter "authenticated"

    .prologue
    .line 344
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$2;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getCallback()Lcom/android/internal/policy/impl/KeyguardViewCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/policy/impl/KeyguardViewCallback;->keyguardDone(Z)V

    .line 345
    return-void
.end method

.method public keyguardDoneDrawing()V
    .locals 0

    .prologue
    .line 349
    return-void
.end method

.method public pokeWakeDimlock(I)V
    .locals 1
    .parameter "millis"

    .prologue
    .line 353
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$2;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getCallback()Lcom/android/internal/policy/impl/KeyguardViewCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/policy/impl/KeyguardViewCallback;->pokeWakeDimlock(I)V

    .line 354
    return-void
.end method

.method public pokeWakelock()V
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$2;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getCallback()Lcom/android/internal/policy/impl/KeyguardViewCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardViewCallback;->pokeWakelock()V

    .line 337
    return-void
.end method

.method public pokeWakelock(I)V
    .locals 1
    .parameter "millis"

    .prologue
    .line 340
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$2;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getCallback()Lcom/android/internal/policy/impl/KeyguardViewCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/policy/impl/KeyguardViewCallback;->pokeWakelock(I)V

    .line 341
    return-void
.end method

.method public recreateMe(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "config"

    .prologue
    .line 317
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$2;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #setter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mConfiguration:Landroid/content/res/Configuration;
    invoke-static {v0, p1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$1002(Lcom/android/internal/policy/impl/LockPatternKeyguardView;Landroid/content/res/Configuration;)Landroid/content/res/Configuration;

    .line 318
    sget-boolean v0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->recoveryScreen:Z

    if-nez v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$2;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #calls: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->recreateScreens()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$1100(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V

    .line 320
    :cond_0
    return-void
.end method

.method public reportDeviceWipe(I)V
    .locals 1
    .parameter "call"

    .prologue
    .line 357
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$2;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #calls: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->showWipeDialog(I)V
    invoke-static {v0, p1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$1300(Lcom/android/internal/policy/impl/LockPatternKeyguardView;I)V

    .line 358
    return-void
.end method

.method public reportFailedUnlockAttempt()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 361
    iget-object v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$2;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    invoke-static {v5}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$600(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->reportFailedAttempt()V

    .line 362
    iget-object v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$2;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    invoke-static {v5}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$600(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getFailedAttempts()I

    move-result v1

    .line 363
    .local v1, failedAttempts:I
    iget-object v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$2;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v5}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$1200(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/app/admin/DevicePolicyManager;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;)I

    move-result v2

    .line 364
    .local v2, max:I
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "maximum unlock attempt: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 365
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "password recoverable: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$2;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v7}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$1200(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/app/admin/DevicePolicyManager;->getPasswordRecoverable(Landroid/content/ComponentName;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 370
    iget-object v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$2;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v5}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$1200(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v5

    const/high16 v6, 0x1

    if-ne v5, v6, :cond_1

    move v4, v8

    .line 372
    .local v4, usingLockPattern:Z
    :goto_0
    if-eqz v4, :cond_2

    iget-object v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$2;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mEnableFallback:Z
    invoke-static {v5}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$800(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0xf

    if-ne v1, v5, :cond_2

    .line 375
    iget-object v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$2;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #calls: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->showAlmostAtAccountLoginDialog()V
    invoke-static {v5}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$1400(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V

    .line 399
    :cond_0
    :goto_1
    iget-object v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$2;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v5}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$1200(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternUtils;->reportFailedPasswordAttempt()V

    .line 400
    return-void

    .end local v4           #usingLockPattern:Z
    :cond_1
    move v4, v10

    .line 370
    goto :goto_0

    .line 376
    .restart local v4       #usingLockPattern:Z
    :cond_2
    if-eqz v4, :cond_3

    iget-object v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$2;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mEnableFallback:Z
    invoke-static {v5}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$800(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/16 v5, 0x14

    if-lt v1, v5, :cond_3

    .line 378
    iget-object v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$2;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v5}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$1200(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/android/internal/widget/LockPatternUtils;->setPermanentlyLocked(Z)V

    .line 379
    iget-object v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$2;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    iget-object v6, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$2;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;
    invoke-static {v6}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$1500(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    move-result-object v6

    #calls: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->updateScreen(Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;)V
    invoke-static {v5, v6}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$500(Lcom/android/internal/policy/impl/LockPatternKeyguardView;Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;)V

    goto :goto_1

    .line 380
    :cond_3
    if-lez v2, :cond_4

    sub-int v5, v2, v1

    if-ne v8, v5, :cond_4

    .line 382
    iget-object v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$2;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v5}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$1200(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/app/admin/DevicePolicyManager;->getPasswordRecoverable(Landroid/content/ComponentName;)Z

    move-result v3

    .line 384
    .local v3, recovery:Z
    iget-object v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$2;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #calls: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->showLastAttemptDialog(Z)V
    invoke-static {v5, v3}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$1600(Lcom/android/internal/policy/impl/LockPatternKeyguardView;Z)V

    goto :goto_1

    .line 385
    .end local v3           #recovery:Z
    :cond_4
    if-lez v2, :cond_6

    rem-int v5, v1, v2

    if-nez v5, :cond_6

    .line 386
    iget-object v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$2;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v5}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$1200(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/app/admin/DevicePolicyManager;->getPasswordRecoverable(Landroid/content/ComponentName;)Z

    move-result v5

    if-ne v8, v5, :cond_5

    .line 387
    iget-object v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$2;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v5}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$1200(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/admin/DevicePolicyManager;->recoverPassword()V

    .line 388
    iget-object v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$2;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #calls: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->showRecovery()V
    invoke-static {v5}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$1700(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V

    goto :goto_1

    .line 391
    :cond_5
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$2;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    const/4 v6, 0x0

    #calls: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->showWipeDialog(I)V
    invoke-static {v5, v6}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$1300(Lcom/android/internal/policy/impl/LockPatternKeyguardView;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 392
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 393
    .local v0, e:Ljava/lang/Exception;
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "exception in wiping data"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 396
    .end local v0           #e:Ljava/lang/Exception;
    :cond_6
    rem-int/lit8 v5, v1, 0x5

    if-nez v5, :cond_0

    .line 397
    iget-object v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$2;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #calls: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->showTimeoutDialog()V
    invoke-static {v5}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$1800(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V

    goto/16 :goto_1
.end method

.method public reportSuccessfulUnlockAttempt()V
    .locals 1

    .prologue
    .line 407
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$2;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$1200(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->reportSuccessfulPasswordAttempt()V

    .line 408
    return-void
.end method

.method public takeEmergencyCallAction()V
    .locals 3

    .prologue
    .line 323
    const/16 v1, 0x2710

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$2;->pokeWakelock(I)V

    .line 324
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 326
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$2;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$1200(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->resumeCall()Z

    .line 333
    :goto_0
    return-void

    .line 328
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.EmergencyDialer.DIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 329
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1080

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 331
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$2;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
