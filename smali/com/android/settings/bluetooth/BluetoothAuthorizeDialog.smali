.class public Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;
.super Lcom/android/internal/app/AlertActivity;
.source "BluetoothAuthorizeDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog$1;,
        Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog$ListenForPairingCancel;
    }
.end annotation


# static fields
.field private static isScreenOn:Z

.field private static mContext:Landroid/content/Context;

.field private static pm:Landroid/os/PowerManager;

.field private static wl:Landroid/os/PowerManager$WakeLock;


# instance fields
.field private mBrcvr:Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog$ListenForPairingCancel;

.field private mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mIntFltr:Landroid/content/IntentFilter;

.field private mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

.field private mService:Ljava/lang/String;

.field private mTemporaryKey:Z

.field private name:Ljava/lang/String;

.field private svc:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->isScreenOn:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mTemporaryKey:Z

    .line 274
    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->onDecline()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->quitActivity()V

    return-void
.end method

.method private createView(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;
    .locals 9
    .parameter "deviceName"
    .parameter "svc"

    .prologue
    .line 159
    const-string v6, "BluetoothAuthorizeDialog"

    const-string v7, "createView"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f030004

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 163
    .local v5, view:Landroid/view/View;
    const v6, 0x7f0b000d

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 164
    .local v2, messageView1:Landroid/widget/TextView;
    const v6, 0x7f0804f2

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    const/4 v8, 0x1

    aput-object p2, v7, v8

    invoke-virtual {p0, v6, v7}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    iget-object v6, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const/16 v6, 0xc

    iget-object v7, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v7

    if-eq v6, v7, :cond_0

    .line 168
    const v6, 0x7f0b000e

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 169
    .local v0, cb1:Landroid/widget/CheckBox;
    const/16 v6, 0x8

    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 170
    const v6, 0x7f0b000f

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 171
    .local v3, messageView2:Landroid/widget/TextView;
    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 182
    .end local v0           #cb1:Landroid/widget/CheckBox;
    .end local v3           #messageView2:Landroid/widget/TextView;
    :cond_0
    iget-boolean v6, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mTemporaryKey:Z

    if-eqz v6, :cond_1

    .line 184
    const v6, 0x7f0b000e

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 185
    .local v1, checkbox:Landroid/widget/CheckBox;
    const v6, 0x7f0b000f

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 187
    .local v4, textview:Landroid/widget/TextView;
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 188
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 191
    .end local v1           #checkbox:Landroid/widget/CheckBox;
    .end local v4           #textview:Landroid/widget/TextView;
    :cond_1
    const-string v6, "BluetoothAuthorizeDialog"

    const-string v7, "createView 2"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    return-object v5
.end method

.method private isAutoReply()Z
    .locals 5

    .prologue
    .line 199
    iget-boolean v2, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mTemporaryKey:Z

    if-eqz v2, :cond_0

    .line 200
    const/4 v2, 0x0

    .line 205
    :goto_0
    return v2

    .line 202
    :cond_0
    const v2, 0x7f0b000e

    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 203
    .local v0, checkbox:Landroid/widget/CheckBox;
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    .line 204
    .local v1, isChecked:Z
    const-string v2, "BluetoothAuthorizeDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isChecked ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 205
    goto :goto_0
.end method

.method private onAuthorize()V
    .locals 4

    .prologue
    .line 209
    const-string v0, "BluetoothAuthorizeDialog"

    const-string v1, "onAuthorize"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mService:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->isAutoReply()Z

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothDevice;->authorizeService(Ljava/lang/String;ZZ)Z

    .line 212
    return-void
.end method

.method private onDecline()V
    .locals 4

    .prologue
    .line 227
    const-string v0, "BluetoothAuthorizeDialog"

    const-string v1, "onDecline"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mService:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->isAutoReply()Z

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothDevice;->authorizeService(Ljava/lang/String;ZZ)Z

    .line 230
    return-void
.end method

.method private quitActivity()V
    .locals 1

    .prologue
    .line 265
    sget-object v0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    sget-object v0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 271
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->finish()V

    .line 272
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 233
    const-string v0, "BluetoothAuthorizeDialog"

    const-string v1, "onClick"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    packed-switch p2, :pswitch_data_0

    .line 255
    :goto_0
    return-void

    .line 236
    :pswitch_0
    sget-object v0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    sget-object v0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 242
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->onAuthorize()V

    goto :goto_0

    .line 246
    :pswitch_1
    sget-object v0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 247
    sget-object v0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 252
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->onDecline()V

    goto :goto_0

    .line 234
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x0

    const v6, 0x7f0804f8

    const-string v5, "BluetoothAuthorizeDialog"

    .line 74
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 76
    const-string v2, "BluetoothAuthorizeDialog"

    const-string v2, "onCreate"

    invoke-static {v5, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 79
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "broadcom.android.bluetooth.intent.action.AUTHORIZE_REQUEST"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 81
    const-string v2, "BluetoothAuthorizeDialog"

    const-string v2, "Error: this activity may be started only with intent broadcom.android.bluetooth.intent.action.AUTHORIZE_REQUEST"

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->finish()V

    .line 86
    :cond_0
    new-instance v2, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog$ListenForPairingCancel;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog$ListenForPairingCancel;-><init>(Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog$1;)V

    iput-object v2, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mBrcvr:Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog$ListenForPairingCancel;

    .line 87
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    iput-object v2, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mIntFltr:Landroid/content/IntentFilter;

    .line 88
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mIntFltr:Landroid/content/IntentFilter;

    const-string v3, "broadcom.android.bluetooth.intent.action.AUTHORIZE_CANCEL"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 91
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mIntFltr:Landroid/content/IntentFilter;

    const-string v3, "broadcom.android.bluetooth.intent.action.AGENT_CANCEL_USER"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 94
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mIntFltr:Landroid/content/IntentFilter;

    const-string v3, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mBrcvr:Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog$ListenForPairingCancel;

    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mIntFltr:Landroid/content/IntentFilter;

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 99
    invoke-static {p0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    .line 100
    const-string v2, "broadcom.android.bluetooth.intent.DEVICE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    iput-object v2, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 101
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v2}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v3}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->getName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->name:Ljava/lang/String;

    .line 102
    const-string v2, "broadcom.android.bluetooth.intent.SERVICE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mService:Ljava/lang/String;

    .line 104
    const-string v2, "broadcom.android.bluetooth.intent.TEMPORARY_KEY"

    invoke-virtual {v0, v2, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mTemporaryKey:Z

    .line 105
    const-string v2, "BluetoothAuthorizeDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mTemporaryKey: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mTemporaryKey:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v2}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getContext()Landroid/content/Context;

    move-result-object v2

    sput-object v2, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mContext:Landroid/content/Context;

    .line 108
    sget-object v2, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mContext:Landroid/content/Context;

    const-string v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    sput-object v2, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->pm:Landroid/os/PowerManager;

    .line 109
    sget-object v2, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->pm:Landroid/os/PowerManager;

    const v3, 0x3000000a

    const-string v4, "BluetoothAuthorizeDialog"

    invoke-virtual {v2, v3, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    sput-object v2, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->wl:Landroid/os/PowerManager$WakeLock;

    .line 113
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mService:Ljava/lang/String;

    const-string v3, "service_pbap"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 114
    const v2, 0x7f0804f3

    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->svc:Ljava/lang/String;

    .line 134
    :goto_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 135
    .local v1, p:Lcom/android/internal/app/AlertController$AlertParams;
    const v2, 0x10801d8

    iput v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    .line 138
    const v2, 0x7f0804f1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->name:Ljava/lang/String;

    aput-object v4, v3, v7

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 140
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->name:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->svc:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->createView(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 142
    const v2, 0x7f080506

    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 143
    iput-object p0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 144
    const v2, 0x7f080507

    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 145
    iput-object p0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 147
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->setupAlert()V

    .line 148
    sget-object v2, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->pm:Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v2

    sput-boolean v2, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->isScreenOn:Z

    .line 149
    sget-boolean v2, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->isScreenOn:Z

    if-nez v2, :cond_1

    .line 150
    sget-object v2, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 155
    :cond_1
    const-string v2, "BluetoothAuthorizeDialog"

    const-string v2, "onCreate 2"

    invoke-static {v5, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    return-void

    .line 115
    .end local v1           #p:Lcom/android/internal/app/AlertController$AlertParams;
    :cond_2
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mService:Ljava/lang/String;

    const-string v3, "service_opp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 116
    const v2, 0x7f0804f4

    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->svc:Ljava/lang/String;

    goto :goto_0

    .line 117
    :cond_3
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mService:Ljava/lang/String;

    const-string v3, "service_ftp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 118
    const v2, 0x7f0804f5

    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->svc:Ljava/lang/String;

    goto :goto_0

    .line 119
    :cond_4
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mService:Ljava/lang/String;

    const-string v3, "service_dun"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 120
    const v2, 0x7f0804f7

    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->svc:Ljava/lang/String;

    goto/16 :goto_0

    .line 121
    :cond_5
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mService:Ljava/lang/String;

    const-string v3, "service_spp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 122
    const v2, 0x7f0804f6

    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->svc:Ljava/lang/String;

    goto/16 :goto_0

    .line 123
    :cond_6
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mService:Ljava/lang/String;

    const-string v3, "service_map"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 124
    invoke-virtual {p0, v6}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->svc:Ljava/lang/String;

    goto/16 :goto_0

    .line 125
    :cond_7
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mService:Ljava/lang/String;

    const-string v3, "service_mse"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 126
    invoke-virtual {p0, v6}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->svc:Ljava/lang/String;

    goto/16 :goto_0

    .line 127
    :cond_8
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mService:Ljava/lang/String;

    const-string v3, "service_mns"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 128
    invoke-virtual {p0, v6}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->svc:Ljava/lang/String;

    goto/16 :goto_0

    .line 130
    :cond_9
    const v2, 0x7f0804f9

    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->svc:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 258
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mBrcvr:Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog$ListenForPairingCancel;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 259
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    .line 260
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 217
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 218
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mService:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->isAutoReply()Z

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothDevice;->authorizeService(Ljava/lang/String;ZZ)Z

    .line 220
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->quitActivity()V

    .line 222
    :cond_1
    const/4 v0, 0x1

    return v0
.end method
