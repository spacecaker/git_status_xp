.class public final Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;
.super Lcom/android/internal/telephony/DataConnectionTracker;
.source "GsmMultiDataConnectionTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$OemCommands;,
        Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$ApnChangeObserver;
    }
.end annotation


# static fields
.field protected static final APN_DELAY_MILLIS:I = 0x1388

.field static final APN_ID:Ljava/lang/String; = "apn_id"

.field private static final CLEANUP_AFTER_GPRS_DETACHED_TIMER:I = 0x1d4c0

.field private static final INTENT_RECONNECT_ALARM:Ljava/lang/String; = "com.android.internal.telephony.gprs-reconnect"

.field private static final INTENT_RECONNECT_ALARM_EXTRA_REASON:Ljava/lang/String; = "reason"

.field private static final PDP_CONNECTION_POOL_SIZE:I = 0x3

.field private static final POLL_PDP_MILLIS:I = 0x1388

.field static final PREFERAPN_URI:Landroid/net/Uri;


# instance fields
.field protected final LOG_TAG:Ljava/lang/String;

.field private allApns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/gsm/ApnSetting;",
            ">;"
        }
    .end annotation
.end field

.field private apnObserver:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$ApnChangeObserver;

.field private canSetPreferApn:Z

.field failNextConnect:Z

.field protected mActiveApn:Lcom/android/internal/telephony/gsm/ApnSetting;

.field private mActivePdp:Lcom/android/internal/telephony/gsm/GsmDataConnection;

.field private mCleanupCount:I

.field private mCurrentRequestedApnType:Ljava/lang/String;

.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mDefaultRetryManager:Lcom/android/internal/telephony/RetryManager;

.field private mFastDormPollNetStat:Lcom/android/internal/telephony/gsm/FastDormDataStatistics;

.field private mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

.field mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsPsRestricted:Z

.field private mIsScreenOn:Z

.field private mIsSimSupportMultiPdp:Z

.field private mPdpResetCount:I

.field private mPendingRequestedApns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPingTestActive:Z

.field private mPollNetStat:Ljava/lang/Runnable;

.field private mReregisterOnReconnectFailure:Z

.field private mResolver:Landroid/content/ContentResolver;

.field private mSecondaryRetryManager:Lcom/android/internal/telephony/RetryManager;

.field private noAutoAttach:Z

.field private pdpList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/DataConnection;",
            ">;"
        }
    .end annotation
.end field

.field private preferredApn:Lcom/android/internal/telephony/gsm/ApnSetting;

.field private waitingApns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/gsm/ApnSetting;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 193
    const-string v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->PREFERAPN_URI:Landroid/net/Uri;

    return-void
.end method

