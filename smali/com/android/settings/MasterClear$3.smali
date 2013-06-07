.class Lcom/android/settings/MasterClear$3;
.super Ljava/lang/Object;
.source "MasterClear.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/MasterClear;->runMobileTrackerPwdConfirmation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MasterClear;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/settings/MasterClear;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 181
    iput-object p1, p0, Lcom/android/settings/MasterClear$3;->this$0:Lcom/android/settings/MasterClear;

    iput-object p2, p0, Lcom/android/settings/MasterClear$3;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 10
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 184
    iget-object v4, p0, Lcom/android/settings/MasterClear$3;->this$0:Lcom/android/settings/MasterClear;

    iput-boolean v8, v4, Lcom/android/settings/MasterClear;->isOkClicked:Z

    .line 185
    iget-object v4, p0, Lcom/android/settings/MasterClear$3;->this$0:Lcom/android/settings/MasterClear;

    invoke-virtual {v4}, Lcom/android/settings/MasterClear;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "mt_pwd"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 187
    .local v2, storedPhPwd:Ljava/lang/String;
    const-string v4, "MasterClear"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "storedPhPwd="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget-object v4, p0, Lcom/android/settings/MasterClear$3;->this$0:Lcom/android/settings/MasterClear;

    iget-object v4, v4, Lcom/android/settings/MasterClear;->mPhonePwdET:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 190
    .local v0, enteredPhPwd:Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_0

    .line 191
    iget-object v4, p0, Lcom/android/settings/MasterClear$3;->this$0:Lcom/android/settings/MasterClear;

    iput-boolean v7, v4, Lcom/android/settings/MasterClear;->isOkClicked:Z

    .line 192
    iget-object v4, p0, Lcom/android/settings/MasterClear$3;->this$0:Lcom/android/settings/MasterClear;

    #calls: Lcom/android/settings/MasterClear;->establishFinalConfirmationState()V
    invoke-static {v4}, Lcom/android/settings/MasterClear;->access$100(Lcom/android/settings/MasterClear;)V

    .line 207
    :goto_0
    return-void

    .line 194
    :cond_0
    iget-object v4, p0, Lcom/android/settings/MasterClear$3;->val$view:Landroid/view/View;

    const v5, 0x7f0b002c

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 197
    .local v3, tview:Landroid/widget/TextView;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v4, v9, :cond_1

    .line 198
    iget-object v4, p0, Lcom/android/settings/MasterClear$3;->this$0:Lcom/android/settings/MasterClear;

    invoke-virtual {v4}, Lcom/android/settings/MasterClear;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0804d0

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 199
    .local v1, msg:Ljava/lang/String;
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 205
    .end local v1           #msg:Ljava/lang/String;
    :goto_1
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 202
    :cond_1
    const v4, 0x7f0804cc

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method
