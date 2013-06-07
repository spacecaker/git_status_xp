.class public Lcom/broadcom/bt/app/settings/AirplaneErrorActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "AirplaneErrorActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private mErrorContent:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method

.method private createView()Landroid/view/View;
    .locals 5

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/broadcom/bt/app/settings/AirplaneErrorActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030013

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 75
    .local v1, view:Landroid/view/View;
    const v2, 0x7f0b002a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 76
    .local v0, contentView:Landroid/widget/TextView;
    iget-object v2, p0, Lcom/broadcom/bt/app/settings/AirplaneErrorActivity;->mErrorContent:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    return-object v1
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 81
    .line 85
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 57
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    invoke-virtual {p0}, Lcom/broadcom/bt/app/settings/AirplaneErrorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 60
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "title"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 61
    .local v1, mErrorTitle:Ljava/lang/String;
    const-string v3, "content"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/broadcom/bt/app/settings/AirplaneErrorActivity;->mErrorContent:Ljava/lang/String;

    .line 64
    iget-object v2, p0, Lcom/broadcom/bt/app/settings/AirplaneErrorActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 65
    .local v2, p:Lcom/android/internal/app/AlertController$AlertParams;
    const v3, 0x1080027

    iput v3, v2, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    .line 66
    iput-object v1, v2, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 67
    invoke-direct {p0}, Lcom/broadcom/bt/app/settings/AirplaneErrorActivity;->createView()Landroid/view/View;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 68
    const v3, 0x7f08051e

    invoke-virtual {p0, v3}, Lcom/broadcom/bt/app/settings/AirplaneErrorActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 69
    iput-object p0, v2, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 70
    invoke-virtual {p0}, Lcom/broadcom/bt/app/settings/AirplaneErrorActivity;->setupAlert()V

    .line 71
    return-void
.end method
