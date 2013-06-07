.class public Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;
.super Lcom/android/internal/app/AlertActivity;
.source "BluetoothRequestServiceDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private mActionString:Ljava/lang/String;

.field private mFileName:Ljava/lang/String;

.field private mIntent:Landroid/content/Intent;

.field private mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

.field private mOpCode:B

.field private mRemoteAddress:Ljava/lang/String;

.field private mRemoteName:Ljava/lang/String;

.field private mRequestedServiceDisplayName:Ljava/lang/String;

.field private mRequestedServiceName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method

.method private createView()Landroid/view/View;
    .locals 6

    .prologue
    .line 248
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f03000a

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 250
    .local v1, view:Landroid/view/View;
    const v2, 0x7f0b000d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 251
    .local v0, messageView:Landroid/widget/TextView;
    const v2, 0x7f080500

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->mRemoteName:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->mActionString:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 253
    return-object v1
.end method

.method private loadAccessRequestParams(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->mIntent:Landroid/content/Intent;

    const-string v1, "SVC_NAME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->mRequestedServiceName:Ljava/lang/String;

    .line 95
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->mIntent:Landroid/content/Intent;

    const-string v1, "OPERATION"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getByteExtra(Ljava/lang/String;B)B

    move-result v0

    iput-byte v0, p0, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->mOpCode:B

    .line 97
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->mIntent:Landroid/content/Intent;

    const-string v1, "FILEPATH"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->mFileName:Ljava/lang/String;

    .line 98
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->mIntent:Landroid/content/Intent;

    const-string v1, "RMT_DEV_NAME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->mRemoteName:Ljava/lang/String;

    .line 100
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->mRemoteName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->mIntent:Landroid/content/Intent;

    const-string v1, "RMT_DEV_ADDR"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->mRemoteAddress:Ljava/lang/String;

    .line 103
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->mRemoteAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->mRemoteName:Ljava/lang/String;

    .line 106
    :cond_0
    return-void
.end method

.method private onAllow(Z)V
    .locals 2
    .parameter "allow"

    .prologue
    .line 272
    new-instance v0, Lcom/broadcom/bt/service/framework/BluetoothAccessResponse;

    invoke-direct {v0}, Lcom/broadcom/bt/service/framework/BluetoothAccessResponse;-><init>()V

    .line 273
    .local v0, bluetoothAccessResponse:Lcom/broadcom/bt/service/framework/BluetoothAccessResponse;
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, p0, v1, p1}, Lcom/broadcom/bt/service/framework/BluetoothAccessResponse;->process(Landroid/content/Context;Landroid/content/Intent;Z)V

    .line 275
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->mRequestedServiceName:Ljava/lang/String;

    .line 276
    return-void
.end method

