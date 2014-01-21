.class public Lcom/android/systemui/statusbar/StatusBarPolicy;
.super Ljava/lang/Object;
.source "StatusBarPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/StatusBarPolicy$StatusBarHandler;
    }
.end annotation


# static fields
.field private static final AM_PM_STYLE:I = 0x2

.field private static final AM_PM_STYLE_GONE:I = 0x2

.field private static final AM_PM_STYLE_NORMAL:I = 0x0

.field private static final AM_PM_STYLE_SMALL:I = 0x1

.field private static final EVENT_BATTERY_CLOSE:I = 0x4

.field private static final INET_CONDITION_THRESHOLD:I = 0x32

.field private static final SHOW_BATTERY_WARNINGS_IN_CALL:Z = true

.field private static final SHOW_LOW_BATTERY_WARNING:Z = true

.field private static final TAG:Ljava/lang/String; = "StatusBarPolicy"

.field private static final sDataNetType_1x:[[I = null

.field private static final sDataNetType_3g:[[I = null

.field private static final sDataNetType_e:[[I = null

.field private static final sDataNetType_g:[[I = null

.field private static final sDataNetType_h:[[I = null

.field private static final sRoamingIndicatorImages_cdma:[I = null

.field private static final sSignalImages:[[I = null

.field private static final sSignalImages_r:[[I = null

.field private static final sWifiSignalImages:[[I = null

.field private static final sWifiTemporarilyNotConnectedImage:I = 0x7f020070

.field private static final sWimaxDisconnectedImg:I = 0x7f02004e

.field private static final sWimaxIdleImg:I = 0x7f02004f

.field private static final sWimaxSignalImages:[[I


# instance fields
.field private mAlwaysUseCdmaRssi:Z

.field private mBatteryFirst:Z

.field private mBatteryLevel:I

.field private mBatteryLevelTextView:Landroid/widget/TextView;

.field private mBatteryPlugged:Z

.field private mBatteryShowLowOnEndCall:Z

.field private final mBatteryStats:LIBatteryStats;

.field private mBatteryView:Landroid/view/View;

.field private mBatteryViewSequence:I

.field private mBluetoothA2dpConnected:Z

.field private mBluetoothEnabled:Z

.field private mBluetoothHeadsetState:I

.field private mBluetoothPbapState:I

.field private final mContext:Landroid/content/Context;

.field mDataActivity:I

.field private mDataIconList:[I

.field private mDataIconVisible:Z

.field mDataState:I

.field private final mHandler:Landroid/os/Handler;

.field private mHspaDataDistinguishable:Z

.field private mInetCondition:I

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsWifiConnected:Z

.field private mIsWimaxEnabled:Z

.field private mLastWifiSignalLevel:I

.field private mLowBatteryDialog:Landroid/app/AlertDialog;

.field private mLowBatteryListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mPhone:Landroid/telephony/TelephonyManager;

.field private mPhoneSignalIconId:I

.field mPhoneState:I

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private final mService:LStatusBarManager;

.field mServiceState:Landroid/telephony/ServiceState;

.field mSignalStrength:Landroid/telephony/SignalStrength;

.field mSimState:LIccCard/State;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mVolumeVisible:Z

.field private mWimaxExtraState:I

.field private mWimaxSignal:I

.field private mWimaxState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 19
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unresolved compilation problems: \n\tThe import android.app.StatusBarManager cannot be resolved\n\tThe import android.bluetooth.BluetoothA2dp cannot be resolved\n\tThe import android.bluetooth.BluetoothHeadset cannot be resolved\n\tThe import android.bluetooth.BluetoothPbap cannot be resolved\n\tThe import android.util.Slog cannot be resolved\n\tThe import android.view.WindowManagerImpl cannot be resolved\n\tThe import com.android.internal.app cannot be resolved\n\tThe import com.android.internal.telephony cannot be resolved\n\tThe import com.android.internal.telephony cannot be resolved\n\tThe import com.android.internal.telephony cannot be resolved\n\tThe import com.android.internal.telephony cannot be resolved\n\tThe import android.net.wimax cannot be resolved\n\tStatusBarManager cannot be resolved to a type\n\tIBatteryStats cannot be resolved to a type\n\tIccCard cannot be resolved to a type\n\tIccCard cannot be resolved to a variable\n\tACTION_ALARM_CHANGED cannot be resolved or is not a field\n\tACTION_SYNC_STATE_CHANGED cannot be resolved or is not a field\n\tBluetoothHeadset cannot be resolved to a variable\n\tBluetoothA2dp cannot be resolved to a variable\n\tBluetoothPbap cannot be resolved to a variable\n\tGPS_ENABLED_CHANGE_ACTION cannot be resolved or is not a field\n\tGPS_FIX_CHANGE_ACTION cannot be resolved or is not a field\n\tTelephonyIntents cannot be resolved to a variable\n\tTtyIntent cannot be resolved to a variable\n\tINET_CONDITION_ACTION cannot be resolved or is not a field\n\tWimaxManagerConstants cannot be resolved to a variable\n\tWimaxManagerConstants cannot be resolved to a variable\n\tWimaxManagerConstants cannot be resolved to a variable\n\tStatusBarManager cannot be resolved to a type\n\tStatusBarManager cannot be resolved to a type\n\tSTATUS_BAR_SERVICE cannot be resolved or is not a field\n\tThe constructor SignalStrength() is not visible\n\tIBatteryStats cannot be resolved to a type\n\tThe method getService() from the type BatteryStatsService refers to the missing type IBatteryStats\n\tThe method registerListener(StorageNotification) is undefined for the type StorageManager\n\tStatusBarManager cannot be resolved to a type\n\tcom.android.internal.R cannot be resolved to a variable\n\tStatusBarManager cannot be resolved to a type\n\tStatusBarManager cannot be resolved to a type\n\tStatusBarManager cannot be resolved to a type\n\tStatusBarManager cannot be resolved to a type\n\tStatusBarManager cannot be resolved to a type\n\tStatusBarManager cannot be resolved to a type\n\tStatusBarManager cannot be resolved to a type\n\tStatusBarManager cannot be resolved to a type\n\tStatusBarManager cannot be resolved to a type\n\tStatusBarManager cannot be resolved to a type\n\tStatusBarManager cannot be resolved to a type\n\tStatusBarManager cannot be resolved to a type\n\tBluetoothHeadset cannot be resolved to a variable\n\tBluetoothPbap cannot be resolved to a variable\n\tStatusBarManager cannot be resolved to a type\n\tStatusBarManager cannot be resolved to a type\n\tStatusBarManager cannot be resolved to a type\n\tStatusBarManager cannot be resolved to a type\n\tStatusBarManager cannot be resolved to a type\n\tStatusBarManager cannot be resolved to a type\n\tcom.android.internal.R cannot be resolved to a variable\n\tStatusBarManager cannot be resolved to a type\n\tcom.android.internal.R cannot be resolved to a variable\n\tStatusBarManager cannot be resolved to a type\n\tStatusBarManager cannot be resolved to a type\n\tStatusBarManager cannot be resolved to a type\n\tStatusBarManager cannot be resolved to a type\n\tACTION_ALARM_CHANGED cannot be resolved or is not a field\n\tACTION_SYNC_STATE_CHANGED cannot be resolved or is not a field\n\tBluetoothHeadset cannot be resolved to a variable\n\tBluetoothA2dp cannot be resolved to a variable\n\tBluetoothPbap cannot be resolved to a variable\n\tGPS_ENABLED_CHANGE_ACTION cannot be resolved or is not a field\n\tGPS_FIX_CHANGE_ACTION cannot be resolved or is not a field\n\tTelephonyIntents cannot be resolved to a variable\n\tTtyIntent cannot be resolved to a variable\n\tINET_CONDITION_ACTION cannot be resolved or is not a field\n\tWimaxManagerConstants cannot be resolved to a variable\n\tWimaxManagerConstants cannot be resolved to a variable\n\tWimaxManagerConstants cannot be resolved to a variable\n\tStatusBarManager cannot be resolved to a type\n\tStatusBarManager cannot be resolved to a type\n\tStatusBarManager cannot be resolved to a type\n\tSlog cannot be resolved\n\tSlog cannot be resolved\n\tSlog cannot be resolved\n\tPOWER_SOUNDS_ENABLED cannot be resolved or is not a field\n\tLOW_BATTERY_SOUND cannot be resolved or is not a field\n\tSlog cannot be resolved\n\tWindowManagerImpl cannot be resolved\n\tEXTRA_INET_CONDITION cannot be resolved or is not a field\n\tIccCard cannot be resolved to a variable\n\tThe method getRadioTechnology() is undefined for the type ServiceState\n\tThe method isEmergencyOnly() is undefined for the type ServiceState\n\tState cannot be resolved to a type\n\tStatusBarManager cannot be resolved to a type\n\tBluetoothHeadset cannot be resolved to a variable\n\tStatusBarManager cannot be resolved to a type\n\tWimaxManagerConstants cannot be resolved to a variable\n\tEXTRA_GPS_ENABLED cannot be resolved or is not a field\n\tTtyIntent cannot be resolved to a variable\n\tStatusBarManager cannot be resolved to a type\n"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private closeLastBatteryView()V
    .locals 2

    .prologue
    .line 912
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unresolved compilation problem: \n\tWindowManagerImpl cannot be resolved\n"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getCdmaLevel()I
    .locals 2

    .prologue
    .line 1109
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unresolved compilation problem: \n"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getEvdoLevel()I
    .locals 2

    .prologue
    .line 1131
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unresolved compilation problem: \n"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private hasService()Z
    .locals 2

    .prologue
    .line 1039
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unresolved compilation problem: \n"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private isCdma()Z
    .locals 2

    .prologue
    .line 1025
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unresolved compilation problem: \n"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private isEvdo()Z
    .locals 2

    .prologue
    .line 1031
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unresolved compilation problem: \n\tThe method getRadioTechnology() is undefined for the type ServiceState\n"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private onBatteryLow(Landroid/content/Intent;)V
    .locals 2
    .parameter

    .prologue
    .line 776
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unresolved compilation problem: \n\tSlog cannot be resolved\n"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private onBatteryOkay(Landroid/content/Intent;)V
    .locals 2
    .parameter

    .prologue
    .line 789
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unresolved compilation problem: \n"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private scheduleCloseBatteryView()V
    .locals 2

    .prologue
    .line 903
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unresolved compilation problem: \n"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setBatteryLevel(Landroid/view/View;IIII)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 797
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unresolved compilation problem: \n"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private showLowBatteryWarning()V
    .locals 2

    .prologue
    .line 856
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unresolved compilation problems: \n\tPOWER_SOUNDS_ENABLED cannot be resolved or is not a field\n\tLOW_BATTERY_SOUND cannot be resolved or is not a field\n"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final updateAlarm(Landroid/content/Intent;)V
    .locals 2
    .parameter

    .prologue
    .line 727
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unresolved compilation problem: \n\tStatusBarManager cannot be resolved to a type\n"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final updateBattery(Landroid/content/Intent;)V
    .locals 2
    .parameter

    .prologue
    .line 741
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unresolved compilation problems: \n\tStatusBarManager cannot be resolved to a type\n\tSlog cannot be resolved\n\tSlog cannot be resolved\n"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final updateBluetooth(Landroid/content/Intent;)V
    .locals 2
    .parameter

    .prologue
    .line 1279
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unresolved compilation problem: \n\tBluetoothHeadset cannot be resolved to a variable\n"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final updateCallState(I)V
    .locals 2
    .parameter

    .prologue
    .line 876
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unresolved compilation problem: \n\tSlog cannot be resolved\n"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final updateCdmaRoamingIcon(Landroid/telephony/ServiceState;)V
    .locals 2
    .parameter

    .prologue
    .line 1418
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unresolved compilation problem: \n\tStatusBarManager cannot be resolved to a type\n"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private updateConnectivity(Landroid/content/Intent;)V
    .locals 2
    .parameter

    .prologue
    .line 920
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unresolved compilation problem: \n\tEXTRA_INET_CONDITION cannot be resolved or is not a field\n"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final updateDataIcon()V
    .locals 2

    .prologue
    .line 1193
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unresolved compilation problem: \n\tState cannot be resolved to a type\n"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final updateDataNetType(I)V
    .locals 2
    .parameter

    .prologue
    .line 1152
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unresolved compilation problem: \n"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final updateGps(Landroid/content/Intent;)V
    .locals 2
    .parameter

    .prologue
    .line 1382
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unresolved compilation problem: \n\tEXTRA_GPS_ENABLED cannot be resolved or is not a field\n"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final updateSignalStrength()V
    .locals 2

    .prologue
    .line 1058
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unresolved compilation problem: \n\tThe method isEmergencyOnly() is undefined for the type ServiceState\n"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final updateSimState(Landroid/content/Intent;)V
    .locals 2
    .parameter

    .prologue
    .line 1001
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unresolved compilation problem: \n\tIccCard cannot be resolved to a variable\n"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final updateSyncState(Landroid/content/Intent;)V
    .locals 2
    .parameter

    .prologue
    .line 733
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unresolved compilation problem: \n\tStatusBarManager cannot be resolved to a type\n"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final updateTTY(Landroid/content/Intent;)V
    .locals 2
    .parameter

    .prologue
    .line 1400
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unresolved compilation problem: \n\tTtyIntent cannot be resolved to a variable\n"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final updateVolume()V
    .locals 2

    .prologue
    .line 1265
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unresolved compilation problem: \n\tStatusBarManager cannot be resolved to a type\n"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final updateWiMAX(Landroid/content/Intent;)V
    .locals 2
    .parameter

    .prologue
    .line 1344
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unresolved compilation problem: \n\tWimaxManagerConstants cannot be resolved to a variable\n"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final updateWifi(Landroid/content/Intent;)V
    .locals 2
    .parameter

    .prologue
    .line 1314
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unresolved compilation problem: \n\tStatusBarManager cannot be resolved to a type\n"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method
