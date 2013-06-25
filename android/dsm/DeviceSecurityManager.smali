.class public Landroid/dsm/DeviceSecurityManager;
.super Ljava/lang/Object;
.source "DeviceSecurityManager.java"


# static fields
.field public static MSISDN:Ljava/lang/String; = null

.field public static MTdata:Ljava/lang/String; = null

.field public static SIMmcc:I = 0x0

.field public static SIMmnc:I = 0x0

.field private static final TAG:Ljava/lang/String; = "DSM"

.field public static cellid:Ljava/lang/String;

.field static expired:Z

.field static isGpsValid:Z

.field static isNonGpsSIMValid:Z

.field static isNonGpsValid:Z

.field public static lac:Ljava/lang/String;

.field public static mAccuracy:D

.field public static mAltitude:D

.field public static mBearing:D

.field public static mLatitude:D

.field public static mLongitude:D

.field public static mSpeed:D

.field public static mcc:I

.field public static mnc:I

.field static timerrun:Z


# instance fields
.field private final DELAY_BEFORE_PHONERESET:J

.field private mNonExistContentHandler:Landroid/os/Handler;

.field private service:Landroid/os/storage/IMountService;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 65
    sput-boolean v1, Landroid/dsm/DeviceSecurityManager;->isNonGpsValid:Z

    .line 67
    sput-boolean v1, Landroid/dsm/DeviceSecurityManager;->isGpsValid:Z

    .line 69
    sput-boolean v1, Landroid/dsm/DeviceSecurityManager;->isNonGpsSIMValid:Z

    .line 71
    sput-wide v2, Landroid/dsm/DeviceSecurityManager;->mLatitude:D

    .line 73
    sput-wide v2, Landroid/dsm/DeviceSecurityManager;->mLongitude:D

    .line 75
    sput-wide v2, Landroid/dsm/DeviceSecurityManager;->mAltitude:D

    .line 77
    sput-wide v2, Landroid/dsm/DeviceSecurityManager;->mBearing:D

    .line 79
    sput-wide v2, Landroid/dsm/DeviceSecurityManager;->mSpeed:D

    .line 81
    sput-wide v2, Landroid/dsm/DeviceSecurityManager;->mAccuracy:D

    .line 83
    sput v1, Landroid/dsm/DeviceSecurityManager;->mcc:I

    .line 85
    sput v1, Landroid/dsm/DeviceSecurityManager;->mnc:I

    .line 91
    sput-boolean v1, Landroid/dsm/DeviceSecurityManager;->expired:Z

    .line 93
    const/4 v0, 0x1

    sput-boolean v0, Landroid/dsm/DeviceSecurityManager;->timerrun:Z

    .line 95
    sput v1, Landroid/dsm/DeviceSecurityManager;->SIMmcc:I

    .line 97
    sput v1, Landroid/dsm/DeviceSecurityManager;->SIMmnc:I

    .line 107
    const-string v0, " "

    sput-object v0, Landroid/dsm/DeviceSecurityManager;->MTdata:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/dsm/DeviceSecurityManager;->mNonExistContentHandler:Landroid/os/Handler;

    .line 105
    const-wide/16 v0, 0x3a98

    iput-wide v0, p0, Landroid/dsm/DeviceSecurityManager;->DELAY_BEFORE_PHONERESET:J

    return-void
.end method


