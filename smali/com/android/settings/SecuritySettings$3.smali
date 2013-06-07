.class Lcom/android/settings/SecuritySettings$3;
.super Ljava/lang/Object;
.source "SecuritySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SecuritySettings;->createPhonePasswordDialog(Z)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SecuritySettings;

.field final synthetic val$filenv:Lcom/android/internal/util/NVStore;

.field final synthetic val$mtcheckPref:Z

.field final synthetic val$storedPhPwd:Ljava/lang/String;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/settings/SecuritySettings;Landroid/view/View;Ljava/lang/String;Lcom/android/internal/util/NVStore;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 895
    iput-object p1, p0, Lcom/android/settings/SecuritySettings$3;->this$0:Lcom/android/settings/SecuritySettings;

    iput-object p2, p0, Lcom/android/settings/SecuritySettings$3;->val$view:Landroid/view/View;

    iput-object p3, p0, Lcom/android/settings/SecuritySettings$3;->val$storedPhPwd:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/settings/SecuritySettings$3;->val$filenv:Lcom/android/internal/util/NVStore;

    iput-boolean p5, p0, Lcom/android/settings/SecuritySettings$3;->val$mtcheckPref:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 11
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 898
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$3;->val$view:Landroid/view/View;

    const v1, 0x7f0b002c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 899
    .local v1, tview:Landroid/widget/TextView;
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$3;->this$0:Lcom/android/settings/SecuritySettings;

    iget-boolean v0, v0, Lcom/android/settings/SecuritySettings;->firstSet:Z

    if-eqz v0, :cond_1

    .line 900
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$3;->this$0:Lcom/android/settings/SecuritySettings;

    iget-object v2, p0, Lcom/android/settings/SecuritySettings$3;->this$0:Lcom/android/settings/SecuritySettings;

    #getter for: Lcom/android/settings/SecuritySettings;->mNewPhonePwdET:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/android/settings/SecuritySettings;->access$500(Lcom/android/settings/SecuritySettings;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/settings/SecuritySettings;->newPhPwd:Ljava/lang/String;

    .line 901
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$3;->this$0:Lcom/android/settings/SecuritySettings;

    iget-object v2, p0, Lcom/android/settings/SecuritySettings$3;->this$0:Lcom/android/settings/SecuritySettings;

    #getter for: Lcom/android/settings/SecuritySettings;->mConfirmPhonePwdET:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/android/settings/SecuritySettings;->access$600(Lcom/android/settings/SecuritySettings;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/settings/SecuritySettings;->confirmPhPwd:Ljava/lang/String;

    .line 907
    :goto_0
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$3;->this$0:Lcom/android/settings/SecuritySettings;

    iget-object v2, p0, Lcom/android/settings/SecuritySettings$3;->val$storedPhPwd:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/SecuritySettings$3;->this$0:Lcom/android/settings/SecuritySettings;

    iget-object v3, v3, Lcom/android/settings/SecuritySettings;->newPhPwd:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/SecuritySettings$3;->this$0:Lcom/android/settings/SecuritySettings;

    iget-object v4, v4, Lcom/android/settings/SecuritySettings;->confirmPhPwd:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settings/SecuritySettings$3;->this$0:Lcom/android/settings/SecuritySettings;

    iget-object v5, v5, Lcom/android/settings/SecuritySettings;->enterPhPwd:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/SecuritySettings;->ValidatePhPwd(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 909
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$3;->this$0:Lcom/android/settings/SecuritySettings;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/settings/SecuritySettings;->mshowDlg:Z

    .line 910
    .end local v1           #tview:Landroid/widget/TextView;
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$3;->this$0:Lcom/android/settings/SecuritySettings;

    iget-boolean v0, v0, Lcom/android/settings/SecuritySettings;->firstSet:Z

    if-eqz v0, :cond_0

    .line 911
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$3;->val$filenv:Lcom/android/internal/util/NVStore;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/SecuritySettings$3;->this$0:Lcom/android/settings/SecuritySettings;

    iget-object v2, v2, Lcom/android/settings/SecuritySettings;->newPhPwd:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/internal/util/NVStore$datatype;->All:Lcom/android/internal/util/NVStore$datatype;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/util/NVStore;->writedata(Ljava/lang/String;Lcom/android/internal/util/NVStore$datatype;)V

    .line 913
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/SecuritySettings$3;->val$mtcheckPref:Z

    if-nez v0, :cond_4

    .line 915
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 916
    .local v7, mtintent:Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$3;->this$0:Lcom/android/settings/SecuritySettings;

    const-string v1, "MT_Setting_Pref"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/SecuritySettings;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "MT_OPS_Signed_in"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .line 918
    .local v8, ops_signed_in:Z
    if-eqz v8, :cond_3

    .line 919
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$3;->this$0:Lcom/android/settings/SecuritySettings;

    iget-boolean v0, v0, Lcom/android/settings/SecuritySettings;->firstSet:Z

    if-nez v0, :cond_2

    .line 921
    const-string v0, "com.samsung.mobileTracker.ui"

    const-string v1, "com.samsung.mobileTracker.ui.MobileTrackerUI_TW"

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 923
    const/high16 v0, 0x1000

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 924
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$3;->this$0:Lcom/android/settings/SecuritySettings;

    invoke-virtual {v0, v7}, Lcom/android/settings/SecuritySettings;->startActivity(Landroid/content/Intent;)V

    .line 981
    .end local v7           #mtintent:Landroid/content/Intent;
    .end local v8           #ops_signed_in:Z
    :goto_1
    return-void

    .line 904
    .restart local v1       #tview:Landroid/widget/TextView;
    :cond_1
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$3;->this$0:Lcom/android/settings/SecuritySettings;

    iget-object v2, p0, Lcom/android/settings/SecuritySettings$3;->this$0:Lcom/android/settings/SecuritySettings;

    #getter for: Lcom/android/settings/SecuritySettings;->mEnterPhonePwdET:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/android/settings/SecuritySettings;->access$700(Lcom/android/settings/SecuritySettings;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/settings/SecuritySettings;->enterPhPwd:Ljava/lang/String;

    goto/16 :goto_0

    .line 927
    .end local v1           #tview:Landroid/widget/TextView;
    .restart local v7       #mtintent:Landroid/content/Intent;
    .restart local v8       #ops_signed_in:Z
    :cond_2
    const-string v0, "com.samsung.mobileTracker.ui"

    const-string v1, "com.samsung.mobileTracker.ui.MobileTrackerUI"

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 929
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$3;->this$0:Lcom/android/settings/SecuritySettings;

    invoke-virtual {v0, v7}, Lcom/android/settings/SecuritySettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 934
    :cond_3
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/SecuritySettings$3;->this$0:Lcom/android/settings/SecuritySettings;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    .line 935
    .local v6, alertDialog:Landroid/app/AlertDialog;
    const v0, 0x1040014

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 936
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$3;->this$0:Lcom/android/settings/SecuritySettings;

    invoke-virtual {v0}, Lcom/android/settings/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0804c8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 937
    const v0, 0x1080027

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog;->setIcon(I)V

    .line 938
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$3;->this$0:Lcom/android/settings/SecuritySettings;

    invoke-virtual {v0}, Lcom/android/settings/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x104000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    new-instance v1, Lcom/android/settings/SecuritySettings$3$1;

    invoke-direct {v1, p0}, Lcom/android/settings/SecuritySettings$3$1;-><init>(Lcom/android/settings/SecuritySettings$3;)V

    invoke-virtual {v6, v0, v1}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 948
    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    goto :goto_1

    .line 953
    .end local v6           #alertDialog:Landroid/app/AlertDialog;
    .end local v7           #mtintent:Landroid/content/Intent;
    .end local v8           #ops_signed_in:Z
    :cond_4
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$3;->val$filenv:Lcom/android/internal/util/NVStore;

    invoke-virtual {v0}, Lcom/android/internal/util/NVStore;->GetMTStatus()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 955
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$3;->val$filenv:Lcom/android/internal/util/NVStore;

    invoke-virtual {v0}, Lcom/android/internal/util/NVStore;->IsPhLockeEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "1"

    move-object v9, v0

    .line 956
    .local v9, phlock:Ljava/lang/String;
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/settings/SecuritySettings$3;->val$filenv:Lcom/android/internal/util/NVStore;

    invoke-virtual {v1}, Lcom/android/internal/util/NVStore;->GetPhPWD()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SecuritySettings$3;->val$filenv:Lcom/android/internal/util/NVStore;

    invoke-virtual {v1}, Lcom/android/internal/util/NVStore;->GetSenderName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SecuritySettings$3;->val$filenv:Lcom/android/internal/util/NVStore;

    invoke-virtual {v1}, Lcom/android/internal/util/NVStore;->GetRec1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SecuritySettings$3;->val$filenv:Lcom/android/internal/util/NVStore;

    invoke-virtual {v1}, Lcom/android/internal/util/NVStore;->GetRec2()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SecuritySettings$3;->val$filenv:Lcom/android/internal/util/NVStore;

    invoke-virtual {v1}, Lcom/android/internal/util/NVStore;->GetRec3()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SecuritySettings$3;->val$filenv:Lcom/android/internal/util/NVStore;

    invoke-virtual {v1}, Lcom/android/internal/util/NVStore;->GetRec4()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SecuritySettings$3;->val$filenv:Lcom/android/internal/util/NVStore;

    invoke-virtual {v1}, Lcom/android/internal/util/NVStore;->GetRec5()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SecuritySettings$3;->val$filenv:Lcom/android/internal/util/NVStore;

    invoke-virtual {v1}, Lcom/android/internal/util/NVStore;->GetSmsMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SecuritySettings$3;->val$filenv:Lcom/android/internal/util/NVStore;

    invoke-virtual {v1}, Lcom/android/internal/util/NVStore;->GetStoredIMSI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 962
    .local v10, str:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$3;->val$filenv:Lcom/android/internal/util/NVStore;

    sget-object v1, Lcom/android/internal/util/NVStore$datatype;->All:Lcom/android/internal/util/NVStore$datatype;

    invoke-virtual {v0, v10, v1}, Lcom/android/internal/util/NVStore;->writedata(Ljava/lang/String;Lcom/android/internal/util/NVStore$datatype;)V

    .line 963
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$3;->this$0:Lcom/android/settings/SecuritySettings;

    #calls: Lcom/android/settings/SecuritySettings;->updateMTStatusSummary()V
    invoke-static {v0}, Lcom/android/settings/SecuritySettings;->access$400(Lcom/android/settings/SecuritySettings;)V

    goto/16 :goto_1

    .line 955
    .end local v9           #phlock:Ljava/lang/String;
    .end local v10           #str:Ljava/lang/String;
    :cond_5
    const-string v0, "0"

    move-object v9, v0

    goto/16 :goto_2

    .line 967
    :cond_6
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$3;->val$filenv:Lcom/android/internal/util/NVStore;

    invoke-virtual {v0}, Lcom/android/internal/util/NVStore;->IsPhLockeEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "1"

    move-object v9, v0

    .line 968
    .restart local v9       #phlock:Ljava/lang/String;
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/settings/SecuritySettings$3;->val$filenv:Lcom/android/internal/util/NVStore;

    invoke-virtual {v1}, Lcom/android/internal/util/NVStore;->GetPhPWD()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SecuritySettings$3;->val$filenv:Lcom/android/internal/util/NVStore;

    invoke-virtual {v1}, Lcom/android/internal/util/NVStore;->GetSenderName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SecuritySettings$3;->val$filenv:Lcom/android/internal/util/NVStore;

    invoke-virtual {v1}, Lcom/android/internal/util/NVStore;->GetRec1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SecuritySettings$3;->val$filenv:Lcom/android/internal/util/NVStore;

    invoke-virtual {v1}, Lcom/android/internal/util/NVStore;->GetRec2()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SecuritySettings$3;->val$filenv:Lcom/android/internal/util/NVStore;

    invoke-virtual {v1}, Lcom/android/internal/util/NVStore;->GetRec3()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SecuritySettings$3;->val$filenv:Lcom/android/internal/util/NVStore;

    invoke-virtual {v1}, Lcom/android/internal/util/NVStore;->GetRec4()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SecuritySettings$3;->val$filenv:Lcom/android/internal/util/NVStore;

    invoke-virtual {v1}, Lcom/android/internal/util/NVStore;->GetRec5()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SecuritySettings$3;->val$filenv:Lcom/android/internal/util/NVStore;

    invoke-virtual {v1}, Lcom/android/internal/util/NVStore;->GetSmsMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SecuritySettings$3;->val$filenv:Lcom/android/internal/util/NVStore;

    invoke-virtual {v1}, Lcom/android/internal/util/NVStore;->GetStoredIMSI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 974
    .restart local v10       #str:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$3;->val$filenv:Lcom/android/internal/util/NVStore;

    sget-object v1, Lcom/android/internal/util/NVStore$datatype;->All:Lcom/android/internal/util/NVStore$datatype;

    invoke-virtual {v0, v10, v1}, Lcom/android/internal/util/NVStore;->writedata(Ljava/lang/String;Lcom/android/internal/util/NVStore$datatype;)V

    .line 975
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$3;->this$0:Lcom/android/settings/SecuritySettings;

    #calls: Lcom/android/settings/SecuritySettings;->updateMTStatusSummary()V
    invoke-static {v0}, Lcom/android/settings/SecuritySettings;->access$400(Lcom/android/settings/SecuritySettings;)V

    goto/16 :goto_1

    .line 967
    .end local v9           #phlock:Ljava/lang/String;
    .end local v10           #str:Ljava/lang/String;
    :cond_7
    const-string v0, "0"

    move-object v9, v0

    goto/16 :goto_3

    .line 979
    .restart local v1       #tview:Landroid/widget/TextView;
    :cond_8
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$3;->this$0:Lcom/android/settings/SecuritySettings;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/settings/SecuritySettings;->mshowDlg:Z

    goto/16 :goto_1
.end method
