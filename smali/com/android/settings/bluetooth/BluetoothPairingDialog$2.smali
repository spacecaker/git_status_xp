.class Lcom/android/settings/bluetooth/BluetoothPairingDialog$2;
.super Ljava/lang/Object;
.source "BluetoothPairingDialog.java"

# interfaces
.implements Landroid/media/SoundPool$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/BluetoothPairingDialog;->soundPlay()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/BluetoothPairingDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/BluetoothPairingDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 483
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog$2;->this$0:Lcom/android/settings/bluetooth/BluetoothPairingDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadComplete(Landroid/media/SoundPool;II)V
    .locals 7
    .parameter "soundPool"
    .parameter "sampleId"
    .parameter "status"

    .prologue
    const/high16 v2, 0x3f00

    .line 485
    const-string v0, "BluetoothPairingDialog"

    const-string v1, "#### JHLEE soundPlay() ####"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog$2;->this$0:Lcom/android/settings/bluetooth/BluetoothPairingDialog;

    #getter for: Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->access$400(Lcom/android/settings/bluetooth/BluetoothPairingDialog;)Landroid/media/SoundPool;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog$2;->this$0:Lcom/android/settings/bluetooth/BluetoothPairingDialog;

    #getter for: Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mPopupSoundId:I
    invoke-static {v1}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->access$300(Lcom/android/settings/bluetooth/BluetoothPairingDialog;)I

    move-result v1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/high16 v6, 0x3f80

    move v3, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 487
    return-void
.end method
