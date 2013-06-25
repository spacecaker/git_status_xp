.class final Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;
.super Lcom/android/internal/telephony/ServiceStateTracker;
.source "GsmServiceStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$9;,
        Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;
    }
.end annotation


# static fields
.field static final CS_DISABLED:I = 0x3ec

.field static final CS_EMERGENCY_ENABLED:I = 0x3ee

.field static final CS_ENABLED:I = 0x3eb

.field static final CS_NORMAL_ENABLED:I = 0x3ed

.field static final CS_NOTIFICATION:I = 0x3e7

.field static final DATA_ROAMING_NATIONAL:I = 0x1

.field static final DATA_ROAMING_OFF:I = 0x0

.field static final DATA_ROAMING_ON:I = 0x2

.field static final DBG:Z = true

.field static final DEFAULT_GPRS_CHECK_PERIOD_MILLIS:I = 0xea60

.field private static final DIALOG_TIMEOUT:I = 0x1d4c0

.field private static final FOCUS_BEEP_VOLUME:I = 0x64

.field static final HOMEZONE_CITY:I = 0x29a

.field static final HOMEZONE_HOME:I = 0x309

.field private static final KEY_SIM_PROFILE_MCCMNC:Ljava/lang/String; = "simprof.key.mccmnc"

.field private static final KEY_SIM_PROFILE_NWK_NAME:Ljava/lang/String; = "simprof.key.nwkname"

.field static final LOG_TAG:Ljava/lang/String; = "GSM"

.field static final MAX_DISP_O2_HOMEZONE_TAG_LEN:I = 0xd

.field static final MAX_NUM_DATA_STATE_READS:I = 0x96

.field private static final MSG_ID_TIMEOUT:I = 0x1

.field public static final NETWORK_SELECTION_KEY:Ljava/lang/String; = "network_selection_key"

.field static final PS_DISABLED:I = 0x3ea

.field static final PS_ENABLED:I = 0x3e9

.field static final PS_NOTIFICATION:I = 0x378

.field private static final SIM_NUMERIC_VIRGIN:Ljava/lang/String; = "23430"

.field private static final SIM_PROFILE_PREFERENCES_NAME:Ljava/lang/String; = "simprof.preferences_name"

.field private static final WAKELOCK_TAG:Ljava/lang/String; = "ServiceStateTracker"

.field private static isManagedRoamingDialogDisplayed:Z


# instance fields
.field private MccNumChanged:Z

.field private PrevMcc:Ljava/lang/String;

.field private SUBSET_CODE_SIZE:I

.field allNetworkName:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;",
            ">;"
        }
    .end annotation
.end field

.field cellLoc:Landroid/telephony/gsm/GsmCellLocation;

.field private countCheckDataStateReads:I

.field private cr:Landroid/content/ContentResolver;

.field private curPlmn:Ljava/lang/String;

.field private curSpn:Ljava/lang/String;

.field private curSpnRule:I

.field private gprsAttachedRegistrants:Landroid/os/RegistrantList;

.field private gprsDetachedRegistrants:Landroid/os/RegistrantList;

.field private gprsState:I

.field private mAutoTimeObserver:Landroid/database/ContentObserver;

.field private mCurrentValue:Z

.field private mDST:I

.field private mDataRoaming:Z

.field mDialogOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

.field private mEmergencyOnly:Z

.field private mGotCountryCode:Z

.field private mGsmRoaming:Z

.field private mHsdpaEnabled:Z

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsDoNotify:Z

.field private mIsFiltered:Z

.field private mIsProfileSelected:Z

.field private mIsSPCodeUsed:Z

.field private mIsSubsetCodeUsed:Z

.field private mListener:Landroid/content/DialogInterface$OnClickListener;

.field mManagedRoamingDialogOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

.field private mNeedFixZone:Z

.field private mNeedToRegForSimLoaded:Z

.field private mNotification:Landroid/app/Notification;

.field private mPreValue:Z

.field mPreferredNetworkType:I

.field mRegState:I

.field private mReportedGprsNoReg:Z

.field mSavedAtTime:J

.field mSavedTime:J

.field mSavedTimeZone:Ljava/lang/String;

.field mSelectedNwkProfile:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;

.field private mStartedGprsRegCheck:Z

.field mTimeoutHandler:Landroid/os/Handler;

.field private mToneGenerator:Landroid/media/ToneGenerator;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mZoneDst:Z

.field private mZoneOffset:I

.field private mZoneTime:J

.field private networkDialog:Landroid/app/AlertDialog;

.field private networkType:I

.field newCellLoc:Landroid/telephony/gsm/GsmCellLocation;

.field private newGPRSState:I

.field private newHsdpaNetworkType:I

.field private newNetworkType:I

.field onManagedRoamingDialogClick:Landroid/content/DialogInterface$OnClickListener;

.field phone:Lcom/android/internal/telephony/gsm/GSMPhone;

.field private psRestrictDisabledRegistrants:Landroid/os/RegistrantList;

.field private psRestrictEnabledRegistrants:Landroid/os/RegistrantList;

