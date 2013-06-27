.class Lcom/android/packageinstaller/UninstallAppProgress$1;
.super Landroid/os/Handler;
.source "UninstallAppProgress.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/packageinstaller/UninstallAppProgress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/packageinstaller/UninstallAppProgress;


# direct methods
.method constructor <init>(Lcom/android/packageinstaller/UninstallAppProgress;)V
    .locals 0
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/packageinstaller/UninstallAppProgress$1;->this$0:Lcom/android/packageinstaller/UninstallAppProgress;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 56
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 72
    :goto_0
    return-void

    .line 58
    :pswitch_0
    iget-object v0, p0, Lcom/android/packageinstaller/UninstallAppProgress$1;->this$0:Lcom/android/packageinstaller/UninstallAppProgress;

    iget v1, p1, Landroid/os/Message;->arg1:I

    #setter for: Lcom/android/packageinstaller/UninstallAppProgress;->mResultCode:I
    invoke-static {v0, v1}, Lcom/android/packageinstaller/UninstallAppProgress;->access$002(Lcom/android/packageinstaller/UninstallAppProgress;I)I

    .line 60
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 61
    iget-object v0, p0, Lcom/android/packageinstaller/UninstallAppProgress$1;->this$0:Lcom/android/packageinstaller/UninstallAppProgress;

    #getter for: Lcom/android/packageinstaller/UninstallAppProgress;->mStatusTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/packageinstaller/UninstallAppProgress;->access$100(Lcom/android/packageinstaller/UninstallAppProgress;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f05001e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 65
    :goto_1
    iget-object v0, p0, Lcom/android/packageinstaller/UninstallAppProgress$1;->this$0:Lcom/android/packageinstaller/UninstallAppProgress;

    #getter for: Lcom/android/packageinstaller/UninstallAppProgress;->mProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/android/packageinstaller/UninstallAppProgress;->access$200(Lcom/android/packageinstaller/UninstallAppProgress;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 67
    iget-object v0, p0, Lcom/android/packageinstaller/UninstallAppProgress$1;->this$0:Lcom/android/packageinstaller/UninstallAppProgress;

    #getter for: Lcom/android/packageinstaller/UninstallAppProgress;->mOkPanel:Landroid/view/View;
    invoke-static {v0}, Lcom/android/packageinstaller/UninstallAppProgress;->access$300(Lcom/android/packageinstaller/UninstallAppProgress;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/android/packageinstaller/UninstallAppProgress$1;->this$0:Lcom/android/packageinstaller/UninstallAppProgress;

    #getter for: Lcom/android/packageinstaller/UninstallAppProgress;->mStatusTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/packageinstaller/UninstallAppProgress;->access$100(Lcom/android/packageinstaller/UninstallAppProgress;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f05001f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 56
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
