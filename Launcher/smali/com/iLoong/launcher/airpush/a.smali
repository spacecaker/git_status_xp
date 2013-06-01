.class public Lcom/iLoong/launcher/airpush/a;
.super Ljava/lang/Object;


# static fields
.field public static final a:[[Ljava/lang/String;

.field public static final b:[[Ljava/lang/String;


# instance fields
.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:I

.field private final f:I

.field private g:Landroid/content/Context;

.field private h:Landroid/telephony/TelephonyManager;

.field private i:Landroid/view/WindowManager;

.field private j:Landroid/content/pm/PackageManager;

.field private k:Landroid/net/ConnectivityManager;

.field private l:Z

.field private m:Lcom/iLoong/launcher/airpush/m;

.field private n:Lcom/iLoong/launcher/airpush/AirPush;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v0, 0x1d

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "AppId"

    aput-object v2, v1, v4

    const-string v2, "P01"

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "AppVersionId"

    aput-object v2, v1, v4

    const-string v2, "P02"

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "AppVersionName"

    aput-object v2, v1, v4

    const-string v2, "P03"

    aput-object v2, v1, v5

    aput-object v1, v0, v6

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "ClientID"

    aput-object v2, v1, v4

    const-string v2, "P04"

    aput-object v2, v1, v5

    aput-object v1, v0, v7

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "ACKState"

    aput-object v2, v1, v4

    const-string v2, "P05"

    aput-object v2, v1, v5

    aput-object v1, v0, v8

    const/4 v1, 0x5

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "AppType"

    aput-object v3, v2, v4

    const-string v3, "P07"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ServerConfigTime"

    aput-object v3, v2, v4

    const-string v3, "P08"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "IMSI"

    aput-object v3, v2, v4

    const-string v3, "U01"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "SMSCenter"

    aput-object v3, v2, v4

    const-string v3, "U02"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "IMEI"

    aput-object v3, v2, v4

    const-string v3, "U03"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ICCID"

    aput-object v3, v2, v4

    const-string v3, "U04"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "CellPhoneNumber"

    aput-object v3, v2, v4

    const-string v3, "U05"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "AndroidId"

    aput-object v3, v2, v4

    const-string v3, "U06"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "CommunicationMode"

    aput-object v3, v2, v4

    const-string v3, "U07"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "BuildModel"

    aput-object v3, v2, v4

    const-string v3, "A01"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "BuildDisplay"

    aput-object v3, v2, v4

    const-string v3, "A02"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "LCDSize"

    aput-object v3, v2, v4

    const-string v3, "A04"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "BuildProduct"

    aput-object v3, v2, v4

    const-string v3, "A05"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "BuildDevice"

    aput-object v3, v2, v4

    const-string v3, "A06"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "BuildBoard"

    aput-object v3, v2, v4

    const-string v3, "A07"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "BuildManufacturer"

    aput-object v3, v2, v4

    const-string v3, "A08"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "BuildBootloader"

    aput-object v3, v2, v4

    const-string v3, "A10"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "BuildRadio"

    aput-object v3, v2, v4

    const-string v3, "A11"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "BuildHardware"

    aput-object v3, v2, v4

    const-string v3, "A12"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "BuildSerial"

    aput-object v3, v2, v4

    const-string v3, "A13"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "BuildVersionRelease"

    aput-object v3, v2, v4

    const-string v3, "A14"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "BuildVersionSDK"

    aput-object v3, v2, v4

    const-string v3, "A15"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "KernelVersion"

    aput-object v3, v2, v4

    const-string v3, "A16"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "BuildVersionIncremental"

    aput-object v3, v2, v4

    const-string v3, "A17"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    sput-object v0, Lcom/iLoong/launcher/airpush/a;->a:[[Ljava/lang/String;

    const/16 v0, 0x1d

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "ServerDownloadedId"

    aput-object v2, v1, v4

    const-string v2, "P01"

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "AppVersionId"

    aput-object v2, v1, v4

    const-string v2, "P02"

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "AppVersionName"

    aput-object v2, v1, v4

    const-string v2, "P03"

    aput-object v2, v1, v5

    aput-object v1, v0, v6

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "ClientID"

    aput-object v2, v1, v4

    const-string v2, "P04"

    aput-object v2, v1, v5

    aput-object v1, v0, v7

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "ACKState"

    aput-object v2, v1, v4

    const-string v2, "P05"

    aput-object v2, v1, v5

    aput-object v1, v0, v8

    const/4 v1, 0x5

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "AppType"

    aput-object v3, v2, v4

    const-string v3, "P07"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ServerConfigTime"

    aput-object v3, v2, v4

    const-string v3, "P08"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "IMSI"

    aput-object v3, v2, v4

    const-string v3, "U01"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "SMSCenter"

    aput-object v3, v2, v4

    const-string v3, "U02"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "IMEI"

    aput-object v3, v2, v4

    const-string v3, "U03"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ICCID"

    aput-object v3, v2, v4

    const-string v3, "U04"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "CellPhoneNumber"

    aput-object v3, v2, v4

    const-string v3, "U05"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "AndroidId"

    aput-object v3, v2, v4

    const-string v3, "U06"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "CommunicationMode"

    aput-object v3, v2, v4

    const-string v3, "U07"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "BuildModel"

    aput-object v3, v2, v4

    const-string v3, "A01"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "BuildDisplay"

    aput-object v3, v2, v4

    const-string v3, "A02"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "LCDSize"

    aput-object v3, v2, v4

    const-string v3, "A04"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "BuildProduct"

    aput-object v3, v2, v4

    const-string v3, "A05"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "BuildDevice"

    aput-object v3, v2, v4

    const-string v3, "A06"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "BuildBoard"

    aput-object v3, v2, v4

    const-string v3, "A07"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "BuildManufacturer"

    aput-object v3, v2, v4

    const-string v3, "A08"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "BuildBootloader"

    aput-object v3, v2, v4

    const-string v3, "A10"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "BuildRadio"

    aput-object v3, v2, v4

    const-string v3, "A11"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "BuildHardware"

    aput-object v3, v2, v4

    const-string v3, "A12"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "BuildSerial"

    aput-object v3, v2, v4

    const-string v3, "A13"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "BuildVersionRelease"

    aput-object v3, v2, v4

    const-string v3, "A14"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "BuildVersionSDK"

    aput-object v3, v2, v4

    const-string v3, "A15"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "KernelVersion"

    aput-object v3, v2, v4

    const-string v3, "A16"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "BuildVersionIncremental"

    aput-object v3, v2, v4

    const-string v3, "A17"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    sput-object v0, Lcom/iLoong/launcher/airpush/a;->b:[[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "1"

    iput-object v0, p0, Lcom/iLoong/launcher/airpush/a;->c:Ljava/lang/String;

    const-string v0, "2"

    iput-object v0, p0, Lcom/iLoong/launcher/airpush/a;->d:Ljava/lang/String;

    iput v1, p0, Lcom/iLoong/launcher/airpush/a;->e:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/iLoong/launcher/airpush/a;->f:I

    iput-boolean v1, p0, Lcom/iLoong/launcher/airpush/a;->l:Z

    const-string v0, "cooee"

    iput-object v0, p0, Lcom/iLoong/launcher/airpush/a;->o:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/iLoong/launcher/airpush/a;->p:Ljava/lang/String;

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v0

    iput-object v0, p0, Lcom/iLoong/launcher/airpush/a;->g:Landroid/content/Context;

    const-string v0, "config.ini"

    invoke-static {v0}, Lcom/iLoong/launcher/b/e;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "config"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    :try_start_1
    const-string v1, "serialno"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iLoong/launcher/airpush/a;->o:Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    invoke-direct {p0}, Lcom/iLoong/launcher/airpush/a;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iLoong/launcher/airpush/a;->p:Ljava/lang/String;

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method private a()Ljava/lang/String;
    .locals 3

    const/4 v2, 0x4

    :try_start_0
    const-string v0, "/proc/version"

    invoke-direct {p0, v0}, Lcom/iLoong/launcher/airpush/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\w+\\s+\\w+\\s+([^\\s]+)\\s+\\(([^\\s@]+(?:@[^\\s.]+)?)[^)]*\\)\\s+\\((?:[^(]*\\([^)]*\\))?[^)]*\\)\\s+([^\\s]+)\\s+(?:PREEMPT\\s+)?(.+)"

    const-string v1, "\\w+\\s+\\w+\\s+([^\\s]+)\\s+\\(([^\\s@]+(?:@[^\\s.]+)?)[^)]*\\)\\s+\\((?:[^(]*\\([^)]*\\))?[^)]*\\)\\s+([^\\s]+)\\s+(?:PREEMPT\\s+)?(.+)"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "Unavailable"

    :goto_0
    return-object v0

    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->groupCount()I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    if-ge v1, v2, :cond_1

    const-string v0, "Unavailable"

    goto :goto_0

    :cond_1
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "Unavailable"

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x100

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    throw v1
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v3, -0x1

    const/4 v2, 0x0

    const-string v1, ""

    const-string v0, "ServerDownloadedId"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "appid"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "packageInfo.packageName"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/iLoong/launcher/airpush/a;->m:Lcom/iLoong/launcher/airpush/m;

    iget-object v4, v4, Lcom/iLoong/launcher/airpush/m;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/iLoong/launcher/airpush/a;->m:Lcom/iLoong/launcher/airpush/m;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/iLoong/launcher/airpush/a;->m:Lcom/iLoong/launcher/airpush/m;

    iget-object v1, v0, Lcom/iLoong/launcher/airpush/m;->d:Ljava/lang/String;

    move-object v0, v1

    :goto_0
    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const-string v0, ""

    move v1, v2

    :goto_1
    array-length v2, v3

    if-lt v1, v2, :cond_29

    return-object v0

    :cond_1
    const-string v0, "AppId"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object v0, v1

    goto :goto_0

    :cond_2
    const-string v0, "AppVersionId"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/iLoong/launcher/airpush/a;->j:Landroid/content/pm/PackageManager;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/iLoong/launcher/airpush/a;->g:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/iLoong/launcher/airpush/a;->j:Landroid/content/pm/PackageManager;

    :cond_3
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/iLoong/launcher/airpush/a;->j:Landroid/content/pm/PackageManager;

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v4

    invoke-virtual {v4}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    move-object v0, v1

    goto :goto_0

    :cond_4
    const-string v0, "AppVersionName"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/iLoong/launcher/airpush/a;->j:Landroid/content/pm/PackageManager;

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/iLoong/launcher/airpush/a;->g:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/iLoong/launcher/airpush/a;->j:Landroid/content/pm/PackageManager;

    :cond_5
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/iLoong/launcher/airpush/a;->j:Landroid/content/pm/PackageManager;

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v4

    invoke-virtual {v4}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    move-object v0, v1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    move-object v0, v1

    goto/16 :goto_0

    :cond_6
    const-string v0, "ClientID"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v1, p0, Lcom/iLoong/launcher/airpush/a;->o:Ljava/lang/String;

    move-object v0, v1

    goto/16 :goto_0

    :cond_7
    const-string v0, "ACKState"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/iLoong/launcher/airpush/a;->n:Lcom/iLoong/launcher/airpush/AirPush;

    iget v0, v0, Lcom/iLoong/launcher/airpush/AirPush;->d:I

    if-eq v0, v3, :cond_2c

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iLoong/launcher/airpush/a;->n:Lcom/iLoong/launcher/airpush/AirPush;

    iget v1, v1, Lcom/iLoong/launcher/airpush/AirPush;->d:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    iget-object v1, p0, Lcom/iLoong/launcher/airpush/a;->n:Lcom/iLoong/launcher/airpush/AirPush;

    iput v3, v1, Lcom/iLoong/launcher/airpush/AirPush;->d:I

    goto/16 :goto_0

    :cond_8
    const-string v0, "AppType"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v1, "1"

    move-object v0, v1

    goto/16 :goto_0

    :cond_9
    const-string v0, "ServerConfigTime"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/iLoong/launcher/airpush/a;->n:Lcom/iLoong/launcher/airpush/AirPush;

    iget-object v1, v0, Lcom/iLoong/launcher/airpush/AirPush;->e:Ljava/lang/String;

    move-object v0, v1

    goto/16 :goto_0

    :cond_a
    const-string v0, "IMSI"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/iLoong/launcher/airpush/a;->h:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/iLoong/launcher/airpush/a;->g:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/iLoong/launcher/airpush/a;->h:Landroid/telephony/TelephonyManager;

    :cond_b
    iget-object v0, p0, Lcom/iLoong/launcher/airpush/a;->h:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    goto/16 :goto_0

    :cond_c
    const-string v0, "SMSCenter"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    sget-object v0, Lcom/iLoong/launcher/airpush/l;->a:Ljava/lang/String;

    if-nez v0, :cond_d

    const-string v1, "null"

    move-object v0, v1

    goto/16 :goto_0

    :cond_d
    sget-object v1, Lcom/iLoong/launcher/airpush/l;->a:Ljava/lang/String;

    move-object v0, v1

    goto/16 :goto_0

    :cond_e
    const-string v0, "IMEI"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/iLoong/launcher/airpush/a;->h:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/iLoong/launcher/airpush/a;->g:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/iLoong/launcher/airpush/a;->h:Landroid/telephony/TelephonyManager;

    :cond_f
    iget-object v0, p0, Lcom/iLoong/launcher/airpush/a;->h:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    goto/16 :goto_0

    :cond_10
    const-string v0, "ICCID"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/iLoong/launcher/airpush/a;->h:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/iLoong/launcher/airpush/a;->g:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/iLoong/launcher/airpush/a;->h:Landroid/telephony/TelephonyManager;

    :cond_11
    iget-object v0, p0, Lcom/iLoong/launcher/airpush/a;->h:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    goto/16 :goto_0

    :cond_12
    const-string v0, "CellPhoneNumber"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/iLoong/launcher/airpush/a;->h:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/iLoong/launcher/airpush/a;->g:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/iLoong/launcher/airpush/a;->h:Landroid/telephony/TelephonyManager;

    :cond_13
    iget-object v0, p0, Lcom/iLoong/launcher/airpush/a;->h:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    goto/16 :goto_0

    :cond_14
    const-string v0, "AndroidId"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "android_id"

    invoke-static {v0, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-object v0, v1

    goto/16 :goto_0

    :cond_15
    const-string v0, "CommunicationMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/iLoong/launcher/airpush/a;->k:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/iLoong/launcher/airpush/a;->g:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/iLoong/launcher/airpush/a;->k:Landroid/net/ConnectivityManager;

    :cond_16
    iget-object v0, p0, Lcom/iLoong/launcher/airpush/a;->k:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-nez v0, :cond_17

    const-string v1, "1"

    move-object v0, v1

    goto/16 :goto_0

    :cond_17
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_18

    const-string v1, "2"

    move-object v0, v1

    goto/16 :goto_0

    :cond_18
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-nez v0, :cond_2b

    const-string v1, "1"

    move-object v0, v1

    goto/16 :goto_0

    :cond_19
    const-string v0, "BuildModel"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    move-object v0, v1

    goto/16 :goto_0

    :cond_1a
    const-string v0, "BuildDisplay"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    sget-object v1, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    move-object v0, v1

    goto/16 :goto_0

    :cond_1b
    const-string v0, "LCDSize"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/iLoong/launcher/airpush/a;->i:Landroid/view/WindowManager;

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/iLoong/launcher/airpush/a;->g:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/iLoong/launcher/airpush/a;->i:Landroid/view/WindowManager;

    :cond_1c
    iget-object v0, p0, Lcom/iLoong/launcher/airpush/a;->i:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    new-instance v0, Ljava/lang/StringBuilder;

    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "x"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    goto/16 :goto_0

    :cond_1d
    const-string v0, "BuildProduct"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    move-object v0, v1

    goto/16 :goto_0

    :cond_1e
    const-string v0, "BuildDevice"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    move-object v0, v1

    goto/16 :goto_0

    :cond_1f
    const-string v0, "BuildBoard"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    sget-object v1, Landroid/os/Build;->BOARD:Ljava/lang/String;

    move-object v0, v1

    goto/16 :goto_0

    :cond_20
    const-string v0, "BuildManufacturer"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    move-object v0, v1

    goto/16 :goto_0

    :cond_21
    const-string v0, "BuildBootloader"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    sget-object v1, Landroid/os/Build;->BOOTLOADER:Ljava/lang/String;

    move-object v0, v1

    goto/16 :goto_0

    :cond_22
    const-string v0, "BuildRadio"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    sget-object v1, Landroid/os/Build;->RADIO:Ljava/lang/String;

    move-object v0, v1

    goto/16 :goto_0

    :cond_23
    const-string v0, "BuildHardware"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    sget-object v1, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    move-object v0, v1

    goto/16 :goto_0

    :cond_24
    const-string v0, "BuildSerial"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    sget-object v1, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    move-object v0, v1

    goto/16 :goto_0

    :cond_25
    const-string v0, "BuildVersionRelease"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    move-object v0, v1

    goto/16 :goto_0

    :cond_26
    const-string v0, "BuildVersionSDK"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    new-instance v0, Ljava/lang/StringBuilder;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    goto/16 :goto_0

    :cond_27
    const-string v0, "KernelVersion"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v1, p0, Lcom/iLoong/launcher/airpush/a;->p:Ljava/lang/String;

    move-object v0, v1

    goto/16 :goto_0

    :cond_28
    const-string v0, "BuildVersionIncremental"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    sget-object v1, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    move-object v0, v1

    goto/16 :goto_0

    :cond_29
    if-lez v1, :cond_2a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "%20"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v2, v3, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_2a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v0, v3, v1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_2b
    move-object v0, v1

    goto/16 :goto_0

    :cond_2c
    move-object v0, v1

    goto/16 :goto_2
.end method

.method public a(Lcom/iLoong/launcher/airpush/AirPush;)V
    .locals 0

    iput-object p1, p0, Lcom/iLoong/launcher/airpush/a;->n:Lcom/iLoong/launcher/airpush/AirPush;

    return-void
.end method

.method public a(Lcom/iLoong/launcher/airpush/m;)V
    .locals 0

    iput-object p1, p0, Lcom/iLoong/launcher/airpush/a;->m:Lcom/iLoong/launcher/airpush/m;

    return-void
.end method