.field rs:Lcom/android/internal/telephony/gsm/RestrictedState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 307
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isManagedRoamingDialogDisplayed:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V
    .locals 14
    .parameter "phone"

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x0

    const-string v13, ""

    .line 320
    invoke-direct {p0}, Lcom/android/internal/telephony/ServiceStateTracker;-><init>()V

    .line 107
    iput v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRegState:I

    .line 123
    iput v11, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->gprsState:I

    .line 124
    iput v11, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newGPRSState:I

    .line 129
    iput v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->networkType:I

    .line 130
    iput v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newNetworkType:I

    .line 136
    iput-boolean v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGsmRoaming:Z

    .line 142
    iput-boolean v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDataRoaming:Z

    .line 147
    iput-boolean v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEmergencyOnly:Z

    .line 149
    new-instance v7, Landroid/os/RegistrantList;

    invoke-direct {v7}, Landroid/os/RegistrantList;-><init>()V

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->gprsAttachedRegistrants:Landroid/os/RegistrantList;

    .line 150
    new-instance v7, Landroid/os/RegistrantList;

    invoke-direct {v7}, Landroid/os/RegistrantList;-><init>()V

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->gprsDetachedRegistrants:Landroid/os/RegistrantList;

    .line 151
    new-instance v7, Landroid/os/RegistrantList;

    invoke-direct {v7}, Landroid/os/RegistrantList;-><init>()V

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->psRestrictEnabledRegistrants:Landroid/os/RegistrantList;

    .line 152
    new-instance v7, Landroid/os/RegistrantList;

    invoke-direct {v7}, Landroid/os/RegistrantList;-><init>()V

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->psRestrictDisabledRegistrants:Landroid/os/RegistrantList;

    .line 159
    iput-boolean v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNeedFixZone:Z

    .line 163
    iput-boolean v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGotCountryCode:Z

    .line 174
    iput-boolean v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mHsdpaEnabled:Z

    .line 192
    iput-object v10, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSelectedNwkProfile:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;

    .line 193
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->allNetworkName:Ljava/util/ArrayList;

    .line 195
    iput-boolean v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIsProfileSelected:Z

    .line 196
    iput-boolean v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIsSubsetCodeUsed:Z

    .line 197
    iput-boolean v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIsSPCodeUsed:Z

    .line 198
    iput-boolean v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIsFiltered:Z

    .line 210
    iput-boolean v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mStartedGprsRegCheck:Z

    .line 213
    iput-boolean v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mReportedGprsNoReg:Z

    .line 225
    iput-object v10, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->curSpn:Ljava/lang/String;

    .line 226
    iput-object v10, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->curPlmn:Ljava/lang/String;

    .line 227
    iput v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->curSpnRule:I

    .line 249
    iput v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->countCheckDataStateReads:I

    .line 251
    iput-boolean v11, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIsDoNotify:Z

    .line 252
    iput-boolean v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPreValue:Z

    .line 253
    iput-boolean v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCurrentValue:Z

    .line 256
    iput-object v10, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->PrevMcc:Ljava/lang/String;

    .line 257
    iput-boolean v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->MccNumChanged:Z

    .line 267
    iput v12, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->SUBSET_CODE_SIZE:I

    .line 270
    new-instance v7, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;

    invoke-direct {v7, p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;-><init>(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)V

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 311
    new-instance v7, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$2;

    new-instance v8, Landroid/os/Handler;

    invoke-direct {v8}, Landroid/os/Handler;-><init>()V

    invoke-direct {v7, p0, v8}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$2;-><init>(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;Landroid/os/Handler;)V

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mAutoTimeObserver:Landroid/database/ContentObserver;

    .line 2151
    new-instance v7, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$3;

    invoke-direct {v7, p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$3;-><init>(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)V

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->onManagedRoamingDialogClick:Landroid/content/DialogInterface$OnClickListener;

    .line 2170
    new-instance v7, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$4;

    invoke-direct {v7, p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$4;-><init>(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)V

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mManagedRoamingDialogOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    .line 2200
    new-instance v7, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$5;

    invoke-direct {v7, p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$5;-><init>(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)V

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mTimeoutHandler:Landroid/os/Handler;

    .line 2235
    new-instance v7, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$6;

    invoke-direct {v7, p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$6;-><init>(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)V

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDialogOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    .line 3072
    new-instance v7, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$8;

    invoke-direct {v7, p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$8;-><init>(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)V

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mListener:Landroid/content/DialogInterface$OnClickListener;

    .line 322
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 323
    iget-object v7, p1, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    .line 324
    new-instance v7, Landroid/telephony/ServiceState;

    invoke-direct {v7}, Landroid/telephony/ServiceState;-><init>()V

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    .line 325
    new-instance v7, Landroid/telephony/ServiceState;

    invoke-direct {v7}, Landroid/telephony/ServiceState;-><init>()V

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    .line 326
    new-instance v7, Landroid/telephony/gsm/GsmCellLocation;

    invoke-direct {v7}, Landroid/telephony/gsm/GsmCellLocation;-><init>()V

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cellLoc:Landroid/telephony/gsm/GsmCellLocation;

    .line 327
    new-instance v7, Landroid/telephony/gsm/GsmCellLocation;

    invoke-direct {v7}, Landroid/telephony/gsm/GsmCellLocation;-><init>()V

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    .line 328
    new-instance v7, Lcom/android/internal/telephony/gsm/RestrictedState;

    invoke-direct {v7}, Lcom/android/internal/telephony/gsm/RestrictedState;-><init>()V

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->rs:Lcom/android/internal/telephony/gsm/RestrictedState;

    .line 329
    new-instance v7, Landroid/telephony/SignalStrength;

    invoke-direct {v7}, Landroid/telephony/SignalStrength;-><init>()V

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 331
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string/jumbo v8, "power"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    .line 333
    .local v4, powerManager:Landroid/os/PowerManager;
    const-string v7, "ServiceStateTracker"

    invoke-virtual {v4, v11, v7}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 335
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v8, 0xd

    invoke-interface {v7, p0, v8, v10}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 336
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v7, p0, v11, v10}, Lcom/android/internal/telephony/CommandsInterface;->registerForRadioStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 338
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v7, p0, v12, v10}, Lcom/android/internal/telephony/CommandsInterface;->registerForNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 339
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v8, 0xb

    invoke-interface {v7, p0, v8, v10}, Lcom/android/internal/telephony/CommandsInterface;->setOnNITZTime(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 340
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v8, 0xc

    invoke-interface {v7, p0, v8, v10}, Lcom/android/internal/telephony/CommandsInterface;->setOnSignalStrengthUpdate(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 341
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v8, 0x17

    invoke-interface {v7, p0, v8, v10}, Lcom/android/internal/telephony/CommandsInterface;->setOnRestrictedStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 342
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v8, 0x11

    invoke-interface {v7, p0, v8, v10}, Lcom/android/internal/telephony/CommandsInterface;->registerForSIMReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 343
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v8, 0x27

    invoke-interface {v7, p0, v8, v10}, Lcom/android/internal/telephony/CommandsInterface;->setOnO2HomeZoneInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 345
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v8, 0x28

    invoke-interface {v7, p0, v8, v10}, Lcom/android/internal/telephony/CommandsInterface;->registerForSIMLockedOrAbsent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 347
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v8, 0x29

    invoke-interface {v7, p0, v8, v10}, Lcom/android/internal/telephony/CommandsInterface;->setHsdpaStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 350
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "airplane_mode_on"

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 353
    .local v0, airplaneMode:I
    if-gtz v0, :cond_1

    move v7, v11

    :goto_0
    iput-boolean v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDesiredPowerState:Z

    .line 355
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cr:Landroid/content/ContentResolver;

    .line 356
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cr:Landroid/content/ContentResolver;

    const-string v8, "auto_time"

    invoke-static {v8}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mAutoTimeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v7, v8, v11, v9}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 359
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setSignalStrengthDefaultValues()V

    .line 360
    iput-boolean v11, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNeedToRegForSimLoaded:Z

    .line 363
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 364
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v7, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 365
    const-string v7, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 368
    const-string v7, "android.intent.action.CSC_MODEM_SETTING"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 369
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v7, v8, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 372
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string/jumbo v8, "simprof.preferences_name"

    const/4 v9, 0x3

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 374
    .local v5, preferences:Landroid/content/SharedPreferences;
    if-eqz v5, :cond_0

    .line 375
    const-string/jumbo v7, "simprof.key.nwkname"

    const-string v8, ""

    invoke-interface {v5, v7, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 376
    .local v3, name:Ljava/lang/String;
    const-string/jumbo v7, "simprof.key.mccmnc"

    const-string v8, ""

    invoke-interface {v5, v7, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 378
    .local v2, mccmnc:Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_0

    .line 380
    new-instance v7, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;

    invoke-direct {v7, p0, v3, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;-><init>(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSelectedNwkProfile:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;

    .line 381
    const-string v7, "GSM"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[SIM profile] selected profile: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSelectedNwkProfile:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;

    iget-object v9, v9, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;->mName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSelectedNwkProfile:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;

    iget-object v9, v9, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;->mMccMnc:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    .end local v2           #mccmnc:Ljava/lang/String;
    .end local v3           #name:Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 391
    .local v6, sp:Landroid/content/SharedPreferences;
    const-string/jumbo v7, "prev_mcc_num"

    invoke-interface {v6, v7, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->PrevMcc:Ljava/lang/String;

    .line 394
    return-void

    .end local v1           #filter:Landroid/content/IntentFilter;
    .end local v5           #preferences:Landroid/content/SharedPreferences;
    .end local v6           #sp:Landroid/content/SharedPreferences;
    :cond_1
    move v7, v9

    .line 353
    goto/16 :goto_0
.end method

.method private GetTimezoneInfoUsingMcc(Ljava/lang/String;)V
    .locals 14
    .parameter "operatorNumeric"

    .prologue
    const/high16 v12, 0x2000

    const/4 v11, 0x3

    const/4 v10, 0x0

    const-string v13, "android.intent.action.MCC_SET_TIME"

    const-string v9, "GSM"

    .line 1889
    if-nez p1, :cond_0

    .line 1891
    const-string v7, "GSM"

    const-string/jumbo v7, "operatorNumeric is null"

    invoke-static {v9, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1941
    :goto_0
    return-void

    .line 1895
    :cond_0
    invoke-virtual {p1, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1896
    .local v0, NewMcc:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->PrevMcc:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "000"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 1899
    const-string v7, "GSM"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Mcc is changed : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->PrevMcc:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " --> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1900
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->MccNumChanged:Z

    .line 1901
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->PrevMcc:Ljava/lang/String;

    .line 1902
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 1903
    .local v5, sp:Landroid/content/SharedPreferences;
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1904
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v7, "prev_mcc_num"

    invoke-interface {v1, v7, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1905
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1907
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-static {v7, p1}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;)V

    .line 1908
    invoke-virtual {p1, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 1911
    .local v4, mcc:I
    invoke-static {v4}, Lcom/android/internal/telephony/MccTable;->defaultTimeZoneForMccExt(I)Ljava/lang/String;

    move-result-object v6

    .line 1912
    .local v6, zoneId:Ljava/lang/String;
    const-string v7, "GSM"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ZONE ID : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1913
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_2

    .line 1915
    invoke-static {v6}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    .line 1916
    .local v3, manualTimeZone:Ljava/util/TimeZone;
    if-nez v3, :cond_1

    .line 1918
    const-string v7, "GSM"

    const-string v7, "manualTimeZone is NULL. Manual Update Send Intent Action_MCC_SET_TIME."

    invoke-static {v9, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1919
    new-instance v2, Landroid/content/Intent;

    const-string v7, "android.intent.action.MCC_SET_TIME"

    invoke-direct {v2, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1920
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1921
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1924
    .end local v2           #intent:Landroid/content/Intent;
    :cond_1
    const-string v7, "GSM"

    const-string v7, "TIMEZONE Update"

    invoke-static {v9, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1925
    const-string/jumbo v7, "persist.sys.timezone"

    invoke-static {v7, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1926
    invoke-virtual {v3}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setAndBroadcastNetworkSetTimeZone(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1930
    .end local v3           #manualTimeZone:Ljava/util/TimeZone;
    :cond_2
    const-string v7, "GSM"

    const-string v7, "Multi Time Zone. Manual Update Send Intent Action_MCC_SET_TIME."

    invoke-static {v9, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1931
    new-instance v2, Landroid/content/Intent;

    const-string v7, "android.intent.action.MCC_SET_TIME"

    invoke-direct {v2, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1932
    .restart local v2       #intent:Landroid/content/Intent;
    invoke-virtual {v2, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1933
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1939
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v4           #mcc:I
    .end local v5           #sp:Landroid/content/SharedPreferences;
    .end local v6           #zoneId:Ljava/lang/String;
    :cond_3
    iput-boolean v10, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->MccNumChanged:Z

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateSpnDisplay(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCurrentValue:Z

    return v0
.end method

.method static synthetic access$1000(I)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    invoke-static {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->networkTypeToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCurrentValue:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->clearNwkProfilePreference()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollState(Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setSelectedNetworkProfile(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPreValue:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPreValue:Z

    return p1
.end method

.method static synthetic access$302(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIsDoNotify:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->showSimProfileOption(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->revertToNitz()V

    return-void
.end method

.method static synthetic access$602(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 103
    sput-boolean p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isManagedRoamingDialogDisplayed:Z

    return p0
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->networkDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->networkDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->postDismissDialog()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newHsdpaNetworkType:I

    return v0
.end method

.method private broadcastStartNetStatPoll()V
    .locals 3

    .prologue
    .line 1881
    const-string v1, "GSM"

    const-string v2, "broadcastStartNetStatPoll()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1882
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.BROADCAST_START_NET_STAT_POLL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1883
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1884
    return-void
.end method

.method private clearNwkProfilePreference()V
    .locals 5

    .prologue
    .line 3057
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSelectedNwkProfile:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;

    .line 3059
    const-string v2, "GSM"

    const-string v3, "[SIM profile] clear preference"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3061
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "simprof.preferences_name"

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 3064
    .local v1, preferences:Landroid/content/SharedPreferences;
    if-eqz v1, :cond_0

    .line 3065
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3066
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "simprof.key.nwkname"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3067
    const-string/jumbo v2, "simprof.key.mccmnc"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3068
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3070
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method private createAllNetworkList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 26
    .parameter "simOperatorNumeric"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3277
    const/4 v4, 0x0

    .line 3278
    .local v4, nwkInfoDb:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v12, 0x0

    .line 3280
    .local v12, cursor:Landroid/database/Cursor;
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 3282
    .local v21, networkList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;>;"
    new-instance v13, Ljava/io/File;

    const-string v5, "/dbdata/databases/com.android.providers.telephony"

    const-string v6, "nwk_info.db"

    invoke-direct {v13, v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3284
    .local v13, databaseFile:Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_d

    .line 3288
    new-instance v13, Ljava/io/File;

    .end local v13           #databaseFile:Ljava/io/File;
    const-string v5, "/data/data/com.android.providers.telephony/databases"

    const-string v6, "nwk_info.db"

    invoke-direct {v13, v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3289
    .restart local v13       #databaseFile:Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_c

    .line 3291
    new-instance v13, Ljava/io/File;

    .end local v13           #databaseFile:Ljava/io/File;
    const-string v5, "/system/csc"

    const-string v6, "nwk_info.db"

    invoke-direct {v13, v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3292
    .restart local v13       #databaseFile:Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 3293
    const-string v5, "GSM"

    const-string v6, "no nwk info db"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3294
    const/4 v5, 0x0

    .line 3452
    :goto_0
    return-object v5

    .line 3297
    :cond_0
    const-string v5, "GSM"

    const-string v6, "csc in system area"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3307
    :goto_1
    :try_start_0
    invoke-virtual {v13}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 3314
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "plmn = \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 3315
    .local v7, selection:Ljava/lang/String;
    const/16 v20, 0x0

    .line 3316
    .local v20, name:Ljava/lang/String;
    const/16 v19, 0x0

    .line 3317
    .local v19, mccmnc:Ljava/lang/String;
    const/4 v15, 0x0

    .line 3318
    .local v15, dbSubsetCode:Ljava/lang/String;
    const/4 v14, 0x0

    .line 3319
    .local v14, dbSPCode:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/internal/telephony/gsm/GSMPhone;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/SIMRecords;->getIMSI()Ljava/lang/String;

    move-result-object v17

    .line 3320
    .local v17, imsi:Ljava/lang/String;
    const/16 v23, 0x0

    .line 3321
    .local v23, simsubsetcode:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/internal/telephony/gsm/GSMPhone;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/SIMRecords;->getGid1()Ljava/lang/String;

    move-result-object v22

    .line 3322
    .local v22, simspcode:Ljava/lang/String;
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIsSubsetCodeUsed:Z

    .line 3323
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIsSPCodeUsed:Z

    .line 3325
    if-eqz v17, :cond_1

    if-eqz p1, :cond_1

    .line 3326
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v6

    move-object/from16 v0, v17

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v23

    .line 3328
    :cond_1
    const-string v5, "GSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[SIM profile] SIM SubsetCode is : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "SPCode is : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3331
    :try_start_1
    const-string v5, "nwkinfo"

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 3339
    const-string v5, "GSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "createAllNetworkList => sale_code : "

    .end local v7           #selection:Ljava/lang/String;
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "ro.csc.sales_code"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3341
    if-eqz v12, :cond_9

    .line 3342
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 3344
    :cond_2
    const-string v5, "nwkname"

    invoke-interface {v12, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v12, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 3345
    const-string/jumbo v5, "plmn"

    invoke-interface {v12, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v12, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 3346
    const-string/jumbo v5, "subsetcode"

    invoke-interface {v12, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v25

    .line 3347
    .local v25, subsetcodeIndex:I
    const/4 v5, -0x1

    move/from16 v0, v25

    move v1, v5

    if-eq v0, v1, :cond_e

    .line 3348
    move-object v0, v12

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 3353
    :goto_2
    const-string/jumbo v5, "spcode"

    invoke-interface {v12, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v24

    .line 3354
    .local v24, spcodeIndex:I
    const/4 v5, -0x1

    move/from16 v0, v24

    move v1, v5

    if-eq v0, v1, :cond_f

    .line 3355
    move-object v0, v12

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 3360
    :goto_3
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 3361
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 3362
    move-object/from16 v0, v23

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 3363
    const-string v5, "GSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[SIM profile] SubsetCode is used : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3364
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIsSubsetCodeUsed:Z

    .line 3371
    :cond_3
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 3372
    move-object v0, v14

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 3373
    const-string v5, "GSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[SIM profile] SPCode is used : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3374
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIsSPCodeUsed:Z

    .line 3381
    :cond_4
    const-string v5, "GSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[SIM profile] Adding network name=["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "], spcode=["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "], subset=["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3383
    new-instance v18, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;-><init>(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;Ljava/lang/String;Ljava/lang/String;)V

    .line 3384
    .local v18, item:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;
    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3386
    .end local v18           #item:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;
    :cond_5
    :goto_4
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 3389
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIsSubsetCodeUsed:Z

    move v5, v0

    if-nez v5, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIsSPCodeUsed:Z

    move v5, v0

    if-eqz v5, :cond_9

    .line 3390
    :cond_6
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->clear()V

    .line 3391
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3394
    :cond_7
    const-string v5, "nwkname"

    invoke-interface {v12, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v12, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 3395
    const-string/jumbo v5, "plmn"

    invoke-interface {v12, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v12, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 3396
    const-string/jumbo v5, "subsetcode"

    invoke-interface {v12, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v25

    .line 3397
    const/4 v5, -0x1

    move/from16 v0, v25

    move v1, v5

    if-eq v0, v1, :cond_15

    .line 3398
    move-object v0, v12

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 3403
    :goto_5
    const-string/jumbo v5, "spcode"

    invoke-interface {v12, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v24

    .line 3404
    const/4 v5, -0x1

    move/from16 v0, v24

    move v1, v5

    if-eq v0, v1, :cond_16

    .line 3405
    move-object v0, v12

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 3410
    :goto_6
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8

    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 3411
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIsSubsetCodeUsed:Z

    move v5, v0

    if-eqz v5, :cond_17

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIsSPCodeUsed:Z

    move v5, v0

    if-nez v5, :cond_17

    .line 3412
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8

    move-object/from16 v0, v23

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 3414
    const-string v5, "GSM"

    const-string v6, "[SIM profile] NetworkProfile is added by SubsetCode"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3415
    new-instance v18, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;-><init>(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;Ljava/lang/String;Ljava/lang/String;)V

    .line 3416
    .restart local v18       #item:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;
    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3434
    .end local v18           #item:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;
    :cond_8
    :goto_7
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v5

    if-nez v5, :cond_7

    .line 3441
    .end local v24           #spcodeIndex:I
    .end local v25           #subsetcodeIndex:I
    :cond_9
    if-eqz v12, :cond_a

    .line 3442
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 3443
    const/4 v12, 0x0

    .line 3446
    :cond_a
    if-eqz v4, :cond_b

    .line 3447
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 3448
    :goto_8
    const/4 v4, 0x0

    :cond_b
    move-object/from16 v5, v21

    .line 3452
    goto/16 :goto_0

    .line 3300
    .end local v14           #dbSPCode:Ljava/lang/String;
    .end local v15           #dbSubsetCode:Ljava/lang/String;
    .end local v17           #imsi:Ljava/lang/String;
    .end local v19           #mccmnc:Ljava/lang/String;
    .end local v20           #name:Ljava/lang/String;
    .end local v22           #simspcode:Ljava/lang/String;
    .end local v23           #simsubsetcode:Ljava/lang/String;
    :cond_c
    const-string v5, "GSM"

    const-string v6, "csc in /data/ area"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 3304
    :cond_d
    const-string v5, "GSM"

    const-string/jumbo v6, "provider data area"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 3309
    :catch_0
    move-exception v5

    move-object/from16 v16, v5

    .line 3310
    .local v16, e:Landroid/database/sqlite/SQLiteException;
    const-string v5, "GSM"

    const-string v6, "nwk info db open exception"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3311
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 3350
    .end local v16           #e:Landroid/database/sqlite/SQLiteException;
    .restart local v14       #dbSPCode:Ljava/lang/String;
    .restart local v15       #dbSubsetCode:Ljava/lang/String;
    .restart local v17       #imsi:Ljava/lang/String;
    .restart local v19       #mccmnc:Ljava/lang/String;
    .restart local v20       #name:Ljava/lang/String;
    .restart local v22       #simspcode:Ljava/lang/String;
    .restart local v23       #simsubsetcode:Ljava/lang/String;
    .restart local v25       #subsetcodeIndex:I
    :cond_e
    :try_start_2
    const-string v5, "GSM"

    const-string v6, "[SIM profile] SubsetCode column is missing. Old DB version."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3351
    const/4 v15, 0x0

    goto/16 :goto_2

    .line 3357
    .restart local v24       #spcodeIndex:I
    :cond_f
    const-string v5, "GSM"

    const-string v6, "[SIM profile] SPCode column is missing. Old DB version."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3358
    const/4 v14, 0x0

    goto/16 :goto_3

    .line 3366
    :cond_10
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIsFiltered:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_4

    .line 3438
    .end local v24           #spcodeIndex:I
    .end local v25           #subsetcodeIndex:I
    :catch_1
    move-exception v5

    move-object/from16 v16, v5

    .line 3439
    .restart local v16       #e:Landroid/database/sqlite/SQLiteException;
    :try_start_3
    const-string v5, "GSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception caught during nwkinfo query: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3441
    if-eqz v12, :cond_11

    .line 3442
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 3443
    const/4 v12, 0x0

    .line 3446
    :cond_11
    if-eqz v4, :cond_b

    .line 3447
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_8

    .line 3376
    .end local v16           #e:Landroid/database/sqlite/SQLiteException;
    .restart local v24       #spcodeIndex:I
    .restart local v25       #subsetcodeIndex:I
    :cond_12
    const/4 v5, 0x1

    :try_start_4
    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIsFiltered:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_4

    .line 3441
    .end local v24           #spcodeIndex:I
    .end local v25           #subsetcodeIndex:I
    :catchall_0
    move-exception v5

    if-eqz v12, :cond_13

    .line 3442
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 3443
    const/4 v12, 0x0

    .line 3446
    :cond_13
    if-eqz v4, :cond_14

    .line 3447
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 3448
    const/4 v4, 0x0

    .line 3441
    :cond_14
    throw v5

    .line 3400
    .restart local v24       #spcodeIndex:I
    .restart local v25       #subsetcodeIndex:I
    :cond_15
    :try_start_5
    const-string v5, "GSM"

    const-string v6, "[SIM profile] SubsetCode column is missing. Old DB version."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3401
    const/4 v15, 0x0

    goto/16 :goto_5

    .line 3407
    :cond_16
    const-string v5, "GSM"

    const-string v6, "[SIM profile] SPCode column is missing. Old DB version."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3408
    const/4 v14, 0x0

    goto/16 :goto_6

    .line 3418
    :cond_17
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIsSubsetCodeUsed:Z

    move v5, v0

    if-nez v5, :cond_18

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIsSPCodeUsed:Z

    move v5, v0

    if-eqz v5, :cond_18

    .line 3419
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8

    move-object v0, v14

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 3420
    const-string v5, "GSM"

    const-string v6, "[SIM profile] NetworkProfile is added by SPCode"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3421
    new-instance v18, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;-><init>(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;Ljava/lang/String;Ljava/lang/String;)V

    .line 3422
    .restart local v18       #item:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;
    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 3424
    .end local v18           #item:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;
    :cond_18
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIsSubsetCodeUsed:Z

    move v5, v0

    if-eqz v5, :cond_8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIsSPCodeUsed:Z

    move v5, v0

    if-eqz v5, :cond_8

    .line 3425
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8

    move-object v0, v14

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    move-object/from16 v0, v23

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 3428
    const-string v5, "GSM"

    const-string v6, "[SIM profile] NetworkProfile is added by SPCode & SubsetCode"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3429
    new-instance v18, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;-><init>(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;Ljava/lang/String;Ljava/lang/String;)V

    .line 3430
    .restart local v18       #item:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;
    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_7
.end method

.method private createManagedRoamingDialog()V
    .locals 5

    .prologue
    .line 2183
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .line 2185
    .local v1, r:Landroid/content/res/Resources;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x104029d

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104029e

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->onManagedRoamingDialogClick:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104029c

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->onManagedRoamingDialogClick:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 2193
    .local v0, managedRoamingDialog:Landroid/app/AlertDialog;
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mManagedRoamingDialogOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 2195
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isManagedRoamingDialogDisplayed:Z

    .line 2196
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 2197
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 2198
    return-void
.end method

.method private static displayNameFor(I)Ljava/lang/String;
    .locals 6
    .parameter "off"

    .prologue
    const/4 v5, 0x3

    .line 2476
    div-int/lit16 v3, p0, 0x3e8

    div-int/lit8 p0, v3, 0x3c

    .line 2478
    const/16 v3, 0x9

    new-array v0, v3, [C

    .line 2479
    .local v0, buf:[C
    const/4 v3, 0x0

    const/16 v4, 0x47

    aput-char v4, v0, v3

    .line 2480
    const/4 v3, 0x1

    const/16 v4, 0x4d

    aput-char v4, v0, v3

    .line 2481
    const/4 v3, 0x2

    const/16 v4, 0x54

    aput-char v4, v0, v3

    .line 2483
    if-gez p0, :cond_0

    .line 2484
    const/16 v3, 0x2d

    aput-char v3, v0, v5

    .line 2485
    neg-int p0, p0

    .line 2490
    :goto_0
    div-int/lit8 v1, p0, 0x3c

    .line 2491
    .local v1, hours:I
    rem-int/lit8 v2, p0, 0x3c

    .line 2493
    .local v2, minutes:I
    const/4 v3, 0x4

    div-int/lit8 v4, v1, 0xa

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    aput-char v4, v0, v3

    .line 2494
    const/4 v3, 0x5

    rem-int/lit8 v4, v1, 0xa

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    aput-char v4, v0, v3

    .line 2496
    const/4 v3, 0x6

    const/16 v4, 0x3a

    aput-char v4, v0, v3

    .line 2498
    const/4 v3, 0x7

    div-int/lit8 v4, v2, 0xa

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    aput-char v4, v0, v3

    .line 2499
    const/16 v3, 0x8

    rem-int/lit8 v4, v2, 0xa

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    aput-char v4, v0, v3

    .line 2501
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([C)V

    return-object v3

    .line 2487
    .end local v1           #hours:I
    .end local v2           #minutes:I
    :cond_0
    const/16 v3, 0x2b

    aput-char v3, v0, v5

    goto :goto_0
.end method

.method private findTimeZone(IZJ)Ljava/util/TimeZone;
    .locals 15
    .parameter "offset"
    .parameter "dst"
    .parameter "when"

    .prologue
    .line 1974
    move/from16 v8, p1

    .line 1975
    .local v8, rawOffset:I
    if-eqz p2, :cond_0

    .line 1976
    const v12, 0x36ee80

    sub-int/2addr v8, v12

    .line 1978
    :cond_0
    invoke-static {v8}, Ljava/util/TimeZone;->getAvailableIDs(I)[Ljava/lang/String;

    move-result-object v11

    .line 1979
    .local v11, zones:[Ljava/lang/String;
    const/4 v5, 0x0

    .line 1980
    .local v5, guess:Ljava/util/TimeZone;
    new-instance v4, Ljava/util/Date;

    move-object v0, v4

    move-wide/from16 v1, p3

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 1981
    .local v4, d:Ljava/util/Date;
    move-object v3, v11

    .local v3, arr$:[Ljava/lang/String;
    array-length v7, v3

    .local v7, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_0
    if-ge v6, v7, :cond_1

    aget-object v10, v3, v6

    .line 1982
    .local v10, zone:Ljava/lang/String;
    const-string v12, "GSM"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[NITZ] findTimeZone: searching ["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v0, v13

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "]"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1983
    invoke-static {v10}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v9

    .line 1984
    .local v9, tz:Ljava/util/TimeZone;
    move-object v0, v9

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v12

    move v0, v12

    move/from16 v1, p1

    if-ne v0, v1, :cond_2

    invoke-virtual {v9, v4}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v12

    move v0, v12

    move/from16 v1, p2

    if-ne v0, v1, :cond_2

    .line 1986
    const-string v12, "GSM"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[NITZ] findTimeZone: guessed ["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v0, v13

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v0, v13

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "]"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1987
    move-object v5, v9

    .line 1992
    .end local v9           #tz:Ljava/util/TimeZone;
    .end local v10           #zone:Ljava/lang/String;
    :cond_1
    return-object v5

    .line 1981
    .restart local v9       #tz:Ljava/util/TimeZone;
    .restart local v10       #zone:Ljava/lang/String;
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0
.end method

.method private getAutoTime()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 2800
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "auto_time"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-lez v1, :cond_0

    move v1, v3

    .line 2803
    :goto_0
    return v1

    .line 2800
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 2802
    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, snfe:Landroid/provider/Settings$SettingNotFoundException;
    move v1, v3

    .line 2803
    goto :goto_0
.end method

.method private getNitzTimeZone(IZJ)Ljava/util/TimeZone;
    .locals 4
    .parameter "offset"
    .parameter "dst"
    .parameter "when"

    .prologue
    const-string v3, "GSM"

    .line 1960
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->findTimeZone(IZJ)Ljava/util/TimeZone;

    move-result-object v0

    .line 1961
    .local v0, guess:Ljava/util/TimeZone;
    if-nez v0, :cond_0

    .line 1962
    const-string v1, "GSM"

    const-string v1, "[NITZ] getNitzTimeZone: with reverted DST flag"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1964
    if-nez p2, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-direct {p0, p1, v1, p3, p4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->findTimeZone(IZJ)Ljava/util/TimeZone;

    move-result-object v0

    .line 1967
    :cond_0
    const-string v1, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[NITZ] getNitzTimeZone returning "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez v0, :cond_2

    move-object v2, v0

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1970
    return-object v0

    .line 1964
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 1967
    :cond_2
    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private handleLimitedService(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 3
    .parameter "plmn"
    .parameter "spn"
    .parameter "showSpn"
    .parameter "showPlmn"

    .prologue
    .line 2216
    const-string v1, "GSM"

    const-string v2, "handleLimitedService : Limited Service state"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2217
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2218
    .local v0, intent:Landroid/content/Intent;
    const-string/jumbo v1, "showSpn"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2219
    const-string/jumbo v1, "spn"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2220
    const-string/jumbo v1, "showPlmn"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2221
    const-string/jumbo v1, "plmn"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2222
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 2223
    return-void
.end method

.method private handleNetworkRejection(I)V
    .locals 11
    .parameter "rejCode"

    .prologue
    const/4 v10, 0x0

    .line 2272
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    .line 2273
    .local v3, r:Landroid/content/res/Resources;
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v7, v7, Lcom/android/internal/telephony/gsm/GSMPhone;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/SIMRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v6

    .line 2274
    .local v6, spn:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v7}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v2

    .line 2275
    .local v2, plmn:Ljava/lang/String;
    const/4 v5, 0x1

    .line 2276
    .local v5, showSpn:Z
    const/4 v4, 0x1

    .line 2277
    .local v4, showPlmn:Z
    const/4 v0, 0x0

    .line 2278
    .local v0, msg:Ljava/lang/String;
    const-string v7, "GSM"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleNetworkRejection : Rejection code :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2279
    packed-switch p1, :pswitch_data_0

    .line 2340
    :cond_0
    :goto_0
    return-void

    .line 2286
    :pswitch_0
    const v7, 0x104029f

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2287
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->showDialog(Ljava/lang/String;)V

    goto :goto_0

    .line 2290
    :pswitch_1
    const v7, 0x10402a0

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2291
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->showDialog(Ljava/lang/String;)V

    goto :goto_0

    .line 2294
    :pswitch_2
    const v7, 0x10402a2

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2295
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->showDialog(Ljava/lang/String;)V

    goto :goto_0

    .line 2298
    :pswitch_3
    const v7, 0x10402a1

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2299
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->showDialog(Ljava/lang/String;)V

    goto :goto_0

    .line 2310
    :pswitch_4
    const v7, 0x10402cb

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2311
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-direct {p0, v2, v6, v7, v8}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->handleLimitedService(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    goto :goto_0

    .line 2316
    :pswitch_5
    const/4 v2, 0x0

    .line 2317
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-direct {p0, v2, v6, v7, v8}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->handleLimitedService(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    goto :goto_0

    .line 2326
    :pswitch_6
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v8, "network_selection_key"

    const-string v9, ""

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2330
    .local v1, networkSelection:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 2331
    sget-boolean v7, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isManagedRoamingDialogDisplayed:Z

    if-nez v7, :cond_0

    .line 2332
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->createManagedRoamingDialog()V

    goto :goto_0

    .line 2279
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private isFakeRoamingBetweenOperators(Landroid/telephony/ServiceState;)Z
    .locals 8
    .parameter "s"

    .prologue
    const/4 v7, 0x0

    .line 2429
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v4

    .line 2430
    .local v4, operatorNumeric:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v6, v6, Lcom/android/internal/telephony/gsm/GSMPhone;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/SIMRecords;->getFakeRoamingOn()[Ljava/lang/String;

    move-result-object v1

    .line 2431
    .local v1, fro:[Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 2432
    move-object v0, v1

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v5, v0, v2

    .line 2433
    .local v5, r:Ljava/lang/String;
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const/4 v6, 0x3

    invoke-virtual {v4, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2434
    :cond_0
    const/4 v6, 0x1

    .line 2438
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v5           #r:Ljava/lang/String;
    :goto_1
    return v6

    .line 2432
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v2       #i$:I
    .restart local v3       #len$:I
    .restart local v5       #r:Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v5           #r:Ljava/lang/String;
    :cond_2
    move v6, v7

    .line 2438
    goto :goto_1
.end method

.method private isGprsConsistent(II)Z
    .locals 1
    .parameter "gprsState"
    .parameter "serviceState"

    .prologue
    .line 1952
    if-nez p2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isRoamingBetweenOperators(ZLandroid/telephony/ServiceState;)Z
    .locals 20
    .parameter "gsmRoaming"
    .parameter "s"

    .prologue
    .line 2395
    const-string v17, "gsm.sim.operator.alpha"

    const-string v18, "empty"

    invoke-static/range {v17 .. v18}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 2397
    .local v16, spn:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v12

    .line 2398
    .local v12, onsl:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/telephony/ServiceState;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v13

    .line 2400
    .local v13, onss:Ljava/lang/String;
    if-eqz v12, :cond_1

    move-object/from16 v0, v16

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    const/16 v17, 0x1

    move/from16 v6, v17

    .line 2401
    .local v6, equalsOnsl:Z
    :goto_0
    if-eqz v13, :cond_2

    move-object/from16 v0, v16

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    const/16 v17, 0x1

    move/from16 v7, v17

    .line 2403
    .local v7, equalsOnss:Z
    :goto_1
    const-string v17, "gsm.sim.operator.numeric"

    const-string v18, ""

    invoke-static/range {v17 .. v18}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 2405
    .local v15, simNumeric:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v14

    .line 2407
    .local v14, operatorNumeric:Ljava/lang/String;
    if-eqz v14, :cond_3

    const-string v17, "20408"

    move-object v0, v14

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    const/16 v17, 0x1

    move/from16 v4, v17

    .line 2409
    .local v4, equalsKPN:Z
    :goto_2
    const/4 v5, 0x1

    .line 2411
    .local v5, equalsMcc:Z
    const/16 v17, 0x0

    const/16 v18, 0x3

    :try_start_0
    move-object v0, v15

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x3

    move-object v0, v14

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 2416
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/gsm/SIMRecords;->getFakeHomeOn()[Ljava/lang/String;

    move-result-object v8

    .line 2417
    .local v8, fho:[Ljava/lang/String;
    if-eqz v8, :cond_5

    .line 2418
    move-object v3, v8

    .local v3, arr$:[Ljava/lang/String;
    array-length v11, v3

    .local v11, len$:I
    const/4 v10, 0x0

    .local v10, i$:I
    :goto_4
    if-ge v10, v11, :cond_5

    aget-object v9, v3, v10

    .line 2419
    .local v9, h:Ljava/lang/String;
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_0

    const/16 v17, 0x0

    const/16 v18, 0x3

    move-object v0, v14

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    move-object v0, v9

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 2420
    :cond_0
    const/16 v17, 0x0

    .line 2425
    .end local v3           #arr$:[Ljava/lang/String;
    .end local v9           #h:Ljava/lang/String;
    .end local v10           #i$:I
    .end local v11           #len$:I
    :goto_5
    return v17

    .line 2400
    .end local v4           #equalsKPN:Z
    .end local v5           #equalsMcc:Z
    .end local v6           #equalsOnsl:Z
    .end local v7           #equalsOnss:Z
    .end local v8           #fho:[Ljava/lang/String;
    .end local v14           #operatorNumeric:Ljava/lang/String;
    .end local v15           #simNumeric:Ljava/lang/String;
    :cond_1
    const/16 v17, 0x0

    move/from16 v6, v17

    goto/16 :goto_0

    .line 2401
    .restart local v6       #equalsOnsl:Z
    :cond_2
    const/16 v17, 0x0

    move/from16 v7, v17

    goto :goto_1

    .line 2407
    .restart local v7       #equalsOnss:Z
    .restart local v14       #operatorNumeric:Ljava/lang/String;
    .restart local v15       #simNumeric:Ljava/lang/String;
    :cond_3
    const/16 v17, 0x0

    move/from16 v4, v17

    goto :goto_2

    .line 2418
    .restart local v3       #arr$:[Ljava/lang/String;
    .restart local v4       #equalsKPN:Z
    .restart local v5       #equalsMcc:Z
    .restart local v8       #fho:[Ljava/lang/String;
    .restart local v9       #h:Ljava/lang/String;
    .restart local v10       #i$:I
    .restart local v11       #len$:I
    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 2425
    .end local v3           #arr$:[Ljava/lang/String;
    .end local v9           #h:Ljava/lang/String;
    .end local v10           #i$:I
    .end local v11           #len$:I
    :cond_5
    if-eqz p1, :cond_7

    if-eqz v5, :cond_6

    if-nez v6, :cond_7

    if-nez v7, :cond_7

    :cond_6
    if-nez v4, :cond_7

    const/16 v17, 0x1

    goto :goto_5

    :cond_7
    const/16 v17, 0x0

    goto :goto_5

    .line 2413
    .end local v8           #fho:[Ljava/lang/String;
    :catch_0
    move-exception v17

    goto :goto_3
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 3053
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GsmServiceStateTracker] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3054
    return-void
.end method

.method private static networkTypeToString(I)Ljava/lang/String;
    .locals 4
    .parameter "type"

    .prologue
    .line 1570
    const-string/jumbo v0, "unknown"

    .line 1572
    .local v0, ret:Ljava/lang/String;
    packed-switch p0, :pswitch_data_0

    .line 1592
    :pswitch_0
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wrong network type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1596
    :goto_0
    return-object v0

    .line 1574
    :pswitch_1
    const-string v0, "GPRS"

    .line 1575
    goto :goto_0

    .line 1577
    :pswitch_2
    const-string v0, "EDGE"

    .line 1578
    goto :goto_0

    .line 1580
    :pswitch_3
    const-string v0, "UMTS"

    .line 1581
    goto :goto_0

    .line 1583
    :pswitch_4
    const-string v0, "HSDPA"

    .line 1584
    goto :goto_0

    .line 1586
    :pswitch_5
    const-string v0, "HSUPA"

    .line 1587
    goto :goto_0

    .line 1589
    :pswitch_6
    const-string v0, "HSPA"

    .line 1590
    goto :goto_0

    .line 1572
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private onHsdpaStateChanged(Landroid/os/AsyncResult;)V
    .locals 12
    .parameter "ar"

    .prologue
    const/16 v10, 0x9

    const/4 v9, 0x1

    const/4 v8, 0x3

    const/4 v7, 0x0

    const-string v11, "GSM"

    .line 2994
    iget-object v5, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [I

    move-object v0, v5

    check-cast v0, [I

    move-object v3, v0

    .line 2996
    .local v3, state:[I
    const-string v5, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HSDPA] state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, v3, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v11, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2997
    aget v5, v3, v7

    if-nez v5, :cond_1

    .line 2998
    iput-boolean v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mHsdpaEnabled:Z

    .line 3008
    :goto_0
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v2

    .line 3010
    .local v2, oldNetworkType:I
    if-lt v2, v8, :cond_0

    .line 3011
    const/4 v4, 0x0

    .line 3013
    .local v4, typeChanged:Z
    if-ne v2, v8, :cond_3

    iget-boolean v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mHsdpaEnabled:Z

    if-eqz v5, :cond_3

    .line 3014
    const/4 v4, 0x1

    .line 3015
    iput v10, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newHsdpaNetworkType:I

    .line 3025
    :goto_1
    if-eqz v4, :cond_0

    .line 3026
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    iget v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newHsdpaNetworkType:I

    invoke-virtual {v5, v6}, Landroid/telephony/ServiceState;->setRadioTechnology(I)V

    .line 3028
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    const-string v6, "gsm.network.type"

    iget v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newHsdpaNetworkType:I

    invoke-static {v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->networkTypeToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 3031
    new-instance v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$7;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$7;-><init>(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)V

    .line 3047
    .local v1, Check:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 3050
    .end local v1           #Check:Ljava/lang/Thread;
    .end local v4           #typeChanged:Z
    :cond_0
    return-void

    .line 3000
    .end local v2           #oldNetworkType:I
    :cond_1
    aget v5, v3, v7

    if-ne v5, v9, :cond_2

    .line 3001
    iput-boolean v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mHsdpaEnabled:Z

    goto :goto_0

    .line 3004
    :cond_2
    const-string v5, "GSM"

    const-string v5, "[HSDPA] invalid HSDPA state"

    invoke-static {v11, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3005
    iput-boolean v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mHsdpaEnabled:Z

    goto :goto_0

    .line 3017
    .restart local v2       #oldNetworkType:I
    .restart local v4       #typeChanged:Z
    :cond_3
    if-lt v2, v10, :cond_4

    iget-boolean v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mHsdpaEnabled:Z

    if-nez v5, :cond_4

    .line 3018
    const/4 v4, 0x1

    .line 3019
    iput v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newHsdpaNetworkType:I

    goto :goto_1

    .line 3022
    :cond_4
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private onO2HomeZoneInfo(Landroid/os/AsyncResult;)V
    .locals 20
    .parameter "ar"

    .prologue
    .line 2926
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 2927
    .local v5, context:Landroid/content/Context;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [I

    move-object/from16 v0, p1

    check-cast v0, [I

    move-object v6, v0

    .line 2928
    .local v6, homeZoneInfo:[I
    const/16 v17, 0x0

    aget v14, v6, v17

    .line 2929
    .local v14, zone_inid:I
    const/16 v17, 0x1

    aget v16, v6, v17

    .line 2930
    .local v16, zone_type:I
    const/16 v17, 0x2

    aget v15, v6, v17

    .line 2931
    .local v15, zone_tag_present:I
    const/16 v17, 0xd

    move/from16 v0, v17

    new-array v0, v0, [B

    move-object v12, v0

    .line 2932
    .local v12, tempAlphaID:[B
    const-string v9, ""

    .line 2935
    .local v9, message:Ljava/lang/CharSequence;
    const/16 v10, 0x309

    .line 2936
    .local v10, notificationId:I
    new-instance v17, Landroid/app/Notification;

    invoke-direct/range {v17 .. v17}, Landroid/app/Notification;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    .line 2937
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    move-object/from16 v17, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, v17

    iput-wide v0, v2, Landroid/app/Notification;->when:J

    .line 2940
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 2941
    .local v8, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/high16 v19, 0x1000

    move-object v0, v5

    move/from16 v1, v18

    move-object v2, v8

    move/from16 v3, v19

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 2943
    const-string v17, "notification"

    move-object v0, v5

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/NotificationManager;

    .line 2946
    .local v11, notificationManager:Landroid/app/NotificationManager;
    const-string v13, ""

    .line 2947
    .local v13, title:Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    move-object/from16 v17, v0

    move-object v0, v13

    move-object/from16 v1, v17

    iput-object v0, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 2949
    packed-switch v14, :pswitch_data_0

    .line 2991
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 2953
    :pswitch_1
    if-eqz v16, :cond_0

    .line 2957
    const/16 v17, 0x1

    move v0, v15

    move/from16 v1, v17

    if-ne v0, v1, :cond_2

    .line 2958
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    const/16 v17, 0xd

    move v0, v7

    move/from16 v1, v17

    if-ge v0, v1, :cond_1

    .line 2959
    add-int/lit8 v17, v7, 0x3

    aget v17, v6, v17

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    aput-byte v17, v12, v7

    .line 2958
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 2961
    :cond_1
    const/16 v17, 0x0

    const/16 v18, 0xd

    move-object v0, v12

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/GsmAlphabet;->gsm8BitUnpackedToString([BII)Ljava/lang/String;

    move-result-object v9

    .line 2963
    .end local v7           #i:I
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object v1, v5

    move-object v2, v13

    move-object v3, v9

    move-object/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 2965
    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_3

    .line 2967
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    move-object/from16 v17, v0

    const v18, 0x10803f3

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/app/Notification;->icon:I

    .line 2968
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    move-object/from16 v17, v0

    move-object v0, v11

    move v1, v10

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    .line 2973
    :cond_3
    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_0

    .line 2975
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    move-object/from16 v17, v0

    const v18, 0x10803f1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/app/Notification;->icon:I

    .line 2976
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    move-object/from16 v17, v0

    move-object v0, v11

    move v1, v10

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 2985
    :pswitch_2
    invoke-virtual {v11, v10}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_0

    .line 2949
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private onRestrictedStateChanged(Landroid/os/AsyncResult;)V
    .locals 11
    .parameter "ar"

    .prologue
    const/16 v10, 0x3ec

    const/16 v9, 0x3eb

    const/4 v8, 0x1

    const/4 v6, 0x0

    const-string v7, "GSM"

    .line 2064
    const-string v4, "GSM"

    const-string v4, "[DSAC DEB] onRestrictedStateChanged"

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2065
    new-instance v2, Lcom/android/internal/telephony/gsm/RestrictedState;

    invoke-direct {v2}, Lcom/android/internal/telephony/gsm/RestrictedState;-><init>()V

    .line 2067
    .local v2, newRs:Lcom/android/internal/telephony/gsm/RestrictedState;
    const-string v4, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[DSAC DEB] current rs at enter "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->rs:Lcom/android/internal/telephony/gsm/RestrictedState;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2069
    iget-object v4, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_5

    .line 2070
    iget-object v4, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [I

    move-object v0, v4

    check-cast v0, [I

    move-object v1, v0

    .line 2071
    .local v1, ints:[I
    aget v3, v1, v6

    .line 2073
    .local v3, state:I
    and-int/lit8 v4, v3, 0x1

    if-nez v4, :cond_0

    and-int/lit8 v4, v3, 0x4

    if-eqz v4, :cond_6

    :cond_0
    move v4, v8

    :goto_0
    invoke-virtual {v2, v4}, Lcom/android/internal/telephony/gsm/RestrictedState;->setCsEmergencyRestricted(Z)V

    .line 2077
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    if-ne v4, v5, :cond_2

    .line 2078
    and-int/lit8 v4, v3, 0x2

    if-nez v4, :cond_1

    and-int/lit8 v4, v3, 0x4

    if-eqz v4, :cond_7

    :cond_1
    move v4, v8

    :goto_1
    invoke-virtual {v2, v4}, Lcom/android/internal/telephony/gsm/RestrictedState;->setCsNormalRestricted(Z)V

    .line 2081
    and-int/lit8 v4, v3, 0x10

    if-eqz v4, :cond_8

    move v4, v8

    :goto_2
    invoke-virtual {v2, v4}, Lcom/android/internal/telephony/gsm/RestrictedState;->setPsRestricted(Z)V

    .line 2085
    :cond_2
    const-string v4, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[DSAC DEB] new rs "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2087
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->rs:Lcom/android/internal/telephony/gsm/RestrictedState;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/RestrictedState;->isPsRestricted()Z

    move-result v4

    if-nez v4, :cond_9

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/RestrictedState;->isPsRestricted()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 2088
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->psRestrictEnabledRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v4}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 2089
    const/16 v4, 0x3e9

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    .line 2100
    :cond_3
    :goto_3
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->rs:Lcom/android/internal/telephony/gsm/RestrictedState;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/RestrictedState;->isCsRestricted()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 2101
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/RestrictedState;->isCsRestricted()Z

    move-result v4

    if-nez v4, :cond_a

    .line 2103
    invoke-direct {p0, v10}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    .line 2146
    :cond_4
    :goto_4
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->rs:Lcom/android/internal/telephony/gsm/RestrictedState;

    .line 2148
    .end local v1           #ints:[I
    .end local v3           #state:I
    :cond_5
    const-string v4, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[DSAC DEB] current rs at return "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->rs:Lcom/android/internal/telephony/gsm/RestrictedState;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2149
    return-void

    .restart local v1       #ints:[I
    .restart local v3       #state:I
    :cond_6
    move v4, v6

    .line 2073
    goto/16 :goto_0

    :cond_7
    move v4, v6

    .line 2078
    goto :goto_1

    :cond_8
    move v4, v6

    .line 2081
    goto :goto_2

    .line 2090
    :cond_9
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->rs:Lcom/android/internal/telephony/gsm/RestrictedState;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/RestrictedState;->isPsRestricted()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/RestrictedState;->isPsRestricted()Z

    move-result v4

    if-nez v4, :cond_3

    .line 2091
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->psRestrictDisabledRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v4}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 2092
    const/16 v4, 0x3ea

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto :goto_3

    .line 2104
    :cond_a
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/RestrictedState;->isCsNormalRestricted()Z

    move-result v4

    if-nez v4, :cond_b

    .line 2106
    const/16 v4, 0x3ee

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto :goto_4

    .line 2107
    :cond_b
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/RestrictedState;->isCsEmergencyRestricted()Z

    move-result v4

    if-nez v4, :cond_4

    .line 2109
    const/16 v4, 0x3ed

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto :goto_4

    .line 2111
    :cond_c
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->rs:Lcom/android/internal/telephony/gsm/RestrictedState;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/RestrictedState;->isCsEmergencyRestricted()Z

    move-result v4

    if-eqz v4, :cond_f

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->rs:Lcom/android/internal/telephony/gsm/RestrictedState;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/RestrictedState;->isCsNormalRestricted()Z

    move-result v4

    if-nez v4, :cond_f

    .line 2112
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/RestrictedState;->isCsRestricted()Z

    move-result v4

    if-nez v4, :cond_d

    .line 2114
    invoke-direct {p0, v10}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto :goto_4

    .line 2115
    :cond_d
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/RestrictedState;->isCsRestricted()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 2117
    invoke-direct {p0, v9}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto :goto_4

    .line 2118
    :cond_e
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/RestrictedState;->isCsNormalRestricted()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2120
    const/16 v4, 0x3ed

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto/16 :goto_4

    .line 2122
    :cond_f
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->rs:Lcom/android/internal/telephony/gsm/RestrictedState;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/RestrictedState;->isCsEmergencyRestricted()Z

    move-result v4

    if-nez v4, :cond_12

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->rs:Lcom/android/internal/telephony/gsm/RestrictedState;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/RestrictedState;->isCsNormalRestricted()Z

    move-result v4

    if-eqz v4, :cond_12

    .line 2123
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/RestrictedState;->isCsRestricted()Z

    move-result v4

    if-nez v4, :cond_10

    .line 2125
    invoke-direct {p0, v10}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto/16 :goto_4

    .line 2126
    :cond_10
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/RestrictedState;->isCsRestricted()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 2128
    invoke-direct {p0, v9}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto/16 :goto_4

    .line 2129
    :cond_11
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/RestrictedState;->isCsEmergencyRestricted()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2131
    const/16 v4, 0x3ee

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto/16 :goto_4

    .line 2134
    :cond_12
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/RestrictedState;->isCsRestricted()Z

    move-result v4

    if-eqz v4, :cond_13

    .line 2136
    invoke-direct {p0, v9}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto/16 :goto_4

    .line 2137
    :cond_13
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/RestrictedState;->isCsEmergencyRestricted()Z

    move-result v4

    if-eqz v4, :cond_14

    .line 2139
    const/16 v4, 0x3ee

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto/16 :goto_4

    .line 2140
    :cond_14
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/RestrictedState;->isCsNormalRestricted()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2142
    const/16 v4, 0x3ed

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto/16 :goto_4
.end method

.method private onSignalStrengthResult(Landroid/os/AsyncResult;)V
    .locals 15
    .parameter "ar"

    .prologue
    const/4 v3, -0x1

    .line 2018
    iget-object v13, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 2019
    .local v13, oldSignalStrength:Landroid/telephony/SignalStrength;
    const/16 v14, 0x63

    .line 2021
    .local v14, rssi:I
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object v1, v0

    if-eqz v1, :cond_1

    .line 2024
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setSignalStrengthDefaultValues()V

    .line 2038
    :goto_0
    new-instance v1, Landroid/telephony/SignalStrength;

    and-int/lit16 v2, v14, 0xff

    const/4 v9, 0x1

    const v4, 0xff00

    and-int/2addr v4, v14

    shr-int/lit8 v10, v4, 0x8

    move v4, v3

    move v5, v3

    move v6, v3

    move v7, v3

    move v8, v3

    invoke-direct/range {v1 .. v10}, Landroid/telephony/SignalStrength;-><init>(IIIIIIIZI)V

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 2045
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v1, v13}, Landroid/telephony/SignalStrength;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2048
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifySignalStrength()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2054
    :cond_0
    :goto_1
    return-void

    .line 2026
    :cond_1
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, [I

    move-object v0, v1

    check-cast v0, [I

    move-object v12, v0

    .line 2029
    .local v12, ints:[I
    array-length v1, v12

    if-eqz v1, :cond_2

    .line 2030
    const/4 v1, 0x0

    aget v14, v12, v1

    goto :goto_0

    .line 2032
    :cond_2
    const-string v1, "GSM"

    const-string v2, "Bogus signal strength response"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2033
    const/16 v14, 0x63

    goto :goto_0

    .line 2049
    .end local v12           #ints:[I
    :catch_0
    move-exception v1

    move-object v11, v1

    .line 2050
    .local v11, ex:Ljava/lang/NullPointerException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSignalStrengthResult() Phone already destroyed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "SignalStrength not notified"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private pollState(Z)V
    .locals 5
    .parameter "issuePollCmd"

    .prologue
    const/4 v4, 0x0

    const-string v3, "GSM"

    .line 1490
    const/4 v1, 0x1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollingContext:[I

    .line 1491
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollingContext:[I

    aput v4, v1, v4

    .line 1492
    move v0, p1

    .line 1494
    .local v0, pollCmd:Z
    sget-object v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$9;->$SwitchMap$com$android$internal$telephony$CommandsInterface$RadioState:[I

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1542
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 1544
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollingContext:[I

    aget v2, v1, v4

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v4

    .line 1545
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0xe

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollingContext:[I

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->getNetworkSelectionMode(Landroid/os/Message;)V

    .line 1549
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollingContext:[I

    aget v2, v1, v4

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v4

    .line 1550
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollingContext:[I

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->getOperator(Landroid/os/Message;)V

    .line 1554
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollingContext:[I

    aget v2, v1, v4

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v4

    .line 1555
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollingContext:[I

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->getGPRSRegistrationState(Landroid/os/Message;)V

    .line 1559
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollingContext:[I

    aget v2, v1, v4

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v4

    .line 1560
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollingContext:[I

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->getRegistrationState(Landroid/os/Message;)V

    .line 1566
    :cond_1
    :goto_1
    return-void

    .line 1496
    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->setStateOutOfService()V

    .line 1497
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v1}, Landroid/telephony/gsm/GsmCellLocation;->setStateInvalid()V

    .line 1498
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setSignalStrengthDefaultValues()V

    .line 1499
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGotCountryCode:Z

    .line 1500
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollStateDone()V

    goto :goto_1

    .line 1504
    :pswitch_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->setStateOff()V

    .line 1505
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v1}, Landroid/telephony/gsm/GsmCellLocation;->setStateInvalid()V

    .line 1506
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setSignalStrengthDefaultValues()V

    .line 1507
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGotCountryCode:Z

    .line 1508
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollStateDone()V

    goto :goto_1

    .line 1516
    :pswitch_2
    const-string v1, "GSM"

    const-string v1, "Radio Technology Change ongoing, setting SS to off"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1517
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->setStateOff()V

    .line 1518
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v1}, Landroid/telephony/gsm/GsmCellLocation;->setStateInvalid()V

    .line 1519
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setSignalStrengthDefaultValues()V

    .line 1520
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGotCountryCode:Z

    goto :goto_1

    .line 1530
    :pswitch_3
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1532
    const-string v1, "GSM"

    const-string/jumbo v1, "pollState - ABSENT"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1534
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1494
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private pollStateDone()V
    .locals 33

    .prologue
    .line 1601
    const-string v29, "GSM"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Poll ServiceState done:  oldSS=["

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "] newSS=["

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "] oldGprs="

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->gprsState:I

    move/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " newGprs="

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newGPRSState:I

    move/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " oldType="

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->networkType:I

    move/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->networkTypeToString(I)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " newType="

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newNetworkType:I

    move/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->networkTypeToString(I)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1609
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/telephony/ServiceState;->getState()I

    move-result v29

    if-nez v29, :cond_0

    .line 1610
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v29

    if-nez v29, :cond_11

    .line 1611
    const-string v29, "GSM"

    const-string v30, "[PNN] pollStateDone(), STATE_IN_SERVICE but newSS.getOperatorNumeric() returned NULL"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1633
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/telephony/ServiceState;->getState()I

    move-result v29

    if-eqz v29, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/telephony/ServiceState;->getState()I

    move-result v29

    if-nez v29, :cond_12

    const/16 v29, 0x1

    move/from16 v16, v29

    .line 1637
    .local v16, hasRegistered:Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/telephony/ServiceState;->getState()I

    move-result v29

    if-nez v29, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/telephony/ServiceState;->getState()I

    move-result v29

    if-eqz v29, :cond_13

    const/16 v29, 0x1

    move/from16 v10, v29

    .line 1641
    .local v10, hasDeregistered:Z
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->gprsState:I

    move/from16 v29, v0

    if-eqz v29, :cond_14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newGPRSState:I

    move/from16 v29, v0

    if-nez v29, :cond_14

    const/16 v29, 0x1

    move/from16 v11, v29

    .line 1645
    .local v11, hasGprsAttached:Z
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->gprsState:I

    move/from16 v29, v0

    if-nez v29, :cond_15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newGPRSState:I

    move/from16 v29, v0

    if-eqz v29, :cond_15

    const/16 v29, 0x1

    move/from16 v12, v29

    .line 1649
    .local v12, hasGprsDetached:Z
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->networkType:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newNetworkType:I

    move/from16 v30, v0

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_16

    const/16 v29, 0x1

    move/from16 v15, v29

    .line 1651
    .local v15, hasNetworkTypeChanged:Z
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Landroid/telephony/ServiceState;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_17

    const/16 v29, 0x1

    move/from16 v9, v29

    .line 1653
    .local v9, hasChanged:Z
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v29

    if-nez v29, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v29

    if-eqz v29, :cond_18

    const/16 v29, 0x1

    move/from16 v18, v29

    .line 1655
    .local v18, hasRoamingOn:Z
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v29

    if-eqz v29, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v29

    if-nez v29, :cond_19

    const/16 v29, 0x1

    move/from16 v17, v29

    .line 1657
    .local v17, hasRoamingOff:Z
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cellLoc:Landroid/telephony/gsm/GsmCellLocation;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Landroid/telephony/gsm/GsmCellLocation;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_1a

    const/16 v29, 0x1

    move/from16 v14, v29

    .line 1659
    .local v14, hasLocationChanged:Z
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cellLoc:Landroid/telephony/gsm/GsmCellLocation;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v30

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_1b

    const/16 v29, 0x1

    move/from16 v13, v29

    .line 1663
    .local v13, hasLacChanged:Z
    :goto_a
    const/16 v22, 0x0

    .line 1666
    .local v22, startPollStat:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/telephony/ServiceState;->getState()I

    move-result v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/telephony/ServiceState;->getState()I

    move-result v30

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->gprsState:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newGPRSState:I

    move/from16 v30, v0

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_2

    .line 1667
    :cond_1
    const v29, 0xc3c2

    const/16 v30, 0x4

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/telephony/ServiceState;->getState()I

    move-result v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    aput-object v32, v30, v31

    const/16 v31, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->gprsState:I

    move/from16 v32, v0

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    aput-object v32, v30, v31

    const/16 v31, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/telephony/ServiceState;->getState()I

    move-result v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    aput-object v32, v30, v31

    const/16 v31, 0x3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newGPRSState:I

    move/from16 v32, v0

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    aput-object v32, v30, v31

    invoke-static/range {v29 .. v30}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1672
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v24, v0

    .line 1673
    .local v24, tss:Landroid/telephony/ServiceState;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    .line 1674
    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    .line 1676
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/telephony/ServiceState;->setStateOutOfService()V

    .line 1678
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cellLoc:Landroid/telephony/gsm/GsmCellLocation;

    move-object/from16 v23, v0

    .line 1679
    .local v23, tcl:Landroid/telephony/gsm/GsmCellLocation;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cellLoc:Landroid/telephony/gsm/GsmCellLocation;

    .line 1680
    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    .line 1685
    if-eqz v15, :cond_4

    .line 1686
    const/4 v6, -0x1

    .line 1687
    .local v6, cid:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/internal/telephony/gsm/GSMPhone;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v20

    check-cast v20, Landroid/telephony/gsm/GsmCellLocation;

    .line 1688
    .local v20, loc:Landroid/telephony/gsm/GsmCellLocation;
    if-eqz v20, :cond_3

    invoke-virtual/range {v20 .. v20}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v6

    .line 1689
    :cond_3
    const v29, 0xc3c0

    const/16 v30, 0x3

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    aput-object v32, v30, v31

    const/16 v31, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->networkType:I

    move/from16 v32, v0

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    aput-object v32, v30, v31

    const/16 v31, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newNetworkType:I

    move/from16 v32, v0

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    aput-object v32, v30, v31

    invoke-static/range {v29 .. v30}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1690
    const-string v29, "GSM"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "RAT switched "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->networkType:I

    move/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->networkTypeToString(I)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " -> "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newNetworkType:I

    move/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->networkTypeToString(I)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " at cell "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1702
    .end local v6           #cid:I
    .end local v20           #loc:Landroid/telephony/gsm/GsmCellLocation;
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newGPRSState:I

    move/from16 v29, v0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->gprsState:I

    .line 1703
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newNetworkType:I

    move/from16 v29, v0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->networkType:I

    .line 1705
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/telephony/ServiceState;->setStateOutOfService()V

    .line 1707
    if-eqz v15, :cond_5

    .line 1708
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v29, v0

    const-string v30, "gsm.network.type"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->networkType:I

    move/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->networkTypeToString(I)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v29 .. v31}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1712
    :cond_5
    if-eqz v16, :cond_6

    .line 1713
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->networkAttachedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1716
    :cond_6
    if-eqz v9, :cond_9

    .line 1722
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v29, v0

    const-string v30, "gsm.operator.alpha"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v29 .. v31}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1725
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v21

    .line 1726
    .local v21, operatorNumeric:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v29, v0

    const-string v30, "gsm.operator.numeric"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1731
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/telephony/ServiceState;->getState()I

    move-result v29

    if-nez v29, :cond_7

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getAutoTime()Z

    move-result v29

    if-eqz v29, :cond_7

    .line 1734
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->GetTimezoneInfoUsingMcc(Ljava/lang/String;)V

    .line 1738
    :cond_7
    if-nez v21, :cond_1c

    .line 1739
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v29, v0

    const-string v30, "gsm.operator.iso-country"

    const-string v31, ""

    invoke-virtual/range {v29 .. v31}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1741
    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGotCountryCode:Z

    .line 1824
    :cond_8
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v29, v0

    const-string v30, "gsm.operator.isroaming"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v31

    if-eqz v31, :cond_26

    const-string/jumbo v31, "true"

    :goto_c
    invoke-virtual/range {v29 .. v31}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1827
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateSpnDisplay()V

    .line 1829
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyServiceStateChanged(Landroid/telephony/ServiceState;)V

    .line 1832
    .end local v21           #operatorNumeric:Ljava/lang/String;
    :cond_9
    if-eqz v11, :cond_a

    .line 1833
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->gprsAttachedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1836
    :cond_a
    if-eqz v12, :cond_b

    .line 1837
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->gprsDetachedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1840
    :cond_b
    if-eqz v15, :cond_c

    .line 1841
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-virtual/range {v29 .. v30}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyDataConnection(Ljava/lang/String;)V

    .line 1851
    :cond_c
    if-eqz v18, :cond_d

    .line 1852
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->roamingOnRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1855
    :cond_d
    if-eqz v17, :cond_e

    .line 1856
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->roamingOffRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1859
    :cond_e
    if-eqz v14, :cond_f

    .line 1860
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyLocationChanged()V

    .line 1863
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->gprsState:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/telephony/ServiceState;->getState()I

    move-result v30

    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isGprsConsistent(II)Z

    move-result v29

    if-nez v29, :cond_27

    .line 1864
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mStartedGprsRegCheck:Z

    move/from16 v29, v0

    if-nez v29, :cond_10

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mReportedGprsNoReg:Z

    move/from16 v29, v0

    if-nez v29, :cond_10

    .line 1865
    const/16 v29, 0x1

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mStartedGprsRegCheck:Z

    .line 1867
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v29

    const-string v30, "gprs_register_check_period_ms"

    const v31, 0xea60

    invoke-static/range {v29 .. v31}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 1871
    .local v5, check_period:I
    const/16 v29, 0x16

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v29

    move v0, v5

    int-to-long v0, v0

    move-wide/from16 v30, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-wide/from16 v2, v30

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1877
    .end local v5           #check_period:I
    :cond_10
    :goto_d
    return-void

    .line 1614
    .end local v9           #hasChanged:Z
    .end local v10           #hasDeregistered:Z
    .end local v11           #hasGprsAttached:Z
    .end local v12           #hasGprsDetached:Z
    .end local v13           #hasLacChanged:Z
    .end local v14           #hasLocationChanged:Z
    .end local v15           #hasNetworkTypeChanged:Z
    .end local v16           #hasRegistered:Z
    .end local v17           #hasRoamingOff:Z
    .end local v18           #hasRoamingOn:Z
    .end local v22           #startPollStat:Z
    .end local v23           #tcl:Landroid/telephony/gsm/GsmCellLocation;
    .end local v24           #tss:Landroid/telephony/ServiceState;
    :cond_11
    const-string v29, "GSM"

    const-string v30, "[PNN] [pollStateDone] Getting EONS..."

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1616
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v31

    invoke-virtual/range {v29 .. v31}, Lcom/android/internal/telephony/gsm/SIMRecords;->getAllEonsNames(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    .line 1619
    .local v7, eons:Ljava/lang/String;
    const-string v29, "GSM"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "[PNN] [pollStateDone] Operator numeric=["

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "], lac=["

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "], eons=["

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "]"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1625
    if-eqz v7, :cond_0

    .line 1626
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/telephony/ServiceState;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v29

    move-object v1, v7

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-virtual {v0, v1, v2, v3}, Landroid/telephony/ServiceState;->setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1633
    .end local v7           #eons:Ljava/lang/String;
    :cond_12
    const/16 v29, 0x0

    move/from16 v16, v29

    goto/16 :goto_1

    .line 1637
    .restart local v16       #hasRegistered:Z
    :cond_13
    const/16 v29, 0x0

    move/from16 v10, v29

    goto/16 :goto_2

    .line 1641
    .restart local v10       #hasDeregistered:Z
    :cond_14
    const/16 v29, 0x0

    move/from16 v11, v29

    goto/16 :goto_3

    .line 1645
    .restart local v11       #hasGprsAttached:Z
    :cond_15
    const/16 v29, 0x0

    move/from16 v12, v29

    goto/16 :goto_4

    .line 1649
    .restart local v12       #hasGprsDetached:Z
    :cond_16
    const/16 v29, 0x0

    move/from16 v15, v29

    goto/16 :goto_5

    .line 1651
    .restart local v15       #hasNetworkTypeChanged:Z
    :cond_17
    const/16 v29, 0x0

    move/from16 v9, v29

    goto/16 :goto_6

    .line 1653
    .restart local v9       #hasChanged:Z
    :cond_18
    const/16 v29, 0x0

    move/from16 v18, v29

    goto/16 :goto_7

    .line 1655
    .restart local v18       #hasRoamingOn:Z
    :cond_19
    const/16 v29, 0x0

    move/from16 v17, v29

    goto/16 :goto_8

    .line 1657
    .restart local v17       #hasRoamingOff:Z
    :cond_1a
    const/16 v29, 0x0

    move/from16 v14, v29

    goto/16 :goto_9

    .line 1659
    .restart local v14       #hasLocationChanged:Z
    :cond_1b
    const/16 v29, 0x0

    move/from16 v13, v29

    goto/16 :goto_a

    .line 1744
    .restart local v13       #hasLacChanged:Z
    .restart local v21       #operatorNumeric:Ljava/lang/String;
    .restart local v22       #startPollStat:Z
    .restart local v23       #tcl:Landroid/telephony/gsm/GsmCellLocation;
    .restart local v24       #tss:Landroid/telephony/ServiceState;
    :cond_1c
    const-string v19, ""

    .line 1746
    .local v19, iso:Ljava/lang/String;
    const/16 v29, 0x0

    const/16 v30, 0x3

    :try_start_0
    move-object/from16 v0, v21

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v29

    invoke-static/range {v29 .. v29}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v19

    .line 1754
    :goto_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v29, v0

    const-string v30, "gsm.operator.iso-country"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1755
    const/16 v29, 0x1

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGotCountryCode:Z

    .line 1757
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNeedFixZone:Z

    move/from16 v29, v0

    if-eqz v29, :cond_8

    .line 1758
    const-string v29, "GSM"

    const-string v30, "[NITZ] pollStateDone: mNeedFixZone(true)"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1759
    const/16 v27, 0x0

    .line 1763
    .local v27, zone:Ljava/util/TimeZone;
    const-string/jumbo v29, "persist.sys.timezone"

    invoke-static/range {v29 .. v29}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 1766
    .local v28, zoneName:Ljava/lang/String;
    sget-object v29, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->GMT_COUNTRY_CODES:[Ljava/lang/String;

    sget-object v30, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-static/range {v29 .. v30}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 1768
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneOffset:I

    move/from16 v29, v0

    if-nez v29, :cond_20

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneDst:Z

    move/from16 v29, v0

    if-nez v29, :cond_20

    if-eqz v28, :cond_20

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v29

    if-lez v29, :cond_20

    sget-object v29, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->GMT_COUNTRY_CODES:[Ljava/lang/String;

    sget-object v30, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    move-object/from16 v0, v29

    move-object/from16 v1, v19

    move-object/from16 v2, v30

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v29

    if-gez v29, :cond_20

    .line 1771
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v27

    .line 1775
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v29

    move-object/from16 v0, v27

    move-wide/from16 v1, v29

    invoke-virtual {v0, v1, v2}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v29

    move/from16 v0, v29

    int-to-long v0, v0

    move-wide/from16 v25, v0

    .line 1776
    .local v25, tzOffset:J
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getAutoTime()Z

    move-result v29

    if-eqz v29, :cond_1f

    .line 1777
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v29

    sub-long v29, v29, v25

    move-object/from16 v0, p0

    move-wide/from16 v1, v29

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setAndBroadcastNetworkSetTime(J)V

    .line 1813
    .end local v25           #tzOffset:J
    :cond_1d
    :goto_f
    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNeedFixZone:Z

    .line 1815
    if-eqz v27, :cond_8

    .line 1816
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getAutoTime()Z

    move-result v29

    if-eqz v29, :cond_1e

    .line 1817
    invoke-virtual/range {v27 .. v27}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setAndBroadcastNetworkSetTimeZone(Ljava/lang/String;)V

    .line 1819
    :cond_1e
    invoke-virtual/range {v27 .. v27}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->saveNitzTimeZone(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 1748
    .end local v27           #zone:Ljava/util/TimeZone;
    .end local v28           #zoneName:Ljava/lang/String;
    :catch_0
    move-exception v29

    move-object/from16 v8, v29

    .line 1749
    .local v8, ex:Ljava/lang/NumberFormatException;
    const-string v29, "GSM"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "countryCodeForMcc error"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    .line 1750
    .end local v8           #ex:Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v29

    move-object/from16 v8, v29

    .line 1751
    .local v8, ex:Ljava/lang/StringIndexOutOfBoundsException;
    const-string v29, "GSM"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "countryCodeForMcc error"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    .line 1780
    .end local v8           #ex:Ljava/lang/StringIndexOutOfBoundsException;
    .restart local v25       #tzOffset:J
    .restart local v27       #zone:Ljava/util/TimeZone;
    .restart local v28       #zoneName:Ljava/lang/String;
    :cond_1f
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTime:J

    move-wide/from16 v29, v0

    sub-long v29, v29, v25

    move-wide/from16 v0, v29

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTime:J

    goto :goto_f

    .line 1782
    .end local v25           #tzOffset:J
    :cond_20
    const-string v29, ""

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_21

    .line 1785
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneOffset:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneDst:Z

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneTime:J

    move-wide/from16 v31, v0

    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v30

    move-wide/from16 v3, v31

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getNitzTimeZone(IZJ)Ljava/util/TimeZone;

    move-result-object v27

    goto/16 :goto_f

    .line 1791
    :cond_21
    const-string v29, "GSM"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "[NITZ] pollStateDone: iso = "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, ", dst = "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDST:I

    move/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, ", ZoneOffset = "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneOffset:I

    move/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1793
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDST:I

    move/from16 v29, v0

    const/16 v30, 0x3

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_25

    .line 1794
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneOffset:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDST:I

    move/from16 v30, v0

    if-eqz v30, :cond_23

    const/16 v30, 0x1

    :goto_10
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneTime:J

    move-wide/from16 v31, v0

    move/from16 v0, v29

    move/from16 v1, v30

    move-wide/from16 v2, v31

    move-object/from16 v4, v19

    invoke-static {v0, v1, v2, v3, v4}, Landroid/util/TimeUtils;->getTimeZone(IZJLjava/lang/String;)Ljava/util/TimeZone;

    move-result-object v27

    .line 1795
    if-nez v27, :cond_22

    .line 1796
    const-string v29, "GSM"

    const-string v30, "[NITZ] pollStateDone: try without iso"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1797
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneOffset:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDST:I

    move/from16 v30, v0

    if-eqz v30, :cond_24

    const/16 v30, 0x1

    :goto_11
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneTime:J

    move-wide/from16 v31, v0

    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v30

    move-wide/from16 v3, v31

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getNitzTimeZone(IZJ)Ljava/util/TimeZone;

    move-result-object v27

    .line 1808
    :cond_22
    :goto_12
    if-eqz v27, :cond_1d

    .line 1809
    const-string v29, "GSM"

    const-string v30, "[NITZ] pollStateDone: zone found"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f

    .line 1794
    :cond_23
    const/16 v30, 0x0

    goto :goto_10

    .line 1797
    :cond_24
    const/16 v30, 0x0

    goto :goto_11

    .line 1801
    :cond_25
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneOffset:I

    move/from16 v29, v0

    const/16 v30, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneTime:J

    move-wide/from16 v31, v0

    move/from16 v0, v29

    move/from16 v1, v30

    move-wide/from16 v2, v31

    move-object/from16 v4, v19

    invoke-static {v0, v1, v2, v3, v4}, Landroid/util/TimeUtils;->getTimeZone(IZJLjava/lang/String;)Ljava/util/TimeZone;

    move-result-object v27

    .line 1802
    if-nez v27, :cond_22

    .line 1803
    const-string v29, "GSM"

    const-string v30, "[NITZ] pollStateDone: try without iso"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1804
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneOffset:I

    move/from16 v29, v0

    const/16 v30, 0x1

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneTime:J

    move-wide/from16 v31, v0

    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v30

    move-wide/from16 v3, v31

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getNitzTimeZone(IZJ)Ljava/util/TimeZone;

    move-result-object v27

    goto :goto_12

    .line 1824
    .end local v19           #iso:Ljava/lang/String;
    .end local v27           #zone:Ljava/util/TimeZone;
    .end local v28           #zoneName:Ljava/lang/String;
    :cond_26
    const-string v31, "false"

    goto/16 :goto_c

    .line 1875
    .end local v21           #operatorNumeric:Ljava/lang/String;
    :cond_27
    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mReportedGprsNoReg:Z

    goto/16 :goto_d
.end method

.method private postDismissDialog()V
    .locals 5

    .prologue
    .line 2227
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .line 2228
    .local v1, r:Landroid/content/res/Resources;
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v3, :cond_0

    .line 2229
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mToneGenerator:Landroid/media/ToneGenerator;

    .line 2230
    :cond_0
    const v3, 0x10402cb

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2231
    .local v0, plmn:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/GSMPhone;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v2

    .line 2232
    .local v2, spn:Ljava/lang/String;
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {p0, v0, v2, v3, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->handleLimitedService(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 2233
    return-void
.end method

.method private queueNextSignalStrengthPoll()V
    .locals 3

    .prologue
    .line 1996
    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->dontPollSignalStrength:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isCdma()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2011
    :cond_0
    :goto_0
    return-void

    .line 2004
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 2005
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0xa

    iput v1, v0, Landroid/os/Message;->what:I

    .line 2010
    const-wide/16 v1, 0x4e20

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private regCodeIsRoaming(I)Z
    .locals 3
    .parameter "code"

    .prologue
    const/4 v2, 0x0

    .line 2379
    const-string/jumbo v0, "persist.cust.tel.adapt"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2380
    const-string v0, "GSM"

    const-string v1, "Setting Roaming Status to false"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 2384
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x5

    if-ne v0, p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method private regCodeToServiceState(I)I
    .locals 4
    .parameter "code"

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 2344
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->setPowerSaveStatus(Z)V

    .line 2345
    packed-switch p1, :pswitch_data_0

    .line 2367
    :pswitch_0
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unexpected service state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    .line 2368
    :goto_0
    return v0

    .line 2347
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->setPowerSaveStatus(Z)V

    move v0, v3

    .line 2348
    goto :goto_0

    :pswitch_2
    move v0, v3

    .line 2357
    goto :goto_0

    :pswitch_3
    move v0, v1

    .line 2360
    goto :goto_0

    :pswitch_4
    move v0, v1

    .line 2364
    goto :goto_0

    .line 2345
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private revertToNitz()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 2849
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "auto_time"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    .line 2861
    :cond_0
    :goto_0
    return-void

    .line 2853
    :cond_1
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reverting to NITZ: tz=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTimeZone:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' mSavedTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mSavedAtTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedAtTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2856
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTimeZone:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTime:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedAtTime:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    .line 2857
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTimeZone:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setAndBroadcastNetworkSetTimeZone(Ljava/lang/String;)V

    .line 2858
    iget-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedAtTime:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setAndBroadcastNetworkSetTime(J)V

    goto :goto_0
.end method

.method private saveNitzTime(J)V
    .locals 2
    .parameter "time"

    .prologue
    .line 2812
    iput-wide p1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTime:J

    .line 2813
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedAtTime:J

    .line 2814
    return-void
.end method

.method private saveNitzTimeZone(Ljava/lang/String;)V
    .locals 0
    .parameter "zoneId"

    .prologue
    .line 2808
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTimeZone:Ljava/lang/String;

    .line 2809
    return-void
.end method

.method private setAndBroadcastNetworkSetTime(J)V
    .locals 3
    .parameter "time"

    .prologue
    .line 2840
    const-string v1, "GSM"

    const-string v2, "[NITZ] setAndBroadcastNetworkSetTime"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2841
    invoke-static {p1, p2}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    .line 2842
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.NETWORK_SET_TIME"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2843
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2844
    const-string/jumbo v1, "time"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2845
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 2846
    return-void
.end method

.method private setAndBroadcastNetworkSetTimeZone(Ljava/lang/String;)V
    .locals 4
    .parameter "zoneId"

    .prologue
    .line 2823
    const-string v2, "GSM"

    const-string v3, "[NITZ] setAndBroadcastNetworkSetTimeZone"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2824
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 2826
    .local v0, alarm:Landroid/app/AlarmManager;
    invoke-virtual {v0, p1}, Landroid/app/AlarmManager;->setTimeZone(Ljava/lang/String;)V

    .line 2827
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.NETWORK_SET_TIMEZONE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2828
    .local v1, intent:Landroid/content/Intent;
    const/high16 v2, 0x2000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2829
    const-string/jumbo v2, "time-zone"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2830
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 2831
    return-void
.end method

.method private setNotification(I)V
    .locals 10
    .parameter "notifyType"

    .prologue
    const-string v9, "GSM"

    .line 2870
    const-string v6, "GSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[DSAC DEB] create notification "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2871
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2873
    .local v0, context:Landroid/content/Context;
    new-instance v6, Landroid/app/Notification;

    invoke-direct {v6}, Landroid/app/Notification;-><init>()V

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    .line 2874
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iput-wide v7, v6, Landroid/app/Notification;->when:J

    .line 2875
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    const/16 v7, 0x10

    iput v7, v6, Landroid/app/Notification;->flags:I

    .line 2876
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    const v7, 0x108008a

    iput v7, v6, Landroid/app/Notification;->icon:I

    .line 2877
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 2878
    .local v2, intent:Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    const/4 v7, 0x0

    const/high16 v8, 0x1000

    invoke-static {v0, v7, v2, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    iput-object v7, v6, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 2881
    const-string v1, ""

    .line 2882
    .local v1, details:Ljava/lang/CharSequence;
    const v6, 0x10400dc

    invoke-virtual {v0, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 2883
    .local v5, title:Ljava/lang/CharSequence;
    const/16 v3, 0x3e7

    .line 2885
    .local v3, notificationId:I
    packed-switch p1, :pswitch_data_0

    .line 2907
    :goto_0
    :pswitch_0
    const-string v6, "GSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[DSAC DEB] put notification "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " / "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2908
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    iput-object v5, v6, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 2909
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    iget-object v7, v7, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v6, v0, v5, v1, v7}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 2912
    const-string v6, "notification"

    invoke-virtual {v0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    .line 2915
    .local v4, notificationManager:Landroid/app/NotificationManager;
    const/16 v6, 0x3ea

    if-eq p1, v6, :cond_0

    const/16 v6, 0x3ec

    if-ne p1, v6, :cond_1

    .line 2917
    :cond_0
    invoke-virtual {v4, v3}, Landroid/app/NotificationManager;->cancel(I)V

    .line 2922
    :goto_1
    return-void

    .line 2887
    .end local v4           #notificationManager:Landroid/app/NotificationManager;
    :pswitch_1
    const/16 v3, 0x378

    .line 2888
    const v6, 0x10400dd

    invoke-virtual {v0, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 2889
    goto :goto_0

    .line 2891
    :pswitch_2
    const/16 v3, 0x378

    .line 2892
    goto :goto_0

    .line 2894
    :pswitch_3
    const v6, 0x10400e0

    invoke-virtual {v0, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 2895
    goto :goto_0

    .line 2897
    :pswitch_4
    const v6, 0x10400df

    invoke-virtual {v0, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 2898
    goto :goto_0

    .line 2900
    :pswitch_5
    const v6, 0x10400de

    invoke-virtual {v0, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 2901
    goto :goto_0

    .line 2920
    .restart local v4       #notificationManager:Landroid/app/NotificationManager;
    :cond_1
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    invoke-virtual {v4, v3, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_1

    .line 2885
    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private setSelectedNetworkProfile(I)V
    .locals 8
    .parameter "pos"

    .prologue
    const/4 v6, 0x1

    const-string v7, "GSM"

    .line 3462
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->allNetworkName:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSelectedNwkProfile:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;

    .line 3464
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "simprof.preferences_name"

    const/4 v5, 0x3

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 3466
    .local v1, preferences:Landroid/content/SharedPreferences;
    if-eqz v1, :cond_1

    .line 3467
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3468
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v3, "simprof.key.nwkname"

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSelectedNwkProfile:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;->mName:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3469
    const-string/jumbo v3, "simprof.key.mccmnc"

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSelectedNwkProfile:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;->mMccMnc:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3470
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3472
    const-string/jumbo v3, "ro.csc.sales_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3473
    .local v2, salesCode:Ljava/lang/String;
    const-string v3, "FTM"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "ORA"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "AMN"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "ORO"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "ORG"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "IDE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "ONE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "OPT"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    move v3, v6

    :goto_0
    if-nez v3, :cond_3

    .line 3481
    const-string v3, "GSM"

    const-string v3, "[SIM profile] refresh profile"

    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3483
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 3489
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v2           #salesCode:Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollState(Z)V

    .line 3491
    iput-boolean v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIsProfileSelected:Z

    .line 3492
    return-void

    .line 3473
    .restart local v0       #editor:Landroid/content/SharedPreferences$Editor;
    .restart local v2       #salesCode:Ljava/lang/String;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 3485
    :cond_3
    const-string v3, "GSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[SIM profile] refresh profile blocked by sales code: ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private setSignalStrengthDefaultValues()V
    .locals 9

    .prologue
    const/4 v2, -0x1

    .line 1477
    new-instance v0, Landroid/telephony/SignalStrength;

    const/16 v1, 0x63

    const/4 v8, 0x1

    move v3, v2

    move v4, v2

    move v5, v2

    move v6, v2

    move v7, v2

    invoke-direct/range {v0 .. v8}, Landroid/telephony/SignalStrength;-><init>(IIIIIIIZ)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 1478
    return-void
.end method

.method private setTimeFromNITZString(Ljava/lang/String;J)V
    .locals 40
    .parameter "nitz"
    .parameter "nitzReceiveTime"

    .prologue
    .line 2511
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v27

    .line 2512
    .local v27, start:J
    const-string v34, "GSM"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "NITZ: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, ","

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, " start="

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-wide/from16 v1, v27

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, " delay="

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    sub-long v36, v27, p2

    invoke-virtual/range {v35 .. v37}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2517
    const-string v34, "GSM"

    const-string v35, "[NAM] Close Manual Selection Popup. Send Intent ACTION_NITZ_SET_TIME."

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2518
    new-instance v15, Landroid/content/Intent;

    const-string v34, "android.intent.action.NITZ_SET_TIME"

    move-object v0, v15

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2519
    .local v15, intent:Landroid/content/Intent;
    const/high16 v34, 0x2000

    move-object v0, v15

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2520
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v34

    move-object/from16 v0, v34

    move-object v1, v15

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2526
    :try_start_0
    const-string v34, "GMT"

    invoke-static/range {v34 .. v34}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v34

    invoke-static/range {v34 .. v34}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v7

    .line 2528
    .local v7, c:Ljava/util/Calendar;
    invoke-virtual {v7}, Ljava/util/Calendar;->clear()V

    .line 2529
    const/16 v34, 0x10

    const/16 v35, 0x0

    move-object v0, v7

    move/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 2531
    const-string v34, "[/:,+-]"

    move-object/from16 v0, p1

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v21

    .line 2534
    .local v21, nitzSubs:[Ljava/lang/String;
    const-string v34, "[/:,]"

    move-object/from16 v0, p1

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v22

    .line 2535
    .local v22, preNitzSubs:[Ljava/lang/String;
    const/4 v13, 0x0

    .line 2536
    .local v13, i:I
    const/16 v30, 0x1

    .line 2538
    .local v30, tzOffsetSign:Z
    const/4 v13, 0x0

    :goto_0
    const/16 v34, 0x6

    move v0, v13

    move/from16 v1, v34

    if-ge v0, v1, :cond_0

    .line 2539
    aget-object v34, v22, v13

    const-string v35, "-1"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v34

    if-nez v34, :cond_1

    .line 2542
    :cond_0
    const/16 v34, 0x6

    move v0, v13

    move/from16 v1, v34

    if-ne v0, v1, :cond_4

    .line 2544
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v34

    move-object v0, v7

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 2547
    const/16 v34, 0x5

    aget-object v34, v22, v34

    const-string v35, "[+-]"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v23

    .line 2548
    .local v23, secAndTzOffset:[Ljava/lang/String;
    const/16 v34, 0x5

    aget-object v34, v22, v34

    const/16 v35, 0x2d

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v34

    if-nez v34, :cond_2

    const/16 v34, 0x1

    move/from16 v30, v34

    .line 2550
    :goto_1
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v34, v0

    add-int/lit8 v34, v34, 0x1

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    .line 2551
    const/4 v13, 0x0

    :goto_2
    const/16 v34, 0x6

    move v0, v13

    move/from16 v1, v34

    if-ge v0, v1, :cond_3

    .line 2552
    const/16 v34, 0x0

    aput-object v34, v21, v13

    .line 2551
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 2538
    .end local v23           #secAndTzOffset:[Ljava/lang/String;
    :cond_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 2548
    .restart local v23       #secAndTzOffset:[Ljava/lang/String;
    :cond_2
    const/16 v34, 0x0

    move/from16 v30, v34

    goto :goto_1

    .line 2554
    :cond_3
    const/16 v34, 0x6

    const/16 v35, 0x2

    aget-object v35, v23, v35

    aput-object v35, v21, v34

    .line 2555
    const/4 v13, 0x7

    :goto_3
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v34, v0

    add-int/lit8 v34, v34, 0x1

    move v0, v13

    move/from16 v1, v34

    if-ge v0, v1, :cond_5

    .line 2556
    const/16 v34, 0x1

    sub-int v34, v13, v34

    aget-object v34, v22, v34

    aput-object v34, v21, v13

    .line 2555
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 2560
    .end local v23           #secAndTzOffset:[Ljava/lang/String;
    :cond_4
    const/16 v34, 0x0

    aget-object v34, v21, v34

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v34

    move/from16 v0, v34

    add-int/lit16 v0, v0, 0x7d0

    move/from16 v32, v0

    .line 2561
    .local v32, year:I
    const/16 v34, 0x1

    move-object v0, v7

    move/from16 v1, v34

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 2564
    const/16 v34, 0x1

    aget-object v34, v21, v34

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v34

    const/16 v35, 0x1

    sub-int v20, v34, v35

    .line 2565
    .local v20, month:I
    const/16 v34, 0x2

    move-object v0, v7

    move/from16 v1, v34

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 2567
    const/16 v34, 0x2

    aget-object v34, v21, v34

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 2568
    .local v8, date:I
    const/16 v34, 0x5

    move-object v0, v7

    move/from16 v1, v34

    move v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 2570
    const/16 v34, 0x3

    aget-object v34, v21, v34

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 2571
    .local v12, hour:I
    const/16 v34, 0xa

    move-object v0, v7

    move/from16 v1, v34

    move v2, v12

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 2573
    const/16 v34, 0x4

    aget-object v34, v21, v34

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 2574
    .local v19, minute:I
    const/16 v34, 0xc

    move-object v0, v7

    move/from16 v1, v34

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 2576
    const/16 v34, 0x5

    aget-object v34, v21, v34

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v24

    .line 2577
    .local v24, second:I
    const/16 v34, 0xd

    move-object v0, v7

    move/from16 v1, v34

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 2580
    .end local v8           #date:I
    .end local v12           #hour:I
    .end local v19           #minute:I
    .end local v20           #month:I
    .end local v24           #second:I
    .end local v32           #year:I
    :cond_5
    const/16 v34, 0x2d

    move-object/from16 v0, p1

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v34

    const/16 v35, -0x1

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_e

    const/16 v34, 0x1

    move/from16 v25, v34

    .line 2582
    .local v25, sign:Z
    :goto_4
    const/16 v34, 0x0

    aget-object v34, v21, v34

    if-nez v34, :cond_6

    .line 2583
    move/from16 v25, v30

    .line 2587
    :cond_6
    const/16 v34, 0x6

    aget-object v34, v21, v34

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v29

    .line 2589
    .local v29, tzOffset:I
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v34, v0

    const/16 v35, 0x8

    move/from16 v0, v34

    move/from16 v1, v35

    if-lt v0, v1, :cond_f

    const/16 v34, 0x7

    aget-object v34, v21, v34

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v34

    move/from16 v9, v34

    .line 2599
    .local v9, dst:I
    :goto_5
    if-eqz v25, :cond_10

    const/16 v34, 0x1

    :goto_6
    mul-int v34, v34, v29

    mul-int/lit8 v34, v34, 0xf

    mul-int/lit8 v34, v34, 0x3c

    move/from16 v0, v34

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v29, v0

    .line 2601
    const/16 v33, 0x0

    .line 2607
    .local v33, zone:Ljava/util/TimeZone;
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v34, v0

    const/16 v35, 0x9

    move/from16 v0, v34

    move/from16 v1, v35

    if-lt v0, v1, :cond_7

    .line 2608
    const/16 v34, 0x8

    aget-object v34, v21, v34

    const/16 v35, 0x21

    const/16 v36, 0x2f

    invoke-virtual/range {v34 .. v36}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v31

    .line 2612
    .local v31, tzname:Ljava/lang/String;
    const/16 v34, 0x2f

    move-object/from16 v0, v31

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v34

    const/16 v35, -0x1

    move/from16 v0, v34

    move/from16 v1, v35

    if-eq v0, v1, :cond_11

    .line 2614
    invoke-static/range {v31 .. v31}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v33

    .line 2645
    .end local v31           #tzname:Ljava/lang/String;
    :cond_7
    :goto_7
    const-string v34, "gsm.operator.iso-country"

    invoke-static/range {v34 .. v34}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 2647
    .local v16, iso:Ljava/lang/String;
    const-string v34, "GSM"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "[NITZ] setTimeFromNITZString: iso = "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, ", dst = "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, ", ZoneOffset = "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2657
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->PrevMcc:Ljava/lang/String;

    move-object/from16 v34, v0

    if-eqz v34, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->PrevMcc:Ljava/lang/String;

    move-object/from16 v34, v0

    const-string v35, "250"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_8

    .line 2660
    const-string v34, "GSM"

    const-string v35, "[NITZ] we receive russia NITZ so ignore the DST!!"

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2661
    const/4 v9, 0x0

    .line 2663
    const v34, 0xdbba00

    move/from16 v0, v29

    move/from16 v1, v34

    if-ne v0, v1, :cond_8

    .line 2665
    const-string v34, "GSM"

    const-string v35, "[NITZ] we receive russia GMT+4 timezone so we want Moscow timezone!!!"

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2666
    const-string v34, "Europe/Moscow"

    invoke-static/range {v34 .. v34}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v33

    .line 2667
    const-string v34, "GSM"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "[NITZ] Now timezone : "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v33 .. v33}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2672
    :cond_8
    if-nez v33, :cond_9

    .line 2674
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGotCountryCode:Z

    move/from16 v34, v0

    if-eqz v34, :cond_9

    .line 2688
    const/16 v34, 0x3

    move v0, v9

    move/from16 v1, v34

    if-eq v0, v1, :cond_17

    .line 2689
    if-eqz v16, :cond_15

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v34

    if-lez v34, :cond_15

    .line 2690
    if-eqz v9, :cond_13

    const/16 v34, 0x1

    :goto_8
    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v35

    move/from16 v0, v29

    move/from16 v1, v34

    move-wide/from16 v2, v35

    move-object/from16 v4, v16

    invoke-static {v0, v1, v2, v3, v4}, Landroid/util/TimeUtils;->getTimeZone(IZJLjava/lang/String;)Ljava/util/TimeZone;

    move-result-object v33

    .line 2692
    if-nez v33, :cond_9

    .line 2693
    const-string v34, "GSM"

    const-string v35, "[NITZ] setTimeFromNITZString: try without iso"

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2694
    if-eqz v9, :cond_14

    const/16 v34, 0x1

    :goto_9
    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v35

    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v34

    move-wide/from16 v3, v35

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getNitzTimeZone(IZJ)Ljava/util/TimeZone;

    move-result-object v33

    .line 2717
    :cond_9
    :goto_a
    if-nez v33, :cond_b

    .line 2722
    const/16 v34, 0x1

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNeedFixZone:Z

    .line 2723
    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneOffset:I

    .line 2724
    const/16 v34, 0x1

    move v0, v9

    move/from16 v1, v34

    if-eq v0, v1, :cond_a

    const/16 v34, 0x2

    move v0, v9

    move/from16 v1, v34

    if-ne v0, v1, :cond_18

    :cond_a
    const/16 v34, 0x1

    :goto_b
    move/from16 v0, v34

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneDst:Z

    .line 2725
    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v34

    move-wide/from16 v0, v34

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneTime:J

    .line 2726
    move v0, v9

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDST:I

    .line 2728
    const-string v34, "GSM"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "[NITZ] mNeedFixZone = "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNeedFixZone:Z

    move/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, ", mZoneOffset = "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneOffset:I

    move/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, ", mZoneDst = "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneDst:Z

    move/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, ", mZoneTime = "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneTime:J

    move-wide/from16 v36, v0

    invoke-virtual/range {v35 .. v37}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, ", mDST = "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDST:I

    move/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2736
    :cond_b
    if-eqz v33, :cond_d

    .line 2737
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getAutoTime()Z

    move-result v34

    if-eqz v34, :cond_c

    .line 2738
    invoke-virtual/range {v33 .. v33}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setAndBroadcastNetworkSetTimeZone(Ljava/lang/String;)V

    .line 2740
    :cond_c
    invoke-virtual/range {v33 .. v33}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->saveNitzTimeZone(Ljava/lang/String;)V

    .line 2743
    :cond_d
    const-string v34, "gsm.ignore-nitz"

    invoke-static/range {v34 .. v34}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 2744
    .local v14, ignore:Ljava/lang/String;
    if-eqz v14, :cond_19

    const-string/jumbo v34, "yes"

    move-object v0, v14

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_19

    .line 2745
    const-string v34, "GSM"

    const-string v35, "NITZ: Not setting clock because gsm.ignore-nitz is set"

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2796
    .end local v7           #c:Ljava/util/Calendar;
    .end local v9           #dst:I
    .end local v13           #i:I
    .end local v14           #ignore:Ljava/lang/String;
    .end local v16           #iso:Ljava/lang/String;
    .end local v21           #nitzSubs:[Ljava/lang/String;
    .end local v22           #preNitzSubs:[Ljava/lang/String;
    .end local v25           #sign:Z
    .end local v29           #tzOffset:I
    .end local v30           #tzOffsetSign:Z
    .end local v33           #zone:Ljava/util/TimeZone;
    :goto_c
    return-void

    .line 2580
    .restart local v7       #c:Ljava/util/Calendar;
    .restart local v13       #i:I
    .restart local v21       #nitzSubs:[Ljava/lang/String;
    .restart local v22       #preNitzSubs:[Ljava/lang/String;
    .restart local v30       #tzOffsetSign:Z
    :cond_e
    const/16 v34, 0x0

    move/from16 v25, v34

    goto/16 :goto_4

    .line 2589
    .restart local v25       #sign:Z
    .restart local v29       #tzOffset:I
    :cond_f
    const/16 v34, 0x0

    move/from16 v9, v34

    goto/16 :goto_5

    .line 2599
    .restart local v9       #dst:I
    :cond_10
    const/16 v34, -0x1

    goto/16 :goto_6

    .line 2620
    .restart local v31       #tzname:Ljava/lang/String;
    .restart local v33       #zone:Ljava/util/TimeZone;
    :cond_11
    const/16 v34, 0x8

    aget-object v6, v21, v34

    .line 2621
    .local v6, NitzOperator:Ljava/lang/String;
    if-eqz v6, :cond_12

    .line 2623
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 2624
    const/16 v34, 0x0

    const/16 v35, 0x3

    move-object v0, v6

    move/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 2625
    .local v5, NewMcc:Ljava/lang/String;
    const-string v34, "000"

    move-object v0, v5

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-nez v34, :cond_7

    .line 2627
    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->PrevMcc:Ljava/lang/String;

    .line 2630
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v34

    invoke-static/range {v34 .. v34}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v26

    .line 2631
    .local v26, sp:Landroid/content/SharedPreferences;
    invoke-interface/range {v26 .. v26}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    .line 2632
    .local v10, editor:Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v34, "prev_mcc_num"

    move-object v0, v10

    move-object/from16 v1, v34

    move-object v2, v5

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2633
    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_7

    .line 2793
    .end local v5           #NewMcc:Ljava/lang/String;
    .end local v6           #NitzOperator:Ljava/lang/String;
    .end local v7           #c:Ljava/util/Calendar;
    .end local v9           #dst:I
    .end local v10           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v13           #i:I
    .end local v21           #nitzSubs:[Ljava/lang/String;
    .end local v22           #preNitzSubs:[Ljava/lang/String;
    .end local v25           #sign:Z
    .end local v26           #sp:Landroid/content/SharedPreferences;
    .end local v29           #tzOffset:I
    .end local v30           #tzOffsetSign:Z
    .end local v31           #tzname:Ljava/lang/String;
    .end local v33           #zone:Ljava/util/TimeZone;
    :catch_0
    move-exception v34

    move-object/from16 v11, v34

    .line 2794
    .local v11, ex:Ljava/lang/RuntimeException;
    const-string v34, "GSM"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "NITZ: Parsing NITZ time "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    move-object v2, v11

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c

    .line 2638
    .end local v11           #ex:Ljava/lang/RuntimeException;
    .restart local v6       #NitzOperator:Ljava/lang/String;
    .restart local v7       #c:Ljava/util/Calendar;
    .restart local v9       #dst:I
    .restart local v13       #i:I
    .restart local v21       #nitzSubs:[Ljava/lang/String;
    .restart local v22       #preNitzSubs:[Ljava/lang/String;
    .restart local v25       #sign:Z
    .restart local v29       #tzOffset:I
    .restart local v30       #tzOffsetSign:Z
    .restart local v31       #tzname:Ljava/lang/String;
    .restart local v33       #zone:Ljava/util/TimeZone;
    :cond_12
    :try_start_1
    const-string v34, "GSM"

    const-string v35, "NitzOperator is null"

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 2690
    .end local v6           #NitzOperator:Ljava/lang/String;
    .end local v31           #tzname:Ljava/lang/String;
    .restart local v16       #iso:Ljava/lang/String;
    :cond_13
    const/16 v34, 0x0

    goto/16 :goto_8

    .line 2694
    :cond_14
    const/16 v34, 0x0

    goto/16 :goto_9

    .line 2702
    :cond_15
    const-string v34, "GSM"

    const-string v35, "[NITZ] setTimeFromNITZString: test network?"

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2703
    if-eqz v9, :cond_16

    const/16 v34, 0x1

    :goto_d
    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v35

    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v34

    move-wide/from16 v3, v35

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getNitzTimeZone(IZJ)Ljava/util/TimeZone;

    move-result-object v33

    goto/16 :goto_a

    :cond_16
    const/16 v34, 0x0

    goto :goto_d

    .line 2708
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    invoke-virtual/range {v34 .. v37}, Landroid/telephony/ServiceState;->setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2709
    const/16 v34, 0x0

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGotCountryCode:Z

    .line 2710
    const/16 v34, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollState(Z)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_a

    .line 2724
    :cond_18
    const/16 v34, 0x0

    goto/16 :goto_b

    .line 2750
    .restart local v14       #ignore:Ljava/lang/String;
    :cond_19
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2752
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getAutoTime()Z

    move-result v34

    if-eqz v34, :cond_1c

    .line 2753
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v34

    sub-long v17, v34, p2

    .line 2756
    .local v17, millisSinceNitzReceived:J
    const-wide/16 v34, 0x0

    cmp-long v34, v17, v34

    if-gez v34, :cond_1a

    .line 2758
    const-string v34, "GSM"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "NITZ: not setting time, clock has rolled backwards since NITZ time was received, "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2791
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_c

    .line 2764
    :cond_1a
    const-wide/32 v34, 0x7fffffff

    cmp-long v34, v17, v34

    if-lez v34, :cond_1b

    .line 2766
    :try_start_4
    const-string v34, "GSM"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "NITZ: not setting time, processing has taken "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-wide/32 v36, 0x5265c00

    div-long v36, v17, v36

    invoke-virtual/range {v35 .. v37}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, " days"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2791
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_c

    .line 2773
    :cond_1b
    const/16 v34, 0xe

    move-wide/from16 v0, v17

    long-to-int v0, v0

    move/from16 v35, v0

    :try_start_6
    move-object v0, v7

    move/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 2775
    const-string v34, "GSM"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "NITZ: Setting time of day to "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual {v7}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, " NITZ receive delay(ms): "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, " gained(ms): "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v36

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v38

    sub-long v36, v36, v38

    invoke-virtual/range {v35 .. v37}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, " from "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2781
    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v34

    move-object/from16 v0, p0

    move-wide/from16 v1, v34

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setAndBroadcastNetworkSetTime(J)V

    .line 2782
    const-string v34, "GSM"

    const-string v35, "NITZ: after Setting time of day"

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2784
    .end local v17           #millisSinceNitzReceived:J
    :cond_1c
    const-string v34, "gsm.nitz.time"

    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v35

    invoke-static/range {v35 .. v36}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2785
    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v34

    move-object/from16 v0, p0

    move-wide/from16 v1, v34

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->saveNitzTime(J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 2791
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_c

    :catchall_0
    move-exception v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v34
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_0
.end method

.method private showDialog(Ljava/lang/String;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v3, 0x1

    .line 2252
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->networkDialog:Landroid/app/AlertDialog;

    .line 2254
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->networkDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d8

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 2255
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->networkDialog:Landroid/app/AlertDialog;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDialogOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 2256
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->networkDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 2257
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mTimeoutHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mTimeoutHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/32 v3, 0x1d4c0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2260
    :try_start_0
    new-instance v1, Landroid/media/ToneGenerator;

    const/4 v2, 0x1

    const/16 v3, 0x64

    invoke-direct {v1, v2, v3}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mToneGenerator:Landroid/media/ToneGenerator;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2265
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v1, :cond_0

    .line 2266
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mToneGenerator:Landroid/media/ToneGenerator;

    const/16 v2, 0x1c

    invoke-virtual {v1, v2}, Landroid/media/ToneGenerator;->startTone(I)Z

    .line 2268
    :cond_0
    return-void

    .line 2261
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 2262
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception caught while creating local tone generator: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2263
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mToneGenerator:Landroid/media/ToneGenerator;

    goto :goto_0
.end method

.method private showSimProfileOption(Z)V
    .locals 25
    .parameter "cscIntent"

    .prologue
    .line 3112
    const-string v4, "csc.preferences_name"

    .line 3113
    .local v4, CSC_PREFERENCES_NAME:Ljava/lang/String;
    const-string v5, "csc.key.already_executed"

    .line 3115
    .local v5, KEY_CSC_ALREADY_EXECUTED:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/gsm/SIMRecords;->getSIMOperatorNumeric()Ljava/lang/String;

    move-result-object v16

    .line 3116
    .local v16, operator:Ljava/lang/String;
    const/4 v7, 0x0

    .line 3119
    .local v7, cscUpdated:Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v21

    const-string v22, "com.samsung.sec.android.application.csc"

    const/16 v23, 0x2

    invoke-virtual/range {v21 .. v23}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v6

    .line 3120
    .local v6, context:Landroid/content/Context;
    const/16 v21, 0x1

    move-object v0, v6

    move-object v1, v4

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 3121
    .local v17, preferences:Landroid/content/SharedPreferences;
    const/16 v21, 0x0

    move-object/from16 v0, v17

    move-object v1, v5

    move/from16 v2, v21

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 3127
    .end local v6           #context:Landroid/content/Context;
    .end local v17           #preferences:Landroid/content/SharedPreferences;
    :goto_0
    const-string v21, "GSM"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "[SIM profile] operator: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3128
    const-string v21, "GSM"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "[SIM profile] cscUpdated: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " cscIntent: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " mIsProfileSelected: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIsProfileSelected:Z

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3130
    if-eqz v16, :cond_7

    if-nez p1, :cond_0

    if-eqz v7, :cond_7

    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIsProfileSelected:Z

    move/from16 v21, v0

    if-nez v21, :cond_7

    .line 3131
    const-string/jumbo v18, "ril.isIccChanged"

    .line 3133
    .local v18, propNameChangedICC:Ljava/lang/String;
    const-string v21, "0"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 3134
    .local v12, iccChanged:Ljava/lang/String;
    if-eqz v12, :cond_1

    const-string v21, "1"

    move-object v0, v12

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_2

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSelectedNwkProfile:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;

    move-object/from16 v21, v0

    if-nez v21, :cond_14

    .line 3137
    :cond_2
    if-eqz v12, :cond_3

    const-string v21, "1"

    move-object v0, v12

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_3

    .line 3138
    const-string v21, "GSM"

    const-string v22, "[SIM profile] SIM changed"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3139
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->clearNwkProfilePreference()V

    .line 3142
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->createAllNetworkList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->allNetworkName:Ljava/util/ArrayList;

    .line 3144
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->allNetworkName:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    if-eqz v21, :cond_4

    .line 3145
    const-string v21, "GSM"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "[SIM profile] network list size: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->allNetworkName:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3148
    :cond_4
    const-string/jumbo v21, "ro.csc.sales_code"

    invoke-static/range {v21 .. v21}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 3150
    .local v20, salesCode:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->allNetworkName:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    if-eqz v21, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->allNetworkName:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v21

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-lt v0, v1, :cond_b

    .line 3152
    const-string v21, "FTM"

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_5

    const-string v21, "ORA"

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_5

    const-string v21, "AMN"

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_5

    const-string v21, "ORO"

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_5

    const-string v21, "ORG"

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_5

    const-string v21, "IDE"

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_5

    const-string v21, "ONE"

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_5

    const-string v21, "OPT"

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_9

    .line 3160
    :cond_5
    const-string v21, "23430"

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->allNetworkName:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    if-eqz v21, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->allNetworkName:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v21

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-lt v0, v1, :cond_8

    .line 3162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->allNetworkName:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v21

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object v13, v0

    .line 3164
    .local v13, items:[Ljava/lang/String;
    const/4 v11, 0x0

    .end local p1
    .local v11, i:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->allNetworkName:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v21

    move v0, v11

    move/from16 v1, v21

    if-ge v0, v1, :cond_6

    .line 3165
    new-instance v21, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->allNetworkName:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;->mName:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-direct/range {v21 .. v22}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v21, v13, v11

    .line 3164
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 3123
    .end local v11           #i:I
    .end local v12           #iccChanged:Ljava/lang/String;
    .end local v13           #items:[Ljava/lang/String;
    .end local v18           #propNameChangedICC:Ljava/lang/String;
    .end local v20           #salesCode:Ljava/lang/String;
    .restart local p1
    :catch_0
    move-exception v21

    move-object/from16 v10, v21

    .line 3124
    .local v10, e:Ljava/lang/Exception;
    const-string v21, "GSM"

    const-string v22, "[SIM profile] exception occured"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3167
    .end local v10           #e:Ljava/lang/Exception;
    .end local p1
    .restart local v11       #i:I
    .restart local v12       #iccChanged:Ljava/lang/String;
    .restart local v13       #items:[Ljava/lang/String;
    .restart local v18       #propNameChangedICC:Ljava/lang/String;
    .restart local v20       #salesCode:Ljava/lang/String;
    :cond_6
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v19

    .line 3168
    .local v19, r:Landroid/content/res/Resources;
    const v21, 0x1040463

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 3170
    .local v9, dialogTitle:Ljava/lang/String;
    new-instance v21, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v21

    move-object v1, v9

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v21

    const/16 v22, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v23, v0

    move-object/from16 v0, v21

    move-object v1, v13

    move/from16 v2, v22

    move-object/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    .line 3175
    .local v8, d:Landroid/app/AlertDialog;
    invoke-virtual {v8}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v21

    const/16 v22, 0x7d3

    invoke-virtual/range {v21 .. v22}, Landroid/view/Window;->setType(I)V

    .line 3176
    invoke-virtual {v8}, Landroid/app/AlertDialog;->show()V

    .line 3274
    .end local v8           #d:Landroid/app/AlertDialog;
    .end local v9           #dialogTitle:Ljava/lang/String;
    .end local v11           #i:I
    .end local v12           #iccChanged:Ljava/lang/String;
    .end local v13           #items:[Ljava/lang/String;
    .end local v18           #propNameChangedICC:Ljava/lang/String;
    .end local v19           #r:Landroid/content/res/Resources;
    .end local v20           #salesCode:Ljava/lang/String;
    .end local p0
    :cond_7
    :goto_2
    return-void

    .line 3180
    .restart local v12       #iccChanged:Ljava/lang/String;
    .restart local v18       #propNameChangedICC:Ljava/lang/String;
    .restart local v20       #salesCode:Ljava/lang/String;
    .restart local p0
    .restart local p1
    :cond_8
    const-string v21, "GSM"

    const-string v22, "[SIM profile] Voicemail number will be set WITHOUT Popup although one more network name and same mccmnc"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3181
    const-string v21, "GSM"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "[SIM profile] Voicemail number :  mSelectedNwkProfile : Name["

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->allNetworkName:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;->mName:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "] MCCMNC["

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->allNetworkName:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;->mMccMnc:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "]"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableVoiceMailInSIM()Z

    move-result v21

    if-nez v21, :cond_7

    .line 3183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->allNetworkName:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;->mName:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lcom/android/internal/telephony/gsm/SIMRecords;->setVoiceMailByCountry(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 3190
    .restart local p0
    .restart local p1
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->allNetworkName:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v21

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object v13, v0

    .line 3192
    .restart local v13       #items:[Ljava/lang/String;
    const/4 v11, 0x0

    .end local p1
    .restart local v11       #i:I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->allNetworkName:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v21

    move v0, v11

    move/from16 v1, v21

    if-ge v0, v1, :cond_a

    .line 3193
    new-instance v21, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->allNetworkName:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;->mName:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-direct/range {v21 .. v22}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v21, v13, v11

    .line 3192
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 3195
    :cond_a
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v19

    .line 3196
    .restart local v19       #r:Landroid/content/res/Resources;
    const v21, 0x1040463

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 3198
    .restart local v9       #dialogTitle:Ljava/lang/String;
    new-instance v21, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v21

    move-object v1, v9

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v21

    const/16 v22, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v23, v0

    move-object/from16 v0, v21

    move-object v1, v13

    move/from16 v2, v22

    move-object/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    .line 3203
    .restart local v8       #d:Landroid/app/AlertDialog;
    invoke-virtual {v8}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v21

    const/16 v22, 0x7d3

    invoke-virtual/range {v21 .. v22}, Landroid/view/Window;->setType(I)V

    .line 3204
    invoke-virtual {v8}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_2

    .line 3206
    .end local v8           #d:Landroid/app/AlertDialog;
    .end local v9           #dialogTitle:Ljava/lang/String;
    .end local v11           #i:I
    .end local v13           #items:[Ljava/lang/String;
    .end local v19           #r:Landroid/content/res/Resources;
    .restart local p1
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIsSubsetCodeUsed:Z

    move/from16 v21, v0

    if-nez v21, :cond_c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIsSPCodeUsed:Z

    move/from16 v21, v0

    if-nez v21, :cond_c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIsFiltered:Z

    move/from16 v21, v0

    if-eqz v21, :cond_d

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->allNetworkName:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    if-eqz v21, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->allNetworkName:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_d

    .line 3208
    const-string v21, "GSM"

    const-string v22, "[SIM profile] selected by SPCode or SubsetCode"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3209
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setSelectedNetworkProfile(I)V

    .line 3211
    const-string v21, "GSM"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "[SIM profile] Voicemail number will be set WITHOUT Popup by mSelectedNwkProfile : Name["

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->allNetworkName:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;->mName:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "] MCCMNC["

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->allNetworkName:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;->mMccMnc:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "]"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3212
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableVoiceMailInSIM()Z

    move-result v21

    if-nez v21, :cond_7

    .line 3213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->allNetworkName:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;->mName:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lcom/android/internal/telephony/gsm/SIMRecords;->setVoiceMailByCountry(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 3215
    .restart local p0
    .restart local p1
    :cond_d
    const-string v21, "FTM"

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_e

    const-string v21, "ORA"

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_e

    const-string v21, "AMN"

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_e

    const-string v21, "ORO"

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_e

    const-string v21, "ORG"

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_e

    const-string v21, "IDE"

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_e

    const-string v21, "ONE"

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_e

    const-string v21, "OPT"

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_f

    :cond_e
    const/16 v21, 0x1

    :goto_4
    if-nez v21, :cond_11

    .line 3223
    const-string v21, "GSM"

    const-string v22, "[SIM profile] refresh profile"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/gsm/GSMPhone;->updateCurrentCarrierInProvider()Z

    .line 3226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v21

    new-instance v22, Landroid/content/Intent;

    const-string v23, "android.intent.action.UPDATE_CURRENT_CARRIER_DONE"

    invoke-direct/range {v22 .. v23}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->allNetworkName:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    if-eqz v21, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->allNetworkName:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v21

    if-lez v21, :cond_10

    .line 3232
    const-string v21, "GSM"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "[SIM profile] Voicemail number will be set WITHOUT Popup by mSelectedNwkProfile : Name["

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->allNetworkName:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;->mName:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "] MCCMNC["

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->allNetworkName:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;->mMccMnc:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "]"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3233
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableVoiceMailInSIM()Z

    move-result v21

    if-nez v21, :cond_7

    .line 3234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->allNetworkName:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;->mName:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lcom/android/internal/telephony/gsm/SIMRecords;->setVoiceMailByCountry(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 3215
    .restart local p0
    .restart local p1
    :cond_f
    const/16 v21, 0x0

    goto/16 :goto_4

    .line 3237
    :cond_10
    const-string v21, "GSM"

    const-string v22, "[SIM profile] Voicemail number can not be set because there is no network!"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 3242
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->allNetworkName:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    if-eqz v21, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->allNetworkName:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v21

    if-lez v21, :cond_13

    .line 3244
    const-string v21, "GSM"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "[SIM profile] Voicemail number will be set WITHOUT Popup by mSelectedNwkProfile : Name["

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->allNetworkName:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;->mName:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "] MCCMNC["

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->allNetworkName:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;->mMccMnc:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "]"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableVoiceMailInSIM()Z

    move-result v21

    if-nez v21, :cond_12

    .line 3246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->allNetworkName:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;->mName:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lcom/android/internal/telephony/gsm/SIMRecords;->setVoiceMailByCountry(Ljava/lang/String;)V

    .line 3251
    :cond_12
    :goto_5
    const-string v21, "GSM"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "[SIM profile] refresh profile blocked by sales code: ["

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "]"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 3249
    .restart local p0
    .restart local p1
    :cond_13
    const-string v21, "GSM"

    const-string v22, "[SIM profile] Voicemail number can not be set because there is no network!"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 3257
    .end local v20           #salesCode:Ljava/lang/String;
    :cond_14
    const-string v21, "GSM"

    const-string v22, "[SIM profile] It is not first booting or change the sim card!This mccmnc has over 2 different network names."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3258
    const-string v21, "GSM"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "[SIM profile] mSelectedNwkProfile  is not null. Name : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSelectedNwkProfile:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;->mName:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "MccMnc : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSelectedNwkProfile:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;->mMccMnc:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/gsm/SIMRecords;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v21

    if-nez v21, :cond_7

    .line 3262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v21

    const-string/jumbo v22, "simprof.preferences_name"

    const/16 v23, 0x3

    invoke-virtual/range {v21 .. v23}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 3264
    .restart local v17       #preferences:Landroid/content/SharedPreferences;
    if-eqz v17, :cond_7

    .line 3265
    const-string/jumbo v21, "simprof.key.nwkname"

    const-string v22, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 3266
    .local v15, name:Ljava/lang/String;
    const-string/jumbo v21, "simprof.key.mccmnc"

    const-string v22, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 3267
    .local v14, mccmnc:Ljava/lang/String;
    const-string v21, "GSM"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "[SIM profile] ICC card is not changed and Voicemail number will be set by mSelectedNwkProfile : Name["

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "] MCCMNC["

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "]"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3268
    if-eqz v15, :cond_7

    if-eqz v14, :cond_7

    .line 3269
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object v1, v15

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->setVoiceMailByCountry(Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method private static twoDigitsAt(Ljava/lang/String;I)I
    .locals 4
    .parameter "s"
    .parameter "offset"

    .prologue
    const/16 v3, 0xa

    .line 2444
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2, v3}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    .line 2445
    .local v0, a:I
    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2, v3}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    .line 2447
    .local v1, b:I
    if-ltz v0, :cond_0

    if-gez v1, :cond_1

    .line 2449
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "invalid format"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2452
    :cond_1
    mul-int/lit8 v2, v0, 0xa

    add-int/2addr v2, v1

    return v2
.end method

.method private updateSpnDisplay(Z)V
    .locals 14
    .parameter "force"

    .prologue
    .line 881
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v11, v11, Lcom/android/internal/telephony/gsm/GSMPhone;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    iget-object v12, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v12}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/internal/telephony/gsm/SIMRecords;->setSpnDynamic(Ljava/lang/String;)V

    .line 883
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v11, v11, Lcom/android/internal/telephony/gsm/GSMPhone;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    iget-object v12, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v12}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/internal/telephony/gsm/SIMRecords;->getDisplayRule(Ljava/lang/String;)I

    move-result v7

    .line 884
    .local v7, rule:I
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v11, v11, Lcom/android/internal/telephony/gsm/GSMPhone;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-virtual {v11}, Lcom/android/internal/telephony/gsm/SIMRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v10

    .line 885
    .local v10, spn:Ljava/lang/String;
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v11}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v4

    .line 1037
    .local v4, plmn:Ljava/lang/String;
    const-string v11, "GSM"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[updateSpnDisplay] plmn = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " mEmergencyOnly = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-boolean v13, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEmergencyOnly:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " cm.getRadioState() = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v13}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    const-string v11, "gsm.sim.state"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1040
    .local v5, prop:Ljava/lang/String;
    const-string v11, "PIN_PERM_BLOCKED"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 1041
    .local v6, pukBlocked:Z
    if-eqz v6, :cond_0

    .line 1042
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x1040342

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1045
    :cond_0
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v11}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v11

    sget-object v12, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v11, v12, :cond_9

    const/4 v11, 0x1

    move v1, v11

    .line 1048
    .local v1, bRadioOffState:Z
    :goto_0
    iget-boolean v11, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEmergencyOnly:Z

    if-eqz v11, :cond_a

    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v11}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v11

    if-eqz v11, :cond_a

    .line 1049
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x104031e

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1052
    const-string v11, "GSM"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[updateSpnDisplay] Emergency only state plmn = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    :cond_1
    :goto_1
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v11}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    .line 1061
    .local v0, Numeric:Ljava/lang/String;
    const/4 v3, 0x0

    .line 1062
    .local v3, mcc:Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 1063
    const/4 v11, 0x0

    const/4 v12, 0x3

    invoke-virtual {v0, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1065
    :cond_2
    if-eqz v3, :cond_4

    .line 1067
    if-eqz v4, :cond_4

    if-eqz v10, :cond_4

    const-string v11, "505"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 1068
    const-string v11, "3Telstra"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_3

    const-string v11, "3"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    const-string v11, "3TELSTRA"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 1069
    :cond_3
    const-string v11, "Telstra"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 1070
    const-string v4, "Telstra"

    .line 1074
    :goto_2
    const-string v11, "GSM"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[updateSpnDisplay] for Telstra in Aus, plmn is chaned as [ "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "]"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1079
    :cond_4
    if-nez p1, :cond_5

    iget v11, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->curSpnRule:I

    if-ne v7, v11, :cond_5

    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->curSpn:Ljava/lang/String;

    invoke-static {v10, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_5

    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->curPlmn:Ljava/lang/String;

    invoke-static {v4, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_8

    .line 1083
    :cond_5
    if-nez v1, :cond_c

    iget-boolean v11, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEmergencyOnly:Z

    if-nez v11, :cond_c

    and-int/lit8 v11, v7, 0x1

    const/4 v12, 0x1

    if-ne v11, v12, :cond_c

    const/4 v11, 0x1

    move v9, v11

    .line 1085
    .local v9, showSpn:Z
    :goto_3
    and-int/lit8 v11, v7, 0x2

    const/4 v12, 0x2

    if-ne v11, v12, :cond_d

    const/4 v11, 0x1

    move v8, v11

    .line 1088
    .local v8, showPlmn:Z
    :goto_4
    if-eqz v6, :cond_6

    .line 1089
    const/4 v9, 0x1

    .line 1092
    :cond_6
    if-nez v4, :cond_7

    .line 1094
    const/4 v8, 0x0

    .line 1096
    :cond_7
    const-string v11, "GSM"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "showSpn = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " /  showPlmn="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1098
    new-instance v2, Landroid/content/Intent;

    const-string v11, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-direct {v2, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1099
    .local v2, intent:Landroid/content/Intent;
    const/high16 v11, 0x2000

    invoke-virtual {v2, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1100
    const-string/jumbo v11, "showSpn"

    invoke-virtual {v2, v11, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1101
    const-string/jumbo v11, "spn"

    invoke-virtual {v2, v11, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1102
    const-string/jumbo v11, "showPlmn"

    invoke-virtual {v2, v11, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1103
    const-string/jumbo v11, "plmn"

    invoke-virtual {v2, v11, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1104
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v11}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11, v2}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1105
    const-string v11, "GSM"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[updateSpnDisplay] Send Intent [ "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " ]"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1108
    .end local v2           #intent:Landroid/content/Intent;
    .end local v8           #showPlmn:Z
    .end local v9           #showSpn:Z
    :cond_8
    iput v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->curSpnRule:I

    .line 1109
    iput-object v10, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->curSpn:Ljava/lang/String;

    .line 1110
    iput-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->curPlmn:Ljava/lang/String;

    .line 1111
    return-void

    .line 1045
    .end local v0           #Numeric:Ljava/lang/String;
    .end local v1           #bRadioOffState:Z
    .end local v3           #mcc:Ljava/lang/String;
    :cond_9
    const/4 v11, 0x0

    move v1, v11

    goto/16 :goto_0

    .line 1054
    .restart local v1       #bRadioOffState:Z
    :cond_a
    if-eqz v1, :cond_1

    .line 1055
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x104030d

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1056
    const-string v11, "GSM"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[updateSpnDisplay] Radio off state plmn = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1072
    .restart local v0       #Numeric:Ljava/lang/String;
    .restart local v3       #mcc:Ljava/lang/String;
    :cond_b
    const-string v4, "3Telstra"

    goto/16 :goto_2

    .line 1083
    :cond_c
    const/4 v11, 0x0

    move v9, v11

    goto/16 :goto_3

    .line 1085
    .restart local v9       #showSpn:Z
    :cond_d
    const/4 v11, 0x0

    move v8, v11

    goto/16 :goto_4
.end method


# virtual methods
.method protected afterRequestDisconnectDC()V
    .locals 11

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v10, "StkAppInstaller"

    const-string v7, "GSM"

    .line 752
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v1, v5, Lcom/android/internal/telephony/gsm/GSMPhone;->mDataConnection:Lcom/android/internal/telephony/DataConnectionTracker;

    .line 754
    .local v1, dcTracker:Lcom/android/internal/telephony/DataConnectionTracker;
    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnectionTracker;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v5, v6, :cond_2

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnectionTracker;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/DataConnectionTracker$State;->DISCONNECTING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v5, v6, :cond_2

    .line 756
    const-string v5, "GSM"

    const-string v5, "Data shutdown complete."

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    :goto_0
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v6, 0x0

    invoke-interface {v5, v8, v6}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    .line 772
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "airplane_mode_on"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 775
    .local v3, isAirplaneMode:I
    if-ne v3, v9, :cond_1

    .line 778
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 779
    .local v4, pm:Landroid/content/pm/PackageManager;
    if-nez v4, :cond_0

    .line 780
    const-string v5, "StkAppInstaller"

    const-string v5, "Package Manager null"

    invoke-static {v10, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    :cond_0
    new-instance v0, Landroid/content/ComponentName;

    const-string v5, "com.android.stk"

    const-string v6, "com.android.stk.StkLauncherActivity"

    invoke-direct {v0, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 787
    .local v0, cName:Landroid/content/ComponentName;
    const/4 v5, 0x2

    const/4 v6, 0x1

    :try_start_0
    invoke-virtual {v4, v0, v5, v6}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 795
    .end local v0           #cName:Landroid/content/ComponentName;
    .end local v3           #isAirplaneMode:I
    .end local v4           #pm:Landroid/content/pm/PackageManager;
    :cond_1
    :goto_1
    return-void

    .line 759
    :cond_2
    iget v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->countCheckDataStateReads:I

    const/16 v6, 0x96

    if-le v5, v6, :cond_3

    .line 760
    const-string v5, "GSM"

    const-string v5, "Data shutdown not complete. force to radio down."

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 763
    :cond_3
    const-string v5, "GSM"

    const-string v5, "Data shutdown not complete. check again."

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    iget v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->countCheckDataStateReads:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->countCheckDataStateReads:I

    .line 765
    const/16 v5, 0x32

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    const-wide/16 v6, 0x64

    invoke-virtual {p0, v5, v6, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    .line 789
    .restart local v0       #cName:Landroid/content/ComponentName;
    .restart local v3       #isAirplaneMode:I
    .restart local v4       #pm:Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v2

    .line 790
    .local v2, e:Ljava/lang/Exception;
    const-string v5, "StkAppInstaller"

    const-string v5, "Could not change STK app state"

    invoke-static {v10, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public dispose()V
    .locals 2

    .prologue
    .line 398
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForAvailable(Landroid/os/Handler;)V

    .line 399
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForRadioStateChanged(Landroid/os/Handler;)V

    .line 400
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForNetworkStateChanged(Landroid/os/Handler;)V

    .line 401
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForSIMReady(Landroid/os/Handler;)V

    .line 403
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    .line 404
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnSignalStrengthUpdate(Landroid/os/Handler;)V

    .line 405
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnRestrictedStateChanged(Landroid/os/Handler;)V

    .line 406
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnNITZTime(Landroid/os/Handler;)V

    .line 407
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cr:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mAutoTimeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 408
    return-void
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 411
    const-string v0, "GSM"

    const-string v1, "GsmServiceStateTracker finalized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    return-void
.end method

.method getCurrentGprsState()I
    .locals 1

    .prologue
    .line 2460
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->gprsState:I

    return v0
.end method

.method public getSelectedNetworkProfile()Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;
    .locals 1

    .prologue
    .line 3457
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSelectedNwkProfile:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 19
    .parameter "msg"

    .prologue
    .line 511
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object v15, v0

    iget-boolean v15, v15, Lcom/android/internal/telephony/gsm/GSMPhone;->mIsTheCurrentActivePhone:Z

    if-nez v15, :cond_1

    .line 512
    const-string v15, "GSM"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Received message "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "["

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "] while being destroyed. Ignoring."

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    .end local p0
    .end local p1
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 516
    .restart local p0
    .restart local p1
    :cond_1
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v15, v0

    packed-switch v15, :pswitch_data_0

    .line 745
    :pswitch_1
    const-string v15, "GSM"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Unhandled message with number: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 526
    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNeedToRegForSimLoaded:Z

    move v15, v0

    if-eqz v15, :cond_2

    .line 527
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object v15, v0

    iget-object v15, v15, Lcom/android/internal/telephony/gsm/GSMPhone;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    const/16 v16, 0x10

    const/16 v17, 0x0

    move-object v0, v15

    move-object/from16 v1, p0

    move/from16 v2, v16

    move-object/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 529
    const/4 v15, 0x0

    move v0, v15

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNeedToRegForSimLoaded:Z

    .line 544
    :cond_2
    const/4 v15, 0x0

    move-object/from16 v0, p0

    move v1, v15

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollState(Z)V

    .line 548
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->queueNextSignalStrengthPoll()V

    goto :goto_0

    .line 554
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setPowerStateToDesired()V

    .line 555
    const/4 v15, 0x0

    move-object/from16 v0, p0

    move v1, v15

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollState(Z)V

    goto :goto_0

    .line 559
    :pswitch_4
    const/4 v15, 0x1

    move-object/from16 v0, p0

    move v1, v15

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollState(Z)V

    goto :goto_0

    .line 566
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    move-object v15, v0

    invoke-interface {v15}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v15

    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    move-object v15, v0

    invoke-interface {v15}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isCdma()Z

    move-result v15

    if-nez v15, :cond_0

    .line 570
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Landroid/os/AsyncResult;

    .line 571
    .local v4, ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->onSignalStrengthResult(Landroid/os/AsyncResult;)V

    .line 572
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->queueNextSignalStrengthPoll()V

    goto/16 :goto_0

    .line 577
    .end local v4           #ar:Landroid/os/AsyncResult;
    :pswitch_6
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Landroid/os/AsyncResult;

    .line 579
    .restart local v4       #ar:Landroid/os/AsyncResult;
    iget-object v15, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v15, :cond_5

    .line 580
    move-object v0, v4

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [Ljava/lang/String;

    move-object/from16 v0, p1

    check-cast v0, [Ljava/lang/String;

    move-object v13, v0

    .line 581
    .local v13, states:[Ljava/lang/String;
    const/4 v7, -0x1

    .line 582
    .local v7, lac:I
    const/4 v5, -0x1

    .line 583
    .local v5, cid:I
    array-length v15, v13

    const/16 v16, 0x3

    move v0, v15

    move/from16 v1, v16

    if-lt v0, v1, :cond_4

    .line 585
    const/4 v15, 0x1

    :try_start_0
    aget-object v15, v13, v15

    if-eqz v15, :cond_3

    const/4 v15, 0x1

    aget-object v15, v13, v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    if-lez v15, :cond_3

    .line 586
    const/4 v15, 0x1

    aget-object v15, v13, v15

    const/16 v16, 0x10

    invoke-static/range {v15 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v7

    .line 588
    :cond_3
    const/4 v15, 0x2

    aget-object v15, v13, v15

    if-eqz v15, :cond_4

    const/4 v15, 0x2

    aget-object v15, v13, v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    if-lez v15, :cond_4

    .line 589
    const/4 v15, 0x2

    aget-object v15, v13, v15

    const/16 v16, 0x10

    invoke-static/range {v15 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 595
    :cond_4
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cellLoc:Landroid/telephony/gsm/GsmCellLocation;

    move-object v15, v0

    invoke-virtual {v15, v7, v5}, Landroid/telephony/gsm/GsmCellLocation;->setLacAndCid(II)V

    .line 596
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object v15, v0

    invoke-virtual {v15}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyLocationChanged()V

    .line 601
    .end local v5           #cid:I
    .end local v7           #lac:I
    .end local v13           #states:[Ljava/lang/String;
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->disableSingleLocationUpdate()V

    goto/16 :goto_0

    .line 591
    .restart local v5       #cid:I
    .restart local v7       #lac:I
    .restart local v13       #states:[Ljava/lang/String;
    :catch_0
    move-exception v15

    move-object v6, v15

    .line 592
    .local v6, ex:Ljava/lang/NumberFormatException;
    const-string v15, "GSM"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "error parsing location: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 608
    .end local v4           #ar:Landroid/os/AsyncResult;
    .end local v5           #cid:I
    .end local v6           #ex:Ljava/lang/NumberFormatException;
    .end local v7           #lac:I
    .end local v13           #states:[Ljava/lang/String;
    .restart local p1
    :pswitch_7
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Landroid/os/AsyncResult;

    .line 610
    .restart local v4       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v15, v0

    move-object/from16 v0, p0

    move v1, v15

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->handlePollStateResult(ILandroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 616
    .end local v4           #ar:Landroid/os/AsyncResult;
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    move-object v15, v0

    const/16 v16, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Lcom/android/internal/telephony/CommandsInterface;->getSignalStrength(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 620
    :pswitch_9
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Landroid/os/AsyncResult;

    .line 622
    .restart local v4       #ar:Landroid/os/AsyncResult;
    move-object v0, v4

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    const/4 v15, 0x0

    aget-object v12, p1, v15

    check-cast v12, Ljava/lang/String;

    .line 623
    .local v12, nitzString:Ljava/lang/String;
    move-object v0, v4

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    check-cast p1, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    const/4 v15, 0x1

    aget-object p1, p1, v15

    check-cast p1, Ljava/lang/Long;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 625
    .local v10, nitzReceiveTime:J
    move-object/from16 v0, p0

    move-object v1, v12

    move-wide v2, v10

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setTimeFromNITZString(Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 632
    .end local v4           #ar:Landroid/os/AsyncResult;
    .end local v10           #nitzReceiveTime:J
    .end local v12           #nitzString:Ljava/lang/String;
    .restart local p1
    :pswitch_a
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Landroid/os/AsyncResult;

    .line 636
    .restart local v4       #ar:Landroid/os/AsyncResult;
    const/4 v15, 0x1

    move v0, v15

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->dontPollSignalStrength:Z

    .line 638
    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->onSignalStrengthResult(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 642
    .end local v4           #ar:Landroid/os/AsyncResult;
    :pswitch_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateSpnDisplay()V

    .line 645
    const-string v15, "GSM"

    const-string v16, "[SIM profile] SIM loaded"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    const/4 v15, 0x0

    move-object/from16 v0, p0

    move v1, v15

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->showSimProfileOption(Z)V

    .line 650
    const/4 v15, 0x1

    move-object/from16 v0, p0

    move v1, v15

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollState(Z)V

    goto/16 :goto_0

    .line 655
    :pswitch_c
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Landroid/os/AsyncResult;

    .line 657
    .restart local v4       #ar:Landroid/os/AsyncResult;
    iget-object v15, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v15, :cond_0

    .line 658
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    move-object v15, v0

    const/16 v16, 0xf

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Lcom/android/internal/telephony/CommandsInterface;->getRegistrationState(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 663
    .end local v4           #ar:Landroid/os/AsyncResult;
    :pswitch_d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Landroid/os/AsyncResult;

    .line 665
    .restart local v4       #ar:Landroid/os/AsyncResult;
    const/16 v15, 0x15

    move-object v0, v4

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move v1, v15

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 666
    .local v9, message:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    move-object v15, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPreferredNetworkType:I

    move/from16 v16, v0

    move-object v0, v15

    move/from16 v1, v16

    move-object v2, v9

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 670
    .end local v4           #ar:Landroid/os/AsyncResult;
    .end local v9           #message:Landroid/os/Message;
    :pswitch_e
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Landroid/os/AsyncResult;

    .line 671
    .restart local v4       #ar:Landroid/os/AsyncResult;
    iget-object v15, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v15, :cond_0

    .line 672
    move-object v0, v4

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Landroid/os/Message;

    invoke-static/range {p0 .. p0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v15

    move-object v0, v4

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object v1, v15

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 674
    move-object v0, v4

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 p0, v0

    check-cast p0, Landroid/os/Message;

    invoke-virtual/range {p0 .. p0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 679
    .end local v4           #ar:Landroid/os/AsyncResult;
    .restart local p0
    :pswitch_f
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Landroid/os/AsyncResult;

    .line 681
    .restart local v4       #ar:Landroid/os/AsyncResult;
    iget-object v15, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v15, :cond_6

    .line 682
    move-object v0, v4

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [I

    check-cast p1, [I

    const/4 v15, 0x0

    aget v15, p1, v15

    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPreferredNetworkType:I

    .line 687
    :goto_2
    const/16 v15, 0x14

    move-object v0, v4

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move v1, v15

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 688
    .restart local v9       #message:Landroid/os/Message;
    const/4 v14, 0x7

    .line 690
    .local v14, toggledNetworkType:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    move-object v15, v0

    invoke-interface {v15, v14, v9}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 684
    .end local v9           #message:Landroid/os/Message;
    .end local v14           #toggledNetworkType:I
    .restart local p1
    :cond_6
    const/4 v15, 0x7

    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPreferredNetworkType:I

    goto :goto_2

    .line 694
    .end local v4           #ar:Landroid/os/AsyncResult;
    :pswitch_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object v15, v0

    if-eqz v15, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->gprsState:I

    move v15, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/telephony/ServiceState;->getState()I

    move-result v16

    move-object/from16 v0, p0

    move v1, v15

    move/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isGprsConsistent(II)Z

    move-result v15

    if-nez v15, :cond_7

    .line 699
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object v15, v0

    invoke-virtual {v15}, Lcom/android/internal/telephony/gsm/GSMPhone;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v8

    check-cast v8, Landroid/telephony/gsm/GsmCellLocation;

    .line 700
    .local v8, loc:Landroid/telephony/gsm/GsmCellLocation;
    const v15, 0xc3bb

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x1

    if-eqz v8, :cond_8

    invoke-virtual {v8}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v18

    :goto_3
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 702
    const/4 v15, 0x1

    move v0, v15

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mReportedGprsNoReg:Z

    .line 704
    .end local v8           #loc:Landroid/telephony/gsm/GsmCellLocation;
    :cond_7
    const/4 v15, 0x0

    move v0, v15

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mStartedGprsRegCheck:Z

    goto/16 :goto_0

    .line 700
    .restart local v8       #loc:Landroid/telephony/gsm/GsmCellLocation;
    :cond_8
    const/16 v18, -0x1

    goto :goto_3

    .line 711
    .end local v8           #loc:Landroid/telephony/gsm/GsmCellLocation;
    :pswitch_11
    const-string v15, "GSM"

    const-string v16, "[DSAC DEB] EVENT_RESTRICTED_STATE_CHANGED"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Landroid/os/AsyncResult;

    .line 715
    .restart local v4       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->onRestrictedStateChanged(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 719
    .end local v4           #ar:Landroid/os/AsyncResult;
    :pswitch_12
    const-string v15, "GSM"

    const-string v16, "O2 Homezone info"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    const-string v15, "VIA"

    const-string/jumbo v16, "ro.csc.sales_code"

    invoke-static/range {v16 .. v16}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_9

    .line 722
    const-string v15, "GSM"

    const-string v16, "O2 Homezone omitted because of VIA sales code"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 726
    :cond_9
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Landroid/os/AsyncResult;

    .line 727
    .restart local v4       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->onO2HomeZoneInfo(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 736
    .end local v4           #ar:Landroid/os/AsyncResult;
    :pswitch_13
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Landroid/os/AsyncResult;

    .line 737
    .restart local v4       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->onHsdpaStateChanged(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 741
    .end local v4           #ar:Landroid/os/AsyncResult;
    :pswitch_14
    const-string v15, "GSM"

    const-string v16, "EVENT_REQUEST_DISCONNECT_DC"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->afterRequestDisconnectDC()V

    goto/16 :goto_0

    .line 516
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_b
        :pswitch_2
        :pswitch_c
        :pswitch_f
        :pswitch_d
        :pswitch_e
        :pswitch_10
        :pswitch_11
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_12
        :pswitch_0
        :pswitch_13
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_14
    .end packed-switch
.end method

.method protected handlePollStateResult(ILandroid/os/AsyncResult;)V
    .locals 22
    .parameter "what"
    .parameter "ar"

    .prologue
    .line 1119
    const-string/jumbo v18, "ro.csc.sales_code"

    invoke-static/range {v18 .. v18}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1122
    .local v13, salesCode:Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollingContext:[I

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_1

    .line 1474
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 1124
    .restart local p1
    :cond_1
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v18, v0

    if-eqz v18, :cond_8

    .line 1125
    const/4 v4, 0x0

    .line 1127
    .local v4, err:Lcom/android/internal/telephony/CommandException$Error;
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    instance-of v0, v0, Lcom/android/internal/telephony/CommandException;

    move/from16 v18, v0

    if-eqz v18, :cond_2

    .line 1128
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Lcom/android/internal/telephony/CommandException;

    check-cast p1, Lcom/android/internal/telephony/CommandException;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v4

    .line 1131
    :cond_2
    sget-object v18, Lcom/android/internal/telephony/CommandException$Error;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/CommandException$Error;

    move-object v0, v4

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_3

    .line 1133
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cancelPollState()V

    goto :goto_0

    .line 1137
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v18

    if-nez v18, :cond_4

    .line 1139
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cancelPollState()V

    goto :goto_0

    .line 1143
    :cond_4
    sget-object v18, Lcom/android/internal/telephony/CommandException$Error;->OP_NOT_ALLOWED_BEFORE_REG_NW:Lcom/android/internal/telephony/CommandException$Error;

    move-object v0, v4

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_5

    sget-object v18, Lcom/android/internal/telephony/CommandException$Error;->OP_NOT_ALLOWED_BEFORE_REG_NW:Lcom/android/internal/telephony/CommandException$Error;

    move-object v0, v4

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_5

    .line 1145
    const-string v18, "GSM"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "RIL implementation has returned an error where it must succeed"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1437
    .end local v4           #err:Lcom/android/internal/telephony/CommandException$Error;
    :cond_5
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollingContext:[I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget v20, v18, v19

    const/16 v21, 0x1

    sub-int v20, v20, v21

    aput v20, v18, v19

    .line 1439
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollingContext:[I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget v18, v18, v19

    if-nez v18, :cond_0

    .line 1449
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGsmRoaming:Z

    move/from16 v18, v0

    if-nez v18, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDataRoaming:Z

    move/from16 v18, v0

    if-eqz v18, :cond_15

    :cond_6
    const/16 v18, 0x1

    move/from16 v12, v18

    .line 1451
    .local v12, roaming:Z
    :goto_2
    const-string v18, "INU"

    const-string/jumbo v19, "ro.csc.sales_code"

    invoke-static/range {v19 .. v19}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_7

    const-string v18, "INS"

    const-string/jumbo v19, "ro.csc.sales_code"

    invoke-static/range {v19 .. v19}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_7

    const-string v18, "NPL"

    const-string/jumbo v19, "ro.csc.sales_code"

    invoke-static/range {v19 .. v19}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_7

    const-string v18, "SLK"

    const-string/jumbo v19, "ro.csc.sales_code"

    invoke-static/range {v19 .. v19}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_7

    const-string v18, "ETR"

    const-string/jumbo v19, "ro.csc.sales_code"

    invoke-static/range {v19 .. v19}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_7

    const-string v18, "TML"

    const-string/jumbo v19, "ro.csc.sales_code"

    invoke-static/range {v19 .. v19}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_16

    .line 1470
    :cond_7
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move v1, v12

    invoke-virtual {v0, v1}, Landroid/telephony/ServiceState;->setRoaming(Z)V

    .line 1471
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEmergencyOnly:Z

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/telephony/ServiceState;->setEmergencyOnly(Z)V

    .line 1472
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollStateDone()V

    goto/16 :goto_0

    .line 1150
    .end local v12           #roaming:Z
    .restart local p1
    :cond_8
    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_1

    .line 1152
    :sswitch_0
    :try_start_0
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [Ljava/lang/String;

    move-object/from16 v0, p1

    check-cast v0, [Ljava/lang/String;

    move-object v15, v0

    .line 1153
    .local v15, states:[Ljava/lang/String;
    const/4 v7, -0x1

    .line 1154
    .local v7, lac:I
    const/4 v3, -0x1

    .line 1155
    .local v3, cid:I
    const/4 v11, -0x1

    .line 1158
    .local v11, regState:I
    move-object v0, v15

    array-length v0, v0

    move/from16 v18, v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v18, :cond_c

    .line 1160
    const/16 v18, 0x0

    :try_start_1
    aget-object v18, v15, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 1218
    move-object v0, v15

    array-length v0, v0

    move/from16 v18, v0

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_a

    .line 1219
    const/16 v18, 0x1

    aget-object v18, v15, v18

    if-eqz v18, :cond_9

    const/16 v18, 0x1

    aget-object v18, v15, v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    if-lez v18, :cond_9

    .line 1220
    const/16 v18, 0x1

    aget-object v18, v15, v18

    const/16 v19, 0x10

    invoke-static/range {v18 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v7

    .line 1222
    :cond_9
    const/16 v18, 0x2

    aget-object v18, v15, v18

    if-eqz v18, :cond_a

    const/16 v18, 0x2

    aget-object v18, v15, v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    if-lez v18, :cond_a

    .line 1223
    const/16 v18, 0x2

    aget-object v18, v15, v18

    const/16 v19, 0x10

    invoke-static/range {v18 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    .line 1228
    :cond_a
    const-string v18, "H3G"

    move-object v0, v13

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_b

    const-string v18, "3IE"

    move-object v0, v13

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_b

    const-string v18, "HUI"

    move-object v0, v13

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_b

    const-string v18, "HTD"

    move-object v0, v13

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_b

    const-string v18, "HTS"

    move-object v0, v13

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_b

    const-string v18, "DRE"

    move-object v0, v13

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_b

    const-string v18, "TMP"

    move-object v0, v13

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_b

    const-string v18, "TMU"

    move-object v0, v13

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_c

    .line 1230
    :cond_b
    const-string v18, "GSM"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "regState : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "getDataRoamingMode()="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDataConnection:Lcom/android/internal/telephony/DataConnectionTracker;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/DataConnectionTracker;->getDataRoamingMode()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1232
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDataConnection:Lcom/android/internal/telephony/DataConnectionTracker;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/DataConnectionTracker;->getDataRoamingMode()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_f

    .line 1233
    const-string v18, "gsm.sim.operator.numeric"

    const-string v19, ""

    invoke-static/range {v18 .. v19}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1234
    .local v14, simNumeric:Ljava/lang/String;
    const/16 v18, 0x0

    const/16 v19, 0x3

    move-object v0, v14

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 1235
    .local v8, mcc:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v10

    .line 1236
    .local v10, operatorNumeric:Ljava/lang/String;
    if-eqz v14, :cond_e

    if-eqz v10, :cond_e

    const/16 v18, 0x0

    const/16 v19, 0x3

    move-object v0, v10

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    move-object v0, v8

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_e

    .line 1237
    const-string v18, "GSM"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "simNumeric : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1238
    const-string v18, "GSM"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "operatorNumeric : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1239
    const-string v18, "GSM"

    const-string v19, "ServiceStateTracker handlePollStateResult NationalRoaming true "

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1240
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Lcom/android/internal/telephony/gsm/GSMPhone;->setDataRoamingEnabled(Z)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1256
    .end local v8           #mcc:Ljava/lang/String;
    .end local v10           #operatorNumeric:Ljava/lang/String;
    .end local v14           #simNumeric:Ljava/lang/String;
    :cond_c
    :goto_4
    :try_start_2
    move-object/from16 v0, p0

    move v1, v11

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->regCodeIsRoaming(I)Z

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGsmRoaming:Z

    .line 1288
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move v1, v11

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->regCodeToServiceState(I)I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/telephony/ServiceState;->setState(I)V

    .line 1290
    const/16 v18, 0xa

    move v0, v11

    move/from16 v1, v18

    if-eq v0, v1, :cond_d

    const/16 v18, 0xc

    move v0, v11

    move/from16 v1, v18

    if-eq v0, v1, :cond_d

    const/16 v18, 0xd

    move v0, v11

    move/from16 v1, v18

    if-eq v0, v1, :cond_d

    const/16 v18, 0xe

    move v0, v11

    move/from16 v1, v18

    if-ne v0, v1, :cond_10

    .line 1291
    :cond_d
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEmergencyOnly:Z

    .line 1297
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move v1, v7

    move v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/telephony/gsm/GsmCellLocation;->setLacAndCid(II)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 1432
    .end local v3           #cid:I
    .end local v7           #lac:I
    .end local v11           #regState:I
    .end local v15           #states:[Ljava/lang/String;
    :catch_0
    move-exception v18

    move-object/from16 v5, v18

    .line 1433
    .local v5, ex:Ljava/lang/RuntimeException;
    const-string v18, "GSM"

    const-string v19, "Exception while polling service state. Probably malformed RIL response."

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object v2, v5

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 1242
    .end local v5           #ex:Ljava/lang/RuntimeException;
    .restart local v3       #cid:I
    .restart local v7       #lac:I
    .restart local v8       #mcc:Ljava/lang/String;
    .restart local v10       #operatorNumeric:Ljava/lang/String;
    .restart local v11       #regState:I
    .restart local v14       #simNumeric:Ljava/lang/String;
    .restart local v15       #states:[Ljava/lang/String;
    :cond_e
    :try_start_3
    const-string v18, "GSM"

    const-string v19, "ServiceStateTracker handlePollStateResult NationalRoaming false "

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/android/internal/telephony/gsm/GSMPhone;->setDataRoamingEnabled(Z)V
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_4

    .line 1251
    .end local v8           #mcc:Ljava/lang/String;
    .end local v10           #operatorNumeric:Ljava/lang/String;
    .end local v14           #simNumeric:Ljava/lang/String;
    :catch_1
    move-exception v18

    move-object/from16 v5, v18

    .line 1252
    .local v5, ex:Ljava/lang/NumberFormatException;
    :try_start_4
    const-string v18, "GSM"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "error parsing RegistrationState: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_4

    .line 1245
    .end local v5           #ex:Ljava/lang/NumberFormatException;
    :cond_f
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDataConnection:Lcom/android/internal/telephony/DataConnectionTracker;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/DataConnectionTracker;->getDataRoamingMode()I

    move-result v18

    if-nez v18, :cond_c

    .line 1246
    const-string v18, "GSM"

    const-string v19, "ServiceStateTracker handlePollStateResult Data roaming Disabled "

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1247
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/android/internal/telephony/gsm/GSMPhone;->setDataRoamingEnabled(Z)V
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_4

    .line 1293
    :cond_10
    const/16 v18, 0x0

    :try_start_6
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEmergencyOnly:Z

    goto/16 :goto_5

    .line 1301
    .end local v3           #cid:I
    .end local v7           #lac:I
    .end local v11           #regState:I
    .end local v15           #states:[Ljava/lang/String;
    .restart local p1
    :sswitch_1
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [Ljava/lang/String;

    move-object/from16 v0, p1

    check-cast v0, [Ljava/lang/String;

    move-object v15, v0

    .line 1303
    .restart local v15       #states:[Ljava/lang/String;
    const/16 v17, 0x0

    .line 1304
    .local v17, type:I
    const/4 v11, -0x1

    .line 1305
    .restart local v11       #regState:I
    move-object v0, v15

    array-length v0, v0

    move/from16 v18, v0
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0

    if-lez v18, :cond_11

    .line 1307
    const/16 v18, 0x0

    :try_start_7
    aget-object v18, v15, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 1366
    move-object v0, v15

    array-length v0, v0

    move/from16 v18, v0

    const/16 v19, 0x4

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_11

    const/16 v18, 0x3

    aget-object v18, v15, v18

    if-eqz v18, :cond_11

    .line 1367
    const/16 v18, 0x3

    aget-object v18, v15, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_0

    move-result v17

    .line 1373
    :cond_11
    :goto_6
    :try_start_8
    move-object/from16 v0, p0

    move v1, v11

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->regCodeToServiceState(I)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newGPRSState:I

    .line 1374
    move-object/from16 v0, p0

    move v1, v11

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->regCodeIsRoaming(I)Z

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDataRoaming:Z

    .line 1375
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newNetworkType:I

    .line 1376
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/telephony/ServiceState;->setRadioTechnology(I)V

    .line 1379
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newGPRSState:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/telephony/ServiceState;->setGprsState(I)V

    goto/16 :goto_1

    .line 1369
    :catch_2
    move-exception v18

    move-object/from16 v5, v18

    .line 1370
    .restart local v5       #ex:Ljava/lang/NumberFormatException;
    const-string v18, "GSM"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "error parsing GprsRegistrationState: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 1384
    .end local v5           #ex:Ljava/lang/NumberFormatException;
    .end local v11           #regState:I
    .end local v15           #states:[Ljava/lang/String;
    .end local v17           #type:I
    .restart local p1
    :sswitch_2
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [Ljava/lang/String;

    move-object/from16 v0, p1

    check-cast v0, [Ljava/lang/String;

    move-object v9, v0

    .line 1386
    .local v9, opNames:[Ljava/lang/String;
    if-eqz v9, :cond_5

    move-object v0, v9

    array-length v0, v0

    move/from16 v18, v0

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_5

    .line 1388
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/gsm/SIMRecords;->getSIMOperatorNumeric()Ljava/lang/String;

    move-result-object v14

    .line 1389
    .restart local v14       #simNumeric:Ljava/lang/String;
    if-eqz v14, :cond_12

    const/16 v18, 0x2

    aget-object v18, v9, v18

    if-eqz v18, :cond_12

    const/16 v18, 0x2

    aget-object v18, v9, v18

    move-object v0, v14

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_12

    const-string v18, "23430"

    move-object v0, v14

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSelectedNwkProfile:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;

    move-object/from16 v18, v0

    if-eqz v18, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSelectedNwkProfile:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;->mMccMnc:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSelectedNwkProfile:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;->mMccMnc:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_12

    .line 1395
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSelectedNwkProfile:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;->mName:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    aget-object v20, v9, v20

    const/16 v21, 0x2

    aget-object v21, v9, v21

    invoke-virtual/range {v18 .. v21}, Landroid/telephony/ServiceState;->setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1415
    :goto_7
    const-string v18, "BSE"

    move-object/from16 v0, v18

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 1416
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSubscriberId()Ljava/lang/String;

    move-result-object v16

    .line 1417
    .local v16, subscriberId:Ljava/lang/String;
    if-eqz v16, :cond_5

    const-string v18, "20601889"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 1418
    const-string v18, "20601"

    const/16 v19, 0x2

    aget-object v19, v9, v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 1419
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v18, v0

    const-string v19, "Telenet"

    const-string v20, "Telenet"

    const/16 v21, 0x2

    aget-object v21, v9, v21

    invoke-virtual/range {v18 .. v21}, Landroid/telephony/ServiceState;->setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1399
    .end local v16           #subscriberId:Ljava/lang/String;
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSelectedNwkProfile:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;

    move-object/from16 v18, v0

    if-eqz v18, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSelectedNwkProfile:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;->mMccMnc:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSelectedNwkProfile:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;->mMccMnc:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "23430"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_13

    if-nez v14, :cond_13

    .line 1403
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x1

    aget-object v20, v9, v20

    const/16 v21, 0x2

    aget-object v21, v9, v21

    invoke-virtual/range {v18 .. v21}, Landroid/telephony/ServiceState;->setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 1406
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget-object v19, v9, v19

    const/16 v20, 0x1

    aget-object v20, v9, v20

    const/16 v21, 0x2

    aget-object v21, v9, v21

    invoke-virtual/range {v18 .. v21}, Landroid/telephony/ServiceState;->setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 1427
    .end local v9           #opNames:[Ljava/lang/String;
    .end local v14           #simNumeric:Ljava/lang/String;
    .restart local p1
    :sswitch_3
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [I

    move-object/from16 v0, p1

    check-cast v0, [I

    move-object v6, v0

    .line 1428
    .local v6, ints:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget v19, v6, v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_14

    const/16 v19, 0x1

    :goto_8
    invoke-virtual/range {v18 .. v19}, Landroid/telephony/ServiceState;->setIsManualSelection(Z)V
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_0

    goto/16 :goto_1

    :cond_14
    const/16 v19, 0x0

    goto :goto_8

    .line 1449
    .end local v6           #ints:[I
    :cond_15
    const/16 v18, 0x0

    move/from16 v12, v18

    goto/16 :goto_2

    .line 1463
    .restart local v12       #roaming:Z
    :cond_16
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGsmRoaming:Z

    move/from16 v18, v0

    if-eqz v18, :cond_17

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGsmRoaming:Z

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isRoamingBetweenOperators(ZLandroid/telephony/ServiceState;)Z

    move-result v18

    if-nez v18, :cond_17

    .line 1464
    const/4 v12, 0x0

    .line 1466
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isFakeRoamingBetweenOperators(Landroid/telephony/ServiceState;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 1467
    const/4 v12, 0x1

    goto/16 :goto_3

    .line 1150
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x5 -> :sswitch_1
        0x6 -> :sswitch_2
        0xe -> :sswitch_3
    .end sparse-switch
.end method

.method isConcurrentVoiceAndData()Z
    .locals 2

    .prologue
    .line 2468
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->networkType:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected powerOffRadioSafely()V
    .locals 6

    .prologue
    .line 831
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v3, Lcom/android/internal/telephony/gsm/GSMPhone;->mDataConnection:Lcom/android/internal/telephony/DataConnectionTracker;

    .line 832
    .local v0, dcTracker:Lcom/android/internal/telephony/DataConnectionTracker;
    const/16 v3, 0x22

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/DataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 833
    .local v2, msg:Landroid/os/Message;
    const/4 v3, 0x1

    iput v3, v2, Landroid/os/Message;->arg1:I

    .line 834
    const-string/jumbo v3, "radioTurnedOff"

    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 835
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/DataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    .line 839
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/16 v3, 0x96

    if-ge v1, v3, :cond_0

    .line 840
    invoke-virtual {v0}, Lcom/android/internal/telephony/DataConnectionTracker;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v3, v4, :cond_2

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataConnectionTracker;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/DataConnectionTracker$State;->DISCONNECTING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v3, v4, :cond_2

    .line 842
    const-string v3, "GSM"

    const-string v4, "Data shutdown complete."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->isInCall()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 850
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/GsmCallTracker;->ringingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmCall;->hangupIfAlive()V

    .line 851
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/GsmCallTracker;->backgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmCall;->hangupIfAlive()V

    .line 852
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/GsmCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmCall;->hangupIfAlive()V

    .line 855
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    .line 856
    return-void

    .line 845
    :cond_2
    const-wide/16 v3, 0x64

    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    .line 839
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method registerForGprsAttached(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 421
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 422
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->gprsAttachedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 424
    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->gprsState:I

    if-nez v1, :cond_0

    .line 425
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 427
    :cond_0
    return-void
.end method

.method registerForGprsDetached(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 453
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 454
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->gprsDetachedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 456
    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->gprsState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 457
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 459
    :cond_0
    return-void
.end method

.method registerForNetworkAttach(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 434
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 435
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->networkAttachedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 437
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-nez v1, :cond_0

    .line 438
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 440
    :cond_0
    return-void
.end method

.method registerForPsRestrictedDisabled(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 492
    const-string v1, "GSM"

    const-string v2, "[DSAC DEB] registerForPsRestrictedDisabled "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 494
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->psRestrictDisabledRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 496
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->rs:Lcom/android/internal/telephony/gsm/RestrictedState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/RestrictedState;->isPsRestricted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 497
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 499
    :cond_0
    return-void
.end method

.method registerForPsRestrictedEnabled(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 472
    const-string v1, "GSM"

    const-string v2, "[DSAC DEB] registerForPsRestrictedEnabled "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 474
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->psRestrictEnabledRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 476
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->rs:Lcom/android/internal/telephony/gsm/RestrictedState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/RestrictedState;->isPsRestricted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 477
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 479
    :cond_0
    return-void
.end method

.method protected setPowerStateToDesired()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 799
    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDesiredPowerState:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v1, v2, :cond_1

    .line 801
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x0

    invoke-interface {v1, v4, v2}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    .line 826
    :cond_0
    :goto_0
    return-void

    .line 802
    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDesiredPowerState:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 803
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v1, Lcom/android/internal/telephony/gsm/GSMPhone;->mDataConnection:Lcom/android/internal/telephony/DataConnectionTracker;

    .line 804
    .local v0, dcTracker:Lcom/android/internal/telephony/DataConnectionTracker;
    invoke-virtual {v0}, Lcom/android/internal/telephony/DataConnectionTracker;->isDataConnectionAsDesired()Z

    move-result v1

    if-nez v1, :cond_2

    .line 805
    const v1, 0xc3bc

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataConnectionTracker;->getStateInString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataConnectionTracker;->getAnyDataEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    move v3, v4

    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 822
    :cond_2
    const/16 v1, 0x97

    iput v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->countCheckDataStateReads:I

    .line 823
    const/16 v1, 0x32

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_3
    move v3, v5

    .line 805
    goto :goto_1
.end method

.method unregisterForGprsAttached(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 430
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->gprsAttachedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 431
    return-void
.end method

.method unregisterForGprsDetached(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 462
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->gprsDetachedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 463
    return-void
.end method

.method unregisterForNetworkAttach(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 443
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->networkAttachedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 444
    return-void
.end method

.method unregisterForPsRestrictedDisabled(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 502
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->psRestrictDisabledRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 503
    return-void
.end method

.method unregisterForPsRestrictedEnabled(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 482
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->psRestrictEnabledRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 483
    return-void
.end method

.method public updateSpnDisplay()V
    .locals 1

    .prologue
    .line 873
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateSpnDisplay(Z)V

    .line 874
    return-void
.end method
