.class public Lcom/android/settings/bluetooth/BluetoothPairingDialog;
.super Lcom/android/internal/app/AlertActivity;
.source "BluetoothPairingDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/text/TextWatcher;


# static fields
.field private static isScreenOn:Z

.field private static mContext:Landroid/content/Context;

.field private static pm:Landroid/os/PowerManager;

.field private static wl:Landroid/os/PowerManager$WakeLock;


# instance fields
.field private final BLUETOOTH_PASSKEY_MAX_LENGTH:I

.field private final BLUETOOTH_PIN_MAX_LENGTH:I

.field private final PAIR_SOUND_PATH:Ljava/lang/String;

.field private mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

.field private mOkButton:Landroid/widget/Button;

.field private mPairingView:Landroid/widget/EditText;

.field private mPasskey:Ljava/lang/String;

.field private mPopupSoundId:I

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSoundPool:Landroid/media/SoundPool;

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->isScreenOn:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 63
    const/16 v0, 0x10

    iput v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->BLUETOOTH_PIN_MAX_LENGTH:I

    .line 64
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->BLUETOOTH_PASSKEY_MAX_LENGTH:I

    .line 81
    const-string v0, "/media/audio/notifications/05_Dont_Panic.ogg"

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->PAIR_SOUND_PATH:Ljava/lang/String;

    .line 84
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothPairingDialog$1;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog$1;-><init>(Lcom/android/settings/bluetooth/BluetoothPairingDialog;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/bluetooth/BluetoothPairingDialog;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->dismissDialog()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/bluetooth/BluetoothPairingDialog;)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/bluetooth/BluetoothPairingDialog;)Lcom/android/settings/bluetooth/LocalBluetoothManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/bluetooth/BluetoothPairingDialog;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mPopupSoundId:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/settings/bluetooth/BluetoothPairingDialog;)Landroid/media/SoundPool;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mSoundPool:Landroid/media/SoundPool;

    return-object v0
.end method

.method private createConfirmationDialog()V
    .locals 2

    .prologue
    .line 328
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 329
    .local v0, p:Lcom/android/internal/app/AlertController$AlertParams;
    const v1, 0x108009b

    iput v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    .line 330
    const v1, 0x7f08010e

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 331
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->createView()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 332
    const v1, 0x7f080115

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 333
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 334
    const v1, 0x7f080116

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 335
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 336
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->setupAlert()V

    .line 338
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->soundPlay()V

    .line 339
    return-void
.end method

.method private createConsentDialog()V
    .locals 2

    .prologue
    .line 342
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 343
    .local v0, p:Lcom/android/internal/app/AlertController$AlertParams;
    const v1, 0x108009b

    iput v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    .line 344
    const v1, 0x7f08010e

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 345
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->createView()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 346
    const v1, 0x7f080115

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 347
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 348
    const v1, 0x7f080116

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 349
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 350
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->setupAlert()V

    .line 352
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->soundPlay()V

    .line 353
    return-void
.end method

.method private createDisplayPasskeyDialog()V
    .locals 3

    .prologue
    .line 356
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 357
    .local v0, p:Lcom/android/internal/app/AlertController$AlertParams;
    const v1, 0x108009b

    iput v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    .line 358
    const v1, 0x7f08010e

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 359
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->createView()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 360
    const v1, 0x104000a

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 361
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 362
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->setupAlert()V

    .line 364
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->soundPlay()V

    .line 367
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothDevice;->setPairingConfirmation(Z)Z

    .line 368
    return-void
.end method

