.class public Lcom/android/systemui/statusbar/powerwidget/LockScreenButton;
.super Lcom/android/systemui/statusbar/powerwidget/PowerButton;
.source "LockScreenButton.java"


# instance fields
.field private mDisabledLockscreen:Z

.field private mLock:Landroid/app/KeyguardManager$KeyguardLock;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/android/systemui/statusbar/powerwidget/PowerButton;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/LockScreenButton;->mLock:Landroid/app/KeyguardManager$KeyguardLock;

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/powerwidget/LockScreenButton;->mDisabledLockscreen:Z

    .line 18
    const-string v0, "toggleLockScreen"

    iput-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/LockScreenButton;->mType:Ljava/lang/String;

    return-void
.end method

.method private applyState(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 66
    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/LockScreenButton;->mLock:Landroid/app/KeyguardManager$KeyguardLock;

    if-nez v1, :cond_0

    .line 67
    const-string v1, "keyguard"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 69
    .local v0, keyguardManager:Landroid/app/KeyguardManager;
    const-string v1, "PowerWidget"

    invoke-virtual {v0, v1}, Landroid/app/KeyguardManager;->newKeyguardLock(Ljava/lang/String;)Landroid/app/KeyguardManager$KeyguardLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/LockScreenButton;->mLock:Landroid/app/KeyguardManager$KeyguardLock;

    .line 71
    .end local v0           #keyguardManager:Landroid/app/KeyguardManager;
    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/powerwidget/LockScreenButton;->mDisabledLockscreen:Z

    if-eqz v1, :cond_1

    .line 72
    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/LockScreenButton;->mLock:Landroid/app/KeyguardManager$KeyguardLock;

    invoke-virtual {v1}, Landroid/app/KeyguardManager$KeyguardLock;->disableKeyguard()V

    .line 76
    :goto_0
    return-void

    .line 74
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/LockScreenButton;->mLock:Landroid/app/KeyguardManager$KeyguardLock;

    invoke-virtual {v1}, Landroid/app/KeyguardManager$KeyguardLock;->reenableKeyguard()V

    goto :goto_0
.end method


# virtual methods
.method protected handleLongClick(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 58
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SECURITY_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 59
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 61
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 62
    const/4 v1, 0x1

    return v1
.end method

.method protected setupButton(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->setupButton(Landroid/view/View;)V

    .line 35
    if-nez p1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/powerwidget/LockScreenButton;->mDisabledLockscreen:Z

    if-eqz v1, :cond_1

    .line 36
    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/LockScreenButton;->mLock:Landroid/app/KeyguardManager$KeyguardLock;

    invoke-virtual {v1}, Landroid/app/KeyguardManager$KeyguardLock;->reenableKeyguard()V

    .line 37
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/LockScreenButton;->mLock:Landroid/app/KeyguardManager$KeyguardLock;

    .line 43
    :cond_0
    :goto_0
    return-void

    .line 38
    :cond_1
    if-eqz p1, :cond_0

    .line 39
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 40
    .local v0, context:Landroid/content/Context;
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/powerwidget/LockScreenButton;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "lockscreen_disabled"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/powerwidget/LockScreenButton;->mDisabledLockscreen:Z

    .line 41
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/powerwidget/LockScreenButton;->applyState(Landroid/content/Context;)V

    goto :goto_0
.end method

.method protected toggleState(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 47
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/powerwidget/LockScreenButton;->mDisabledLockscreen:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/powerwidget/LockScreenButton;->mDisabledLockscreen:Z

    .line 49
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/powerwidget/LockScreenButton;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 50
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "lockscreen_disabled"

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/powerwidget/LockScreenButton;->mDisabledLockscreen:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 51
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 53
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/powerwidget/LockScreenButton;->applyState(Landroid/content/Context;)V

    .line 54
    return-void

    .line 47
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected updateState(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/powerwidget/LockScreenButton;->mDisabledLockscreen:Z

    if-nez v0, :cond_0

    .line 23
    const v0, 0x7f02007d

    iput v0, p0, Lcom/android/systemui/statusbar/powerwidget/LockScreenButton;->mIcon:I

    .line 24
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/statusbar/powerwidget/LockScreenButton;->mState:I

    .line 29
    :goto_0
    return-void

    .line 26
    :cond_0
    const v0, 0x7f02007c

    iput v0, p0, Lcom/android/systemui/statusbar/powerwidget/LockScreenButton;->mIcon:I

    .line 27
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/systemui/statusbar/powerwidget/LockScreenButton;->mState:I

    goto :goto_0
.end method
