.class public Lcom/broadcom/bt/app/settings/BluetoothEnableActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "BluetoothEnableActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method

.method private createView()Landroid/view/View;
    .locals 5

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/broadcom/bt/app/settings/BluetoothEnableActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030013

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 78
    .local v1, view:Landroid/view/View;
    const v2, 0x7f0b002a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 79
    .local v0, contentView:Landroid/widget/TextView;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f080522

    invoke-virtual {p0, v3}, Lcom/broadcom/bt/app/settings/BluetoothEnableActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f080523

    invoke-virtual {p0, v3}, Lcom/broadcom/bt/app/settings/BluetoothEnableActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    return-object v1
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 86
    packed-switch p2, :pswitch_data_0

    .line 99
    :goto_0
    return-void

    .line 88
    :pswitch_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 89
    const v0, 0x7f080527

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/app/settings/BluetoothEnableActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 91
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/broadcom/bt/app/settings/BluetoothEnablingActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 92
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/broadcom/bt/app/settings/BluetoothEnableActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 96
    :pswitch_1
    invoke-virtual {p0}, Lcom/broadcom/bt/app/settings/BluetoothEnableActivity;->finish()V

    goto :goto_0

    .line 86
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 62
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 65
    iget-object v0, p0, Lcom/broadcom/bt/app/settings/BluetoothEnableActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 66
    .local v0, p:Lcom/android/internal/app/AlertController$AlertParams;
    const v1, 0x1080027

    iput v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    .line 67
    const v1, 0x7f080521

    invoke-virtual {p0, v1}, Lcom/broadcom/bt/app/settings/BluetoothEnableActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 68
    invoke-direct {p0}, Lcom/broadcom/bt/app/settings/BluetoothEnableActivity;->createView()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 69
    const v1, 0x7f080525

    invoke-virtual {p0, v1}, Lcom/broadcom/bt/app/settings/BluetoothEnableActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 70
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 71
    const v1, 0x7f080524

    invoke-virtual {p0, v1}, Lcom/broadcom/bt/app/settings/BluetoothEnableActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 72
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 73
    invoke-virtual {p0}, Lcom/broadcom/bt/app/settings/BluetoothEnableActivity;->setupAlert()V

    .line 74
    return-void
.end method
