.class public Lcom/iLoong/launcher/excpetion/ActErrorReport;
.super Landroid/app/Activity;


# instance fields
.field private a:Lcom/iLoong/launcher/desktop/iLoongApplication;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Landroid/widget/Button;

.field private e:Landroid/widget/Button;

.field private f:Lcom/iLoong/launcher/excpetion/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/iLoong/launcher/excpetion/ActErrorReport;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/excpetion/ActErrorReport;->d:Landroid/widget/Button;

    return-object v0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v4, 0x1

    const-string v0, ""

    const-string v0, ""

    const-string v1, "uehandler"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, " when the app running"

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/iLoong/launcher/excpetion/ActErrorReport;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c005b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v1, "error.log"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, " when last time the app running"

    goto :goto_0
.end method

.method static synthetic b(Lcom/iLoong/launcher/excpetion/ActErrorReport;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/excpetion/ActErrorReport;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/iLoong/launcher/excpetion/ActErrorReport;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/excpetion/ActErrorReport;->e:Landroid/widget/Button;

    return-object v0
.end method


# virtual methods
.method public finish()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->finish()V

    const-string v0, "error.log"

    iget-object v1, p0, Lcom/iLoong/launcher/excpetion/ActErrorReport;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "uehandler"

    iget-object v1, p0, Lcom/iLoong/launcher/excpetion/ActErrorReport;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/excpetion/ActErrorReport;->a:Lcom/iLoong/launcher/desktop/iLoongApplication;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/desktop/iLoongApplication;->a(Z)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030012

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/excpetion/ActErrorReport;->setContentView(I)V

    invoke-virtual {p0}, Lcom/iLoong/launcher/excpetion/ActErrorReport;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/desktop/iLoongApplication;

    iput-object v0, p0, Lcom/iLoong/launcher/excpetion/ActErrorReport;->a:Lcom/iLoong/launcher/desktop/iLoongApplication;

    invoke-virtual {p0}, Lcom/iLoong/launcher/excpetion/ActErrorReport;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "by"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iLoong/launcher/excpetion/ActErrorReport;->c:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/iLoong/launcher/excpetion/ActErrorReport;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "error"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iLoong/launcher/excpetion/ActErrorReport;->b:Ljava/lang/String;

    const v0, 0x7f08001f

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/excpetion/ActErrorReport;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/iLoong/launcher/excpetion/ActErrorReport;->c:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/iLoong/launcher/excpetion/ActErrorReport;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f080020

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/excpetion/ActErrorReport;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iget-object v1, p0, Lcom/iLoong/launcher/excpetion/ActErrorReport;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/iLoong/launcher/excpetion/a;

    invoke-direct {v0, p0}, Lcom/iLoong/launcher/excpetion/a;-><init>(Lcom/iLoong/launcher/excpetion/ActErrorReport;)V

    iput-object v0, p0, Lcom/iLoong/launcher/excpetion/ActErrorReport;->f:Lcom/iLoong/launcher/excpetion/a;

    const v0, 0x7f080021

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/excpetion/ActErrorReport;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/iLoong/launcher/excpetion/ActErrorReport;->d:Landroid/widget/Button;

    const v0, 0x7f080022

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/excpetion/ActErrorReport;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/iLoong/launcher/excpetion/ActErrorReport;->e:Landroid/widget/Button;

    iget-object v0, p0, Lcom/iLoong/launcher/excpetion/ActErrorReport;->d:Landroid/widget/Button;

    iget-object v1, p0, Lcom/iLoong/launcher/excpetion/ActErrorReport;->f:Lcom/iLoong/launcher/excpetion/a;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/iLoong/launcher/excpetion/ActErrorReport;->e:Landroid/widget/Button;

    iget-object v1, p0, Lcom/iLoong/launcher/excpetion/ActErrorReport;->f:Lcom/iLoong/launcher/excpetion/a;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onStart()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    iget-object v0, p0, Lcom/iLoong/launcher/excpetion/ActErrorReport;->a:Lcom/iLoong/launcher/desktop/iLoongApplication;

    invoke-virtual {v0}, Lcom/iLoong/launcher/desktop/iLoongApplication;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ANDROID_LAB"

    const-string v1, "ActErrorReport.finish()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/iLoong/launcher/excpetion/ActErrorReport;->finish()V

    :cond_0
    return-void
.end method
