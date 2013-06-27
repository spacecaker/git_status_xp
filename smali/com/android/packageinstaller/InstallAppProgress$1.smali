.class Lcom/android/packageinstaller/InstallAppProgress$1;
.super Landroid/os/Handler;
.source "InstallAppProgress.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/packageinstaller/InstallAppProgress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/packageinstaller/InstallAppProgress;


# direct methods
.method constructor <init>(Lcom/android/packageinstaller/InstallAppProgress;)V
    .locals 0
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/packageinstaller/InstallAppProgress$1;->this$0:Lcom/android/packageinstaller/InstallAppProgress;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .parameter "msg"

    .prologue
    const/4 v9, 0x4

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 74
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 124
    :goto_0
    return-void

    .line 77
    :pswitch_0
    iget-object v4, p0, Lcom/android/packageinstaller/InstallAppProgress$1;->this$0:Lcom/android/packageinstaller/InstallAppProgress;

    #getter for: Lcom/android/packageinstaller/InstallAppProgress;->mProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v4}, Lcom/android/packageinstaller/InstallAppProgress;->access$000(Lcom/android/packageinstaller/InstallAppProgress;)Landroid/widget/ProgressBar;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 80
    const/4 v0, 0x0

    .line 81
    .local v0, centerTextDrawable:Landroid/graphics/drawable/Drawable;
    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v6, :cond_3

    .line 82
    iget-object v4, p0, Lcom/android/packageinstaller/InstallAppProgress$1;->this$0:Lcom/android/packageinstaller/InstallAppProgress;

    #getter for: Lcom/android/packageinstaller/InstallAppProgress;->mLaunchButton:Landroid/widget/Button;
    invoke-static {v4}, Lcom/android/packageinstaller/InstallAppProgress;->access$100(Lcom/android/packageinstaller/InstallAppProgress;)Landroid/widget/Button;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 83
    iget-object v4, p0, Lcom/android/packageinstaller/InstallAppProgress$1;->this$0:Lcom/android/packageinstaller/InstallAppProgress;

    invoke-virtual {v4}, Lcom/android/packageinstaller/InstallAppProgress;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/high16 v5, 0x7f02

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 84
    const v1, 0x7f050007

    .line 86
    .local v1, centerTextLabel:I
    iget-object v4, p0, Lcom/android/packageinstaller/InstallAppProgress$1;->this$0:Lcom/android/packageinstaller/InstallAppProgress;

    iget-object v5, p0, Lcom/android/packageinstaller/InstallAppProgress$1;->this$0:Lcom/android/packageinstaller/InstallAppProgress;

    invoke-virtual {v5}, Lcom/android/packageinstaller/InstallAppProgress;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iget-object v6, p0, Lcom/android/packageinstaller/InstallAppProgress$1;->this$0:Lcom/android/packageinstaller/InstallAppProgress;

    #getter for: Lcom/android/packageinstaller/InstallAppProgress;->mAppInfo:Landroid/content/pm/ApplicationInfo;
    invoke-static {v6}, Lcom/android/packageinstaller/InstallAppProgress;->access$300(Lcom/android/packageinstaller/InstallAppProgress;)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    #setter for: Lcom/android/packageinstaller/InstallAppProgress;->mLaunchIntent:Landroid/content/Intent;
    invoke-static {v4, v5}, Lcom/android/packageinstaller/InstallAppProgress;->access$202(Lcom/android/packageinstaller/InstallAppProgress;Landroid/content/Intent;)Landroid/content/Intent;

    .line 88
    const/4 v2, 0x0

    .line 89
    .local v2, enabled:Z
    iget-object v4, p0, Lcom/android/packageinstaller/InstallAppProgress$1;->this$0:Lcom/android/packageinstaller/InstallAppProgress;

    #getter for: Lcom/android/packageinstaller/InstallAppProgress;->mLaunchIntent:Landroid/content/Intent;
    invoke-static {v4}, Lcom/android/packageinstaller/InstallAppProgress;->access$200(Lcom/android/packageinstaller/InstallAppProgress;)Landroid/content/Intent;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 90
    iget-object v4, p0, Lcom/android/packageinstaller/InstallAppProgress$1;->this$0:Lcom/android/packageinstaller/InstallAppProgress;

    invoke-virtual {v4}, Lcom/android/packageinstaller/InstallAppProgress;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/packageinstaller/InstallAppProgress$1;->this$0:Lcom/android/packageinstaller/InstallAppProgress;

    #getter for: Lcom/android/packageinstaller/InstallAppProgress;->mLaunchIntent:Landroid/content/Intent;
    invoke-static {v5}, Lcom/android/packageinstaller/InstallAppProgress;->access$200(Lcom/android/packageinstaller/InstallAppProgress;)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v4, v5, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 92
    .local v3, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 93
    const/4 v2, 0x1

    .line 96
    .end local v3           #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_0
    if-eqz v2, :cond_2

    .line 97
    iget-object v4, p0, Lcom/android/packageinstaller/InstallAppProgress$1;->this$0:Lcom/android/packageinstaller/InstallAppProgress;

    #getter for: Lcom/android/packageinstaller/InstallAppProgress;->mLaunchButton:Landroid/widget/Button;
    invoke-static {v4}, Lcom/android/packageinstaller/InstallAppProgress;->access$100(Lcom/android/packageinstaller/InstallAppProgress;)Landroid/widget/Button;

    move-result-object v4

    iget-object v5, p0, Lcom/android/packageinstaller/InstallAppProgress$1;->this$0:Lcom/android/packageinstaller/InstallAppProgress;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    .end local v2           #enabled:Z
    :goto_1
    if-eqz v0, :cond_1

    .line 112
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-virtual {v0, v7, v7, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 115
    iget-object v4, p0, Lcom/android/packageinstaller/InstallAppProgress$1;->this$0:Lcom/android/packageinstaller/InstallAppProgress;

    #getter for: Lcom/android/packageinstaller/InstallAppProgress;->mStatusTextView:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/packageinstaller/InstallAppProgress;->access$500(Lcom/android/packageinstaller/InstallAppProgress;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v0, v8, v8, v8}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 117
    :cond_1
    iget-object v4, p0, Lcom/android/packageinstaller/InstallAppProgress$1;->this$0:Lcom/android/packageinstaller/InstallAppProgress;

    #getter for: Lcom/android/packageinstaller/InstallAppProgress;->mStatusTextView:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/packageinstaller/InstallAppProgress;->access$500(Lcom/android/packageinstaller/InstallAppProgress;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(I)V

    .line 118
    iget-object v4, p0, Lcom/android/packageinstaller/InstallAppProgress$1;->this$0:Lcom/android/packageinstaller/InstallAppProgress;

    #getter for: Lcom/android/packageinstaller/InstallAppProgress;->mDoneButton:Landroid/widget/Button;
    invoke-static {v4}, Lcom/android/packageinstaller/InstallAppProgress;->access$600(Lcom/android/packageinstaller/InstallAppProgress;)Landroid/widget/Button;

    move-result-object v4

    iget-object v5, p0, Lcom/android/packageinstaller/InstallAppProgress$1;->this$0:Lcom/android/packageinstaller/InstallAppProgress;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iget-object v4, p0, Lcom/android/packageinstaller/InstallAppProgress$1;->this$0:Lcom/android/packageinstaller/InstallAppProgress;

    #getter for: Lcom/android/packageinstaller/InstallAppProgress;->mOkPanel:Landroid/view/View;
    invoke-static {v4}, Lcom/android/packageinstaller/InstallAppProgress;->access$700(Lcom/android/packageinstaller/InstallAppProgress;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 99
    .restart local v2       #enabled:Z
    :cond_2
    iget-object v4, p0, Lcom/android/packageinstaller/InstallAppProgress$1;->this$0:Lcom/android/packageinstaller/InstallAppProgress;

    #getter for: Lcom/android/packageinstaller/InstallAppProgress;->mLaunchButton:Landroid/widget/Button;
    invoke-static {v4}, Lcom/android/packageinstaller/InstallAppProgress;->access$100(Lcom/android/packageinstaller/InstallAppProgress;)Landroid/widget/Button;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1

    .line 101
    .end local v1           #centerTextLabel:I
    .end local v2           #enabled:Z
    :cond_3
    iget v4, p1, Landroid/os/Message;->arg1:I

    const/4 v5, -0x4

    if-ne v4, v5, :cond_4

    .line 102
    iget-object v4, p0, Lcom/android/packageinstaller/InstallAppProgress$1;->this$0:Lcom/android/packageinstaller/InstallAppProgress;

    #calls: Lcom/android/packageinstaller/InstallAppProgress;->showDialogInner(I)V
    invoke-static {v4, v6}, Lcom/android/packageinstaller/InstallAppProgress;->access$400(Lcom/android/packageinstaller/InstallAppProgress;I)V

    goto/16 :goto_0

    .line 106
    :cond_4
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x108018d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 108
    const v1, 0x7f050009

    .line 109
    .restart local v1       #centerTextLabel:I
    iget-object v4, p0, Lcom/android/packageinstaller/InstallAppProgress$1;->this$0:Lcom/android/packageinstaller/InstallAppProgress;

    #getter for: Lcom/android/packageinstaller/InstallAppProgress;->mLaunchButton:Landroid/widget/Button;
    invoke-static {v4}, Lcom/android/packageinstaller/InstallAppProgress;->access$100(Lcom/android/packageinstaller/InstallAppProgress;)Landroid/widget/Button;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    .line 74
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
