.class public Lcom/android/settings/SecFactoryReset;
.super Landroid/app/Activity;
.source "SecFactoryReset.java"


# instance fields
.field private callFromFactory:Z

.field public mHandler:Landroid/os/Handler;

.field private phone:Lcom/android/internal/telephony/Phone;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/SecFactoryReset;->phone:Lcom/android/internal/telephony/Phone;

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/SecFactoryReset;->callFromFactory:Z

    .line 83
    new-instance v0, Lcom/android/settings/SecFactoryReset$1;

    invoke-direct {v0, p0}, Lcom/android/settings/SecFactoryReset$1;-><init>(Lcom/android/settings/SecFactoryReset;)V

    iput-object v0, p0, Lcom/android/settings/SecFactoryReset;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/SecFactoryReset;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/settings/SecFactoryReset;->runAndroidFactoryReset()V

    return-void
.end method

.method private runAndroidFactoryReset()V
    .locals 2

    .prologue
    .line 104
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/SecFactoryReset;->sendBroadcast(Landroid/content/Intent;)V

    .line 106
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedState"

    .prologue
    const-string v2, "SecFactoryReset"

    .line 110
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 112
    const-string v1, "SecFactoryReset"

    const-string v1, "SecFactoryReset"

    invoke-static {v2, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/SecFactoryReset;->phone:Lcom/android/internal/telephony/Phone;

    .line 117
    const/4 v0, 0x0

    .line 118
    .local v0, data:[B
    invoke-virtual {p0}, Lcom/android/settings/SecFactoryReset;->setEndModeData()[B

    move-result-object v0

    .line 119
    iget-object v1, p0, Lcom/android/settings/SecFactoryReset;->phone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/settings/SecFactoryReset;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3f0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 121
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 129
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 131
    invoke-direct {p0}, Lcom/android/settings/SecFactoryReset;->runAndroidFactoryReset()V

    .line 132
    return-void
.end method

.method setEndModeData()[B
    .locals 6

    .prologue
    .line 63
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 64
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 65
    .local v1, dos:Ljava/io/DataOutputStream;
    const/4 v3, 0x5

    .line 68
    .local v3, fileSize:I
    const/16 v4, 0xc

    :try_start_0
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 69
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 70
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 71
    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    :goto_0
    return-object v4

    .line 73
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 74
    .local v2, e:Ljava/io/IOException;
    const-string v4, "SecFactoryReset"

    const-string v5, "IOException in getServMQueryData!!!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    const/4 v4, 0x0

    goto :goto_0
.end method
