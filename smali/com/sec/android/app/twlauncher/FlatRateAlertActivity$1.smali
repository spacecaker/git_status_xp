.class Lcom/sec/android/app/twlauncher/FlatRateAlertActivity$1;
.super Ljava/lang/Object;
.source "FlatRateAlertActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/twlauncher/FlatRateAlertActivity;->createView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/twlauncher/FlatRateAlertActivity;

.field final synthetic val$isXec:Z


# direct methods
.method constructor <init>(Lcom/sec/android/app/twlauncher/FlatRateAlertActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/FlatRateAlertActivity$1;->this$0:Lcom/sec/android/app/twlauncher/FlatRateAlertActivity;

    iput-boolean p2, p0, Lcom/sec/android/app/twlauncher/FlatRateAlertActivity$1;->val$isXec:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const-string v2, "FLatRateAlertActivity"

    .line 102
    sget v0, Lcom/sec/android/app/twlauncher/FlatRateAlertActivity;->choice:I

    sget v1, Lcom/sec/android/app/twlauncher/FlatRateAlertActivity;->ans:I

    if-eq v0, v1, :cond_0

    .line 103
    const-string v0, "FLatRateAlertActivity"

    const-string v0, "showFlatRateOptionDialog choice == ans"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :goto_0
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/FlatRateAlertActivity$1;->val$isXec:Z

    if-eqz v0, :cond_2

    .line 109
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/FlatRateAlertActivity$1;->this$0:Lcom/sec/android/app/twlauncher/FlatRateAlertActivity;

    #getter for: Lcom/sec/android/app/twlauncher/FlatRateAlertActivity;->r2:Landroid/widget/RadioButton;
    invoke-static {v0}, Lcom/sec/android/app/twlauncher/FlatRateAlertActivity;->access$000(Lcom/sec/android/app/twlauncher/FlatRateAlertActivity;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RadioButton;->getId()I

    move-result v0

    sget-object v1, Lcom/sec/android/app/twlauncher/FlatRateAlertActivity;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 110
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/FlatRateAlertActivity$1;->this$0:Lcom/sec/android/app/twlauncher/FlatRateAlertActivity;

    #calls: Lcom/sec/android/app/twlauncher/FlatRateAlertActivity;->setDataConnectionOff()V
    invoke-static {v0}, Lcom/sec/android/app/twlauncher/FlatRateAlertActivity;->access$100(Lcom/sec/android/app/twlauncher/FlatRateAlertActivity;)V

    .line 121
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/FlatRateAlertActivity$1;->this$0:Lcom/sec/android/app/twlauncher/FlatRateAlertActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/FlatRateAlertActivity;->finish()V

    .line 122
    return-void

    .line 105
    :cond_0
    const-string v0, "FLatRateAlertActivity"

    const-string v0, "showFlatRateOptionDialog choice != ans"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 112
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/FlatRateAlertActivity$1;->this$0:Lcom/sec/android/app/twlauncher/FlatRateAlertActivity;

    #calls: Lcom/sec/android/app/twlauncher/FlatRateAlertActivity;->setDataConnectionOn()V
    invoke-static {v0}, Lcom/sec/android/app/twlauncher/FlatRateAlertActivity;->access$200(Lcom/sec/android/app/twlauncher/FlatRateAlertActivity;)V

    goto :goto_1

    .line 115
    :cond_2
    sget-object v0, Lcom/sec/android/app/twlauncher/FlatRateAlertActivity;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_3

    .line 116
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/FlatRateAlertActivity$1;->this$0:Lcom/sec/android/app/twlauncher/FlatRateAlertActivity;

    #calls: Lcom/sec/android/app/twlauncher/FlatRateAlertActivity;->setDataConnectionOff()V
    invoke-static {v0}, Lcom/sec/android/app/twlauncher/FlatRateAlertActivity;->access$100(Lcom/sec/android/app/twlauncher/FlatRateAlertActivity;)V

    goto :goto_1

    .line 118
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/FlatRateAlertActivity$1;->this$0:Lcom/sec/android/app/twlauncher/FlatRateAlertActivity;

    #calls: Lcom/sec/android/app/twlauncher/FlatRateAlertActivity;->setDataConnectionOn()V
    invoke-static {v0}, Lcom/sec/android/app/twlauncher/FlatRateAlertActivity;->access$200(Lcom/sec/android/app/twlauncher/FlatRateAlertActivity;)V

    goto :goto_1
.end method
