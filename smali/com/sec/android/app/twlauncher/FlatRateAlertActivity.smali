.class public Lcom/sec/android/app/twlauncher/FlatRateAlertActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "FlatRateAlertActivity.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# static fields
.field protected static ans:I

.field protected static choice:I

.field protected static mCheckBox:Landroid/widget/CheckBox;

.field protected static mRadioGroup:Landroid/widget/RadioGroup;


# instance fields
.field private fRateVal:Z

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private r2:Landroid/widget/RadioButton;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const/4 v0, -0x1

    sput v0, Lcom/sec/android/app/twlauncher/FlatRateAlertActivity;->ans:I

    .line 50
    const/4 v0, -0x2

    sput v0, Lcom/sec/android/app/twlauncher/FlatRateAlertActivity;->choice:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/FlatRateAlertActivity;->fRateVal:Z

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/FlatRateAlertActivity;->r2:Landroid/widget/RadioButton;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/twlauncher/FlatRateAlertActivity;)Landroid/widget/RadioButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/FlatRateAlertActivity;->r2:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/twlauncher/FlatRateAlertActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/FlatRateAlertActivity;->setDataConnectionOff()V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/app/twlauncher/FlatRateAlertActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/FlatRateAlertActivity;->setDataConnectionOn()V

    return-void
.end method

.method private createView()Landroid/view/View;
    .locals 8

    .prologue
    const v7, 0x7f060011

    const/4 v6, 0x0

    .line 78
    const-string v3, "FLatRateAlertActivity"

    const-string v4, "createView  ---------"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/FlatRateAlertActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030009

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 81
    .local v2, view:Landroid/view/View;
    const-string v3, "XEC"

    const-string v4, "ro.csc.sales_code"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 82
    .local v0, isXec:Z
    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    sput-object v3, Lcom/sec/android/app/twlauncher/FlatRateAlertActivity;->mCheckBox:Landroid/widget/CheckBox;

    .line 84
    if-eqz v0, :cond_0

    .line 85
    const v3, 0x7f060012

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioGroup;

    sput-object v3, Lcom/sec/android/app/twlauncher/FlatRateAlertActivity;->mRadioGroup:Landroid/widget/RadioGroup;

    .line 86
    const v3, 0x7f060014

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/FlatRateAlertActivity;->r2:Landroid/widget/RadioButton;

    .line 87
    sget-object v3, Lcom/sec/android/app/twlauncher/FlatRateAlertActivity;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v3, v6}, Landroid/widget/RadioGroup;->setVisibility(I)V

    .line 89
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/FlatRateAlertActivity;->r2:Landroid/widget/RadioButton;

    invoke-virtual {v3}, Landroid/widget/RadioButton;->getId()I

    move-result v3

    sput v3, Lcom/sec/android/app/twlauncher/FlatRateAlertActivity;->ans:I

    .line 90
    sget-object v3, Lcom/sec/android/app/twlauncher/FlatRateAlertActivity;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v3, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 91
    sget-object v3, Lcom/sec/android/app/twlauncher/FlatRateAlertActivity;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 98
    :goto_0
    const v3, 0x7f060015

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 100
    .local v1, okButton:Landroid/widget/Button;
    new-instance v3, Lcom/sec/android/app/twlauncher/FlatRateAlertActivity$1;

    invoke-direct {v3, p0, v0}, Lcom/sec/android/app/twlauncher/FlatRateAlertActivity$1;-><init>(Lcom/sec/android/app/twlauncher/FlatRateAlertActivity;Z)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    return-object v2

    .line 93
    .end local v1           #okButton:Landroid/widget/Button;
    :cond_0
    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    sput-object v3, Lcom/sec/android/app/twlauncher/FlatRateAlertActivity;->mCheckBox:Landroid/widget/CheckBox;

    .line 94
    sget-object v3, Lcom/sec/android/app/twlauncher/FlatRateAlertActivity;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3, v6}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 95
    sget-object v3, Lcom/sec/android/app/twlauncher/FlatRateAlertActivity;->mCheckBox:Landroid/widget/CheckBox;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0
.end method

.method private setDataConnectionOff()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 129
    const-string v1, "FLatRateAlertActivity"

    const-string v2, "showFlatRateOptionDialog onClick item 1"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/FlatRateAlertActivity;->fRateVal:Z

    .line 131
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.NETWORK_MODE_INITIATE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 132
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "state"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 133
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/FlatRateAlertActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 134
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/FlatRateAlertActivity;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v3}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 135
    return-void
.end method

.method private setDataConnectionOn()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 138
    const-string v1, "FLatRateAlertActivity"

    const-string v2, "showFlatRateOptionDialog onClick item 0"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/FlatRateAlertActivity;->fRateVal:Z

    .line 140
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.NETWORK_MODE_INITIATE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 141
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "state"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 142
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/FlatRateAlertActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 143
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/FlatRateAlertActivity;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v3}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 144
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 148
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 2
    .parameter "arg0"
    .parameter "checkedId"

    .prologue
    .line 152
    const-string v0, "FLatRateAlertActivity"

    const-string v1, "onCheckedChanged  ---------"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    sput p2, Lcom/sec/android/app/twlauncher/FlatRateAlertActivity;->choice:I

    .line 154
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const-string v3, "FlatRateAlertActivity"

    .line 61
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    const-string v1, "FlatRateAlertActivity"

    const-string v1, "onCreate ----------------------------"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/FlatRateAlertActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/FlatRateAlertActivity;->mContext:Landroid/content/Context;

    .line 64
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/FlatRateAlertActivity;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/FlatRateAlertActivity;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 66
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/FlatRateAlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 67
    .local v0, p:Lcom/android/internal/app/AlertController$AlertParams;
    const v1, 0x108009b

    iput v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    .line 68
    const v1, 0x7f0a004a

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/FlatRateAlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 70
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mCancelable:Z

    .line 71
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/FlatRateAlertActivity;->createView()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 73
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/FlatRateAlertActivity;->setupAlert()V

    .line 74
    const-string v1, "FlatRateAlertActivity"

    const-string v1, "onCreate Ends----------------------------"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    return-void
.end method