# virtual methods
.method public GetGPSLocation()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 279
    const/4 v0, 0x0

    .line 283
    .local v0, gpsdata:[D
    invoke-static {}, Landroid/dsm/DSMService;->DSMgetGPSData()[D

    move-result-object v0

    .line 285
    const-string v1, "DSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "gpsdata is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    if-nez v0, :cond_0

    .line 289
    sput-boolean v4, Landroid/dsm/DeviceSecurityManager;->isGpsValid:Z

    move v1, v4

    .line 312
    :goto_0
    return v1

    .line 295
    :cond_0
    sput-boolean v5, Landroid/dsm/DeviceSecurityManager;->isGpsValid:Z

    .line 297
    aget-wide v1, v0, v4

    sput-wide v1, Landroid/dsm/DeviceSecurityManager;->mLatitude:D

    .line 299
    aget-wide v1, v0, v5

    sput-wide v1, Landroid/dsm/DeviceSecurityManager;->mLongitude:D

    .line 301
    const/4 v1, 0x2

    aget-wide v1, v0, v1

    sput-wide v1, Landroid/dsm/DeviceSecurityManager;->mAltitude:D

    .line 303
    const/4 v1, 0x3

    aget-wide v1, v0, v1

    sput-wide v1, Landroid/dsm/DeviceSecurityManager;->mBearing:D

    .line 305
    const/4 v1, 0x4

    aget-wide v1, v0, v1

    sput-wide v1, Landroid/dsm/DeviceSecurityManager;->mSpeed:D

    .line 307
    const/4 v1, 0x5

    aget-wide v1, v0, v1

    sput-wide v1, Landroid/dsm/DeviceSecurityManager;->mAccuracy:D

    move v1, v5

    .line 312
    goto :goto_0
.end method

.method public GetNonGPSLocation(Landroid/content/Context;)Z
    .locals 8
    .parameter "pcontext"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v7, "DSM"

    .line 155
    move-object v0, p1

    .line 157
    .local v0, mcontext:Landroid/content/Context;
    sput-boolean v5, Landroid/dsm/DeviceSecurityManager;->isNonGpsValid:Z

    .line 159
    const/4 v1, 0x0

    .line 163
    .local v1, nonGPSdata:[I
    invoke-static {v0}, Landroid/dsm/DSMService;->DSMgetnonGPSData(Landroid/content/Context;)[I

    move-result-object v1

    .line 165
    if-eqz v1, :cond_0

    .line 167
    sput-boolean v6, Landroid/dsm/DeviceSecurityManager;->isNonGpsValid:Z

    .line 169
    aget v2, v1, v5

    sput v2, Landroid/dsm/DeviceSecurityManager;->mcc:I

    .line 171
    aget v2, v1, v6

    sput v2, Landroid/dsm/DeviceSecurityManager;->mnc:I

    .line 173
    const-string v2, "%04x"

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x2

    aget v4, v1, v4

    int-to-short v4, v4

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/dsm/DeviceSecurityManager;->lac:Ljava/lang/String;

    .line 175
    const-string v2, "%08x"

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x3

    aget v4, v1, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/dsm/DeviceSecurityManager;->cellid:Ljava/lang/String;

    .line 177
    const-string v2, "DSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mcc is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Landroid/dsm/DeviceSecurityManager;->mcc:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mnc is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Landroid/dsm/DeviceSecurityManager;->mnc:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " lac is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/dsm/DeviceSecurityManager;->lac:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " cellid is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/dsm/DeviceSecurityManager;->cellid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v6

    .line 189
    :goto_0
    return v2

    .line 185
    :cond_0
    sput-boolean v5, Landroid/dsm/DeviceSecurityManager;->isNonGpsValid:Z

    .line 187
    const-string v2, "DSM"

    const-string v2, "nonGPSdata is null"

    invoke-static {v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v5

    .line 189
    goto :goto_0
.end method

.method public GetNonGpsSIMLoc(Landroid/content/Context;)Z
    .locals 14
    .parameter "pcontext"

    .prologue
    const/4 v3, 0x0

    const/4 v11, 0x1

    const/4 v4, 0x0

    const-string v13, "number"

    const-string v12, "DSM"

    .line 201
    move-object v7, p1

    .line 203
    .local v7, mcontext:Landroid/content/Context;
    sput-boolean v4, Landroid/dsm/DeviceSecurityManager;->isNonGpsSIMValid:Z

    .line 205
    const/4 v8, 0x0

    .line 209
    .local v8, nonGpsSIMdata:[I
    invoke-static {v7}, Landroid/dsm/DSMService;->DSMgetNonGpsSIMData(Landroid/content/Context;)[I

    move-result-object v8

    .line 211
    if-eqz v8, :cond_1

    .line 213
    sput-boolean v11, Landroid/dsm/DeviceSecurityManager;->isNonGpsValid:Z

    .line 215
    aget v0, v8, v4

    sput v0, Landroid/dsm/DeviceSecurityManager;->SIMmcc:I

    .line 217
    aget v0, v8, v11

    sput v0, Landroid/dsm/DeviceSecurityManager;->SIMmnc:I

    .line 227
    const-string v0, "content://icc/msisdn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 229
    .local v1, CONTENT_URI:Landroid/net/Uri;
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "name"

    aput-object v0, v2, v4

    const-string v0, "number"

    aput-object v13, v2, v11

    .line 231
    .local v2, PROJECTION:[Ljava/lang/String;
    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v5, "name ASC"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 235
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    const-string v0, "number"

    invoke-interface {v6, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 245
    .local v10, numberColumn:I
    const-string v9, ""

    .line 247
    .local v9, number:Ljava/lang/String;
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 249
    const-string v0, "TestDSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "phone number is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    sput-object v9, Landroid/dsm/DeviceSecurityManager;->MSISDN:Ljava/lang/String;

    .line 255
    .end local v9           #number:Ljava/lang/String;
    .end local v10           #numberColumn:I
    :cond_0
    const-string v0, "DSM"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SIMDATA; SIMmcc is "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v3, Landroid/dsm/DeviceSecurityManager;->SIMmcc:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " SIMmnc is "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v3, Landroid/dsm/DeviceSecurityManager;->SIMmnc:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " MSISDN"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Landroid/dsm/DeviceSecurityManager;->MSISDN:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v11

    .line 267
    .end local v1           #CONTENT_URI:Landroid/net/Uri;
    .end local v2           #PROJECTION:[Ljava/lang/String;
    .end local v6           #c:Landroid/database/Cursor;
    :goto_0
    return v0

    .line 263
    :cond_1
    sput-boolean v4, Landroid/dsm/DeviceSecurityManager;->isNonGpsValid:Z

    .line 265
    const-string v0, "DSM"

    const-string v0, "nonGPSdata is null"

    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v4

    .line 267
    goto :goto_0
.end method

.method public PhoneLock(Landroid/content/Context;)V
    .locals 4
    .parameter "pcontext"

    .prologue
    .line 115
    const-string v2, "DSM"

    const-string v3, "Lock"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    move-object v0, p1

    .line 119
    .local v0, mcontext:Landroid/content/Context;
    new-instance v1, Lcom/android/internal/util/NVStore;

    invoke-direct {v1}, Lcom/android/internal/util/NVStore;-><init>()V

    .line 121
    .local v1, mts:Lcom/android/internal/util/NVStore;
    const-string v2, "1"

    sget-object v3, Lcom/android/internal/util/NVStore$datatype;->PHLOCK_STATE:Lcom/android/internal/util/NVStore$datatype;

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/NVStore;->writedata(Ljava/lang/String;Lcom/android/internal/util/NVStore$datatype;)V

    .line 123
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.samsung.MT.PHLOCK_ACTION"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 125
    return-void
.end method

.method public StartGPSTracking(Landroid/content/Context;)V
    .locals 1
    .parameter "pcontext"

    .prologue
    .line 322
    move-object v0, p1

    .line 324
    .local v0, mcontext:Landroid/content/Context;
    invoke-static {v0}, Landroid/dsm/DSMService;->DSMstartGPSTracking(Landroid/content/Context;)V

    .line 326
    return-void
.end method

.method public StopGpsTracking(Landroid/content/Context;)V
    .locals 1
    .parameter "pcontext"

    .prologue
    .line 332
    move-object v0, p1

    .line 334
    .local v0, mcontext:Landroid/content/Context;
    invoke-static {v0}, Landroid/dsm/DSMService;->DSMremoveListener(Landroid/content/Context;)V

    .line 336
    return-void
.end method

.method public Wipeout(Landroid/content/Context;)V
    .locals 5
    .parameter "pcontext"

    .prologue
    const-string v4, "DSM"

    .line 131
    move-object v1, p1

    .line 133
    .local v1, mcontext:Landroid/content/Context;
    const-string v3, "DSM"

    const-string/jumbo v3, "wipeout?"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    new-instance v2, Lcom/android/internal/util/NVStore;

    invoke-direct {v2}, Lcom/android/internal/util/NVStore;-><init>()V

    .line 137
    .local v2, nv:Lcom/android/internal/util/NVStore;
    invoke-virtual {v2}, Lcom/android/internal/util/NVStore;->ReaddataFromNv()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Landroid/dsm/DeviceSecurityManager;->MTdata:Ljava/lang/String;

    .line 139
    const-string v3, "DSM"

    sget-object v3, Landroid/dsm/DeviceSecurityManager;->MTdata:Ljava/lang/String;

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.samsung.DSM.wipeout"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 143
    .local v0, i:Landroid/content/Intent;
    const-string v3, "MTDATA"

    sget-object v4, Landroid/dsm/DeviceSecurityManager;->MTdata:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 147
    return-void
.end method

.method public isMobileTrackerEnabled()Z
    .locals 2

    .prologue
    .line 342
    new-instance v0, Lcom/android/internal/util/NVStore;

    invoke-direct {v0}, Lcom/android/internal/util/NVStore;-><init>()V

    .line 344
    .local v0, nv:Lcom/android/internal/util/NVStore;
    invoke-virtual {v0}, Lcom/android/internal/util/NVStore;->GetMTStatus()Z

    move-result v1

    return v1
.end method

.method public isPhoneLockEnabled()Z
    .locals 2

    .prologue
    .line 350
    new-instance v0, Lcom/android/internal/util/NVStore;

    invoke-direct {v0}, Lcom/android/internal/util/NVStore;-><init>()V

    .line 352
    .local v0, nv:Lcom/android/internal/util/NVStore;
    invoke-virtual {v0}, Lcom/android/internal/util/NVStore;->IsPhLockeEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 354
    const/4 v1, 0x1

    .line 356
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