.method private createUserEntryDialog()V
    .locals 3

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 224
    .local v0, p:Lcom/android/internal/app/AlertController$AlertParams;
    const v1, 0x108009b

    iput v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    .line 225
    const v1, 0x7f08010e

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 226
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->createView()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 227
    const v1, 0x104000a

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 228
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 229
    const/high16 v1, 0x104

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 230
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 231
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->setupAlert()V

    .line 234
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->soundPlay()V

    .line 236
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mAlert:Lcom/android/internal/app/AlertController;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mOkButton:Landroid/widget/Button;

    .line 242
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v1}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->isDeviceKeyboard(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 244
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mOkButton:Landroid/widget/Button;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 249
    :goto_0
    return-void

    .line 246
    :cond_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mOkButton:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method private createView()Landroid/view/View;
    .locals 13

    .prologue
    .line 252
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f030009

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 254
    .local v5, view:Landroid/view/View;
    iget-object v6, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v6}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v6, v7}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->getName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v1

    .line 255
    .local v1, name:Ljava/lang/String;
    const v6, 0x7f0b0010

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 256
    .local v0, messageView:Landroid/widget/TextView;
    const v6, 0x7f0b0017

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mPairingView:Landroid/widget/EditText;

    .line 257
    iget-object v6, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mPairingView:Landroid/widget/EditText;

    invoke-virtual {v6, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 259
    iget v6, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mType:I

    if-nez v6, :cond_2

    .line 268
    iget-object v6, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v6}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->isDeviceKeyboard(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 274
    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    .line 275
    .local v4, random:Ljava/util/Random;
    const-string v6, "%06d"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v4}, Ljava/util/Random;->nextLong()J

    move-result-wide v9

    const-wide/32 v11, 0xf4240

    rem-long/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(J)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 276
    .local v2, pin:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mPairingView:Landroid/widget/EditText;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setVisibility(I)V

    .line 277
    const v6, 0x7f080586

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    const/4 v8, 0x1

    aput-object v2, v7, v8

    invoke-virtual {p0, v6, v7}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 278
    invoke-static {v2}, Landroid/bluetooth/BluetoothDevice;->convertPinToBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 279
    .local v3, pinBytes:[B
    if-eqz v3, :cond_0

    .line 280
    iget-object v6, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v6, v3}, Landroid/bluetooth/BluetoothDevice;->setPin([B)Z

    .line 324
    .end local v2           #pin:Ljava/lang/String;
    .end local v3           #pinBytes:[B
    .end local v4           #random:Ljava/util/Random;
    :cond_0
    :goto_0
    return-object v5

    .line 282
    :cond_1
    const v6, 0x7f080110

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    invoke-virtual {p0, v6, v7}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 284
    iget-object v6, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mPairingView:Landroid/widget/EditText;

    const/4 v7, 0x1

    new-array v7, v7, [Landroid/text/InputFilter;

    const/4 v8, 0x0

    new-instance v9, Landroid/text/InputFilter$LengthFilter;

    const/16 v10, 0x10

    invoke-direct {v9, v10}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v9, v7, v8

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_0

    .line 289
    :cond_2
    iget v6, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mType:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3

    .line 290
    const v6, 0x7f080111

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    invoke-virtual {p0, v6, v7}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 292
    iget-object v6, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mPairingView:Landroid/widget/EditText;

    const/16 v7, 0x1002

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setInputType(I)V

    .line 294
    iget-object v6, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mPairingView:Landroid/widget/EditText;

    const/4 v7, 0x1

    new-array v7, v7, [Landroid/text/InputFilter;

    const/4 v8, 0x0

    new-instance v9, Landroid/text/InputFilter$LengthFilter;

    const/4 v10, 0x6

    invoke-direct {v9, v10}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v9, v7, v8

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_0

    .line 296
    :cond_3
    iget v6, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mType:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_5

    .line 297
    iget-object v6, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mPairingView:Landroid/widget/EditText;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setVisibility(I)V

    .line 304
    iget-object v6, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mPasskey:Ljava/lang/String;

    const-string v7, "Just Works"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 305
    const v6, 0x7f0804fe

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    invoke-virtual {p0, v6, v7}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 307
    :cond_4
    const v6, 0x7f080112

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mPasskey:Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-virtual {p0, v6, v7}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 312
    :cond_5
    iget v6, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mType:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_6

    .line 313
    iget-object v6, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mPairingView:Landroid/widget/EditText;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setVisibility(I)V

    .line 314
    const v6, 0x7f080113

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    invoke-virtual {p0, v6, v7}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 315
    :cond_6
    iget v6, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mType:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_7

    .line 316
    iget-object v6, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mPairingView:Landroid/widget/EditText;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setVisibility(I)V

    .line 317
    const v6, 0x7f080114

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mPasskey:Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-virtual {p0, v6, v7}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 318
    :cond_7
    iget v6, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mType:I

    const/4 v7, 0x5

    if-ne v6, v7, :cond_8

    .line 319
    iget-object v6, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mPairingView:Landroid/widget/EditText;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setVisibility(I)V

    .line 320
    const v6, 0x7f080113

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    invoke-virtual {p0, v6, v7}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 322
    :cond_8
    const-string v6, "BluetoothPairingDialog"

    const-string v7, "Incorrect pairing type received, not creating view"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private dismissDialog()V
    .locals 1

    .prologue
    .line 402
    sget-object v0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 403
    sget-object v0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 409
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->dismiss()V

    .line 410
    return-void
.end method

.method static isDeviceKeyboard(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4
    .parameter "device"

    .prologue
    const/4 v3, 0x0

    .line 373
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    move v2, v3

    .line 378
    :goto_0
    return v2

    .line 375
    :cond_1
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v0

    .line 376
    .local v0, deviceClass:I
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v1

    .line 378
    .local v1, majorDeviceClass:I
    const/16 v2, 0x500

    if-ne v1, v2, :cond_3

    const/16 v2, 0x540

    if-eq v0, v2, :cond_2

    const/16 v2, 0x5c0

    if-ne v0, v2, :cond_3

    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    move v2, v3

    goto :goto_0
.end method

.method private onCancel()V
    .locals 1

    .prologue
    .line 436
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->cancelPairingUserInput()Z

    .line 437
    return-void
.end method

.method private onPair(Ljava/lang/String;)V
    .locals 5
    .parameter "value"

    .prologue
    const/4 v4, 0x1

    .line 413
    iget v2, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mType:I

    if-nez v2, :cond_2

    .line 414
    invoke-static {p1}, Landroid/bluetooth/BluetoothDevice;->convertPinToBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 415
    .local v1, pinBytes:[B
    if-nez v1, :cond_1

    .line 433
    .end local v1           #pinBytes:[B
    :cond_0
    :goto_0
    return-void

    .line 418
    .restart local v1       #pinBytes:[B
    :cond_1
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v1}, Landroid/bluetooth/BluetoothDevice;->setPin([B)Z

    goto :goto_0

    .line 419
    .end local v1           #pinBytes:[B
    :cond_2
    iget v2, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mType:I

    if-ne v2, v4, :cond_3

    .line 420
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 421
    .local v0, passkey:I
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothDevice;->setPasskey(I)Z

    goto :goto_0

    .line 422
    .end local v0           #passkey:I
    :cond_3
    iget v2, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 423
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v4}, Landroid/bluetooth/BluetoothDevice;->setPairingConfirmation(Z)Z

    goto :goto_0

    .line 424
    :cond_4
    iget v2, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mType:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_5

    .line 425
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v4}, Landroid/bluetooth/BluetoothDevice;->setPairingConfirmation(Z)Z

    goto :goto_0

    .line 426
    :cond_5
    iget v2, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mType:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    .line 428
    iget v2, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mType:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_6

    .line 429
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->setRemoteOutOfBandData()Z

    goto :goto_0

    .line 431
    :cond_6
    const-string v2, "BluetoothPairingDialog"

    const-string v3, "Incorrect pairing type received"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private soundPlay()V
    .locals 4

    .prologue
    .line 482
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mSoundPool:Landroid/media/SoundPool;

    new-instance v2, Lcom/android/settings/bluetooth/BluetoothPairingDialog$2;

    invoke-direct {v2, p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog$2;-><init>(Lcom/android/settings/bluetooth/BluetoothPairingDialog;)V

    invoke-virtual {v1, v2}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 494
    :goto_0
    return-void

    .line 490
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 492
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "BluetoothPairingDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "soundPlay Error->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 395
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 396
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mOkButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 398
    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 469
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 440
    packed-switch p2, :pswitch_data_0

    .line 465
    :goto_0
    return-void

    .line 443
    :pswitch_0
    sget-object v0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 444
    sget-object v0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 450
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mPairingView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->onPair(Ljava/lang/String;)V

    goto :goto_0

    .line 455
    :pswitch_1
    sget-object v0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 456
    sget-object v0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 462
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->onCancel()V

    goto :goto_0

    .line 440
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "savedInstanceState"

    .prologue
    const/4 v11, 0x5

    const/4 v10, 0x0

    const/4 v8, 0x1

    const/high16 v7, -0x8000

    const-string v9, "BluetoothPairingDialog"

    .line 125
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 127
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 128
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, action:Ljava/lang/String;
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.bluetooth.device.action.PAIRING_REQUEST"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 131
    const-string v4, "BluetoothPairingDialog"

    const-string v4, "Error: this activity may be started only with intent android.bluetooth.device.action.PAIRING_REQUEST"

    invoke-static {v9, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->finish()V

    .line 137
    :cond_0
    invoke-static {p0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    .line 138
    const-string v4, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    iput-object v4, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 141
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4, v5}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 142
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "broadcom.android.bluetooth.intent.action.AGENT_CANCEL_USER"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4, v5}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 143
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4, v5}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 147
    new-instance v4, Landroid/media/SoundPool;

    invoke-direct {v4, v8, v11, v10}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v4, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mSoundPool:Landroid/media/SoundPool;

    .line 148
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/media/audio/notifications/05_Dont_Panic.ogg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 149
    .local v1, filePath:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v4, v1, v8}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mPopupSoundId:I

    .line 152
    const-string v4, "android.bluetooth.device.extra.PAIRING_VARIANT"

    invoke-virtual {v2, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mType:I

    .line 155
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v4}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getContext()Landroid/content/Context;

    move-result-object v4

    sput-object v4, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mContext:Landroid/content/Context;

    .line 156
    sget-object v4, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mContext:Landroid/content/Context;

    const-string v5, "power"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    sput-object v4, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->pm:Landroid/os/PowerManager;

    .line 157
    sget-object v4, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->pm:Landroid/os/PowerManager;

    const v5, 0x3000000a

    const-string v6, "BluetoothPairingDialog"

    invoke-virtual {v4, v5, v9}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    sput-object v4, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->wl:Landroid/os/PowerManager$WakeLock;

    .line 163
    iget v4, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mType:I

    if-nez v4, :cond_2

    .line 164
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->createUserEntryDialog()V

    .line 204
    :goto_0
    sget-object v4, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->pm:Landroid/os/PowerManager;

    invoke-virtual {v4}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v4

    sput-boolean v4, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->isScreenOn:Z

    .line 205
    sget-boolean v4, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->isScreenOn:Z

    if-nez v4, :cond_1

    .line 206
    sget-object v4, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 220
    :cond_1
    :goto_1
    return-void

    .line 165
    :cond_2
    iget v4, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mType:I

    if-ne v4, v8, :cond_3

    .line 166
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->createUserEntryDialog()V

    goto :goto_0

    .line 167
    :cond_3
    iget v4, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mType:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_5

    .line 168
    const-string v4, "android.bluetooth.device.extra.PASSKEY"

    invoke-virtual {v2, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 170
    .local v3, passkey:I
    if-ne v3, v7, :cond_4

    .line 175
    const-string v4, "Just Works"

    iput-object v4, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mPasskey:Ljava/lang/String;

    .line 181
    :goto_2
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->createConfirmationDialog()V

    goto :goto_0

    .line 180
    :cond_4
    const-string v4, "%06d"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mPasskey:Ljava/lang/String;

    goto :goto_2

    .line 182
    .end local v3           #passkey:I
    :cond_5
    iget v4, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mType:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_6

    .line 183
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->createConsentDialog()V

    goto :goto_0

    .line 184
    :cond_6
    iget v4, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mType:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_8

    .line 185
    const-string v4, "android.bluetooth.device.extra.PASSKEY"

    invoke-virtual {v2, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 187
    .restart local v3       #passkey:I
    if-ne v3, v7, :cond_7

    .line 188
    const-string v4, "BluetoothPairingDialog"

    const-string v4, "Invalid ConfirmationPasskey received, not showing any dialog"

    invoke-static {v9, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 191
    :cond_7
    const-string v4, "%06d"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mPasskey:Ljava/lang/String;

    .line 192
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->createDisplayPasskeyDialog()V

    goto :goto_0

    .line 193
    .end local v3           #passkey:I
    :cond_8
    iget v4, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mType:I

    if-ne v4, v11, :cond_9

    .line 194
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->createConsentDialog()V

    goto :goto_0

    .line 196
    :cond_9
    const-string v4, "BluetoothPairingDialog"

    const-string v4, "Incorrect pairing type received, not showing any dialog"

    invoke-static {v9, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 386
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    .line 387
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 389
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mSoundPool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mPopupSoundId:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->unload(I)Z

    .line 390
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 392
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 473
    return-void
.end method
