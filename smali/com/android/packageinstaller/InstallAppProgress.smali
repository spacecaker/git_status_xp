.class public Lcom/android/packageinstaller/InstallAppProgress;
.super Landroid/app/Activity;
.source "InstallAppProgress.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/packageinstaller/InstallAppProgress$PackageInstallObserver;
    }
.end annotation


# instance fields
.field private final INSTALL_COMPLETE:I

.field private final TAG:Ljava/lang/String;

.field private localLOGV:Z

.field private mAppInfo:Landroid/content/pm/ApplicationInfo;

.field private mDoneButton:Landroid/widget/Button;

.field private mHandler:Landroid/os/Handler;

.field private mLabel:Ljava/lang/CharSequence;

.field private mLaunchButton:Landroid/widget/Button;

.field private mLaunchIntent:Landroid/content/Intent;

.field private mOkPanel:Landroid/view/View;

.field private mPackageURI:Landroid/net/Uri;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mStatusTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 57
    const-string v0, "InstallAppProgress"

    iput-object v0, p0, Lcom/android/packageinstaller/InstallAppProgress;->TAG:Ljava/lang/String;

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/packageinstaller/InstallAppProgress;->localLOGV:Z

    .line 66
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/packageinstaller/InstallAppProgress;->INSTALL_COMPLETE:I

    .line 71
    new-instance v0, Lcom/android/packageinstaller/InstallAppProgress$1;

    invoke-direct {v0, p0}, Lcom/android/packageinstaller/InstallAppProgress$1;-><init>(Lcom/android/packageinstaller/InstallAppProgress;)V

    iput-object v0, p0, Lcom/android/packageinstaller/InstallAppProgress;->mHandler:Landroid/os/Handler;

    .line 173
    return-void
.end method

