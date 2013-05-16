.class Lcom/android/systemui/statusbar/powerwidget/PowerButton$2;
.super Ljava/lang/Object;
.source "PowerButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 166
    iput-object p1, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton$2;->this$0:Lcom/android/systemui/statusbar/powerwidget/PowerButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton$2;->this$0:Lcom/android/systemui/statusbar/powerwidget/PowerButton;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mHapticFeedback:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton$2;->this$0:Lcom/android/systemui/statusbar/powerwidget/PowerButton;

    #getter for: Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mClickPattern:[J
    invoke-static {v0}, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->access$300(Lcom/android/systemui/statusbar/powerwidget/PowerButton;)[J

    move-result-object v0

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton$2;->this$0:Lcom/android/systemui/statusbar/powerwidget/PowerButton;

    iget-object v0, v0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mVibrator:Landroid/os/Vibrator;

    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton$2;->this$0:Lcom/android/systemui/statusbar/powerwidget/PowerButton;

    #getter for: Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mClickPattern:[J
    invoke-static {v1}, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->access$300(Lcom/android/systemui/statusbar/powerwidget/PowerButton;)[J

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton$2;->this$0:Lcom/android/systemui/statusbar/powerwidget/PowerButton;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->toggleState(Landroid/content/Context;)V

    .line 172
    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton$2;->this$0:Lcom/android/systemui/statusbar/powerwidget/PowerButton;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->update(Landroid/content/Context;)V

    .line 174
    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton$2;->this$0:Lcom/android/systemui/statusbar/powerwidget/PowerButton;

    #getter for: Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mExternalClickListener:Landroid/view/View$OnClickListener;
    invoke-static {v0}, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->access$400(Lcom/android/systemui/statusbar/powerwidget/PowerButton;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 175
    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton$2;->this$0:Lcom/android/systemui/statusbar/powerwidget/PowerButton;

    #getter for: Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mExternalClickListener:Landroid/view/View$OnClickListener;
    invoke-static {v0}, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->access$400(Lcom/android/systemui/statusbar/powerwidget/PowerButton;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 177
    :cond_1
    return-void
.end method
