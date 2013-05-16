.class Lcom/android/systemui/statusbar/powerwidget/PowerButton$3;
.super Ljava/lang/Object;
.source "PowerButton.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/powerwidget/PowerButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/powerwidget/PowerButton;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/powerwidget/PowerButton;)V
    .locals 0
    .parameter

    .prologue
    .line 180
    iput-object p1, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton$3;->this$0:Lcom/android/systemui/statusbar/powerwidget/PowerButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 4
    .parameter "v"

    .prologue
    .line 182
    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton$3;->this$0:Lcom/android/systemui/statusbar/powerwidget/PowerButton;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->handleLongClick(Landroid/content/Context;)Z

    move-result v0

    .line 184
    .local v0, result:Z
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton$3;->this$0:Lcom/android/systemui/statusbar/powerwidget/PowerButton;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mHapticFeedback:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton$3;->this$0:Lcom/android/systemui/statusbar/powerwidget/PowerButton;

    #getter for: Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mLongClickPattern:[J
    invoke-static {v1}, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->access$500(Lcom/android/systemui/statusbar/powerwidget/PowerButton;)[J

    move-result-object v1

    if-eqz v1, :cond_0

    .line 185
    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton$3;->this$0:Lcom/android/systemui/statusbar/powerwidget/PowerButton;

    iget-object v1, v1, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mVibrator:Landroid/os/Vibrator;

    iget-object v2, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton$3;->this$0:Lcom/android/systemui/statusbar/powerwidget/PowerButton;

    #getter for: Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mLongClickPattern:[J
    invoke-static {v2}, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->access$500(Lcom/android/systemui/statusbar/powerwidget/PowerButton;)[J

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 189
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->dismissKeyguardOnNextActivity()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton$3;->this$0:Lcom/android/systemui/statusbar/powerwidget/PowerButton;

    #getter for: Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mExternalLongClickListener:Landroid/view/View$OnLongClickListener;
    invoke-static {v1}, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->access$600(Lcom/android/systemui/statusbar/powerwidget/PowerButton;)Landroid/view/View$OnLongClickListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 194
    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton$3;->this$0:Lcom/android/systemui/statusbar/powerwidget/PowerButton;

    #getter for: Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mExternalLongClickListener:Landroid/view/View$OnLongClickListener;
    invoke-static {v1}, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->access$600(Lcom/android/systemui/statusbar/powerwidget/PowerButton;)Landroid/view/View$OnLongClickListener;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    .line 196
    :cond_1
    return v0

    .line 190
    :catch_0
    move-exception v1

    goto :goto_0
.end method