.method static synthetic access$000(Lcom/android/packageinstaller/InstallAppProgress;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/packageinstaller/InstallAppProgress;->mProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/packageinstaller/InstallAppProgress;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/packageinstaller/InstallAppProgress;->mLaunchButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/packageinstaller/InstallAppProgress;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/packageinstaller/InstallAppProgress;->mLaunchIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/packageinstaller/InstallAppProgress;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/packageinstaller/InstallAppProgress;->mLaunchIntent:Landroid/content/Intent;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/packageinstaller/InstallAppProgress;)Landroid/content/pm/ApplicationInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/packageinstaller/InstallAppProgress;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/packageinstaller/InstallAppProgress;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/android/packageinstaller/InstallAppProgress;->showDialogInner(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/packageinstaller/InstallAppProgress;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/packageinstaller/InstallAppProgress;->mStatusTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/packageinstaller/InstallAppProgress;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/packageinstaller/InstallAppProgress;->mDoneButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/packageinstaller/InstallAppProgress;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/packageinstaller/InstallAppProgress;->mOkPanel:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/packageinstaller/InstallAppProgress;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/packageinstaller/InstallAppProgress;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private showDialogInner(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 169
    invoke-virtual {p0, p1}, Lcom/android/packageinstaller/InstallAppProgress;->removeDialog(I)V

    .line 170
    invoke-virtual {p0, p1}, Lcom/android/packageinstaller/InstallAppProgress;->showDialog(I)V

    .line 171
    return-void
.end method


# virtual methods
.method public initView()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 182
    invoke-virtual {p0, v9}, Lcom/android/packageinstaller/InstallAppProgress;->requestWindowFeature(I)Z

    .line 183
    const v6, 0x7f030003

    invoke-virtual {p0, v6}, Lcom/android/packageinstaller/InstallAppProgress;->setContentView(I)V

    .line 184
    const/4 v1, 0x0

    .line 185
    .local v1, installFlags:I
    invoke-virtual {p0}, Lcom/android/packageinstaller/InstallAppProgress;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 187
    .local v5, pm:Landroid/content/pm/PackageManager;
    :try_start_0
    iget-object v6, p0, Lcom/android/packageinstaller/InstallAppProgress;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v7, 0x2000

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 189
    .local v4, pi:Landroid/content/pm/PackageInfo;
    if-eqz v4, :cond_0

    .line 190
    or-int/lit8 v1, v1, 0x2

    .line 194
    .end local v4           #pi:Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    and-int/lit8 v6, v1, 0x2

    if-eqz v6, :cond_1

    .line 195
    const-string v6, "InstallAppProgress"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Replacing package:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/packageinstaller/InstallAppProgress;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :cond_1
    iget-object v6, p0, Lcom/android/packageinstaller/InstallAppProgress;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, p0, Lcom/android/packageinstaller/InstallAppProgress;->mPackageURI:Landroid/net/Uri;

    invoke-static {p0, v6, v7}, Lcom/android/packageinstaller/PackageUtil;->getAppSnippet(Landroid/app/Activity;Landroid/content/pm/ApplicationInfo;Landroid/net/Uri;)Lcom/android/packageinstaller/PackageUtil$AppSnippet;

    move-result-object v0

    .line 199
    .local v0, as:Lcom/android/packageinstaller/PackageUtil$AppSnippet;
    iget-object v6, v0, Lcom/android/packageinstaller/PackageUtil$AppSnippet;->label:Ljava/lang/CharSequence;

    iput-object v6, p0, Lcom/android/packageinstaller/InstallAppProgress;->mLabel:Ljava/lang/CharSequence;

    .line 200
    const/high16 v6, 0x7f07

    invoke-static {p0, v0, v6}, Lcom/android/packageinstaller/PackageUtil;->initSnippetForNewApp(Landroid/app/Activity;Lcom/android/packageinstaller/PackageUtil$AppSnippet;I)Landroid/view/View;

    .line 201
    const v6, 0x7f07000a

    invoke-virtual {p0, v6}, Lcom/android/packageinstaller/InstallAppProgress;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/packageinstaller/InstallAppProgress;->mStatusTextView:Landroid/widget/TextView;

    .line 202
    iget-object v6, p0, Lcom/android/packageinstaller/InstallAppProgress;->mStatusTextView:Landroid/widget/TextView;

    const v7, 0x7f050006

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 203
    const v6, 0x7f07000b

    invoke-virtual {p0, v6}, Lcom/android/packageinstaller/InstallAppProgress;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ProgressBar;

    iput-object v6, p0, Lcom/android/packageinstaller/InstallAppProgress;->mProgressBar:Landroid/widget/ProgressBar;

    .line 204
    iget-object v6, p0, Lcom/android/packageinstaller/InstallAppProgress;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v6, v9}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 206
    const v6, 0x7f07000c

    invoke-virtual {p0, v6}, Lcom/android/packageinstaller/InstallAppProgress;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/packageinstaller/InstallAppProgress;->mOkPanel:Landroid/view/View;

    .line 207
    const v6, 0x7f07000e

    invoke-virtual {p0, v6}, Lcom/android/packageinstaller/InstallAppProgress;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/android/packageinstaller/InstallAppProgress;->mDoneButton:Landroid/widget/Button;

    .line 208
    const v6, 0x7f07000d

    invoke-virtual {p0, v6}, Lcom/android/packageinstaller/InstallAppProgress;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/android/packageinstaller/InstallAppProgress;->mLaunchButton:Landroid/widget/Button;

    .line 209
    iget-object v6, p0, Lcom/android/packageinstaller/InstallAppProgress;->mOkPanel:Landroid/view/View;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 211
    invoke-virtual {p0}, Lcom/android/packageinstaller/InstallAppProgress;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "android.intent.extra.INSTALLER_PACKAGE_NAME"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 213
    .local v2, installerPackageName:Ljava/lang/String;
    new-instance v3, Lcom/android/packageinstaller/InstallAppProgress$PackageInstallObserver;

    invoke-direct {v3, p0}, Lcom/android/packageinstaller/InstallAppProgress$PackageInstallObserver;-><init>(Lcom/android/packageinstaller/InstallAppProgress;)V

    .line 214
    .local v3, observer:Lcom/android/packageinstaller/InstallAppProgress$PackageInstallObserver;
    iget-object v6, p0, Lcom/android/packageinstaller/InstallAppProgress;->mPackageURI:Landroid/net/Uri;

    invoke-virtual {v5, v6, v3, v1, v2}, Landroid/content/pm/PackageManager;->installPackage(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;)V

    .line 215
    return-void

    .line 192
    .end local v0           #as:Lcom/android/packageinstaller/PackageUtil$AppSnippet;
    .end local v2           #installerPackageName:Ljava/lang/String;
    .end local v3           #observer:Lcom/android/packageinstaller/InstallAppProgress$PackageInstallObserver;
    :catch_0
    move-exception v6

    goto/16 :goto_0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 235
    invoke-virtual {p0}, Lcom/android/packageinstaller/InstallAppProgress;->finish()V

    .line 236
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/packageinstaller/InstallAppProgress;->mDoneButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_2

    .line 224
    iget-object v0, p0, Lcom/android/packageinstaller/InstallAppProgress;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 225
    const-string v0, "InstallAppProgress"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Finished installing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/packageinstaller/InstallAppProgress;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :cond_0
    invoke-virtual {p0}, Lcom/android/packageinstaller/InstallAppProgress;->finish()V

    .line 232
    :cond_1
    :goto_0
    return-void

    .line 228
    :cond_2
    iget-object v0, p0, Lcom/android/packageinstaller/InstallAppProgress;->mLaunchButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    .line 229
    iget-object v0, p0, Lcom/android/packageinstaller/InstallAppProgress;->mLaunchIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/packageinstaller/InstallAppProgress;->startActivity(Landroid/content/Intent;)V

    .line 230
    invoke-virtual {p0}, Lcom/android/packageinstaller/InstallAppProgress;->finish()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 133
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 134
    invoke-virtual {p0}, Lcom/android/packageinstaller/InstallAppProgress;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 135
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.packageinstaller.applicationInfo"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    iput-object v1, p0, Lcom/android/packageinstaller/InstallAppProgress;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    .line 136
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/packageinstaller/InstallAppProgress;->mPackageURI:Landroid/net/Uri;

    .line 137
    invoke-virtual {p0}, Lcom/android/packageinstaller/InstallAppProgress;->initView()V

    .line 138
    return-void
.end method

.method public onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .parameter "id"
    .parameter "bundle"

    .prologue
    .line 142
    packed-switch p1, :pswitch_data_0

    .line 165
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 144
    :pswitch_0
    const v1, 0x7f050015

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/packageinstaller/InstallAppProgress;->mLabel:Ljava/lang/CharSequence;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/packageinstaller/InstallAppProgress;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v0, dlgText:Ljava/lang/String;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f050014

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f050010

    new-instance v3, Lcom/android/packageinstaller/InstallAppProgress$3;

    invoke-direct {v3, p0}, Lcom/android/packageinstaller/InstallAppProgress$3;-><init>(Lcom/android/packageinstaller/InstallAppProgress;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f050004

    new-instance v3, Lcom/android/packageinstaller/InstallAppProgress$2;

    invoke-direct {v3, p0}, Lcom/android/packageinstaller/InstallAppProgress$2;-><init>(Lcom/android/packageinstaller/InstallAppProgress;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_0

    .line 142
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 219
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 220
    return-void
.end method
