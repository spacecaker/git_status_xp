.class public Lcom/android/packageinstaller/UninstallerActivity;
.super Landroid/app/Activity;
.source "UninstallerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/content/DialogInterface$OnCancelListener;


# static fields
.field private static final DLG_APP_NOT_FOUND:I = 0x1

.field private static final DLG_BASE:I = 0x0

.field private static final DLG_UNINSTALL_FAILED:I = 0x2

.field private static final TAG:Ljava/lang/String; = "UninstallerActivity"


# instance fields
.field private localLOGV:Z

.field private mAppInfo:Landroid/content/pm/ApplicationInfo;

.field private mCancel:Landroid/widget/Button;

.field private mOk:Landroid/widget/Button;

.field mPm:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/packageinstaller/UninstallerActivity;->localLOGV:Z

    return-void
.end method

.method private startUninstallProgress()V
    .locals 3

    .prologue
    .line 91
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 92
    .local v0, newIntent:Landroid/content/Intent;
    const-string v1, "com.android.packageinstaller.applicationInfo"

    iget-object v2, p0, Lcom/android/packageinstaller/UninstallerActivity;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 94
    const-class v1, Lcom/android/packageinstaller/UninstallAppProgress;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 95
    invoke-virtual {p0, v0}, Lcom/android/packageinstaller/UninstallerActivity;->startActivity(Landroid/content/Intent;)V

    .line 96
    invoke-virtual {p0}, Lcom/android/packageinstaller/UninstallerActivity;->finish()V

    .line 97
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 154
    invoke-virtual {p0}, Lcom/android/packageinstaller/UninstallerActivity;->finish()V

    .line 155
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/packageinstaller/UninstallerActivity;->mOk:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    .line 147
    invoke-direct {p0}, Lcom/android/packageinstaller/UninstallerActivity;->startUninstallProgress()V

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 148
    :cond_1
    iget-object v0, p0, Lcom/android/packageinstaller/UninstallerActivity;->mCancel:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 149
    invoke-virtual {p0}, Lcom/android/packageinstaller/UninstallerActivity;->finish()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "icicle"

    .prologue
    const/4 v9, 0x1

    const-string v10, "UninstallerActivity"

    .line 101
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 103
    invoke-virtual {p0}, Lcom/android/packageinstaller/UninstallerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 104
    .local v3, intent:Landroid/content/Intent;
    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    .line 105
    .local v5, packageURI:Landroid/net/Uri;
    invoke-virtual {v5}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object v4

    .line 106
    .local v4, packageName:Ljava/lang/String;
    if-nez v4, :cond_0

    .line 107
    const-string v7, "UninstallerActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid package name:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-virtual {p0, v9}, Lcom/android/packageinstaller/UninstallerActivity;->showDialog(I)V

    .line 142
    :goto_0
    return-void

    .line 112
    :cond_0
    invoke-virtual {p0}, Lcom/android/packageinstaller/UninstallerActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    iput-object v7, p0, Lcom/android/packageinstaller/UninstallerActivity;->mPm:Landroid/content/pm/PackageManager;

    .line 113
    const/4 v2, 0x0

    .line 115
    .local v2, errFlag:Z
    :try_start_0
    iget-object v7, p0, Lcom/android/packageinstaller/UninstallerActivity;->mPm:Landroid/content/pm/PackageManager;

    const/16 v8, 0x2000

    invoke-virtual {v7, v4, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iput-object v7, p0, Lcom/android/packageinstaller/UninstallerActivity;->mAppInfo:Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :goto_1
    iget-object v7, p0, Lcom/android/packageinstaller/UninstallerActivity;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v7, :cond_1

    if-eqz v2, :cond_2

    .line 120
    :cond_1
    const-string v7, "UninstallerActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid application:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-virtual {p0, v9}, Lcom/android/packageinstaller/UninstallerActivity;->showDialog(I)V

    goto :goto_0

    .line 116
    :catch_0
    move-exception v7

    move-object v1, v7

    .line 117
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, 0x1

    goto :goto_1

    .line 123
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_2
    invoke-virtual {p0, v9}, Lcom/android/packageinstaller/UninstallerActivity;->requestWindowFeature(I)Z

    .line 125
    const v7, 0x7f030004

    invoke-virtual {p0, v7}, Lcom/android/packageinstaller/UninstallerActivity;->setContentView(I)V

    .line 126
    const v7, 0x7f080010

    invoke-virtual {p0, v7}, Lcom/android/packageinstaller/UninstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 127
    .local v6, question:Landroid/widget/TextView;
    const v7, 0x7f080011

    invoke-virtual {p0, v7}, Lcom/android/packageinstaller/UninstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 128
    .local v0, confirm:Landroid/widget/TextView;
    iget-object v7, p0, Lcom/android/packageinstaller/UninstallerActivity;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v7, v7, 0x80

    if-eqz v7, :cond_3

    .line 129
    const v7, 0x7f05001a

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 130
    const v7, 0x7f05001c

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(I)V

    .line 135
    :goto_2
    iget-object v7, p0, Lcom/android/packageinstaller/UninstallerActivity;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    const/high16 v8, 0x7f08

    invoke-static {p0, v7, v8}, Lcom/android/packageinstaller/PackageUtil;->initSnippetForInstalledApp(Landroid/app/Activity;Landroid/content/pm/ApplicationInfo;I)Landroid/view/View;

    .line 137
    const v7, 0x7f080008

    invoke-virtual {p0, v7}, Lcom/android/packageinstaller/UninstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lcom/android/packageinstaller/UninstallerActivity;->mOk:Landroid/widget/Button;

    .line 138
    const v7, 0x7f080009

    invoke-virtual {p0, v7}, Lcom/android/packageinstaller/UninstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lcom/android/packageinstaller/UninstallerActivity;->mCancel:Landroid/widget/Button;

    .line 139
    iget-object v7, p0, Lcom/android/packageinstaller/UninstallerActivity;->mOk:Landroid/widget/Button;

    invoke-virtual {v7, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    iget-object v7, p0, Lcom/android/packageinstaller/UninstallerActivity;->mCancel:Landroid/widget/Button;

    invoke-virtual {v7, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 132
    :cond_3
    const v7, 0x7f050019

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 133
    const v7, 0x7f05001b

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 8
    .parameter "id"

    .prologue
    const v7, 0x7f050016

    const v6, 0x1080027

    .line 58
    packed-switch p1, :pswitch_data_0

    .line 87
    const/4 v2, 0x0

    :goto_0
    return-object v2

    .line 60
    :pswitch_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f050017

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f050018

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {p0, v7}, Lcom/android/packageinstaller/UninstallerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/packageinstaller/UninstallerActivity$1;

    invoke-direct {v4, p0}, Lcom/android/packageinstaller/UninstallerActivity$1;-><init>(Lcom/android/packageinstaller/UninstallerActivity;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    goto :goto_0

    .line 72
    :pswitch_1
    iget-object v2, p0, Lcom/android/packageinstaller/UninstallerActivity;->mPm:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/android/packageinstaller/UninstallerActivity;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 73
    .local v0, appTitle:Ljava/lang/CharSequence;
    const v2, 0x7f050020

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/android/packageinstaller/UninstallerActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 76
    .local v1, dlgText:Ljava/lang/String;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f05001f

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {p0, v7}, Lcom/android/packageinstaller/UninstallerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/packageinstaller/UninstallerActivity$2;

    invoke-direct {v4, p0}, Lcom/android/packageinstaller/UninstallerActivity$2;-><init>(Lcom/android/packageinstaller/UninstallerActivity;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    goto :goto_0

    .line 58
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