.method constructor <init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V
    .locals 9
    .parameter "p"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    const-string v8, "GSM"

    .line 317
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/DataConnectionTracker;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    .line 91
    const-string v3, "GSM"

    iput-object v8, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->LOG_TAG:Ljava/lang/String;

    .line 118
    iput-boolean v7, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mIsSimSupportMultiPdp:Z

    .line 120
    iput v6, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mCleanupCount:I

    .line 123
    iput-boolean v6, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->noAutoAttach:Z

    .line 125
    iput-boolean v6, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mReregisterOnReconnectFailure:Z

    .line 128
    iput-boolean v6, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mPingTestActive:Z

    .line 131
    iput v6, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mPdpResetCount:I

    .line 132
    iput-boolean v7, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mIsScreenOn:Z

    .line 138
    iput-boolean v6, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->failNextConnect:Z

    .line 146
    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->allApns:Ljava/util/ArrayList;

    .line 153
    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->waitingApns:Ljava/util/ArrayList;

    .line 155
    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->preferredApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    .line 160
    const-string v3, "default"

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mCurrentRequestedApnType:Ljava/lang/String;

    .line 163
    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mPendingRequestedApns:Ljava/util/ArrayList;

    .line 174
    iput-boolean v6, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mIsPsRestricted:Z

    .line 195
    iput-boolean v6, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->canSetPreferApn:Z

    .line 213
    new-instance v3, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$1;

    invoke-direct {v3, p0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$1;-><init>(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)V

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 1262
    new-instance v3, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2;

    invoke-direct {v3, p0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2;-><init>(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)V

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mPollNetStat:Ljava/lang/Runnable;

    .line 318
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 319
    iget-object v3, p1, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v4, 0x3

    invoke-interface {v3, p0, v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 320
    iget-object v3, p1, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v4, 0xc

    invoke-interface {v3, p0, v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 321
    iget-object v3, p1, Lcom/android/internal/telephony/gsm/GSMPhone;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    const/4 v4, 0x4

    invoke-virtual {v3, p0, v4, v5}, Lcom/android/internal/telephony/gsm/SIMRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 322
    iget-object v3, p1, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v4, 0x6

    invoke-interface {v3, p0, v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerForDataStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 323
    iget-object v3, p1, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    const/16 v4, 0xf

    invoke-virtual {v3, p0, v4, v5}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->registerForVoiceCallEnded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 324
    iget-object v3, p1, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    const/16 v4, 0xe

    invoke-virtual {v3, p0, v4, v5}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->registerForVoiceCallStarted(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 325
    iget-object v3, p1, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const/16 v4, 0x1a

    invoke-virtual {v3, p0, v4, v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->registerForGprsAttached(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 326
    iget-object v3, p1, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const/16 v4, 0x13

    invoke-virtual {v3, p0, v4, v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->registerForGprsDetached(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 327
    iget-object v3, p1, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const/16 v4, 0x15

    invoke-virtual {v3, p0, v4, v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->registerForRoamingOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 328
    iget-object v3, p1, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const/16 v4, 0x16

    invoke-virtual {v3, p0, v4, v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->registerForRoamingOff(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 329
    iget-object v3, p1, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const/16 v4, 0x20

    invoke-virtual {v3, p0, v4, v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->registerForPsRestrictedEnabled(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 330
    iget-object v3, p1, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const/16 v4, 0x21

    invoke-virtual {v3, p0, v4, v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->registerForPsRestrictedDisabled(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 332
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 333
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v3, "com.android.internal.telephony.gprs-reconnect"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 334
    const-string v3, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 335
    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 336
    const-string v3, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 337
    const-string v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 343
    const-string v3, "android.net.action.DUN_DISCONNECTED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 344
    const-string v3, "android.net.action.DUN_ATTEMPTED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 347
    const-string v3, "android.net.action.DUN_CONNECTED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 348
    const-string v3, "android.net.action.DUN_BLOCKED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 349
    const-string v3, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 354
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v1, v5, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 357
    iput-object p0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mDataConnectionTracker:Landroid/os/Handler;

    .line 358
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mResolver:Landroid/content/ContentResolver;

    .line 360
    new-instance v3, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$ApnChangeObserver;

    invoke-direct {v3, p0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$ApnChangeObserver;-><init>(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)V

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->apnObserver:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$ApnChangeObserver;

    .line 361
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->apnObserver:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$ApnChangeObserver;

    invoke-virtual {v3, v4, v7, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 364
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->createAllPdpList()V

    .line 367
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->createPendingRequestedApnList()V

    .line 370
    new-instance v3, Lcom/android/internal/telephony/gsm/FastDormDataStatistics;

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {v3, p0, v4}, Lcom/android/internal/telephony/gsm/FastDormDataStatistics;-><init>(Lcom/android/internal/telephony/DataConnectionTracker;Lcom/android/internal/telephony/PhoneBase;)V

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mFastDormPollNetStat:Lcom/android/internal/telephony/gsm/FastDormDataStatistics;

    .line 374
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 375
    .local v2, sp:Landroid/content/SharedPreferences;
    const/4 v0, 0x1

    .line 377
    .local v0, dataEnabledSetting:Z
    :try_start_0
    const-string v3, "connectivity"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/net/IConnectivityManager;->getMobileDataEnabled()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 382
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->dataEnabled:[Z

    const-string v4, "disabled_on_boot_key"

    invoke-interface {v2, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_3

    if-eqz v0, :cond_3

    move v4, v7

    :goto_1
    aput-boolean v4, v3, v6

    .line 384
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Constructor APN_DEFAULT_ID: 0 dataEnabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->dataEnabled:[Z

    aget-boolean v4, v4, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " dataEnabledSetting: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 386
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->dataEnabled:[Z

    aget-boolean v3, v3, v6

    if-eqz v3, :cond_0

    .line 387
    iget v3, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->enabledCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->enabledCount:I

    .line 388
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Constructor enabledCount++: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->enabledCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 390
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->dataEnabled:[Z

    aget-boolean v3, v3, v6

    if-nez v3, :cond_4

    move v3, v7

    :goto_2
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->noAutoAttach:Z

    .line 392
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    const-string/jumbo v4, "ro.gsm.data_retry_config"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/RetryManager;->configure(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 393
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    const-string v4, "default_randomization=2000,5000,10000,20000,40000,80000:5000,160000:5000,320000:5000,640000:5000,1280000:5000,1800000:5000"

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/RetryManager;->configure(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 395
    const-string v3, "GSM"

    const-string v3, "Could not configure using DEFAULT_DATA_RETRY_CONFIG=default_randomization=2000,5000,10000,20000,40000,80000:5000,160000:5000,320000:5000,640000:5000,1280000:5000,1800000:5000"

    invoke-static {v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    const/16 v4, 0x14

    const/16 v5, 0x7d0

    const/16 v6, 0x3e8

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/internal/telephony/RetryManager;->configure(III)Z

    .line 401
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mDefaultRetryManager:Lcom/android/internal/telephony/RetryManager;

    .line 402
    new-instance v3, Lcom/android/internal/telephony/RetryManager;

    invoke-direct {v3}, Lcom/android/internal/telephony/RetryManager;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mSecondaryRetryManager:Lcom/android/internal/telephony/RetryManager;

    .line 404
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mSecondaryRetryManager:Lcom/android/internal/telephony/RetryManager;

    const-string/jumbo v4, "ro.gsm.2nd_data_retry_config"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/RetryManager;->configure(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 406
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mSecondaryRetryManager:Lcom/android/internal/telephony/RetryManager;

    const-string v4, "max_retries=3, 5000, 5000, 5000"

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/RetryManager;->configure(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 408
    const-string v3, "GSM"

    const-string v3, "Could note configure using SECONDARY_DATA_RETRY_CONFIG=max_retries=3, 5000, 5000, 5000"

    invoke-static {v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mSecondaryRetryManager:Lcom/android/internal/telephony/RetryManager;

    const-string v4, "max_retries=3, 333, 333, 333"

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/RetryManager;->configure(Ljava/lang/String;)Z

    .line 413
    :cond_2
    return-void

    :cond_3
    move v4, v6

    .line 382
    goto/16 :goto_1

    :cond_4
    move v3, v6

    .line 390
    goto :goto_2

    .line 379
    :catch_0
    move-exception v3

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mDataConnectionTracker:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mIsScreenOn:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->showDialogOnInternetSharingBlockedByActiveSync()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mIsScreenOn:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->isInternetSharingBlockedByActiveSync()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->disconnectDun()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 90
    iget-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->txPkts:J

    return-wide v0
.end method

.method static synthetic access$1400(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 90
    iget-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->rxPkts:J

    return-wide v0
.end method

.method static synthetic access$1502(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput-wide p1, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->txPkts:J

    return-wide p1
.end method

.method static synthetic access$1602(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput-wide p1, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->rxPkts:J

    return-wide p1
.end method

.method static synthetic access$1700(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->netStatPollEnabled:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 90
    iget-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->txPkts:J

    return-wide v0
.end method

.method static synthetic access$1900(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 90
    iget-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->rxPkts:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)Lcom/android/internal/telephony/RetryManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput-wide p1, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->sentSinceLastRecv:J

    return-wide p1
.end method

.method static synthetic access$2102(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput p1, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mPdpResetCount:I

    return p1
.end method

.method static synthetic access$2200(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)Lcom/android/internal/telephony/PhoneBase;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    return-object v0
.end method

.method static synthetic access$2314(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;J)J
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iget-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->sentSinceLastRecv:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->sentSinceLastRecv:J

    return-wide v0
.end method

.method static synthetic access$2402(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput-wide p1, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->sentSinceLastRecv:J

    return-wide p1
.end method

.method static synthetic access$2502(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput-wide p1, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->sentSinceLastRecv:J

    return-wide p1
.end method

.method static synthetic access$2602(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput-wide p1, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->sentSinceLastRecv:J

    return-wide p1
.end method

.method static synthetic access$2700(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->activity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    return-object v0
.end method

.method static synthetic access$2802(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;Lcom/android/internal/telephony/DataConnectionTracker$Activity;)Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->activity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    return-object p1
.end method

.method static synthetic access$2900(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)Lcom/android/internal/telephony/PhoneBase;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)Lcom/android/internal/telephony/RetryManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 90
    iget-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->sentSinceLastRecv:J

    return-wide v0
.end method

.method static synthetic access$3200(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mNoRecvPollCount:I

    return v0
.end method

.method static synthetic access$3300(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 90
    iget-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->sentSinceLastRecv:J

    return-wide v0
.end method

.method static synthetic access$3400(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mNoRecvPollCount:I

    return v0
.end method

.method static synthetic access$3500(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)Lcom/android/internal/telephony/PhoneBase;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    return-object v0
.end method

.method static synthetic access$3608(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 90
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mNoRecvPollCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mNoRecvPollCount:I

    return v0
.end method

.method static synthetic access$3702(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput p1, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->netStatPollPeriod:I

    return p1
.end method

.method static synthetic access$3800(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 90
    iget-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->sentSinceLastRecv:J

    return-wide v0
.end method

.method static synthetic access$3900(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->runPingTest()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)Lcom/android/internal/telephony/RetryManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    return-object v0
.end method

.method static synthetic access$4002(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mPingTestActive:Z

    return p1
.end method

.method static synthetic access$4102(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput p1, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mNoRecvPollCount:I

    return p1
.end method

.method static synthetic access$4202(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput p1, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->netStatPollPeriod:I

    return p1
.end method

.method static synthetic access$4302(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput p1, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->netStatPollPeriod:I

    return p1
.end method

.method static synthetic access$4400(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->netStatPollEnabled:Z

    return v0
.end method

.method static synthetic access$4500(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->netStatPollPeriod:I

    return v0
.end method

.method static synthetic access$4600(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mDataConnectionTracker:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)Lcom/android/internal/telephony/RetryManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)Lcom/android/internal/telephony/RetryManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)Lcom/android/internal/telephony/DataConnectionTracker$State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mIsWifiConnected:Z

    return p1
.end method

.method static synthetic access$902(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mIsWifiConnected:Z

    return p1
.end method

.method private addPendingApnRequest(Ljava/lang/String;)V
    .locals 2
    .parameter "type"

    .prologue
    .line 2146
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mPendingRequestedApns:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 2147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is added to list"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2148
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mPendingRequestedApns:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2150
    :cond_0
    return-void
.end method

.method private apnListToString(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/gsm/ApnSetting;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 2253
    .local p1, apns:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/ApnSetting;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2254
    .local v1, result:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .end local p0
    .local v2, size:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 2255
    const/16 v3, 0x5b

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/gsm/ApnSetting;

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/ApnSetting;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2254
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2259
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private buildWaitingApns()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/gsm/ApnSetting;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v6, ":"

    .line 2199
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2209
    .local v1, apnList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/ApnSetting;>;"
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/GSMPhone;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/SIMRecords;->getSIMOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    .line 2211
    .local v3, operator:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mCurrentRequestedApnType:Ljava/lang/String;

    const-string v5, "default"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2212
    iget-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->canSetPreferApn:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->preferredApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    if-eqz v4, :cond_2

    .line 2213
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Preferred APN:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->preferredApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    iget-object v5, v5, Lcom/android/internal/telephony/gsm/ApnSetting;->numeric:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->preferredApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2215
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->preferredApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/ApnSetting;->numeric:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2216
    const-string v4, "Waiting APN set to preferred APN"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2217
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->preferredApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2233
    :cond_0
    return-object v1

    .line 2220
    :cond_1
    const/4 v4, -0x1

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->setPreferredApn(I)V

    .line 2221
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->preferredApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    .line 2226
    :cond_2
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->allApns:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    .line 2227
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->allApns:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/ApnSetting;

    .line 2228
    .local v0, apn:Lcom/android/internal/telephony/gsm/ApnSetting;
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mCurrentRequestedApnType:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/gsm/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2229
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private cleanUpConnection(ZLjava/lang/String;)V
    .locals 6
    .parameter "tearDown"
    .parameter "reason"

    .prologue
    .line 803
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Clean up connection due to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 806
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mReconnectIntent:Landroid/app/PendingIntent;

    if-eqz v4, :cond_0

    .line 807
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "alarm"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 809
    .local v0, am:Landroid/app/AlarmManager;
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mReconnectIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v4}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 810
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mReconnectIntent:Landroid/app/PendingIntent;

    .line 813
    .end local v0           #am:Landroid/app/AlarmManager;
    :cond_0
    sget-object v4, Lcom/android/internal/telephony/DataConnectionTracker$State;->DISCONNECTING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    .line 815
    const/4 v3, 0x0

    .line 817
    .local v3, notificationDeferred:Z
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mCleanupCount:I

    .line 819
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->pdpList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/DataConnection;

    .line 820
    .local v1, conn:Lcom/android/internal/telephony/DataConnection;
    iget v4, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mCleanupCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mCleanupCount:I

    .line 822
    if-eqz p1, :cond_1

    .line 823
    const-string v4, "cleanUpConnection: teardown, call conn.disconnect"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 824
    const/16 v4, 0x19

    invoke-virtual {p0, v4, p2}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/DataConnection;->disconnect(Landroid/os/Message;)V

    .line 825
    const/4 v3, 0x1

    goto :goto_0

    .line 827
    :cond_1
    const-string v4, "cleanUpConnection: !tearDown, call conn.resetSynchronously"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 828
    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnection;->resetSynchronously()V

    .line 829
    const/4 v3, 0x0

    goto :goto_0

    .line 832
    .end local v1           #conn:Lcom/android/internal/telephony/DataConnection;
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->stopNetStatPoll()V

    .line 834
    if-nez v3, :cond_3

    .line 835
    const-string v4, "cleanupConnection: !notificationDeferred"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 836
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->gotoIdleAndNotifyDataConnection(Ljava/lang/String;)V

    .line 838
    :cond_3
    return-void
.end method

.method private clearAllPendingApnRequest()V
    .locals 1

    .prologue
    .line 2154
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mPendingRequestedApns:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mPendingRequestedApns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2155
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mPendingRequestedApns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2156
    :cond_0
    return-void
.end method

.method private createAllApnList()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 2079
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->allApns:Ljava/util/ArrayList;

    .line 2080
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getSIMOperatorNumeric()Ljava/lang/String;

    move-result-object v7

    .line 2082
    .local v7, operator:Ljava/lang/String;
    if-eqz v7, :cond_1

    .line 2086
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getSelectedNetworkProfile()Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;

    move-result-object v8

    .line 2087
    .local v8, profile:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;
    if-eqz v8, :cond_3

    iget-object v0, v8, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;->mName:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, v8, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;->mName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, v8, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;->mMccMnc:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, v8, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;->mMccMnc:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2090
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(numeric = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' AND nwkname = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v8, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " OR (numeric = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' AND nwkname = \'\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2099
    .local v3, selection:Ljava/lang/String;
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2102
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 2103
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 2104
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->createApnList(Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->allApns:Ljava/util/ArrayList;

    .line 2113
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2117
    .end local v3           #selection:Ljava/lang/String;
    .end local v6           #cursor:Landroid/database/Cursor;
    .end local v8           #profile:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->allApns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No APN found for carrier: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2119
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->preferredApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    .line 2120
    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->MISSING_UNKNOWN_APN:Lcom/android/internal/telephony/DataConnection$FailCause;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->notifyNoData(Lcom/android/internal/telephony/DataConnection$FailCause;)V

    .line 2129
    :cond_2
    :goto_1
    return-void

    .line 2093
    .restart local v8       #profile:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "numeric = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3       #selection:Ljava/lang/String;
    goto :goto_0

    .line 2122
    .end local v3           #selection:Ljava/lang/String;
    .end local v8           #profile:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;
    :cond_4
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->getPreferredApn()Lcom/android/internal/telephony/gsm/ApnSetting;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->preferredApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    .line 2123
    const-string v0, "Get PreferredAPN"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2124
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->preferredApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->preferredApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/ApnSetting;->numeric:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2125
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->preferredApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    .line 2126
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->setPreferredApn(I)V

    goto :goto_1
.end method

.method private createAllPdpList()V
    .locals 3

    .prologue
    .line 2132
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->pdpList:Ljava/util/ArrayList;

    .line 2135
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v2, 0x3

    if-ge v0, v2, :cond_0

    .line 2136
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-static {v2}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->makeDataConnection(Lcom/android/internal/telephony/gsm/GSMPhone;)Lcom/android/internal/telephony/gsm/GsmDataConnection;

    move-result-object v1

    .line 2137
    .local v1, pdp:Lcom/android/internal/telephony/DataConnection;
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->pdpList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2135
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2139
    .end local v1           #pdp:Lcom/android/internal/telephony/DataConnection;
    :cond_0
    return-void
.end method

.method private createApnList(Landroid/database/Cursor;)Ljava/util/ArrayList;
    .locals 17
    .parameter "cursor"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/gsm/ApnSetting;",
            ">;"
        }
    .end annotation

    .prologue
    .line 857
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 858
    .local v16, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/ApnSetting;>;"
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 860
    :cond_0
    const-string/jumbo v3, "type"

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p1

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->parseTypes(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 862
    .local v15, types:[Ljava/lang/String;
    new-instance v2, Lcom/android/internal/telephony/gsm/ApnSetting;

    const-string v3, "_id"

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p1

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const-string v4, "numeric"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p1

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "name"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p1

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "apn"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p1

    move v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "proxy"

    move-object/from16 v0, p1

    move-object v1, v7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, p1

    move v1, v7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "port"

    move-object/from16 v0, p1

    move-object v1, v8

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    move-object/from16 v0, p1

    move v1, v8

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "mmsc"

    move-object/from16 v0, p1

    move-object v1, v9

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    move-object/from16 v0, p1

    move v1, v9

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "mmsproxy"

    move-object/from16 v0, p1

    move-object v1, v10

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    move-object/from16 v0, p1

    move v1, v10

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, "mmsport"

    move-object/from16 v0, p1

    move-object v1, v11

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    move-object/from16 v0, p1

    move v1, v11

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "user"

    move-object/from16 v0, p1

    move-object v1, v12

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, p1

    move v1, v12

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "password"

    move-object/from16 v0, p1

    move-object v1, v13

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p1

    move v1, v13

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    const-string v14, "authtype"

    move-object/from16 v0, p1

    move-object v1, v14

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p1

    move v1, v14

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    invoke-direct/range {v2 .. v15}, Lcom/android/internal/telephony/gsm/ApnSetting;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;)V

    .line 876
    .local v2, apn:Lcom/android/internal/telephony/gsm/ApnSetting;
    move-object/from16 v0, v16

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 877
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 879
    .end local v2           #apn:Lcom/android/internal/telephony/gsm/ApnSetting;
    .end local v15           #types:[Ljava/lang/String;
    :cond_1
    return-object v16
.end method

.method private createPendingRequestedApnList()V
    .locals 1

    .prologue
    .line 2142
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mPendingRequestedApns:Ljava/util/ArrayList;

    .line 2143
    return-void
.end method

.method private destroyAllPdpList()V
    .locals 2

    .prologue
    .line 2176
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->pdpList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 2178
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->pdpList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->pdpList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 2180
    :cond_0
    return-void
.end method

.method private disconnectDun()V
    .locals 6

    .prologue
    .line 2453
    const-string v3, "[ActiveSync] disconnectDun()"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2455
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2456
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2460
    .local v1, dos:Ljava/io/DataOutputStream;
    const/16 v3, 0x9

    :try_start_0
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 2461
    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 2462
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 2463
    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2479
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/PhoneBase;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 2480
    :goto_0
    return-void

    .line 2474
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 2475
    .local v2, e:Ljava/io/IOException;
    const-string v3, "Error on disconnectDun()"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private doRecovery()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const-string/jumbo v5, "pdpReset"

    .line 1205
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->isAnyApnTypeActive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1206
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "pdp_watchdog_max_pdp_reset_fail_count"

    const/4 v3, 0x3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1209
    .local v0, maxPdpReset:I
    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mPdpResetCount:I

    if-ge v1, v0, :cond_1

    .line 1210
    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mPdpResetCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mPdpResetCount:I

    .line 1211
    const v1, 0xc3b6

    iget-wide v2, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->sentSinceLastRecv:J

    invoke-static {v1, v2, v3}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 1212
    const-string/jumbo v1, "pdpReset"

    invoke-direct {p0, v4, v5}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->cleanUpConnection(ZLjava/lang/String;)V

    .line 1222
    .end local v0           #maxPdpReset:I
    :cond_0
    :goto_0
    return-void

    .line 1214
    .restart local v0       #maxPdpReset:I
    :cond_1
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mPdpResetCount:I

    .line 1215
    const v1, 0xc3b8

    iget-wide v2, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->sentSinceLastRecv:J

    invoke-static {v1, v2, v3}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 1216
    const-string/jumbo v1, "pdpReset"

    invoke-direct {p0, v4, v5}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->cleanUpConnection(ZLjava/lang/String;)V

    goto :goto_0
.end method

.method private enableNewApnImmediate(Ljava/lang/String;)V
    .locals 1
    .parameter "type"

    .prologue
    .line 1704
    const-string v0, "Enable new APN immediately"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1707
    const-string v0, "default"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1708
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mDefaultRetryManager:Lcom/android/internal/telephony/RetryManager;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    .line 1713
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RetryManager;->resetRetryCount()V

    .line 1715
    const-string v0, "apnEnabled"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->trySetupData(Ljava/lang/String;)Z

    .line 1716
    return-void

    .line 1711
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mSecondaryRetryManager:Lcom/android/internal/telephony/RetryManager;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    goto :goto_0
.end method

.method private fetchDunApn()Lcom/android/internal/telephony/gsm/ApnSetting;
    .locals 5

    .prologue
    .line 2183
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 2184
    .local v1, c:Landroid/content/Context;
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "tether_dun_apn"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2186
    .local v0, apnData:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/internal/telephony/gsm/ApnSetting;->fromString(Ljava/lang/String;)Lcom/android/internal/telephony/gsm/ApnSetting;

    move-result-object v2

    .line 2187
    .local v2, dunSetting:Lcom/android/internal/telephony/gsm/ApnSetting;
    if-eqz v2, :cond_0

    move-object v3, v2

    .line 2190
    :goto_0
    return-object v3

    .line 2189
    :cond_0
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1040017

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2190
    invoke-static {v0}, Lcom/android/internal/telephony/gsm/ApnSetting;->fromString(Ljava/lang/String;)Lcom/android/internal/telephony/gsm/ApnSetting;

    move-result-object v3

    goto :goto_0
.end method

.method private findFreePdp()Lcom/android/internal/telephony/gsm/GsmDataConnection;
    .locals 9

    .prologue
    const-string v8, "Free pdp found: idx("

    const-string v7, ")"

    .line 883
    const/4 v3, 0x0

    .line 885
    .local v3, idx:I
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->pdpList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/DataConnection;

    .line 886
    .local v1, conn:Lcom/android/internal/telephony/DataConnection;
    move-object v0, v1

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmDataConnection;

    move-object v4, v0

    .line 888
    .local v4, pdp:Lcom/android/internal/telephony/gsm/GsmDataConnection;
    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->getApn()Lcom/android/internal/telephony/gsm/ApnSetting;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->getApn()Lcom/android/internal/telephony/gsm/ApnSetting;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mCurrentRequestedApnType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/gsm/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 889
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Free pdp found: idx("

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    move-object v5, v4

    .line 907
    .end local v1           #conn:Lcom/android/internal/telephony/DataConnection;
    .end local v4           #pdp:Lcom/android/internal/telephony/gsm/GsmDataConnection;
    :goto_1
    return-object v5

    .line 892
    .restart local v1       #conn:Lcom/android/internal/telephony/DataConnection;
    .restart local v4       #pdp:Lcom/android/internal/telephony/gsm/GsmDataConnection;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 893
    goto :goto_0

    .line 895
    .end local v1           #conn:Lcom/android/internal/telephony/DataConnection;
    .end local v4           #pdp:Lcom/android/internal/telephony/gsm/GsmDataConnection;
    :cond_1
    const/4 v3, 0x0

    .line 897
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->pdpList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/DataConnection;

    .line 898
    .restart local v1       #conn:Lcom/android/internal/telephony/DataConnection;
    move-object v0, v1

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmDataConnection;

    move-object v4, v0

    .line 900
    .restart local v4       #pdp:Lcom/android/internal/telephony/gsm/GsmDataConnection;
    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->isInactive()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 901
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Free pdp found: idx("

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "), state("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->getStateAsString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    move-object v5, v4

    .line 902
    goto :goto_1

    .line 904
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 905
    goto :goto_2

    .line 907
    .end local v1           #conn:Lcom/android/internal/telephony/DataConnection;
    .end local v4           #pdp:Lcom/android/internal/telephony/gsm/GsmDataConnection;
    :cond_3
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private getNextApn()Lcom/android/internal/telephony/gsm/ApnSetting;
    .locals 3

    .prologue
    .line 2241
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->waitingApns:Ljava/util/ArrayList;

    .line 2242
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/ApnSetting;>;"
    const/4 v0, 0x0

    .line 2244
    .local v0, apn:Lcom/android/internal/telephony/gsm/ApnSetting;
    if-eqz v1, :cond_0

    .line 2245
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2246
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #apn:Lcom/android/internal/telephony/gsm/ApnSetting;
    check-cast v0, Lcom/android/internal/telephony/gsm/ApnSetting;

    .line 2249
    .restart local v0       #apn:Lcom/android/internal/telephony/gsm/ApnSetting;
    :cond_0
    return-object v0
.end method

.method private getNextPendingApnRequest()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2159
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mPendingRequestedApns:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    move-object v1, v3

    .line 2172
    :goto_0
    return-object v1

    .line 2162
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mPendingRequestedApns:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2163
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mPendingRequestedApns:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2164
    .local v0, type:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->isApnTypeActive(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2165
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is already active"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move-object v1, v0

    .line 2169
    goto :goto_0

    .end local v0           #type:Ljava/lang/String;
    :cond_2
    move-object v1, v3

    .line 2172
    goto :goto_0
.end method

.method private getPreferredApn()Lcom/android/internal/telephony/gsm/ApnSetting;
    .locals 13

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v3, 0x0

    const-string v12, "_id"

    .line 2283
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->allApns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v3

    .line 2313
    :goto_0
    return-object v0

    .line 2287
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->PREFERAPN_URI:Landroid/net/Uri;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v12, v2, v10

    const-string v4, "name"

    aput-object v4, v2, v11

    const/4 v4, 0x2

    const-string v5, "apn"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2291
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 2292
    iput-boolean v11, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->canSetPreferApn:Z

    .line 2297
    :goto_1
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->canSetPreferApn:Z

    if-eqz v0, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 2299
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2300
    const-string v0, "_id"

    invoke-interface {v6, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 2301
    .local v9, pos:I
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->allApns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/gsm/ApnSetting;

    .line 2302
    .local v8, p:Lcom/android/internal/telephony/gsm/ApnSetting;
    iget v0, v8, Lcom/android/internal/telephony/gsm/ApnSetting;->id:I

    if-ne v0, v9, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mCurrentRequestedApnType:Ljava/lang/String;

    invoke-virtual {v8, v0}, Lcom/android/internal/telephony/gsm/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2303
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v0, v8

    .line 2304
    goto :goto_0

    .line 2294
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v8           #p:Lcom/android/internal/telephony/gsm/ApnSetting;
    .end local v9           #pos:I
    :cond_2
    iput-boolean v10, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->canSetPreferApn:Z

    goto :goto_1

    .line 2309
    :cond_3
    if-eqz v6, :cond_4

    .line 2310
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object v0, v3

    .line 2313
    goto :goto_0
.end method

.method private gotoIdleAndNotifyDataConnection(Ljava/lang/String;)V
    .locals 2
    .parameter "reason"

    .prologue
    .line 1175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "gotoIdleAndNotifyDataConnection: reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1176
    sget-object v0, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    .line 1177
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;)V

    .line 1178
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mActiveApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    .line 1180
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->waitingApns:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 1181
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->waitingApns:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->waitingApns:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 1182
    :cond_0
    return-void
.end method

.method private isAllDataConnectionInactive()Z
    .locals 5

    .prologue
    .line 565
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->pdpList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/DataConnection;

    .line 566
    .local v1, conn:Lcom/android/internal/telephony/DataConnection;
    move-object v0, v1

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmDataConnection;

    move-object v3, v0

    .line 567
    .local v3, pdp:Lcom/android/internal/telephony/gsm/GsmDataConnection;
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->isInactive()Z

    move-result v4

    if-nez v4, :cond_0

    .line 568
    const/4 v4, 0x0

    .line 571
    .end local v1           #conn:Lcom/android/internal/telephony/DataConnection;
    .end local v3           #pdp:Lcom/android/internal/telephony/gsm/GsmDataConnection;
    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private isAnyApnTypeActive()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 555
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->pdpList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/DataConnection;

    .line 556
    .local v1, conn:Lcom/android/internal/telephony/DataConnection;
    move-object v0, v1

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmDataConnection;

    move-object v3, v0

    .line 557
    .local v3, pdp:Lcom/android/internal/telephony/gsm/GsmDataConnection;
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->isActive()Z

    move-result v4

    if-ne v4, v5, :cond_0

    move v4, v5

    .line 561
    .end local v1           #conn:Lcom/android/internal/telephony/DataConnection;
    .end local v3           #pdp:Lcom/android/internal/telephony/gsm/GsmDataConnection;
    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private isApnTypeInactive(Ljava/lang/String;)Z
    .locals 5
    .parameter "type"

    .prologue
    .line 543
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->pdpList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/DataConnection;

    .line 544
    .local v1, conn:Lcom/android/internal/telephony/DataConnection;
    move-object v0, v1

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmDataConnection;

    move-object v3, v0

    .line 545
    .local v3, pdp:Lcom/android/internal/telephony/gsm/GsmDataConnection;
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->getApn()Lcom/android/internal/telephony/gsm/ApnSetting;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->getApn()Lcom/android/internal/telephony/gsm/ApnSetting;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/internal/telephony/gsm/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 546
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->isInactive()Z

    move-result v4

    if-nez v4, :cond_0

    .line 547
    const/4 v4, 0x0

    .line 551
    .end local v1           #conn:Lcom/android/internal/telephony/DataConnection;
    .end local v3           #pdp:Lcom/android/internal/telephony/gsm/GsmDataConnection;
    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private isDataAllowed()Z
    .locals 2

    .prologue
    .line 614
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v0

    .line 615
    .local v0, roaming:Z
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->getAnyDataEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->getDataOnRoamingEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mMasterDataEnabled:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isDuringActionOnApnType(Ljava/lang/String;)Z
    .locals 5
    .parameter "type"

    .prologue
    .line 575
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->pdpList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/DataConnection;

    .line 576
    .local v1, conn:Lcom/android/internal/telephony/DataConnection;
    move-object v0, v1

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmDataConnection;

    move-object v3, v0

    .line 577
    .local v3, pdp:Lcom/android/internal/telephony/gsm/GsmDataConnection;
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->getApn()Lcom/android/internal/telephony/gsm/ApnSetting;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->getApn()Lcom/android/internal/telephony/gsm/ApnSetting;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/internal/telephony/gsm/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 578
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->isInactive()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->isActive()Z

    move-result v4

    if-nez v4, :cond_0

    .line 579
    const/4 v4, 0x1

    .line 583
    .end local v1           #conn:Lcom/android/internal/telephony/DataConnection;
    .end local v3           #pdp:Lcom/android/internal/telephony/gsm/GsmDataConnection;
    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private isInternetSharingBlockedByActiveSync()Z
    .locals 3

    .prologue
    const-string v2, "gsm.allowIS.set"

    .line 2439
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 2440
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getAllowInternetSharing(Landroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2441
    const-string v0, "[ActiveSync] internet sharing is blocked"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2442
    const-string v0, "gsm.allowIS.set"

    const-string/jumbo v0, "true"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2443
    const-string v0, "[ActiveSync] onReceive() gsm.allowIS.set=true"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2444
    const/4 v0, 0x1

    .line 2449
    :goto_0
    return v0

    .line 2446
    :cond_0
    const-string v0, "[ActiveSync] internet sharing is NOT blocked"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2447
    const-string v0, "gsm.allowIS.set"

    const-string v0, "false"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2448
    const-string v0, "[ActiveSync] onReceive() gsm.allowIS.set=false"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2449
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyDefaultData(Ljava/lang/String;)V
    .locals 1
    .parameter "reason"

    .prologue
    .line 1159
    sget-object v0, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    .line 1160
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;)V

    .line 1161
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->startNetStatPoll()V

    .line 1164
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mFastDormPollNetStat:Lcom/android/internal/telephony/gsm/FastDormDataStatistics;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->startFastDorm()V

    .line 1165
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mFastDormPollNetStat:Lcom/android/internal/telephony/gsm/FastDormDataStatistics;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->resetPollStats()V

    .line 1166
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mFastDormPollNetStat:Lcom/android/internal/telephony/gsm/FastDormDataStatistics;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->run()V

    .line 1170
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RetryManager;->resetRetryCount()V

    .line 1171
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mReregisterOnReconnectFailure:Z

    .line 1172
    return-void
.end method

.method private notifyNoData(Lcom/android/internal/telephony/DataConnection$FailCause;)V
    .locals 1
    .parameter "lastFailCauseCode"

    .prologue
    .line 1503
    sget-object v0, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    .line 1504
    return-void
.end method

.method private onApnChanged()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const-string v5, "apnChanged"

    .line 1036
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->isAllDataConnectionInactive()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    move v0, v1

    .line 1039
    .local v0, isConnected:Z
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->updateCurrentCarrierInProvider()Z

    .line 1042
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.UPDATE_CURRENT_CARRIER_DONE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1048
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->createAllApnList()V

    .line 1049
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v2, Lcom/android/internal/telephony/DataConnectionTracker$State;->DISCONNECTING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v1, v2, :cond_0

    .line 1050
    const-string v1, "apnChanged"

    invoke-direct {p0, v0, v5}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->cleanUpConnection(ZLjava/lang/String;)V

    .line 1051
    if-nez v0, :cond_0

    .line 1053
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/RetryManager;->resetRetryCount()V

    .line 1054
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mReregisterOnReconnectFailure:Z

    .line 1055
    const-string v1, "apnChanged"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->trySetupData(Ljava/lang/String;)Z

    .line 1058
    :cond_0
    return-void

    .end local v0           #isConnected:Z
    :cond_1
    move v0, v4

    .line 1036
    goto :goto_0
.end method

.method private onGprsAttached()V
    .locals 3

    .prologue
    const-string v2, "gprsAttached"

    .line 648
    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->removeMessages(I)V

    .line 653
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->updateMultiplePdpCapacity()V

    .line 655
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->isAnyApnTypeActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 656
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->startNetStatPoll()V

    .line 657
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    const-string v1, "gprsAttached"

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;)V

    .line 660
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mFastDormPollNetStat:Lcom/android/internal/telephony/gsm/FastDormDataStatistics;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->initialFDTimer()V

    .line 677
    :goto_0
    return-void

    .line 663
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v1, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v0, v1, :cond_1

    .line 664
    const/4 v0, 0x0

    const-string v1, "gprsAttached"

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->cleanUpConnection(ZLjava/lang/String;)V

    .line 665
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RetryManager;->resetRetryCount()V

    .line 668
    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mIsWifiConnected:Z

    if-eqz v0, :cond_2

    .line 670
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->startNetStatPoll()V

    .line 671
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    const-string v1, "gprsAttached"

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;)V

    .line 675
    :cond_2
    const-string v0, "gprsAttached"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->trySetupData(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method private parseTypes(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .parameter "types"

    .prologue
    .line 847
    if-eqz p1, :cond_0

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 848
    :cond_0
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    .line 849
    .local v0, result:[Ljava/lang/String;
    const/4 v1, 0x0

    const-string v2, "*"

    aput-object v2, v0, v1

    .line 853
    :goto_0
    return-object v0

    .line 851
    .end local v0           #result:[Ljava/lang/String;
    :cond_1
    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .restart local v0       #result:[Ljava/lang/String;
    goto :goto_0
.end method

.method private pdpStatesHasActiveCID(Ljava/util/ArrayList;I)Z
    .locals 3
    .parameter
    .parameter "cid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/DataCallState;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .line 1021
    .local p1, states:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/DataCallState;>;"
    const/4 v0, 0x0

    .local v0, i:I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .end local p0
    .local v1, s:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 1022
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/DataCallState;

    iget v2, p0, Lcom/android/internal/telephony/DataCallState;->cid:I

    if-ne v2, p2, :cond_0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/DataCallState;

    iget v2, p0, Lcom/android/internal/telephony/DataCallState;->active:I

    if-eqz v2, :cond_0

    .line 1023
    const/4 v2, 0x1

    .line 1027
    :goto_1
    return v2

    .line 1021
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1027
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private pdpStatesHasCID(Ljava/util/ArrayList;I)Z
    .locals 3
    .parameter
    .parameter "cid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/DataCallState;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .line 1012
    .local p1, states:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/DataCallState;>;"
    const/4 v0, 0x0

    .local v0, i:I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .end local p0
    .local v1, s:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 1013
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/DataCallState;

    iget v2, p0, Lcom/android/internal/telephony/DataCallState;->cid:I

    if-ne v2, p2, :cond_0

    const/4 v2, 0x1

    .line 1016
    :goto_1
    return v2

    .line 1012
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1016
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private printProperties(Landroid/os/AsyncResult;)V
    .locals 8
    .parameter "ar"

    .prologue
    const-string v7, "net."

    const-string v6, " @net."

    .line 1784
    iget-object v4, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/telephony/gsm/GsmDataConnection;

    move-object v0, v4

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmDataConnection;

    move-object v2, v0

    .line 1785
    .local v2, pdp:Lcom/android/internal/telephony/gsm/GsmDataConnection;
    if-eqz v2, :cond_0

    .line 1786
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->getInterface()Ljava/lang/String;

    move-result-object v1

    .line 1787
    .local v1, intfName:Ljava/lang/String;
    const-string v4, "Connected properties..."

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1789
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "net."

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".gw"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1790
    .local v3, temp:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " @net."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".gw: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1792
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "net."

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".dns1"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1793
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " @net."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".dns1: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1795
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "net."

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".dns2"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1796
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " @net."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".dns2: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1798
    .end local v1           #intfName:Ljava/lang/String;
    .end local v3           #temp:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private reconnectAfterFail(Lcom/android/internal/telephony/DataConnection$FailCause;Ljava/lang/String;)V
    .locals 13
    .parameter "lastFailCauseCode"
    .parameter "reason"

    .prologue
    const/4 v6, 0x0

    const-string v12, "HTD"

    const-string v11, "H3G"

    const-string v10, "DRE"

    const-string v9, "3IE"

    .line 1426
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v5, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v4, v5, :cond_0

    .line 1427
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/RetryManager;->isRetryNeeded()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1428
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mCurrentRequestedApnType:Ljava/lang/String;

    const-string v5, "default"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1430
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    const-string v5, "apnFailed"

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;)V

    .line 1431
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mCurrentRequestedApnType:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->apnTypeToId(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p0, v4, v6}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->onEnableApn(II)V

    .line 1500
    :cond_0
    :goto_0
    return-void

    .line 1435
    :cond_1
    const-string v4, "PDP activate failed. Retry forever using last timeout"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1436
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/RetryManager;->retryForeverUsingLastTimeout()V

    .line 1452
    :cond_2
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/RetryManager;->getRetryTimer()I

    move-result v2

    .line 1455
    .local v2, nextReconnectDelay:I
    const-string/jumbo v4, "ro.csc.sales_code"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1456
    .local v3, salesCode:Ljava/lang/String;
    const-string v4, "H3G"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "3IE"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "HTS"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "DRE"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "HUI"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "HTD"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1458
    :cond_3
    sget-object v4, Lcom/android/internal/telephony/DataConnection$FailCause;->INSUFFICIENT_RESOURCES:Lcom/android/internal/telephony/DataConnection$FailCause;

    if-eq p1, v4, :cond_6

    sget-object v4, Lcom/android/internal/telephony/DataConnection$FailCause;->USER_AUTHENTICATION:Lcom/android/internal/telephony/DataConnection$FailCause;

    if-eq p1, v4, :cond_6

    sget-object v4, Lcom/android/internal/telephony/DataConnection$FailCause;->ACTIVATION_REJECT_GGSN:Lcom/android/internal/telephony/DataConnection$FailCause;

    if-eq p1, v4, :cond_6

    sget-object v4, Lcom/android/internal/telephony/DataConnection$FailCause;->ACTIVATION_REJECT_UNSPECIFIED:Lcom/android/internal/telephony/DataConnection$FailCause;

    if-eq p1, v4, :cond_6

    sget-object v4, Lcom/android/internal/telephony/DataConnection$FailCause;->SERVICE_OPTION_OUT_OF_ORDER:Lcom/android/internal/telephony/DataConnection$FailCause;

    if-eq p1, v4, :cond_6

    .line 1464
    const/4 v2, 0x0

    .line 1465
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Hutchison Customisation nextReconnectDelay = 0, lastFailCauseCode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1474
    :cond_4
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PDP activate failed. Scheduling next attempt for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    div-int/lit16 v5, v2, 0x3e8

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "s"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1477
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "alarm"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1479
    .local v0, am:Landroid/app/AlarmManager;
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.android.internal.telephony.gprs-reconnect"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1480
    .local v1, intent:Landroid/content/Intent;
    const-string/jumbo v4, "reason"

    invoke-virtual {v1, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1481
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v6, v1, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mReconnectIntent:Landroid/app/PendingIntent;

    .line 1483
    const/4 v4, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    int-to-long v7, v2

    add-long/2addr v5, v7

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mReconnectIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1488
    const-string v4, "H3G"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "3IE"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "HTS"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "DRE"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "HUI"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "HTD"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 1490
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/RetryManager;->increaseRetryCount()V

    .line 1493
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->shouldPostNotification(Lcom/android/internal/telephony/DataConnection$FailCause;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 1494
    const-string v4, "NOT Posting GPRS Unavailable notification -- likely transient error"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1469
    .end local v0           #am:Landroid/app/AlarmManager;
    .end local v1           #intent:Landroid/content/Intent;
    :cond_6
    const/16 v2, 0x2710

    .line 1470
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Hutchison Customisation nextReconnectDelay = 10, lastFailCauseCode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1497
    .restart local v0       #am:Landroid/app/AlarmManager;
    .restart local v1       #intent:Landroid/content/Intent;
    :cond_7
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->notifyNoData(Lcom/android/internal/telephony/DataConnection$FailCause;)V

    goto/16 :goto_0
.end method

.method private resetPollStats()V
    .locals 2

    .prologue
    const-wide/16 v0, -0x1

    .line 1197
    iput-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->txPkts:J

    .line 1198
    iput-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->rxPkts:J

    .line 1199
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->sentSinceLastRecv:J

    .line 1200
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->netStatPollPeriod:I

    .line 1201
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mNoRecvPollCount:I

    .line 1202
    return-void
.end method

.method private retryAfterDisconnected(Ljava/lang/String;)Z
    .locals 2
    .parameter "reason"

    .prologue
    .line 1417
    const/4 v0, 0x1

    .line 1419
    .local v0, retry:Z
    const-string/jumbo v1, "radioTurnedOff"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1420
    const/4 v0, 0x0

    .line 1422
    :cond_0
    return v0
.end method

.method private runPingTest()V
    .locals 8

    .prologue
    .line 1370
    const/4 v4, -0x1

    .line 1372
    .local v4, status:I
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v6, "pdp_watchdog_ping_address"

    invoke-static {v5, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1374
    .local v0, address:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v6, "pdp_watchdog_ping_deadline"

    const/4 v7, 0x5

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1376
    .local v1, deadline:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "pinging "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "s"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1377
    if-eqz v0, :cond_0

    const-string v5, "0.0.0.0"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1378
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "ping -c 1 -i 1 -w "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v3

    .line 1380
    .local v3, p:Ljava/lang/Process;
    invoke-virtual {v3}, Ljava/lang/Process;->waitFor()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    .line 1388
    .end local v0           #address:Ljava/lang/String;
    .end local v1           #deadline:I
    .end local v3           #p:Ljava/lang/Process;
    :cond_0
    :goto_0
    if-nez v4, :cond_1

    .line 1391
    const v5, 0xc3b6

    const/4 v6, -0x1

    invoke-static {v5, v6}, Landroid/util/EventLog;->writeEvent(II)I

    .line 1392
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mPdpResetCount:I

    .line 1393
    const/16 v5, 0x1b

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    .line 1398
    :goto_1
    return-void

    .line 1382
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 1383
    .local v2, e:Ljava/io/IOException;
    const-string/jumbo v5, "ping failed: IOException"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1384
    .end local v2           #e:Ljava/io/IOException;
    :catch_1
    move-exception v5

    move-object v2, v5

    .line 1385
    .local v2, e:Ljava/lang/Exception;
    const-string v5, "exception trying to ping"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1396
    .end local v2           #e:Ljava/lang/Exception;
    :cond_1
    const/16 v5, 0x1c

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1
.end method

.method private setPreferredApn(I)V
    .locals 4
    .parameter "pos"

    .prologue
    const/4 v3, 0x0

    .line 2268
    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->canSetPreferApn:Z

    if-nez v2, :cond_1

    .line 2280
    :cond_0
    :goto_0
    return-void

    .line 2272
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2273
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v2, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->PREFERAPN_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2275
    if-ltz p1, :cond_0

    .line 2276
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 2277
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "apn_id"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2278
    sget-object v2, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->PREFERAPN_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_0
.end method

.method private setupData(Ljava/lang/String;)Z
    .locals 6
    .parameter "reason"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 914
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->getNextApn()Lcom/android/internal/telephony/gsm/ApnSetting;

    move-result-object v0

    .line 915
    .local v0, apn:Lcom/android/internal/telephony/gsm/ApnSetting;
    if-nez v0, :cond_0

    move v3, v4

    .line 939
    :goto_0
    return v3

    .line 916
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->findFreePdp()Lcom/android/internal/telephony/gsm/GsmDataConnection;

    move-result-object v2

    .line 917
    .local v2, pdp:Lcom/android/internal/telephony/gsm/GsmDataConnection;
    if-nez v2, :cond_1

    .line 918
    const-string/jumbo v3, "setupData: No free GsmDataConnection found!"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    move v3, v4

    .line 919
    goto :goto_0

    .line 921
    :cond_1
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mActiveApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    .line 922
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mActivePdp:Lcom/android/internal/telephony/gsm/GsmDataConnection;

    .line 926
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mCurrentRequestedApnType:Ljava/lang/String;

    const-string v4, "default"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 927
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mDefaultRetryManager:Lcom/android/internal/telephony/RetryManager;

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    .line 932
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 933
    .local v1, msg:Landroid/os/Message;
    iput v5, v1, Landroid/os/Message;->what:I

    .line 934
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 935
    invoke-virtual {v2, v1, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->connect(Landroid/os/Message;Lcom/android/internal/telephony/gsm/ApnSetting;)V

    .line 937
    sget-object v3, Lcom/android/internal/telephony/DataConnectionTracker$State;->INITING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    .line 938
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3, p1}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;)V

    move v3, v5

    .line 939
    goto :goto_0

    .line 929
    .end local v1           #msg:Landroid/os/Message;
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mSecondaryRetryManager:Lcom/android/internal/telephony/RetryManager;

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    goto :goto_1
.end method

.method private shouldPostNotification(Lcom/android/internal/telephony/DataConnection$FailCause;)Z
    .locals 1
    .parameter "cause"

    .prologue
    .line 1406
    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->UNKNOWN:Lcom/android/internal/telephony/DataConnection$FailCause;

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showDialogOnInternetSharingBlockedByActiveSync()V
    .locals 3

    .prologue
    .line 2484
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10402ca

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2485
    .local v0, message:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 2486
    return-void
.end method

.method private startDelayedRetry(Lcom/android/internal/telephony/DataConnection$FailCause;Ljava/lang/String;)V
    .locals 0
    .parameter "cause"
    .parameter "reason"

    .prologue
    .line 2263
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->notifyNoData(Lcom/android/internal/telephony/DataConnection$FailCause;)V

    .line 2264
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->reconnectAfterFail(Lcom/android/internal/telephony/DataConnection$FailCause;Ljava/lang/String;)V

    .line 2265
    return-void
.end method

.method private startPeriodicPdpPoll()V
    .locals 3

    .prologue
    const/4 v0, 0x7

    .line 1191
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->removeMessages(I)V

    .line 1193
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x1388

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1194
    return-void
.end method

.method private trySetupData(Ljava/lang/String;)Z
    .locals 14
    .parameter "reason"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const-string v13, " dataEnabled="

    const-string v12, " UMTS="

    const-string v11, " MasterDataEnabled="

    .line 680
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "***trySetupData due to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-nez p1, :cond_0

    const-string v8, "(unspecified)"

    :goto_0
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mCurrReqApnType("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mCurrentRequestedApnType:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 683
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[DSAC DEB] trySetupData with mIsPsRestricted="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mIsPsRestricted:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 685
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v7}, Lcom/android/internal/telephony/PhoneBase;->getSimulatedRadioControl()Lcom/android/internal/telephony/test/SimulatedRadioControl;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 688
    sget-object v7, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    .line 689
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v7, p1}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;)V

    .line 691
    const-string v7, "GSM"

    const-string v8, "(fix?) We\'re on the simulator; assuming data is connected"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v10

    .line 777
    :goto_1
    return v7

    :cond_0
    move-object v8, p1

    .line 680
    goto :goto_0

    .line 695
    :cond_1
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v7, v7, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getCurrentGprsState()I

    move-result v2

    .line 696
    .local v2, gprsState:I
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v7, v7, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getDesiredPowerState()Z

    move-result v0

    .line 698
    .local v0, desiredPowerState:Z
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->findFreePdp()Lcom/android/internal/telephony/gsm/GsmDataConnection;

    move-result-object v5

    .line 699
    .local v5, pdp:Lcom/android/internal/telephony/gsm/GsmDataConnection;
    if-nez v5, :cond_6

    move v1, v9

    .line 701
    .local v1, freepdpAvailable:Z
    :goto_2
    if-ne v2, v10, :cond_2

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/GSMPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/ServiceState;->getState()I

    move-result v7

    if-nez v7, :cond_2

    .line 703
    const/4 v2, 0x0

    .line 705
    :cond_2
    if-eqz v1, :cond_9

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->isInactive()Z

    move-result v7

    if-eqz v7, :cond_9

    if-eqz v2, :cond_3

    iget-boolean v7, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->noAutoAttach:Z

    if-eqz v7, :cond_9

    :cond_3
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v7, v7, Lcom/android/internal/telephony/gsm/GSMPhone;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/SIMRecords;->getRecordsLoaded()Z

    move-result v7

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v7}, Lcom/android/internal/telephony/PhoneBase;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v7, v8, :cond_4

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v7, v7, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isConcurrentVoiceAndData()Z

    move-result v7

    if-eqz v7, :cond_9

    :cond_4
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->isDataAllowed()Z

    move-result v7

    if-eqz v7, :cond_9

    iget-boolean v7, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mIsPsRestricted:Z

    if-nez v7, :cond_9

    if-eqz v0, :cond_9

    .line 715
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->waitingApns:Ljava/util/ArrayList;

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->waitingApns:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 716
    :cond_5
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->buildWaitingApns()Ljava/util/ArrayList;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->waitingApns:Ljava/util/ArrayList;

    .line 717
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->waitingApns:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 718
    const-string v7, "No APN found"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 719
    sget-object v7, Lcom/android/internal/telephony/DataConnection$FailCause;->MISSING_UNKNOWN_APN:Lcom/android/internal/telephony/DataConnection$FailCause;

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->notifyNoData(Lcom/android/internal/telephony/DataConnection$FailCause;)V

    move v7, v9

    .line 720
    goto/16 :goto_1

    .end local v1           #freepdpAvailable:Z
    :cond_6
    move v1, v10

    .line 699
    goto :goto_2

    .line 723
    .restart local v1       #freepdpAvailable:Z
    :cond_7
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Create from allApns : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->allApns:Ljava/util/ArrayList;

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->apnListToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 728
    :cond_8
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Setup waitngApns : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->waitingApns:Ljava/util/ArrayList;

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->apnListToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 730
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->setupData(Ljava/lang/String;)Z

    move-result v7

    goto/16 :goto_1

    .line 733
    :cond_9
    if-eqz v5, :cond_b

    .line 734
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "trySetupData: Not ready for data: pdpslotAvailable="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " dataState="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->getStateAsString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " gprsState="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " sim="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v8, v8, Lcom/android/internal/telephony/gsm/GSMPhone;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/SIMRecords;->getRecordsLoaded()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " UMTS="

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v8, v8, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isConcurrentVoiceAndData()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " phoneState="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v8}, Lcom/android/internal/telephony/PhoneBase;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " isDataAllowed="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->isDataAllowed()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " dataEnabled="

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->getAnyDataEnabled()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " roaming="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v8}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " dataOnRoamingEnable="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->getDataOnRoamingEnabled()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ps restricted="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mIsPsRestricted:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " desiredPowerState="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " MasterDataEnabled="

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mMasterDataEnabled:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 763
    :goto_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->getAnyDataEnabled()Z

    move-result v7

    if-nez v7, :cond_a

    iget-boolean v7, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mIsWifiConnected:Z

    if-nez v7, :cond_a

    .line 764
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v7}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 765
    .local v6, sp:Landroid/content/SharedPreferences;
    const/4 v4, 0x0

    .line 767
    .local v4, isDataEnabledSetting:Z
    :try_start_0
    const-string v7, "connectivity"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v7

    invoke-interface {v7}, Landroid/net/IConnectivityManager;->getMobileDataEnabled()Z

    move-result v4

    .line 769
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "trySetupData() isDataEnabledSetting: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 773
    :goto_4
    const/4 v3, 0x0

    .line 774
    .local v3, isDataEnabledOnBoot:Z
    const-string v7, "disabled_on_boot_key"

    invoke-interface {v6, v7, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_c

    move v3, v10

    .line 775
    :goto_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "trySetupData() isDataEnabledOnBoot: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .end local v3           #isDataEnabledOnBoot:Z
    .end local v4           #isDataEnabledSetting:Z
    .end local v6           #sp:Landroid/content/SharedPreferences;
    :cond_a
    move v7, v9

    .line 777
    goto/16 :goto_1

    .line 749
    :cond_b
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "trySetupData: Not ready for data: pdpslotAvailable="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " dataState=(pdp is null)"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " gprsState="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " sim="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v8, v8, Lcom/android/internal/telephony/gsm/GSMPhone;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/SIMRecords;->getRecordsLoaded()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " UMTS="

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v8, v8, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isConcurrentVoiceAndData()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " phoneState="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v8}, Lcom/android/internal/telephony/PhoneBase;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " isDataAllowed="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->isDataAllowed()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " dataEnabled="

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->getAnyDataEnabled()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " roaming="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v8}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " dataOnRoamingEnable="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->getDataOnRoamingEnabled()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ps restricted="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mIsPsRestricted:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " desiredPowerState="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " MasterDataEnabled="

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mMasterDataEnabled:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_3

    .restart local v3       #isDataEnabledOnBoot:Z
    .restart local v4       #isDataEnabledSetting:Z
    .restart local v6       #sp:Landroid/content/SharedPreferences;
    :cond_c
    move v3, v9

    .line 774
    goto/16 :goto_5

    .line 770
    .end local v3           #isDataEnabledOnBoot:Z
    :catch_0
    move-exception v7

    goto/16 :goto_4
.end method

.method private trySetupNextData()V
    .locals 4

    .prologue
    const-string v3, ")"

    .line 782
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->getNextPendingApnRequest()Ljava/lang/String;

    move-result-object v0

    .line 783
    .local v0, nextRequestedApnType:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 784
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mCurrentRequestedApnType:Ljava/lang/String;

    .line 785
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "trySetupNextData: mCurrReqApnType("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mCurrentRequestedApnType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 786
    const/4 v1, 0x5

    const-string/jumbo v2, "pendingApnEnabled"

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    .line 791
    :goto_0
    return-void

    .line 789
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "trySetupNextData: Nothing to try(mCurrReqApnType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mCurrentRequestedApnType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateMultiplePdpCapacity()V
    .locals 6

    .prologue
    .line 2415
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/GSMPhone;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/SIMRecords;->getSIMOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    .line 2417
    .local v2, operator:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 2418
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    .line 2421
    .local v1, netType:I
    const/4 v4, 0x3

    if-lt v1, v4, :cond_1

    .line 2422
    const/4 v3, 0x2

    .line 2426
    .local v3, type:I
    :goto_0
    invoke-static {v2, v3}, Lcom/android/internal/telephony/gsm/PdpContextTable;->getContextNumber(Ljava/lang/String;I)I

    move-result v0

    .line 2428
    .local v0, contextNum:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "operator "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " supports "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "pdp context"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2430
    const/4 v4, 0x2

    if-ge v0, v4, :cond_2

    .line 2431
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mIsSimSupportMultiPdp:Z

    .line 2435
    .end local v0           #contextNum:I
    .end local v1           #netType:I
    .end local v3           #type:I
    :cond_0
    :goto_1
    return-void

    .line 2424
    .restart local v1       #netType:I
    :cond_1
    const/4 v3, 0x1

    .restart local v3       #type:I
    goto :goto_0

    .line 2433
    .restart local v0       #contextNum:I
    :cond_2
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mIsSimSupportMultiPdp:Z

    goto :goto_1
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .prologue
    .line 417
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForAvailable(Landroid/os/Handler;)V

    .line 418
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOffOrNotAvailable(Landroid/os/Handler;)V

    .line 419
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    .line 420
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForDataStateChanged(Landroid/os/Handler;)V

    .line 421
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->unregisterForVoiceCallEnded(Landroid/os/Handler;)V

    .line 422
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->unregisterForVoiceCallStarted(Landroid/os/Handler;)V

    .line 423
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->unregisterForGprsAttached(Landroid/os/Handler;)V

    .line 424
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->unregisterForGprsDetached(Landroid/os/Handler;)V

    .line 425
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->unregisterForRoamingOn(Landroid/os/Handler;)V

    .line 426
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->unregisterForRoamingOff(Landroid/os/Handler;)V

    .line 427
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->unregisterForPsRestrictedEnabled(Landroid/os/Handler;)V

    .line 428
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->unregisterForPsRestrictedDisabled(Landroid/os/Handler;)V

    .line 430
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 431
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->apnObserver:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$ApnChangeObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 433
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->destroyAllPdpList()V

    .line 435
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mFastDormPollNetStat:Lcom/android/internal/telephony/gsm/FastDormDataStatistics;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->dispose()V

    .line 436
    return-void
.end method

.method public declared-synchronized enableApnType(Ljava/lang/String;)I
    .locals 4
    .parameter "type"

    .prologue
    const/4 v3, 0x1

    .line 1679
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->apnTypeToId(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 1680
    .local v0, id:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1681
    const/4 v1, 0x3

    .line 1700
    :goto_0
    monitor-exit p0

    return v1

    .line 1684
    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableApnType("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), isApnTypeActive = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->isApnTypeActive(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1687
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->isApnTypeAvailable(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1688
    const-string/jumbo v1, "type not available"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1689
    const/4 v1, 0x2

    goto :goto_0

    .line 1695
    :cond_1
    const/4 v1, 0x1

    invoke-super {p0, v0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->setEnabled(IZ)V

    .line 1697
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->isApnTypeActive(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-eqz v1, :cond_2

    .line 1698
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    move v1, v3

    .line 1700
    goto :goto_0

    .line 1679
    .end local v0           #id:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 439
    const-string v0, "GSM"

    const-string v1, "GsmMultiDataConnectionTracker finalized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    return-void
.end method

.method protected getActiveApnString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 500
    const/4 v0, 0x0

    .line 501
    .local v0, result:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mActiveApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    if-eqz v1, :cond_0

    .line 502
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mActiveApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    iget-object v0, v1, Lcom/android/internal/telephony/gsm/ApnSetting;->apn:Ljava/lang/String;

    .line 504
    :cond_0
    return-object v0
.end method

.method public getActiveApnTypes()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 490
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mActiveApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    if-eqz v1, :cond_0

    .line 491
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mActiveApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    iget-object v0, v1, Lcom/android/internal/telephony/gsm/ApnSetting;->types:[Ljava/lang/String;

    .line 496
    .local v0, result:[Ljava/lang/String;
    :goto_0
    return-object v0

    .line 493
    .end local v0           #result:[Ljava/lang/String;
    :cond_0
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    .line 494
    .restart local v0       #result:[Ljava/lang/String;
    const/4 v1, 0x0

    const-string v2, "default"

    aput-object v2, v0, v1

    goto :goto_0
.end method

.method public getActiveState()Lcom/android/internal/telephony/DataConnectionTracker$State;
    .locals 1

    .prologue
    .line 456
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;

    return-object v0
.end method

.method public getAllDataConnections()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/DataConnection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 609
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->pdpList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 610
    .local v0, pdps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/DataConnection;>;"
    return-object v0
.end method

.method protected getDnsServers(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .parameter "apnType"

    .prologue
    .line 994
    if-nez p1, :cond_0

    .line 995
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mActivePdp:Lcom/android/internal/telephony/gsm/GsmDataConnection;

    if-eqz v4, :cond_2

    .line 996
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mActivePdp:Lcom/android/internal/telephony/gsm/GsmDataConnection;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->getDnsServers()[Ljava/lang/String;

    move-result-object v4

    .line 1007
    :goto_0
    return-object v4

    .line 999
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->pdpList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/DataConnection;

    .line 1000
    .local v1, conn:Lcom/android/internal/telephony/DataConnection;
    move-object v0, v1

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmDataConnection;

    move-object v3, v0

    .line 1001
    .local v3, pdp:Lcom/android/internal/telephony/gsm/GsmDataConnection;
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->getApn()Lcom/android/internal/telephony/gsm/ApnSetting;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->getApn()Lcom/android/internal/telephony/gsm/ApnSetting;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/internal/telephony/gsm/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1002
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->getDnsServers()[Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 1007
    .end local v1           #conn:Lcom/android/internal/telephony/DataConnection;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #pdp:Lcom/android/internal/telephony/gsm/GsmDataConnection;
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public getGateway(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "apnType"

    .prologue
    .line 977
    if-nez p1, :cond_0

    .line 978
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mActivePdp:Lcom/android/internal/telephony/gsm/GsmDataConnection;

    if-eqz v4, :cond_2

    .line 979
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mActivePdp:Lcom/android/internal/telephony/gsm/GsmDataConnection;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->getGatewayAddress()Ljava/lang/String;

    move-result-object v4

    .line 990
    :goto_0
    return-object v4

    .line 982
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->pdpList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/DataConnection;

    .line 983
    .local v1, conn:Lcom/android/internal/telephony/DataConnection;
    move-object v0, v1

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmDataConnection;

    move-object v3, v0

    .line 984
    .local v3, pdp:Lcom/android/internal/telephony/gsm/GsmDataConnection;
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->getApn()Lcom/android/internal/telephony/gsm/ApnSetting;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->getApn()Lcom/android/internal/telephony/gsm/ApnSetting;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/internal/telephony/gsm/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 985
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->getGatewayAddress()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 990
    .end local v1           #conn:Lcom/android/internal/telephony/DataConnection;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #pdp:Lcom/android/internal/telephony/gsm/GsmDataConnection;
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method protected getInterfaceName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "apnType"

    .prologue
    .line 943
    if-nez p1, :cond_0

    .line 944
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mActivePdp:Lcom/android/internal/telephony/gsm/GsmDataConnection;

    if-eqz v4, :cond_2

    .line 945
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mActivePdp:Lcom/android/internal/telephony/gsm/GsmDataConnection;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->getInterface()Ljava/lang/String;

    move-result-object v4

    .line 956
    :goto_0
    return-object v4

    .line 948
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->pdpList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/DataConnection;

    .line 949
    .local v1, conn:Lcom/android/internal/telephony/DataConnection;
    move-object v0, v1

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmDataConnection;

    move-object v3, v0

    .line 950
    .local v3, pdp:Lcom/android/internal/telephony/gsm/GsmDataConnection;
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->getApn()Lcom/android/internal/telephony/gsm/ApnSetting;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->getApn()Lcom/android/internal/telephony/gsm/ApnSetting;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/internal/telephony/gsm/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 951
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->getInterface()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 956
    .end local v1           #conn:Lcom/android/internal/telephony/DataConnection;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #pdp:Lcom/android/internal/telephony/gsm/GsmDataConnection;
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method protected getIpAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "apnType"

    .prologue
    .line 960
    if-nez p1, :cond_0

    .line 961
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mActivePdp:Lcom/android/internal/telephony/gsm/GsmDataConnection;

    if-eqz v4, :cond_2

    .line 962
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mActivePdp:Lcom/android/internal/telephony/gsm/GsmDataConnection;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->getIpAddress()Ljava/lang/String;

    move-result-object v4

    .line 973
    :goto_0
    return-object v4

    .line 965
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->pdpList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/DataConnection;

    .line 966
    .local v1, conn:Lcom/android/internal/telephony/DataConnection;
    move-object v0, v1

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmDataConnection;

    move-object v3, v0

    .line 967
    .local v3, pdp:Lcom/android/internal/telephony/gsm/GsmDataConnection;
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->getApn()Lcom/android/internal/telephony/gsm/ApnSetting;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->getApn()Lcom/android/internal/telephony/gsm/ApnSetting;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/internal/telephony/gsm/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 968
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->getIpAddress()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 973
    .end local v1           #conn:Lcom/android/internal/telephony/DataConnection;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #pdp:Lcom/android/internal/telephony/gsm/GsmDataConnection;
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public getState()Lcom/android/internal/telephony/DataConnectionTracker$State;
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 460
    const/4 v1, 0x0

    .line 461
    .local v1, activating:Z
    const/4 v3, 0x0

    .line 463
    .local v3, disconnecting:Z
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->pdpList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/DataConnection;

    .line 464
    .local v2, conn:Lcom/android/internal/telephony/DataConnection;
    move-object v0, v2

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmDataConnection;

    move-object v5, v0

    .line 466
    .local v5, pdp:Lcom/android/internal/telephony/gsm/GsmDataConnection;
    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->isActive()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 467
    sget-object v6, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    .line 485
    .end local v2           #conn:Lcom/android/internal/telephony/DataConnection;
    .end local v5           #pdp:Lcom/android/internal/telephony/gsm/GsmDataConnection;
    :goto_1
    return-object v6

    .line 469
    .restart local v2       #conn:Lcom/android/internal/telephony/DataConnection;
    .restart local v5       #pdp:Lcom/android/internal/telephony/gsm/GsmDataConnection;
    :cond_1
    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->isActivating()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 470
    const/4 v1, 0x1

    .line 472
    :cond_2
    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->isDisconnecting()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 473
    const/4 v3, 0x1

    goto :goto_0

    .line 476
    .end local v2           #conn:Lcom/android/internal/telephony/DataConnection;
    .end local v5           #pdp:Lcom/android/internal/telephony/gsm/GsmDataConnection;
    :cond_3
    if-ne v1, v7, :cond_4

    if-ne v3, v7, :cond_4

    .line 477
    sget-object v6, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    goto :goto_1

    .line 478
    :cond_4
    if-ne v1, v7, :cond_5

    if-nez v3, :cond_5

    .line 479
    sget-object v6, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    goto :goto_1

    .line 480
    :cond_5
    if-nez v1, :cond_6

    if-ne v3, v7, :cond_6

    .line 481
    sget-object v6, Lcom/android/internal/telephony/DataConnectionTracker$State;->DISCONNECTING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    goto :goto_1

    .line 482
    :cond_6
    if-nez v1, :cond_7

    if-nez v3, :cond_7

    .line 483
    sget-object v6, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    goto :goto_1

    .line 485
    :cond_7
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;

    goto :goto_1
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string/jumbo v4, "psRestrictEnabled"

    .line 2317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GSMDataConnTrack handleMessage "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2319
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIsTheCurrentActivePhone:Z

    if-nez v0, :cond_0

    .line 2320
    const-string v0, "Ignore GSM msgs since GSM phone is inactive"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2408
    :goto_0
    return-void

    .line 2324
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 2405
    invoke-super {p0, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 2326
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->onRecordsLoaded()V

    goto :goto_0

    .line 2330
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->onGprsDetached()V

    goto :goto_0

    .line 2334
    :sswitch_2
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->onGprsAttached()V

    goto :goto_0

    .line 2338
    :sswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-virtual {p0, v0, v2}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->onPdpStateChanged(Landroid/os/AsyncResult;Z)V

    goto :goto_0

    .line 2342
    :sswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-virtual {p0, v0, v3}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->onPdpStateChanged(Landroid/os/AsyncResult;Z)V

    goto :goto_0

    .line 2346
    :sswitch_5
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->onPollPdp()V

    goto :goto_0

    .line 2350
    :sswitch_6
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mPingTestActive:Z

    .line 2351
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->startNetStatPoll()V

    goto :goto_0

    .line 2355
    :sswitch_7
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mPingTestActive:Z

    .line 2356
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->doRecovery()V

    goto :goto_0

    .line 2360
    :sswitch_8
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->onApnChanged()V

    goto :goto_0

    .line 2370
    :sswitch_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[DSAC DEB] EVENT_PS_RESTRICT_ENABLED "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mIsPsRestricted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2371
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->stopNetStatPoll()V

    .line 2374
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mFastDormPollNetStat:Lcom/android/internal/telephony/gsm/FastDormDataStatistics;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2377
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mIsPsRestricted:Z

    goto :goto_0

    .line 2385
    :sswitch_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[DSAC DEB] EVENT_PS_RESTRICT_DISABLED "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mIsPsRestricted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2386
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mIsPsRestricted:Z

    .line 2387
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v1, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v0, v1, :cond_1

    .line 2388
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->startNetStatPoll()V

    .line 2391
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mFastDormPollNetStat:Lcom/android/internal/telephony/gsm/FastDormDataStatistics;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->initialFDTimer()V

    goto/16 :goto_0

    .line 2394
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v1, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v0, v1, :cond_2

    .line 2395
    const-string/jumbo v0, "psRestrictEnabled"

    invoke-direct {p0, v2, v4}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->cleanUpConnection(ZLjava/lang/String;)V

    .line 2396
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RetryManager;->resetRetryCount()V

    .line 2397
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mReregisterOnReconnectFailure:Z

    .line 2399
    :cond_2
    const-string/jumbo v0, "psRestrictEnabled"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->trySetupData(Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 2324
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x6 -> :sswitch_3
        0x7 -> :sswitch_5
        0xb -> :sswitch_4
        0x13 -> :sswitch_1
        0x1a -> :sswitch_2
        0x1b -> :sswitch_6
        0x1c -> :sswitch_7
        0x1d -> :sswitch_8
        0x20 -> :sswitch_9
        0x21 -> :sswitch_a
    .end sparse-switch
.end method

.method protected isApnTypeActive(Ljava/lang/String;)Z
    .locals 5
    .parameter "type"

    .prologue
    .line 531
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->pdpList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/DataConnection;

    .line 532
    .local v1, conn:Lcom/android/internal/telephony/DataConnection;
    move-object v0, v1

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmDataConnection;

    move-object v3, v0

    .line 533
    .local v3, pdp:Lcom/android/internal/telephony/gsm/GsmDataConnection;
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->getApn()Lcom/android/internal/telephony/gsm/ApnSetting;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->getApn()Lcom/android/internal/telephony/gsm/ApnSetting;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/internal/telephony/gsm/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 534
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->isActive()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 535
    const/4 v4, 0x1

    .line 539
    .end local v1           #conn:Lcom/android/internal/telephony/DataConnection;
    .end local v3           #pdp:Lcom/android/internal/telephony/gsm/GsmDataConnection;
    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method protected isApnTypeAvailable(Ljava/lang/String;)Z
    .locals 3
    .parameter "type"

    .prologue
    .line 595
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->allApns:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 596
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->allApns:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/ApnSetting;

    .line 597
    .local v0, apn:Lcom/android/internal/telephony/gsm/ApnSetting;
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 598
    const/4 v2, 0x1

    .line 602
    .end local v0           #apn:Lcom/android/internal/telephony/gsm/ApnSetting;
    .end local v1           #i$:Ljava/util/Iterator;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isDataConnectionAsDesired()Z
    .locals 2

    .prologue
    .line 517
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v0

    .line 519
    .local v0, roaming:Z
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/GSMPhone;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->getRecordsLoaded()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getCurrentGprsState()I

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->getDataOnRoamingEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mIsWifiConnected:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mIsPsRestricted:Z

    if-nez v1, :cond_1

    .line 524
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->isAnyApnTypeActive()Z

    move-result v1

    .line 526
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 2411
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GsmMultiDCT] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2412
    return-void
.end method

.method protected onCleanUpConnection(ZLjava/lang/String;)V
    .locals 0
    .parameter "tearDown"
    .parameter "reason"

    .prologue
    .line 2069
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->cleanUpConnection(ZLjava/lang/String;)V

    .line 2070
    return-void
.end method

.method protected onDataSetupComplete(Landroid/os/AsyncResult;)V
    .locals 14
    .parameter "ar"

    .prologue
    .line 1801
    const/4 v9, 0x0

    .line 1802
    .local v9, reason:Ljava/lang/String;
    iget-object v10, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v10, v10, Ljava/lang/String;

    if-eqz v10, :cond_0

    .line 1803
    iget-object v9, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    .end local v9           #reason:Ljava/lang/String;
    check-cast v9, Ljava/lang/String;

    .line 1806
    .restart local v9       #reason:Ljava/lang/String;
    :cond_0
    iget-object v10, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v10, :cond_8

    .line 1807
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/gsm/GsmDataConnection;

    move-object v0, v1

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmDataConnection;

    move-object v3, v0

    .line 1808
    .local v3, connectedPdp:Lcom/android/internal/telephony/gsm/GsmDataConnection;
    if-eqz v3, :cond_2

    .line 1809
    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mActivePdp:Lcom/android/internal/telephony/gsm/GsmDataConnection;

    .line 1810
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->getApn()Lcom/android/internal/telephony/gsm/ApnSetting;

    move-result-object v10

    iput-object v10, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mActiveApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    .line 1817
    :goto_0
    const-string v10, "default"

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->isApnTypeActive(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 1818
    const-string v10, "onDataSetupComplete gsm.defaultpdpcontext.active == true"

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1819
    const-string v10, "gsm.defaultpdpcontext.active"

    const-string/jumbo v11, "true"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1821
    iget-boolean v10, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->canSetPreferApn:Z

    if-eqz v10, :cond_4

    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->preferredApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    if-nez v10, :cond_4

    .line 1822
    const-string v10, "PREFERED APN is null"

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1823
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mActiveApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    if-nez v10, :cond_3

    .line 1824
    const-string v10, "FIX ME !!! onDataSetupComplete Find active APN not to leave mActiveApn as null"

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1825
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->pdpList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/DataConnection;

    .line 1826
    .local v2, conn:Lcom/android/internal/telephony/DataConnection;
    move-object v0, v2

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmDataConnection;

    move-object v8, v0

    .line 1827
    .local v8, pdp:Lcom/android/internal/telephony/gsm/GsmDataConnection;
    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->getApn()Lcom/android/internal/telephony/gsm/ApnSetting;

    move-result-object v10

    if-eqz v10, :cond_1

    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->getApn()Lcom/android/internal/telephony/gsm/ApnSetting;

    move-result-object v10

    const-string v11, "default"

    invoke-virtual {v10, v11}, Lcom/android/internal/telephony/gsm/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1828
    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->isActive()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1830
    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->getApn()Lcom/android/internal/telephony/gsm/ApnSetting;

    move-result-object v10

    iput-object v10, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mActiveApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    .line 1831
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mActiveApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    iput-object v10, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->preferredApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    .line 1832
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->preferredApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    iget v10, v10, Lcom/android/internal/telephony/gsm/ApnSetting;->id:I

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->setPreferredApn(I)V

    goto :goto_1

    .line 1813
    .end local v2           #conn:Lcom/android/internal/telephony/DataConnection;
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v8           #pdp:Lcom/android/internal/telephony/gsm/GsmDataConnection;
    :cond_2
    const-string v10, "ar.result == null: This should not happen"

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1838
    :cond_3
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mActiveApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    iput-object v10, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->preferredApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    .line 1839
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->preferredApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    iget v10, v10, Lcom/android/internal/telephony/gsm/ApnSetting;->id:I

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->setPreferredApn(I)V

    .line 1848
    :cond_4
    :goto_2
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->printProperties(Landroid/os/AsyncResult;)V

    .line 1850
    invoke-direct {p0, v9}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->notifyDefaultData(Ljava/lang/String;)V

    .line 1852
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->waitingApns:Ljava/util/ArrayList;

    if-eqz v10, :cond_5

    .line 1853
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->waitingApns:Ljava/util/ArrayList;

    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->waitingApns:Ljava/util/ArrayList;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 1858
    :cond_5
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->trySetupNextData()V

    .line 1914
    .end local v3           #connectedPdp:Lcom/android/internal/telephony/gsm/GsmDataConnection;
    .end local p1
    :cond_6
    :goto_3
    return-void

    .line 1843
    .restart local v3       #connectedPdp:Lcom/android/internal/telephony/gsm/GsmDataConnection;
    .restart local p1
    :cond_7
    const-string v10, "onDataSetupComplete gsm.defaultpdpcontext.active == false"

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1844
    const-string v10, "gsm.defaultpdpcontext.active"

    const-string v11, "false"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1862
    .end local v3           #connectedPdp:Lcom/android/internal/telephony/gsm/GsmDataConnection;
    :cond_8
    const/4 v4, 0x0

    .line 1865
    .local v4, failedPdpConnection:Lcom/android/internal/telephony/gsm/GsmDataConnection;
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .end local p1
    check-cast p1, Lcom/android/internal/telephony/DataConnection$FailResult;

    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/DataConnection$FailResult;

    move-object v5, v0

    .line 1866
    .local v5, failureResult:Lcom/android/internal/telephony/DataConnection$FailResult;
    invoke-virtual {v5}, Lcom/android/internal/telephony/DataConnection$FailResult;->getFailCause()Lcom/android/internal/telephony/DataConnection$FailCause;

    move-result-object v1

    .line 1867
    .local v1, cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    invoke-virtual {v5}, Lcom/android/internal/telephony/DataConnection$FailResult;->getConnection()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/gsm/GsmDataConnection;

    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmDataConnection;

    move-object v4, v0

    .line 1869
    if-eqz v4, :cond_9

    .line 1870
    const-string v10, "Receive Failed result"

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1871
    iput-object v4, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mActivePdp:Lcom/android/internal/telephony/gsm/GsmDataConnection;

    .line 1872
    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->getApn()Lcom/android/internal/telephony/gsm/ApnSetting;

    move-result-object v10

    iput-object v10, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mActiveApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    .line 1875
    :cond_9
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "PDP setup failed "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1878
    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnection$FailCause;->isEventLoggable()Z

    move-result v10

    if-eqz v10, :cond_a

    .line 1879
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v10}, Lcom/android/internal/telephony/PhoneBase;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v7

    check-cast v7, Landroid/telephony/gsm/GsmCellLocation;

    .line 1880
    .local v7, loc:Landroid/telephony/gsm/GsmCellLocation;
    const v10, 0xc3b9

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnection$FailCause;->ordinal()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    if-eqz v7, :cond_b

    invoke-virtual {v7}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v13

    :goto_4
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v13

    invoke-virtual {v13}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1886
    .end local v7           #loc:Landroid/telephony/gsm/GsmCellLocation;
    :cond_a
    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnection$FailCause;->isPermanentFail()Z

    move-result v10

    if-eqz v10, :cond_c

    .line 1887
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->notifyNoData(Lcom/android/internal/telephony/DataConnection$FailCause;)V

    .line 1888
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mCurrentRequestedApnType:Ljava/lang/String;

    const-string v11, "default"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    .line 1889
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    const-string v11, "apnFailed"

    invoke-virtual {v10, v11}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;)V

    .line 1890
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mCurrentRequestedApnType:Ljava/lang/String;

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->apnTypeToId(Ljava/lang/String;)I

    move-result v10

    const/4 v11, 0x0

    invoke-virtual {p0, v10, v11}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->onEnableApn(II)V

    goto/16 :goto_3

    .line 1880
    .restart local v7       #loc:Landroid/telephony/gsm/GsmCellLocation;
    :cond_b
    const/4 v13, -0x1

    goto :goto_4

    .line 1895
    .end local v7           #loc:Landroid/telephony/gsm/GsmCellLocation;
    :cond_c
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->waitingApns:Ljava/util/ArrayList;

    if-eqz v10, :cond_d

    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->waitingApns:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    const/4 v11, 0x1

    if-eq v10, v11, :cond_d

    .line 1896
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Removing waiting apns: current size("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->waitingApns:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1897
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->waitingApns:Ljava/util/ArrayList;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1900
    :cond_d
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->waitingApns:Ljava/util/ArrayList;

    if-eqz v10, :cond_e

    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->waitingApns:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_e

    .line 1902
    invoke-direct {p0, v1, v9}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->startDelayedRetry(Lcom/android/internal/telephony/DataConnection$FailCause;Ljava/lang/String;)V

    .line 1905
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->trySetupNextData()V

    goto/16 :goto_3

    .line 1908
    :cond_e
    sget-object v10, Lcom/android/internal/telephony/DataConnectionTracker$State;->SCANNING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    .line 1911
    const/4 v10, 0x5

    invoke-virtual {p0, v10, v9}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    const-wide/16 v11, 0x1388

    invoke-virtual {p0, v10, v11, v12}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_3
.end method

.method protected onDisconnectDone(Landroid/os/AsyncResult;)V
    .locals 8
    .parameter "ar"

    .prologue
    const-string v7, "gsm.defaultpdpcontext.active"

    const-string v6, "false"

    const-string v5, "default"

    .line 1920
    const/4 v2, 0x0

    .line 1921
    .local v2, reason:Ljava/lang/String;
    const-string v3, "EVENT_DISCONNECT_DONE"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1922
    iget-object v3, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v3, v3, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1923
    iget-object v2, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    .end local v2           #reason:Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 1928
    .restart local v2       #reason:Ljava/lang/String;
    :cond_0
    iget-object v3, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_6

    .line 1929
    iget-object v3, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    instance-of v3, v3, Lcom/android/internal/telephony/DataConnection$DisconnectResult;

    if-eqz v3, :cond_5

    .line 1930
    iget-object v3, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/DataConnection$DisconnectResult;

    move-object v0, v3

    check-cast v0, Lcom/android/internal/telephony/DataConnection$DisconnectResult;

    move-object v1, v0

    .line 1931
    .local v1, disconnectResult:Lcom/android/internal/telephony/DataConnection$DisconnectResult;
    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnection$DisconnectResult;->getConnection()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/gsm/GsmDataConnection;

    check-cast v3, Lcom/android/internal/telephony/gsm/GsmDataConnection;

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mActivePdp:Lcom/android/internal/telephony/gsm/GsmDataConnection;

    .line 1932
    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnection$DisconnectResult;->getApn()Lcom/android/internal/telephony/gsm/ApnSetting;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mActiveApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    .line 1944
    .end local v1           #disconnectResult:Lcom/android/internal/telephony/DataConnection$DisconnectResult;
    :goto_0
    sget-object v3, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    .line 1945
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3, v2}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;)V

    .line 1947
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mActivePdp:Lcom/android/internal/telephony/gsm/GsmDataConnection;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->resetSynchronously()V

    .line 1949
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->waitingApns:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    .line 1950
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->waitingApns:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->waitingApns:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 1953
    :cond_1
    const-string v3, "default"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->isApnTypeActive(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 1954
    const-string v3, "onDisconnectDone gsm.defaultpdpcontext.active == false"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1955
    const-string v3, "gsm.defaultpdpcontext.active"

    const-string v3, "false"

    invoke-static {v7, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1962
    :goto_1
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->isAllDataConnectionInactive()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1963
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mActiveApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    .line 1964
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->stopNetStatPoll()V

    .line 1967
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mFastDormPollNetStat:Lcom/android/internal/telephony/gsm/FastDormDataStatistics;

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1970
    const-string v3, "onDisconnectDone isAllDataConnectionInactive() gsm.defaultpdpcontext.active == false"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1971
    const-string v3, "gsm.defaultpdpcontext.active"

    const-string v3, "false"

    invoke-static {v7, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1974
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDisconnectDone mCleanupCount: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mCleanupCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1975
    iget v3, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mCleanupCount:I

    if-lez v3, :cond_3

    .line 1976
    iget v3, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mCleanupCount:I

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mCleanupCount:I

    .line 1981
    :cond_3
    iget-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mIsSimSupportMultiPdp:Z

    if-eqz v3, :cond_9

    .line 1982
    const-string v3, "default"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->isApnTypeActive(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->isEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1984
    const-string v3, "default"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->addPendingApnRequest(Ljava/lang/String;)V

    .line 1985
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->trySetupNextData()V

    .line 2000
    :cond_4
    :goto_2
    return-void

    .line 1935
    :cond_5
    const-string v3, "ar.result is not DisconnectResult instance"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1936
    iget-object v3, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/gsm/GsmDataConnection;

    check-cast v3, Lcom/android/internal/telephony/gsm/GsmDataConnection;

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mActivePdp:Lcom/android/internal/telephony/gsm/GsmDataConnection;

    .line 1937
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mActivePdp:Lcom/android/internal/telephony/gsm/GsmDataConnection;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->getApn()Lcom/android/internal/telephony/gsm/ApnSetting;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mActiveApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    goto/16 :goto_0

    .line 1941
    :cond_6
    const-string v3, "ar.result == null: This should not happen"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1958
    :cond_7
    const-string v3, "onDisconnectDone isApnTypeActive(Phone.APN_TYPE_DEFAULT) == true"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 1991
    :cond_8
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->trySetupNextData()V

    goto :goto_2

    .line 1995
    :cond_9
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->retryAfterDisconnected(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->isAllDataConnectionInactive()Z

    move-result v3

    if-eqz v3, :cond_4

    iget v3, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mCleanupCount:I

    if-nez v3, :cond_4

    .line 1997
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->trySetupData(Ljava/lang/String;)Z

    goto :goto_2
.end method

.method protected declared-synchronized onEnableApn(II)V
    .locals 13
    .parameter "apnId"
    .parameter "enabled"

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    const-string v9, "idx "

    const-string v9, ")"

    const-string v9, "default"

    .line 1521
    monitor-enter p0

    :try_start_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "EVENT_APN_ENABLE_REQUEST "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1522
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " dataEnabled = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->dataEnabled:[Z

    aget-boolean v10, v10, p1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", enabledCount = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->enabledCount:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", isApnTypeActive = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->apnIdToType(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->isApnTypeActive(Ljava/lang/String;)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1529
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->dataEnabled:[Z

    aget-boolean v9, v9, p1

    if-eqz p2, :cond_1

    move v10, v11

    :goto_0
    if-ne v9, v10, :cond_2

    .line 1530
    const-string v9, "Skip: ApnType is already enabled/disabled"

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1625
    :cond_0
    :goto_1
    monitor-exit p0

    return-void

    :cond_1
    move v10, v12

    .line 1529
    goto :goto_0

    .line 1534
    :cond_2
    if-ne p2, v11, :cond_5

    .line 1535
    :try_start_1
    iget v9, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->enabledCount:I

    if-nez v9, :cond_3

    .line 1536
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->clearAllPendingApnRequest()V

    .line 1539
    :cond_3
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->dataEnabled:[Z

    aget-boolean v9, v9, p1

    if-nez v9, :cond_4

    .line 1540
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->dataEnabled:[Z

    const/4 v10, 0x1

    aput-boolean v10, v9, p1

    .line 1541
    iget v9, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->enabledCount:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->enabledCount:I

    .line 1542
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onEnableApn() dataEnabled is set to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->dataEnabled:[Z

    aget-boolean v10, v10, p1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " & enabledCoun++: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->enabledCount:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1545
    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->apnIdToType(I)Ljava/lang/String;

    move-result-object v7

    .line 1546
    .local v7, type:Ljava/lang/String;
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->isApnTypeActive(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 1547
    iput-object v7, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mRequestedApnType:Ljava/lang/String;

    .line 1548
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->onEnableNewApn()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1521
    .end local v7           #type:Ljava/lang/String;
    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9

    .line 1553
    :cond_5
    :try_start_2
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->dataEnabled:[Z

    aget-boolean v9, v9, p1

    if-eqz v9, :cond_0

    .line 1554
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->dataEnabled:[Z

    const/4 v10, 0x0

    aput-boolean v10, v9, p1

    .line 1555
    iget v9, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->enabledCount:I

    sub-int/2addr v9, v11

    iput v9, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->enabledCount:I

    .line 1556
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onEnableApn() dataEnabled is set to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->dataEnabled:[Z

    aget-boolean v10, v10, p1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " & enabledCount--: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->enabledCount:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1558
    iget v9, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->enabledCount:I

    if-nez v9, :cond_6

    .line 1559
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->clearAllPendingApnRequest()V

    .line 1560
    const/4 v9, 0x1

    const-string v10, "dataDisabled"

    invoke-virtual {p0, v9, v10}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->onCleanUpConnection(ZLjava/lang/String;)V

    goto/16 :goto_1

    .line 1562
    :cond_6
    iget-boolean v9, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mIsSimSupportMultiPdp:Z

    if-nez v9, :cond_7

    .line 1563
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->dataEnabled:[Z

    const/4 v10, 0x0

    aget-boolean v9, v9, v10

    if-ne v9, v11, :cond_0

    const-string v9, "default"

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->isApnTypeActive(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "default"

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->isDuringActionOnApnType(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 1566
    const-string v9, "default"

    iput-object v9, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mRequestedApnType:Ljava/lang/String;

    .line 1567
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->onEnableNewApn()V

    goto/16 :goto_1

    .line 1575
    :cond_7
    const/4 v5, 0x0

    .line 1576
    .local v5, idx:I
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->pdpList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/DataConnection;

    .line 1577
    .local v2, conn:Lcom/android/internal/telephony/DataConnection;
    move-object v0, v2

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmDataConnection;

    move-object v6, v0

    .line 1578
    .local v6, pdp:Lcom/android/internal/telephony/gsm/GsmDataConnection;
    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->getApn()Lcom/android/internal/telephony/gsm/ApnSetting;

    move-result-object v9

    if-eqz v9, :cond_a

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->getApn()Lcom/android/internal/telephony/gsm/ApnSetting;

    move-result-object v9

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->apnIdToType(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/gsm/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a

    move v1, v11

    .line 1581
    .local v1, canHandle:Z
    :goto_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "idx "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->getStateAsString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", apn("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->getApn()Lcom/android/internal/telephony/gsm/ApnSetting;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "), "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "canHandle("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1583
    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->isInactive()Z

    move-result v9

    if-nez v9, :cond_d

    if-eqz v1, :cond_d

    .line 1587
    const/4 v8, 0x0

    .line 1588
    .local v8, usedByOther:Z
    const/4 v3, 0x0

    .local v3, i:I
    :goto_4
    const/4 v9, 0x5

    if-ge v3, v9, :cond_8

    .line 1589
    if-eq p1, v3, :cond_b

    .line 1590
    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->getApn()Lcom/android/internal/telephony/gsm/ApnSetting;

    move-result-object v9

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->apnIdToType(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/gsm/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_b

    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->dataEnabled:[Z

    aget-boolean v9, v9, v3

    if-eqz v9, :cond_b

    .line 1592
    const-string v9, "Apn used by other connection"

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1593
    const/4 v8, 0x1

    .line 1599
    :cond_8
    if-nez v8, :cond_9

    .line 1600
    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->isDisconnecting()Z

    move-result v9

    if-eqz v9, :cond_c

    .line 1601
    const-string v9, "Already in disconnecting state"

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1612
    .end local v3           #i:I
    .end local v8           #usedByOther:Z
    :cond_9
    :goto_5
    add-int/lit8 v5, v5, 0x1

    .line 1613
    goto/16 :goto_2

    .end local v1           #canHandle:Z
    :cond_a
    move v1, v12

    .line 1578
    goto/16 :goto_3

    .line 1588
    .restart local v1       #canHandle:Z
    .restart local v3       #i:I
    .restart local v8       #usedByOther:Z
    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 1604
    :cond_c
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Disconnect pdp("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1605
    const/16 v9, 0x19

    const-string v10, "apnDisabled"

    invoke-virtual {p0, v9, v10}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->disconnect(Landroid/os/Message;)V

    goto :goto_5

    .line 1610
    .end local v3           #i:I
    .end local v8           #usedByOther:Z
    :cond_d
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "idx "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " pass!!"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_5

    .line 1616
    .end local v1           #canHandle:Z
    .end local v2           #conn:Lcom/android/internal/telephony/DataConnection;
    .end local v6           #pdp:Lcom/android/internal/telephony/gsm/GsmDataConnection;
    :cond_e
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->dataEnabled:[Z

    const/4 v10, 0x0

    aget-boolean v9, v9, v10

    if-ne v9, v11, :cond_0

    const-string v9, "default"

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->isApnTypeActive(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "default"

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->isDuringActionOnApnType(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 1619
    const-string v9, "default"

    iput-object v9, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mRequestedApnType:Ljava/lang/String;

    .line 1620
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->onEnableNewApn()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1
.end method

.method protected onEnableNewApn()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const-string v3, "Enable new APN: mCurrReqApnType("

    const-string v2, ")"

    .line 1629
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Enable new APN: mRequestedApnType("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mRequestedApnType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1634
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mIsSimSupportMultiPdp:Z

    if-nez v0, :cond_0

    .line 1635
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mRequestedApnType:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mCurrentRequestedApnType:Ljava/lang/String;

    .line 1637
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->clearAllPendingApnRequest()V

    .line 1638
    const-string v0, "apnSwitched"

    invoke-direct {p0, v4, v0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->cleanUpConnection(ZLjava/lang/String;)V

    .line 1666
    :goto_0
    return-void

    .line 1645
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mPendingRequestedApns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-ne v0, v4, :cond_3

    .line 1646
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mRequestedApnType:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->isDuringActionOnApnType(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mCurrentRequestedApnType:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->isDuringActionOnApnType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1651
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mRequestedApnType:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->addPendingApnRequest(Ljava/lang/String;)V

    .line 1652
    const-string v0, "Already active or action in progress(put into pending list)"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1653
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Enable new APN: mCurrReqApnType("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mCurrentRequestedApnType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1656
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mRequestedApnType:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mCurrentRequestedApnType:Ljava/lang/String;

    .line 1657
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Enable new APN: mCurrReqApnType("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mCurrentRequestedApnType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1658
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mCurrentRequestedApnType:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->enableNewApnImmediate(Ljava/lang/String;)V

    goto :goto_0

    .line 1662
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mRequestedApnType:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->addPendingApnRequest(Ljava/lang/String;)V

    .line 1663
    const-string/jumbo v0, "put into pending list"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1664
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Enable new APN: mCurrReqApnType("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mCurrentRequestedApnType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected onGprsDetached()V
    .locals 4

    .prologue
    const-string v3, "gprsDetached"

    .line 629
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->stopNetStatPoll()V

    .line 632
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mFastDormPollNetStat:Lcom/android/internal/telephony/gsm/FastDormDataStatistics;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 635
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    const-string v2, "gprsDetached"

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;)V

    .line 640
    const/16 v1, 0x22

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 641
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 642
    const-string v1, "gprsDetached"

    iput-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 643
    const-wide/32 v1, 0x1d4c0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 644
    return-void
.end method

.method protected onPdpStateChanged(Landroid/os/AsyncResult;Z)V
    .locals 14
    .parameter "ar"
    .parameter "explicitPoll"

    .prologue
    const v13, 0xc3bd

    const/4 v12, 0x2

    const/4 v11, 0x0

    const/4 v10, -0x1

    const/4 v9, 0x1

    .line 1069
    iget-object v7, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v7, Ljava/util/ArrayList;

    move-object v0, v7

    check-cast v0, Ljava/util/ArrayList;

    move-object v6, v0

    .line 1071
    .local v6, pdpStates:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/DataCallState;>;"
    iget-object v7, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v7, :cond_1

    .line 1156
    :cond_0
    :goto_0
    return-void

    .line 1078
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->isAnyApnTypeActive()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1086
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->pdpList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/DataConnection;

    .line 1087
    .local v2, conn:Lcom/android/internal/telephony/DataConnection;
    move-object v0, v2

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmDataConnection;

    move-object v5, v0

    .line 1088
    .local v5, pdp:Lcom/android/internal/telephony/gsm/GsmDataConnection;
    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->isActive()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1091
    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->getCid()I

    move-result v1

    .line 1093
    .local v1, cid:I
    invoke-direct {p0, v6, v1}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->pdpStatesHasCID(Ljava/util/ArrayList;I)Z

    move-result v7

    if-nez v7, :cond_4

    .line 1109
    const-string v7, "PDP connection has dropped. Reconnecting"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1112
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v7}, Lcom/android/internal/telephony/PhoneBase;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v4

    check-cast v4, Landroid/telephony/gsm/GsmCellLocation;

    .line 1113
    .local v4, loc:Landroid/telephony/gsm/GsmCellLocation;
    new-array v7, v12, [Ljava/lang/Object;

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v8

    :goto_2
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v13, v7}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1117
    const-string/jumbo v7, "pdpDropped"

    invoke-direct {p0, v9, v7}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->cleanUpConnection(ZLjava/lang/String;)V

    goto :goto_0

    :cond_3
    move v8, v10

    .line 1113
    goto :goto_2

    .line 1119
    .end local v4           #loc:Landroid/telephony/gsm/GsmCellLocation;
    :cond_4
    invoke-direct {p0, v6, v1}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->pdpStatesHasActiveCID(Ljava/util/ArrayList;I)Z

    move-result v7

    if-nez v7, :cond_2

    .line 1124
    if-nez p2, :cond_5

    .line 1126
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v7, v7, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v8, 0xb

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/android/internal/telephony/CommandsInterface;->getPDPContextList(Landroid/os/Message;)V

    .line 1129
    const/16 p2, 0x1

    goto :goto_1

    .line 1140
    :cond_5
    const-string v7, "PDP connection has dropped (active=false case).  Reconnecting"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1144
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v7}, Lcom/android/internal/telephony/PhoneBase;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v4

    check-cast v4, Landroid/telephony/gsm/GsmCellLocation;

    .line 1145
    .restart local v4       #loc:Landroid/telephony/gsm/GsmCellLocation;
    new-array v7, v12, [Ljava/lang/Object;

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v8

    :goto_3
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v13, v7}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1149
    const-string/jumbo v7, "pdpDropped"

    invoke-direct {p0, v9, v7}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->cleanUpConnection(ZLjava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    move v8, v10

    .line 1145
    goto :goto_3
.end method

.method protected onPollPdp()V
    .locals 3

    .prologue
    .line 2016
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->isAnyApnTypeActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2018
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xb

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getPDPContextList(Landroid/os/Message;)V

    .line 2019
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x1388

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2021
    :cond_0
    return-void
.end method

.method protected onRadioAvailable()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1751
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getSimulatedRadioControl()Lcom/android/internal/telephony/test/SimulatedRadioControl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1754
    sget-object v0, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    .line 1755
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;)V

    .line 1757
    const-string v0, "GSM"

    const-string v1, "We\'re on the simulator; assuming data is connected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1760
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->isAllDataConnectionInactive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1761
    const/4 v0, 0x1

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->cleanUpConnection(ZLjava/lang/String;)V

    .line 1763
    :cond_1
    return-void
.end method

.method protected onRadioOffOrNotAvailable()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1768
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RetryManager;->resetRetryCount()V

    .line 1769
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mReregisterOnReconnectFailure:Z

    .line 1771
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getSimulatedRadioControl()Lcom/android/internal/telephony/test/SimulatedRadioControl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1774
    const-string v0, "GSM"

    const-string v1, "We\'re on the simulator; assuming radio off is meaningless"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1781
    :goto_0
    return-void

    .line 1776
    :cond_0
    const-string v0, "Radio is off and clean up all connection"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1778
    const-string v0, "default"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->addPendingApnRequest(Ljava/lang/String;)V

    .line 1779
    const-string/jumbo v0, "radioTurnedOff"

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->cleanUpConnection(ZLjava/lang/String;)V

    goto :goto_0
.end method

.method protected onRecordsLoaded()V
    .locals 2

    .prologue
    .line 1510
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->updateMultiplePdpCapacity()V

    .line 1512
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->createAllApnList()V

    .line 1513
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v1, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v0, v1, :cond_0

    .line 1514
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->cleanUpConnection(ZLjava/lang/String;)V

    .line 1516
    :cond_0
    const/4 v0, 0x5

    const-string/jumbo v1, "simLoaded"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    .line 1517
    return-void
.end method

.method protected onResetDone(Landroid/os/AsyncResult;)V
    .locals 2
    .parameter "ar"

    .prologue
    .line 2007
    const-string v1, "EVENT_RESET_DONE"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2008
    const/4 v0, 0x0

    .line 2009
    .local v0, reason:Ljava/lang/String;
    iget-object v1, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2010
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    .end local v0           #reason:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 2012
    .restart local v0       #reason:Ljava/lang/String;
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->gotoIdleAndNotifyDataConnection(Ljava/lang/String;)V

    .line 2013
    return-void
.end method

.method protected onRoamingOff()V
    .locals 1

    .prologue
    .line 1737
    const-string/jumbo v0, "roamingOff"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->trySetupData(Ljava/lang/String;)Z

    .line 1738
    return-void
.end method

.method protected onRoamingOn()V
    .locals 3

    .prologue
    const-string/jumbo v2, "roamingOn"

    .line 1742
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->getDataOnRoamingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1743
    const-string/jumbo v0, "roamingOn"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->trySetupData(Ljava/lang/String;)Z

    .line 1748
    :goto_0
    return-void

    .line 1745
    :cond_0
    const-string v0, "Tear down data connection on roaming."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1746
    const/4 v0, 0x1

    const-string/jumbo v1, "roamingOn"

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->cleanUpConnection(ZLjava/lang/String;)V

    goto :goto_0
.end method

.method protected onSetDataEnabled(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 1723
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mMasterDataEnabled:Z

    if-eq v0, p1, :cond_0

    .line 1724
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mMasterDataEnabled:Z

    .line 1725
    if-eqz p1, :cond_1

    .line 1726
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RetryManager;->resetRetryCount()V

    .line 1727
    const-string v0, "dataEnabled"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->onTrySetupData(Ljava/lang/String;)Z

    .line 1733
    :cond_0
    :goto_0
    return-void

    .line 1729
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->clearAllPendingApnRequest()V

    .line 1730
    const/4 v0, 0x1

    const-string v1, "dataDisabled"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->onCleanUpConnection(ZLjava/lang/String;)V

    goto :goto_0
.end method

.method protected onTrySetupData(Ljava/lang/String;)Z
    .locals 1
    .parameter "reason"

    .prologue
    .line 1719
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->trySetupData(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected onVoiceCallEnded()V
    .locals 3

    .prologue
    const-string v2, "2GVoiceCallEnded"

    .line 2041
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->isAnyApnTypeActive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2042
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isConcurrentVoiceAndData()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2043
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->startNetStatPoll()V

    .line 2046
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mFastDormPollNetStat:Lcom/android/internal/telephony/gsm/FastDormDataStatistics;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->initialFDTimer()V

    .line 2049
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    const-string v1, "2GVoiceCallEnded"

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;)V

    .line 2058
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->trySetupNextData()V

    .line 2066
    :goto_1
    return-void

    .line 2052
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->resetPollStats()V

    goto :goto_0

    .line 2061
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RetryManager;->resetRetryCount()V

    .line 2062
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mReregisterOnReconnectFailure:Z

    .line 2064
    const-string v0, "2GVoiceCallEnded"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->trySetupData(Ljava/lang/String;)Z

    goto :goto_1
.end method

.method protected onVoiceCallStarted()V
    .locals 2

    .prologue
    .line 2024
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->isAnyApnTypeActive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isConcurrentVoiceAndData()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2025
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->stopNetStatPoll()V

    .line 2028
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mFastDormPollNetStat:Lcom/android/internal/telephony/gsm/FastDormDataStatistics;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2031
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    const-string v1, "2GVoiceCallStarted"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;)V

    .line 2036
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mCurrentRequestedApnType:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->addPendingApnRequest(Ljava/lang/String;)V

    .line 2038
    :cond_0
    return-void
.end method

.method protected restartRadio()V
    .locals 4

    .prologue
    const-string v3, "net.ppp.reset-by-timeout"

    .line 1247
    const-string v1, "************TURN OFF RADIO**************"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1248
    const/4 v1, 0x1

    const-string/jumbo v2, "radioTurnedOff"

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->cleanUpConnection(ZLjava/lang/String;)V

    .line 1249
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->powerOffRadioSafely()V

    .line 1258
    const-string v1, "net.ppp.reset-by-timeout"

    const-string v1, "0"

    invoke-static {v3, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1259
    .local v0, reset:I
    const-string v1, "net.ppp.reset-by-timeout"

    add-int/lit8 v1, v0, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1260
    return-void
.end method

.method protected setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V
    .locals 4
    .parameter "s"

    .prologue
    .line 443
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 444
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v0, p1, :cond_0

    .line 445
    const v0, 0xc3c1

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {v3}, Lcom/android/internal/telephony/DataConnectionTracker$State;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/android/internal/telephony/DataConnectionTracker$State;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 446
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;

    .line 449
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v1, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v0, v1, :cond_1

    .line 450
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->waitingApns:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 451
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->waitingApns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 453
    :cond_1
    return-void
.end method

.method protected startNetStatPoll()V
    .locals 1

    .prologue
    .line 1225
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->isAnyApnTypeActive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mPingTestActive:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->netStatPollEnabled:Z

    if-nez v0, :cond_0

    .line 1226
    const-string v0, "Start poll NetStat"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1227
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->resetPollStats()V

    .line 1228
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->netStatPollEnabled:Z

    .line 1229
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mPollNetStat:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1232
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->NONE:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->activity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    .line 1233
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->notifyDataActivity()V

    .line 1234
    return-void
.end method

.method protected stopNetStatPoll()V
    .locals 1

    .prologue
    .line 1237
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->netStatPollEnabled:Z

    .line 1240
    sget-object v0, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->NONE:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->activity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    .line 1241
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->notifyDataActivity()V

    .line 1242
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mPollNetStat:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1243
    const-string v0, "Stop poll NetStat"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1244
    return-void
.end method
