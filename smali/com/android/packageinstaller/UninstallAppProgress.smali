.class public Lcom/android/packageinstaller/UninstallAppProgress;
.super Landroid/app/Activity;
.source "UninstallAppProgress.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/packageinstaller/UninstallAppProgress$PackageDeleteObserver;
    }
.end annotation


# static fields
.field public static final FAILED:I = 0x0

.field public static final SUCCEEDED:I = 0x1


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final UNINSTALL_COMPLETE:I

.field private localLOGV:Z

.field private mAppInfo:Landroid/content/pm/ApplicationInfo;

.field private mHandler:Landroid/os/Handler;

.field private mOkButton:Landroid/widget/Button;

.field private mOkPanel:Landroid/view/View;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private volatile mResultCode:I

.field private mStatusTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 43
    const-string v0, "UninstallAppProgress"

    iput-object v0, p0, Lcom/android/packageinstaller/UninstallAppProgress;->TAG:Ljava/lang/String;

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/packageinstaller/UninstallAppProgress;->localLOGV:Z

    .line 50
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/packageinstaller/UninstallAppProgress;->mResultCode:I

    .line 51
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/packageinstaller/UninstallAppProgress;->UNINSTALL_COMPLETE:I

    .line 54
    new-instance v0, Lcom/android/packageinstaller/UninstallAppProgress$1;

    invoke-direct {v0, p0}, Lcom/android/packageinstaller/UninstallAppProgress$1;-><init>(Lcom/android/packageinstaller/UninstallAppProgress;)V

    iput-object v0, p0, Lcom/android/packageinstaller/UninstallAppProgress;->mHandler:Landroid/os/Handler;

    .line 83
    return-void
.end method

.method static synthetic access$002(Lcom/android/packageinstaller/UninstallAppProgress;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput p1, p0, Lcom/android/packageinstaller/UninstallAppProgress;->mResultCode:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/packageinstaller/UninstallAppProgress;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/packageinstaller/UninstallAppProgress;->mStatusTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/packageinstaller/UninstallAppProgress;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/packageinstaller/UninstallAppProgress;->mProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/packageinstaller/UninstallAppProgress;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/packageinstaller/UninstallAppProgress;->mOkPanel:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/packageinstaller/UninstallAppProgress;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/packageinstaller/UninstallAppProgress;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "ev"

    .prologue
    .line 123
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 124
    iget v0, p0, Lcom/android/packageinstaller/UninstallAppProgress;->mResultCode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 126
    const/4 v0, 0x1

    .line 132
    :goto_0
    return v0

    .line 129
    :cond_0
    iget v0, p0, Lcom/android/packageinstaller/UninstallAppProgress;->mResultCode:I

    invoke-virtual {p0, v0}, Lcom/android/packageinstaller/UninstallAppProgress;->setResult(I)V

    .line 132
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public initView()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 97
    invoke-virtual {p0, v3}, Lcom/android/packageinstaller/UninstallAppProgress;->requestWindowFeature(I)Z

    .line 98
    const v1, 0x7f030005

    invoke-virtual {p0, v1}, Lcom/android/packageinstaller/UninstallAppProgress;->setContentView(I)V

    .line 100
    iget-object v1, p0, Lcom/android/packageinstaller/UninstallAppProgress;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    const/high16 v2, 0x7f08

    invoke-static {p0, v1, v2}, Lcom/android/packageinstaller/PackageUtil;->initSnippetForInstalledApp(Landroid/app/Activity;Landroid/content/pm/ApplicationInfo;I)Landroid/view/View;

    .line 101
    const v1, 0x7f08000b

    invoke-virtual {p0, v1}, Lcom/android/packageinstaller/UninstallAppProgress;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/packageinstaller/UninstallAppProgress;->mStatusTextView:Landroid/widget/TextView;

    .line 102
    iget-object v1, p0, Lcom/android/packageinstaller/UninstallAppProgress;->mStatusTextView:Landroid/widget/TextView;

    const v2, 0x7f05001d

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 103
    const v1, 0x7f08000c

    invoke-virtual {p0, v1}, Lcom/android/packageinstaller/UninstallAppProgress;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/android/packageinstaller/UninstallAppProgress;->mProgressBar:Landroid/widget/ProgressBar;

    .line 104
    iget-object v1, p0, Lcom/android/packageinstaller/UninstallAppProgress;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 106
    const v1, 0x7f080012

    invoke-virtual {p0, v1}, Lcom/android/packageinstaller/UninstallAppProgress;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/packageinstaller/UninstallAppProgress;->mOkPanel:Landroid/view/View;

    .line 107
    const v1, 0x7f080008

    invoke-virtual {p0, v1}, Lcom/android/packageinstaller/UninstallAppProgress;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/packageinstaller/UninstallAppProgress;->mOkButton:Landroid/widget/Button;

    .line 108
    iget-object v1, p0, Lcom/android/packageinstaller/UninstallAppProgress;->mOkButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    iget-object v1, p0, Lcom/android/packageinstaller/UninstallAppProgress;->mOkPanel:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 110
    new-instance v0, Lcom/android/packageinstaller/UninstallAppProgress$PackageDeleteObserver;

    invoke-direct {v0, p0}, Lcom/android/packageinstaller/UninstallAppProgress$PackageDeleteObserver;-><init>(Lcom/android/packageinstaller/UninstallAppProgress;)V

    .line 111
    .local v0, observer:Lcom/android/packageinstaller/UninstallAppProgress$PackageDeleteObserver;
    invoke-virtual {p0}, Lcom/android/packageinstaller/UninstallAppProgress;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/packageinstaller/UninstallAppProgress;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/pm/PackageManager;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V

    .line 112
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/packageinstaller/UninstallAppProgress;->mOkButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 116
    const-string v0, "UninstallAppProgress"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Finished uninstalling pkg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/packageinstaller/UninstallAppProgress;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget v0, p0, Lcom/android/packageinstaller/UninstallAppProgress;->mResultCode:I

    invoke-virtual {p0, v0}, Lcom/android/packageinstaller/UninstallAppProgress;->setResultAndFinish(I)V

    .line 119
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 77
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 78
    invoke-virtual {p0}, Lcom/android/packageinstaller/UninstallAppProgress;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 79
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.packageinstaller.applicationInfo"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    iput-object v1, p0, Lcom/android/packageinstaller/UninstallAppProgress;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    .line 80
    invoke-virtual {p0}, Lcom/android/packageinstaller/UninstallAppProgress;->initView()V

    .line 81
    return-void
.end method

.method setResultAndFinish(I)V
    .locals 0
    .parameter "retCode"

    .prologue
    .line 92
    invoke-virtual {p0, p1}, Lcom/android/packageinstaller/UninstallAppProgress;->setResult(I)V

    .line 93
    invoke-virtual {p0}, Lcom/android/packageinstaller/UninstallAppProgress;->finish()V

    .line 94
    return-void
.end method