.method private setActionAndServerString()V
    .locals 2

    .prologue
    .line 174
    const-string v0, "bluetooth_ftp"

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->mRequestedServiceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 175
    iget-byte v0, p0, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->mOpCode:B

    packed-switch v0, :pswitch_data_0

    .line 201
    :goto_0
    const v0, 0x7f08050a

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->mRequestedServiceDisplayName:Ljava/lang/String;

    .line 238
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->mActionString:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 239
    const v0, 0x7f080501

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->mActionString:Ljava/lang/String;

    .line 241
    :cond_1
    return-void

    .line 177
    :pswitch_0
    const v0, 0x7f08050b

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->mActionString:Ljava/lang/String;

    goto :goto_0

    .line 181
    :pswitch_1
    const v0, 0x7f08050c

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->mActionString:Ljava/lang/String;

    goto :goto_0

    .line 185
    :pswitch_2
    const v0, 0x7f08050d

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->mActionString:Ljava/lang/String;

    goto :goto_0

    .line 189
    :pswitch_3
    const v0, 0x7f08050e

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->mActionString:Ljava/lang/String;

    goto :goto_0

    .line 193
    :pswitch_4
    const v0, 0x7f08050f

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->mActionString:Ljava/lang/String;

    goto :goto_0

    .line 197
    :pswitch_5
    const v0, 0x7f080510

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->mActionString:Ljava/lang/String;

    goto :goto_0

    .line 202
    :cond_2
    const-string v0, "bluetooth_pbap"

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->mRequestedServiceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 204
    iget-byte v0, p0, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->mOpCode:B

    packed-switch v0, :pswitch_data_1

    .line 223
    :goto_2
    const v0, 0x7f080511

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->mRequestedServiceDisplayName:Ljava/lang/String;

    goto :goto_1

    .line 206
    :pswitch_6
    const v0, 0x7f080512

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->mActionString:Ljava/lang/String;

    goto :goto_2

    .line 210
    :pswitch_7
    const v0, 0x7f080513

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->mActionString:Ljava/lang/String;

    goto :goto_2

    .line 214
    :pswitch_8
    const v0, 0x7f080514

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->mActionString:Ljava/lang/String;

    goto :goto_2

    .line 218
    :pswitch_9
    const v0, 0x7f080515

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->mActionString:Ljava/lang/String;

    goto :goto_2

    .line 225
    :cond_3
    const-string v0, "bluetooth_opp_service"

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->mRequestedServiceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    iget-byte v0, p0, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->mOpCode:B

    packed-switch v0, :pswitch_data_2

    .line 235
    :goto_3
    const v0, 0x7f080518

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->mRequestedServiceDisplayName:Ljava/lang/String;

    goto/16 :goto_1

    .line 229
    :pswitch_a
    const v0, 0x7f080519

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->mActionString:Ljava/lang/String;

    goto :goto_3

    .line 232
    :pswitch_b
    const v0, 0x7f08051a

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->mActionString:Ljava/lang/String;

    goto :goto_3

    .line 175
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 204
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch

    .line 227
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
    .end packed-switch
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 282
    packed-switch p2, :pswitch_data_0

    .line 291
    :goto_0
    return-void

    .line 284
    :pswitch_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->onAllow(Z)V

    goto :goto_0

    .line 288
    :pswitch_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->onAllow(Z)V

    goto :goto_0

    .line 282
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 110
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 115
    invoke-static {}, Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;->isAccessRequestEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 117
    new-instance v0, Lcom/broadcom/bt/service/framework/BluetoothAccessResponse;

    invoke-direct {v0}, Lcom/broadcom/bt/service/framework/BluetoothAccessResponse;-><init>()V

    .line 118
    .local v0, bluetoothAccessResponse:Lcom/broadcom/bt/service/framework/BluetoothAccessResponse;
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, p0, v2, v3}, Lcom/broadcom/bt/service/framework/BluetoothAccessResponse;->process(Landroid/content/Context;Landroid/content/Intent;Z)V

    .line 119
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->finish()V

    .line 153
    .end local v0           #bluetoothAccessResponse:Lcom/broadcom/bt/service/framework/BluetoothAccessResponse;
    :goto_0
    return-void

    .line 123
    :cond_0
    invoke-static {p0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    .line 124
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->getIntent()Landroid/content/Intent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->mIntent:Landroid/content/Intent;

    .line 126
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 127
    .local v1, p:Lcom/android/internal/app/AlertController$AlertParams;
    const v2, 0x10801d8

    iput v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    .line 129
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->mIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "broadcom.android.bluetooth.intent.action.BT_SERVICE_ACCESS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 135
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->mIntent:Landroid/content/Intent;

    invoke-direct {p0, v2}, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->loadAccessRequestParams(Landroid/content/Intent;)V

    .line 136
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->setActionAndServerString()V

    .line 141
    const v2, 0x7f0804ff

    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 147
    :goto_1
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->createView()Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 148
    const v2, 0x7f080506

    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 149
    iput-object p0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 150
    const v2, 0x7f080507

    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 151
    iput-object p0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    goto :goto_0

    .line 144
    :cond_1
    const-string v2, "BluetoothRequestServiceDialog"

    const-string v3, "Unknown Intent "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 157
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onResume()V

    .line 159
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->setupAlert()V

    .line 160
    return-void
.end method
