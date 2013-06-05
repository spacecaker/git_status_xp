.class Lcom/android/internal/policy/impl/LockScreen;
.super Landroid/widget/LinearLayout;
.source "LockScreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardScreen;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;
.implements Lcom/android/emanon/internal/widget/SlidingTab$OnTriggerListener;
.implements Lcom/android/emanon/internal/widget/RotarySelector$OnDialTriggerListener;
.implements Lcom/android/emanon/internal/widget/RingSelector$OnRingTriggerListener;
.implements Landroid/gesture/GestureOverlayView$OnGesturePerformedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/LockScreen$Status;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$android$provider$CmSystem$RinglockStyle:[I = null

.field private static synthetic $SWITCH_TABLE$com$android$internal$policy$impl$LockScreen$Status:[I = null

.field private static synthetic $SWITCH_TABLE$com$android$internal$telephony$IccCard$State:[I = null

.field static final CARRIER_TYPE_CUSTOM:I = 0x3

.field static final CARRIER_TYPE_DEFAULT:I = 0x0

.field static final CARRIER_TYPE_PLMN:I = 0x2

.field static final CARRIER_TYPE_SPN:I = 0x1

.field private static final DBG:Z = false

.field private static final ENABLE_MENU_KEY_FILE:Ljava/lang/String; = "/data/local/enable_menu_key"

.field private static final TAG:Ljava/lang/String; = "LockScreen"

.field private static final sArtworkUri:Landroid/net/Uri;


# instance fields
.field private am:Landroid/media/AudioManager;

.field private mAlbumArt:Landroid/widget/ImageButton;

.field private mAlbumArtToggle:Z

.field private mAmPm:Landroid/widget/TextView;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBatteryLevel:I

.field private mCalendars:[Ljava/lang/String;

.field private mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mCarrier:Landroid/widget/TextView;

.field private mCarrierLabelCustom:Ljava/lang/String;

.field private mCarrierLabelType:I

.field private mCharging:Ljava/lang/String;

.field private mChargingIcon:Landroid/graphics/drawable/Drawable;

.field private mClock:Lcom/android/emanon/internal/widget/DigitalClock;

.field private mClockColor:I

.field private mCreationOrientation:I

.field private mCustomAppActivity:Ljava/lang/String;

.field private mCustomAppIcon:Landroid/graphics/Bitmap;

.field private mCustomAppName:Ljava/lang/String;

.field private mCustomAppToggle:Z

.field private mCustomIconStyle:I

.field private mCustomRingAppActivities:[Ljava/lang/String;

.field private mCustomRingAppIcons:[Landroid/graphics/Bitmap;

.field private mDate:Landroid/widget/TextView;

.field private mDateFormatString:Ljava/lang/String;

.field private mEmergencyCallButton:Landroid/widget/Button;

.field private mEmergencyCallText:Landroid/widget/TextView;

.field private mEnableMenuKeyInLockScreen:Z

.field private mForwardIcon:Landroid/widget/ImageButton;

.field private mFuzzyClock:Lcom/android/emanon/internal/widget/FuzzyClock;

.field private mGestureActive:Z

.field private mGestureColor:I

.field private mGestureOverlay:Landroid/gesture/GestureOverlayView;

.field private mGestureSensitivity:D

.field private mGestureTrail:Z

.field private mHideUnlockTab:Z

.field private mIsMusicActive:Z

.field private mKanjiClock:Lcom/android/emanon/internal/widget/KanjiClock;

.field private mKeyboardHidden:I

.field private mLensePortrait:Z

.field private mLibrary:Landroid/gesture/GestureLibrary;

.field private mLockAlwaysBattery:Z

.field private mLockAlwaysMusic:Z

.field private mLockCalendarAlarm:Z

.field private mLockCalendarLookahead:J

.field private mLockCalendarRemindersOnly:Z

.field private mLockMusicControls:Z

.field private mLockMusicHeadset:I

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockscreenStyle:I

.field private mMenuUnlockScreen:Z

.field private mNextAlarm:Ljava/lang/String;

.field private mNextCalendar:Ljava/lang/String;

.field private mNowPlaying:Landroid/widget/TextView;

.field private mNowPlayingToggle:Z

.field private mPauseIcon:Landroid/widget/ImageButton;

.field private mPendingR1:Ljava/lang/Runnable;

.field private mPendingR2:Ljava/lang/Runnable;

.field private mPlayIcon:Landroid/widget/ImageButton;

.field private mPluggedIn:Z

.field private mRewindIcon:Landroid/widget/ImageButton;

.field private mRingMinimal:Z

.field private mRingSelector:Lcom/android/emanon/internal/widget/RingSelector;

.field private mRingUnlockMiddle:Z

.field private mRotaryHideArrows:Z

.field private mRotarySelector:Lcom/android/emanon/internal/widget/RotarySelector;

.field private mRotaryUnlockDown:Z

.field private mScreenLocked:Landroid/widget/TextView;

.field private mSelector2:Lcom/android/emanon/internal/widget/SlidingTab;

.field private mShowingBatteryInfo:Z

.field private mSilentMode:Z

.field private mSliderUnlockScreen:Z

.field private mStatus:Lcom/android/internal/policy/impl/LockScreen$Status;

.field private mStatusAlarm:Landroid/widget/TextView;

.field private mStatusBox:Landroid/widget/LinearLayout;

.field private mStatusCalendar:Landroid/widget/TextView;

.field private mStatusCharging:Landroid/widget/TextView;

.field private mTabSelector:Lcom/android/emanon/internal/widget/SlidingTab;

.field private mTime:Landroid/widget/TextView;

.field private mTrackballUnlockScreen:Z

.field private mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

.field private mUseFuzzyClock:Z

.field private mUseKanjiClock:Z

.field private mUseLenseSquareLockscreen:Z

.field private mUseRingLockscreen:Z

.field private mUseRotaryLockscreen:Z

.field private mWasMusicActive:Z

.field private mWidgetLayout:I

.field private useLockMusicHeadsetBT:Z

.field private useLockMusicHeadsetWired:Z


# direct methods
.method static synthetic $SWITCH_TABLE$android$provider$CmSystem$RinglockStyle()[I
    .locals 3

    .prologue
    .line 100
    sget-object v0, Lcom/android/internal/policy/impl/LockScreen;->$SWITCH_TABLE$android$provider$CmSystem$RinglockStyle:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Landroid/provider/CmSystem$RinglockStyle;->values()[Landroid/provider/CmSystem$RinglockStyle;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Landroid/provider/CmSystem$RinglockStyle;->Blade:Landroid/provider/CmSystem$RinglockStyle;

    invoke-virtual {v1}, Landroid/provider/CmSystem$RinglockStyle;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_1
    :try_start_1
    sget-object v1, Landroid/provider/CmSystem$RinglockStyle;->Bubble:Landroid/provider/CmSystem$RinglockStyle;

    invoke-virtual {v1}, Landroid/provider/CmSystem$RinglockStyle;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    :try_start_2
    sget-object v1, Landroid/provider/CmSystem$RinglockStyle;->Holo:Landroid/provider/CmSystem$RinglockStyle;

    invoke-virtual {v1}, Landroid/provider/CmSystem$RinglockStyle;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    :try_start_3
    sget-object v1, Landroid/provider/CmSystem$RinglockStyle;->Revamped:Landroid/provider/CmSystem$RinglockStyle;

    invoke-virtual {v1}, Landroid/provider/CmSystem$RinglockStyle;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_4
    sput-object v0, Lcom/android/internal/policy/impl/LockScreen;->$SWITCH_TABLE$android$provider$CmSystem$RinglockStyle:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method static synthetic $SWITCH_TABLE$com$android$internal$policy$impl$LockScreen$Status()[I
    .locals 3

    .prologue
    .line 100
    sget-object v0, Lcom/android/internal/policy/impl/LockScreen;->$SWITCH_TABLE$com$android$internal$policy$impl$LockScreen$Status:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/internal/policy/impl/LockScreen$Status;->values()[Lcom/android/internal/policy/impl/LockScreen$Status;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/internal/policy/impl/LockScreen$Status;->NetworkLocked:Lcom/android/internal/policy/impl/LockScreen$Status;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/LockScreen$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_1
    :try_start_1
    sget-object v1, Lcom/android/internal/policy/impl/LockScreen$Status;->Normal:Lcom/android/internal/policy/impl/LockScreen$Status;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/LockScreen$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_2
    :try_start_2
    sget-object v1, Lcom/android/internal/policy/impl/LockScreen$Status;->SimLocked:Lcom/android/internal/policy/impl/LockScreen$Status;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/LockScreen$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_3
    :try_start_3
    sget-object v1, Lcom/android/internal/policy/impl/LockScreen$Status;->SimMissing:Lcom/android/internal/policy/impl/LockScreen$Status;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/LockScreen$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_4
    :try_start_4
    sget-object v1, Lcom/android/internal/policy/impl/LockScreen$Status;->SimMissingLocked:Lcom/android/internal/policy/impl/LockScreen$Status;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/LockScreen$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_5
    :try_start_5
    sget-object v1, Lcom/android/internal/policy/impl/LockScreen$Status;->SimPukLocked:Lcom/android/internal/policy/impl/LockScreen$Status;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/LockScreen$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_6
    sput-object v0, Lcom/android/internal/policy/impl/LockScreen;->$SWITCH_TABLE$com$android$internal$policy$impl$LockScreen$Status:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_6

    :catch_1
    move-exception v1

    goto :goto_5

    :catch_2
    move-exception v1

    goto :goto_4

    :catch_3
    move-exception v1

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_2

    :catch_5
    move-exception v1

    goto :goto_1
.end method

.method static synthetic $SWITCH_TABLE$com$android$internal$telephony$IccCard$State()[I
    .locals 3

    .prologue
    .line 100
    sget-object v0, Lcom/android/internal/policy/impl/LockScreen;->$SWITCH_TABLE$com$android$internal$telephony$IccCard$State:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/IccCard$State;->values()[Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_12

    :goto_1
    :try_start_1
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->CARD_IO_ERROR:Lcom/android/internal/telephony/IccCard$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard$State;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_11

    :goto_2
    :try_start_2
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard$State;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_10

    :goto_3
    :try_start_3
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->NOT_READY:Lcom/android/internal/telephony/IccCard$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard$State;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_f

    :goto_4
    :try_start_4
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->PIN_PERM_BLOCKED:Lcom/android/internal/telephony/IccCard$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard$State;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_e

    :goto_5
    :try_start_5
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard$State;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_d

    :goto_6
    :try_start_6
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard$State;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_c

    :goto_7
    :try_start_7
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard$State;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_b

    :goto_8
    :try_start_8
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->RUIM_CORPORATE_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard$State;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_a

    :goto_9
    :try_start_9
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->RUIM_HRPD_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard$State;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :goto_a
    :try_start_a
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->RUIM_NETWORK1_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard$State;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_8

    :goto_b
    :try_start_b
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->RUIM_NETWORK2_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard$State;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_7

    :goto_c
    :try_start_c
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->RUIM_RUIM_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard$State;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_6

    :goto_d
    :try_start_d
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->RUIM_SERVICE_PROVIDER_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard$State;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_5

    :goto_e
    :try_start_e
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->SIM_CORPORATE_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard$State;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_4

    :goto_f
    :try_start_f
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->SIM_NETWORK_SUBSET_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard$State;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_3

    :goto_10
    :try_start_10
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->SIM_SERVICE_PROVIDER_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard$State;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_2

    :goto_11
    :try_start_11
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->SIM_SIM_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard$State;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_1

    :goto_12
    :try_start_12
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard$State;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_0

    :goto_13
    sput-object v0, Lcom/android/internal/policy/impl/LockScreen;->$SWITCH_TABLE$com$android$internal$telephony$IccCard$State:[I

    goto/16 :goto_0

    :catch_0
    move-exception v1

    goto :goto_13

    :catch_1
    move-exception v1

    goto :goto_12

    :catch_2
    move-exception v1

    goto :goto_11

    :catch_3
    move-exception v1

    goto :goto_10

    :catch_4
    move-exception v1

    goto :goto_f

    :catch_5
    move-exception v1

    goto :goto_e

    :catch_6
    move-exception v1

    goto :goto_d

    :catch_7
    move-exception v1

    goto :goto_c

    :catch_8
    move-exception v1

    goto :goto_b

    :catch_9
    move-exception v1

    goto :goto_a

    :catch_a
    move-exception v1

    goto :goto_9

    :catch_b
    move-exception v1

    goto/16 :goto_8

    :catch_c
    move-exception v1

    goto/16 :goto_7

    :catch_d
    move-exception v1

    goto/16 :goto_6

    :catch_e
    move-exception v1

    goto/16 :goto_5

    :catch_f
    move-exception v1

    goto/16 :goto_4

    :catch_10
    move-exception v1

    goto/16 :goto_3

    :catch_11
    move-exception v1

    goto/16 :goto_2

    :catch_12
    move-exception v1

    goto/16 :goto_1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 107
    const-string v0, "content://media/external/audio/albumart"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/policy/impl/LockScreen;->sArtworkUri:Landroid/net/Uri;

    .line 100
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
    .locals 20
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 369
    invoke-direct/range {p0 .. p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 114
    sget-object v4, Lcom/android/internal/policy/impl/LockScreen$Status;->Normal:Lcom/android/internal/policy/impl/LockScreen$Status;

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/LockScreen;->mStatus:Lcom/android/internal/policy/impl/LockScreen$Status;

    .line 144
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/LockScreen;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "audio"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioManager;

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/LockScreen;->am:Landroid/media/AudioManager;

    .line 145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockScreen;->am:Landroid/media/AudioManager;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v4

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/LockScreen;->mWasMusicActive:Z

    .line 146
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/LockScreen;->mIsMusicActive:Z

    .line 157
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/LockScreen;->mShowingBatteryInfo:Z

    .line 160
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/LockScreen;->mPluggedIn:Z

    .line 163
    const/16 v4, 0x64

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/LockScreen;->mBatteryLevel:I

    .line 165
    const/4 v4, 0x0

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/LockScreen;->mNextAlarm:Ljava/lang/String;

    .line 166
    const/4 v4, 0x0

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/LockScreen;->mNextCalendar:Ljava/lang/String;

    .line 167
    const/4 v4, 0x0

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/LockScreen;->mCharging:Ljava/lang/String;

    .line 168
    const/4 v4, 0x0

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/LockScreen;->mChargingIcon:Landroid/graphics/drawable/Drawable;

    .line 175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mContext:Landroid/content/Context;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 176
    const-string v5, "trackball_unlock_screen"

    const/4 v6, 0x0

    .line 175
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 176
    const/4 v5, 0x1

    if-ne v4, v5, :cond_d

    const/4 v4, 0x1

    :goto_0
    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/LockScreen;->mTrackballUnlockScreen:Z

    .line 178
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mContext:Landroid/content/Context;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 179
    const-string v5, "slider_unlock_screen"

    const/4 v6, 0x0

    .line 178
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 179
    const/4 v5, 0x1

    if-ne v4, v5, :cond_e

    const/4 v4, 0x1

    :goto_1
    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/LockScreen;->mSliderUnlockScreen:Z

    .line 181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mContext:Landroid/content/Context;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 182
    const-string v5, "menu_unlock_screen"

    const/4 v6, 0x0

    .line 181
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 182
    const/4 v5, 0x1

    if-ne v4, v5, :cond_f

    const/4 v4, 0x1

    :goto_2
    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/LockScreen;->mMenuUnlockScreen:Z

    .line 184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mContext:Landroid/content/Context;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 185
    const-string v5, "lockscreen_always_battery"

    const/4 v6, 0x0

    .line 184
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 185
    const/4 v5, 0x1

    if-ne v4, v5, :cond_10

    const/4 v4, 0x1

    :goto_3
    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/LockScreen;->mLockAlwaysBattery:Z

    .line 187
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mContext:Landroid/content/Context;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 188
    const-string v5, "lockscreen_calendar_alarm"

    const/4 v6, 0x0

    .line 187
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 188
    const/4 v5, 0x1

    if-ne v4, v5, :cond_11

    const/4 v4, 0x1

    :goto_4
    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/LockScreen;->mLockCalendarAlarm:Z

    .line 191
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mContext:Landroid/content/Context;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "lockscreen_calendars"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/preference/MultiSelectListPreference;->parseStoredValue(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/LockScreen;->mCalendars:[Ljava/lang/String;

    .line 193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mContext:Landroid/content/Context;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 194
    const-string v5, "lockscreen_calendar_reminders_only"

    const/4 v6, 0x0

    .line 193
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 194
    const/4 v5, 0x1

    if-ne v4, v5, :cond_12

    const/4 v4, 0x1

    :goto_5
    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/LockScreen;->mLockCalendarRemindersOnly:Z

    .line 196
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mContext:Landroid/content/Context;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 197
    const-string v5, "lockscreen_calendar_lookahead"

    const-wide/32 v6, 0xa4cb80

    invoke-static {v4, v5, v6, v7}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v4

    move-wide v0, v4

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/policy/impl/LockScreen;->mLockCalendarLookahead:J

    .line 199
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mContext:Landroid/content/Context;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 200
    const-string v5, "lockscreen_music_controls"

    const/4 v6, 0x1

    .line 199
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 200
    const/4 v5, 0x1

    if-ne v4, v5, :cond_13

    const/4 v4, 0x1

    :goto_6
    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/LockScreen;->mLockMusicControls:Z

    .line 202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mContext:Landroid/content/Context;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 203
    const-string v5, "lockscreen_now_playing"

    const/4 v6, 0x1

    .line 202
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 203
    const/4 v5, 0x1

    if-ne v4, v5, :cond_14

    const/4 v4, 0x1

    :goto_7
    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/LockScreen;->mNowPlayingToggle:Z

    .line 205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mContext:Landroid/content/Context;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 206
    const-string v5, "lockscreen_album_art"

    const/4 v6, 0x1

    .line 205
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 206
    const/4 v5, 0x1

    if-ne v4, v5, :cond_15

    const/4 v4, 0x1

    :goto_8
    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/LockScreen;->mAlbumArtToggle:Z

    .line 208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mContext:Landroid/content/Context;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 209
    const-string v5, "lockscreen_music_controls_headset"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/LockScreen;->mLockMusicHeadset:I

    .line 211
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mLockMusicHeadset:I

    move v4, v0

    const/4 v5, 0x1

    if-eq v4, v5, :cond_16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mLockMusicHeadset:I

    move v4, v0

    const/4 v5, 0x3

    if-eq v4, v5, :cond_16

    const/4 v4, 0x0

    :goto_9
    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/LockScreen;->useLockMusicHeadsetWired:Z

    .line 212
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mLockMusicHeadset:I

    move v4, v0

    const/4 v5, 0x2

    if-eq v4, v5, :cond_17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mLockMusicHeadset:I

    move v4, v0

    const/4 v5, 0x3

    if-eq v4, v5, :cond_17

    const/4 v4, 0x0

    :goto_a
    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/LockScreen;->useLockMusicHeadsetBT:Z

    .line 214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mContext:Landroid/content/Context;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 215
    const-string v5, "lockscreen_always_music_controls"

    const/4 v6, 0x0

    .line 214
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 215
    const/4 v5, 0x1

    if-ne v4, v5, :cond_18

    const/4 v4, 0x1

    :goto_b
    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/LockScreen;->mLockAlwaysMusic:Z

    .line 217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mContext:Landroid/content/Context;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 218
    const-string v5, "lockscreen_custom_app_toggle"

    const/4 v6, 0x0

    .line 217
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 218
    const/4 v5, 0x1

    if-ne v4, v5, :cond_19

    const/4 v4, 0x1

    :goto_c
    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/LockScreen;->mCustomAppToggle:Z

    .line 220
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mContext:Landroid/content/Context;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 221
    const-string v5, "lockscreen_custom_app_activity"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/LockScreen;->mCustomAppActivity:Ljava/lang/String;

    .line 223
    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 224
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mContext:Landroid/content/Context;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 225
    sget-object v7, Landroid/provider/Settings$System;->LOCKSCREEN_CUSTOM_RING_APP_ACTIVITIES:[Ljava/lang/String;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    .line 224
    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mContext:Landroid/content/Context;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 227
    sget-object v7, Landroid/provider/Settings$System;->LOCKSCREEN_CUSTOM_RING_APP_ACTIVITIES:[Ljava/lang/String;

    const/4 v8, 0x1

    aget-object v7, v7, v8

    .line 226
    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    .line 228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mContext:Landroid/content/Context;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 229
    sget-object v7, Landroid/provider/Settings$System;->LOCKSCREEN_CUSTOM_RING_APP_ACTIVITIES:[Ljava/lang/String;

    const/4 v8, 0x2

    aget-object v7, v7, v8

    .line 228
    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    .line 230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mContext:Landroid/content/Context;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 231
    sget-object v7, Landroid/provider/Settings$System;->LOCKSCREEN_CUSTOM_RING_APP_ACTIVITIES:[Ljava/lang/String;

    const/4 v8, 0x3

    aget-object v7, v7, v8

    .line 230
    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/LockScreen;->mCustomRingAppActivities:[Ljava/lang/String;

    .line 234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mContext:Landroid/content/Context;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 235
    const-string v5, "status_bar_lockscreencolor"

    const/4 v6, -0x1

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/LockScreen;->mClockColor:I

    .line 237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mContext:Landroid/content/Context;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 238
    const-string v5, "lockscreen_style_pref"

    const/4 v6, 0x5

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/LockScreen;->mLockscreenStyle:I

    .line 240
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mContext:Landroid/content/Context;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 241
    const-string v5, "lockscreen_custom_icon_style"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/LockScreen;->mCustomIconStyle:I

    .line 243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mContext:Landroid/content/Context;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 244
    const-string v5, "lockscreen_widgets_layout"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/LockScreen;->mWidgetLayout:I

    .line 246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mContext:Landroid/content/Context;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 247
    const-string v5, "lockscreen_rotary_unlock_down"

    const/4 v6, 0x0

    .line 246
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 247
    const/4 v5, 0x1

    if-ne v4, v5, :cond_1a

    const/4 v4, 0x1

    :goto_d
    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/LockScreen;->mRotaryUnlockDown:Z

    .line 249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mContext:Landroid/content/Context;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 250
    const-string v5, "lockscreen_rotary_hide_arrows"

    const/4 v6, 0x0

    .line 249
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 250
    const/4 v5, 0x1

    if-ne v4, v5, :cond_1b

    const/4 v4, 0x1

    :goto_e
    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/LockScreen;->mRotaryHideArrows:Z

    .line 252
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mContext:Landroid/content/Context;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 253
    const-string v5, "carrier_label_type"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/LockScreen;->mCarrierLabelType:I

    .line 255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mContext:Landroid/content/Context;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 256
    const-string v5, "carrier_label_custom_string"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/LockScreen;->mCarrierLabelCustom:Ljava/lang/String;

    .line 259
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mLockscreenStyle:I

    move v4, v0

    invoke-static {v4}, Landroid/provider/CmSystem$LockscreenStyle;->getStyleById(I)Landroid/provider/CmSystem$LockscreenStyle;

    move-result-object v4

    sget-object v5, Landroid/provider/CmSystem$LockscreenStyle;->Rotary:Landroid/provider/CmSystem$LockscreenStyle;

    if-ne v4, v5, :cond_1c

    const/4 v4, 0x1

    :goto_f
    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/LockScreen;->mUseRotaryLockscreen:Z

    .line 262
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mLockscreenStyle:I

    move v4, v0

    invoke-static {v4}, Landroid/provider/CmSystem$LockscreenStyle;->getStyleById(I)Landroid/provider/CmSystem$LockscreenStyle;

    move-result-object v4

    sget-object v5, Landroid/provider/CmSystem$LockscreenStyle;->Lense:Landroid/provider/CmSystem$LockscreenStyle;

    if-ne v4, v5, :cond_1d

    const/4 v4, 0x1

    :goto_10
    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/LockScreen;->mUseLenseSquareLockscreen:Z

    .line 263
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/LockScreen;->mLensePortrait:Z

    .line 266
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mLockscreenStyle:I

    move v4, v0

    invoke-static {v4}, Landroid/provider/CmSystem$LockscreenStyle;->getStyleById(I)Landroid/provider/CmSystem$LockscreenStyle;

    move-result-object v4

    sget-object v5, Landroid/provider/CmSystem$LockscreenStyle;->Ring:Landroid/provider/CmSystem$LockscreenStyle;

    if-ne v4, v5, :cond_1e

    const/4 v4, 0x1

    :goto_11
    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/LockScreen;->mUseRingLockscreen:Z

    .line 268
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mContext:Landroid/content/Context;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 269
    const-string v5, "lockscreen_ring_unlock_middle"

    const/4 v6, 0x0

    .line 268
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 269
    const/4 v5, 0x1

    if-ne v4, v5, :cond_1f

    const/4 v4, 0x1

    :goto_12
    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/LockScreen;->mRingUnlockMiddle:Z

    .line 271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mContext:Landroid/content/Context;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 272
    const-string v5, "lockscreen_ring_minimal"

    const/4 v6, 0x0

    .line 271
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 272
    const/4 v5, 0x1

    if-ne v4, v5, :cond_20

    const/4 v4, 0x1

    :goto_13
    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/LockScreen;->mRingMinimal:Z

    .line 274
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mContext:Landroid/content/Context;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 275
    const-string v5, "lockscreen_fuzzy_clock"

    const/4 v6, 0x1

    .line 274
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 275
    const/4 v5, 0x1

    if-ne v4, v5, :cond_21

    const/4 v4, 0x1

    :goto_14
    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/LockScreen;->mUseFuzzyClock:Z

    .line 277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mContext:Landroid/content/Context;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 278
    const-string v5, "lockscreen_fuzzy_clock"

    const/4 v6, 0x1

    .line 277
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 278
    const/4 v5, 0x2

    .line 277
    if-eq v4, v5, :cond_22

    .line 278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mContext:Landroid/content/Context;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 279
    const-string v5, "lockscreen_fuzzy_clock"

    const/4 v6, 0x1

    .line 278
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 279
    const/4 v5, 0x3

    .line 278
    if-eq v4, v5, :cond_22

    const/4 v4, 0x0

    :goto_15
    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/LockScreen;->mUseKanjiClock:Z

    .line 290
    const/4 v4, 0x4

    new-array v4, v4, [Landroid/graphics/Bitmap;

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/LockScreen;->mCustomRingAppIcons:[Landroid/graphics/Bitmap;

    .line 370
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/LockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 371
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 372
    move-object/from16 v0, p5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 374
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mClockColor:I

    move v4, v0

    .line 376
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/LockScreen;->shouldEnableMenuKey()Z

    move-result v5

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/LockScreen;->mEnableMenuKeyInLockScreen:Z

    .line 378
    move-object/from16 v0, p2

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move v5, v0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/LockScreen;->mCreationOrientation:I

    .line 380
    move-object/from16 v0, p2

    iget v0, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    move v5, v0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/LockScreen;->mKeyboardHidden:I

    .line 388
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    .line 390
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mUseFuzzyClock:Z

    move v6, v0

    if-eqz v6, :cond_23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mCreationOrientation:I

    move v6, v0

    const/4 v7, 0x2

    if-eq v6, v7, :cond_23

    .line 391
    const v6, 0x4030003

    const/4 v7, 0x1

    move-object v0, v5

    move v1, v6

    move-object/from16 v2, p0

    move v3, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 403
    :goto_16
    const v5, 0x406013b

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/LockScreen;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    .line 404
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mContext:Landroid/content/Context;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/LockScreen;->setBackground(Landroid/content/Context;Landroid/view/ViewGroup;)V

    .line 405
    const v5, 0x406013c

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/LockScreen;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/LockScreen;->mCarrier:Landroid/widget/TextView;

    .line 407
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mCarrier:Landroid/widget/TextView;

    move-object v5, v0

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setSelected(Z)V

    .line 409
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mCarrier:Landroid/widget/TextView;

    move-object v5, v0

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 411
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mUseFuzzyClock:Z

    move v5, v0

    if-eqz v5, :cond_28

    .line 412
    const v5, 0x406013e

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/LockScreen;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/emanon/internal/widget/FuzzyClock;

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/LockScreen;->mFuzzyClock:Lcom/android/emanon/internal/widget/FuzzyClock;

    .line 418
    :goto_17
    const v5, 0x406013f

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/LockScreen;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/LockScreen;->mTime:Landroid/widget/TextView;

    .line 419
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mTime:Landroid/widget/TextView;

    move-object v5, v0

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 420
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mUseKanjiClock:Z

    move v5, v0

    if-nez v5, :cond_0

    .line 422
    const v5, 0x4060140

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/LockScreen;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/LockScreen;->mAmPm:Landroid/widget/TextView;

    .line 423
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mAmPm:Landroid/widget/TextView;

    move-object v5, v0

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 425
    :cond_0
    const v5, 0x4060141

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/LockScreen;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/LockScreen;->mDate:Landroid/widget/TextView;

    .line 426
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mDate:Landroid/widget/TextView;

    move-object v5, v0

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 428
    const v5, 0x40601cf

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/LockScreen;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/LockScreen;->mStatusBox:Landroid/widget/LinearLayout;

    .line 429
    const v5, 0x40601d0

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/LockScreen;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/LockScreen;->mStatusCharging:Landroid/widget/TextView;

    .line 430
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mStatusCharging:Landroid/widget/TextView;

    move-object v5, v0

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 431
    const v5, 0x40601d1

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/LockScreen;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/LockScreen;->mStatusAlarm:Landroid/widget/TextView;

    .line 432
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mStatusAlarm:Landroid/widget/TextView;

    move-object v5, v0

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 433
    const v5, 0x40601d2

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/LockScreen;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/LockScreen;->mStatusCalendar:Landroid/widget/TextView;

    .line 434
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mStatusCalendar:Landroid/widget/TextView;

    move-object v5, v0

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 447
    const v5, 0x40601d5

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/LockScreen;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/LockScreen;->mPlayIcon:Landroid/widget/ImageButton;

    .line 448
    const v5, 0x40601d6

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/LockScreen;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/LockScreen;->mPauseIcon:Landroid/widget/ImageButton;

    .line 449
    const v5, 0x40601d7

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/LockScreen;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/LockScreen;->mRewindIcon:Landroid/widget/ImageButton;

    .line 450
    const v5, 0x40601d8

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/LockScreen;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/LockScreen;->mForwardIcon:Landroid/widget/ImageButton;

    .line 451
    const v5, 0x40601d3

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/LockScreen;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/LockScreen;->mAlbumArt:Landroid/widget/ImageButton;

    .line 452
    const v5, 0x40601d4

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/LockScreen;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/LockScreen;->mNowPlaying:Landroid/widget/TextView;

    .line 453
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mNowPlaying:Landroid/widget/TextView;

    move-object v5, v0

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setSelected(Z)V

    .line 454
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mNowPlaying:Landroid/widget/TextView;

    move-object v5, v0

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 456
    const v5, 0x4060145

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/LockScreen;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/LockScreen;->mScreenLocked:Landroid/widget/TextView;

    .line 457
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mScreenLocked:Landroid/widget/TextView;

    move-object v5, v0

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 459
    const v4, 0x4060148

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/LockScreen;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/emanon/internal/widget/RotarySelector;

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/LockScreen;->mRotarySelector:Lcom/android/emanon/internal/widget/RotarySelector;

    .line 461
    const v4, 0x4060147

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/LockScreen;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/emanon/internal/widget/SlidingTab;

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/LockScreen;->mTabSelector:Lcom/android/emanon/internal/widget/SlidingTab;

    .line 462
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mTabSelector:Lcom/android/emanon/internal/widget/SlidingTab;

    move-object v4, v0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/android/emanon/internal/widget/SlidingTab;->setHoldAfterTrigger(ZZ)V

    .line 463
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mTabSelector:Lcom/android/emanon/internal/widget/SlidingTab;

    move-object v4, v0

    const v5, 0x40c0012

    invoke-virtual {v4, v5}, Lcom/android/emanon/internal/widget/SlidingTab;->setLeftHintText(I)V

    .line 465
    const v4, 0x4060149

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/LockScreen;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/emanon/internal/widget/RingSelector;

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/LockScreen;->mRingSelector:Lcom/android/emanon/internal/widget/RingSelector;

    .line 467
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mCustomAppActivity:Ljava/lang/String;

    move-object v4, v0

    if-eqz v4, :cond_2

    .line 469
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mCustomAppActivity:Ljava/lang/String;

    move-object v4, v0

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v4

    .line 470
    const-string v5, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/LockScreen;->mCustomAppName:Ljava/lang/String;

    .line 471
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 472
    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v4

    .line 473
    if-eqz v4, :cond_2

    .line 474
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mCustomAppName:Ljava/lang/String;

    move-object v6, v0

    if-nez v6, :cond_1

    invoke-virtual {v4, v5}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/LockScreen;->mCustomAppName:Ljava/lang/String;

    .line 476
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mCustomIconStyle:I

    move v6, v0

    const/4 v7, 0x1

    if-eq v6, v7, :cond_2

    .line 477
    invoke-virtual {v4, v5}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    check-cast p2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 478
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/LockScreen;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x4020007

    invoke-static {v5, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 480
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 481
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/LockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->density:F

    .line 482
    const/high16 v8, 0x40e0

    mul-float/2addr v7, v8

    .line 483
    const/high16 v8, 0x4000

    mul-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    sub-int v7, v6, v7

    .line 484
    int-to-double v7, v7

    const-wide/high16 v9, 0x4000

    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v9

    div-double/2addr v7, v9

    double-to-int v7, v7

    .line 486
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v9, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    move-object v0, v8

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/LockScreen;->mCustomAppIcon:Landroid/graphics/Bitmap;

    .line 487
    const/4 v8, 0x1

    invoke-static {v4, v7, v7, v8}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 488
    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    .line 490
    new-instance v7, Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mCustomAppIcon:Landroid/graphics/Bitmap;

    move-object v8, v0

    invoke-direct {v7, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 491
    const/4 v8, 0x0

    const/4 v9, 0x0

    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v7, v5, v8, v9, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 492
    int-to-float v5, v6

    int-to-float v6, v6

    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v7, v4, v5, v6, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1

    .line 499
    :cond_2
    :goto_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mCustomAppIcon:Landroid/graphics/Bitmap;

    move-object v4, v0

    if-nez v4, :cond_3

    .line 500
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/LockScreen;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x4020008

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/LockScreen;->mCustomAppIcon:Landroid/graphics/Bitmap;

    .line 502
    :cond_3
    const v4, 0x4060146

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/LockScreen;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/emanon/internal/widget/SlidingTab;

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/LockScreen;->mSelector2:Lcom/android/emanon/internal/widget/SlidingTab;

    .line 503
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mSelector2:Lcom/android/emanon/internal/widget/SlidingTab;

    move-object v4, v0

    if-eqz v4, :cond_4

    .line 504
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mSelector2:Lcom/android/emanon/internal/widget/SlidingTab;

    move-object v4, v0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/android/emanon/internal/widget/SlidingTab;->setHoldAfterTrigger(ZZ)V

    .line 505
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mSelector2:Lcom/android/emanon/internal/widget/SlidingTab;

    move-object v4, v0

    const v5, 0x40c0015

    invoke-virtual {v4, v5}, Lcom/android/emanon/internal/widget/SlidingTab;->setLeftHintText(I)V

    .line 506
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mSelector2:Lcom/android/emanon/internal/widget/SlidingTab;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mCustomAppName:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v4, v5}, Lcom/android/emanon/internal/widget/SlidingTab;->setRightHintText(Ljava/lang/CharSequence;)V

    .line 509
    :cond_4
    const v4, 0x406013d

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/LockScreen;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/LockScreen;->mEmergencyCallText:Landroid/widget/TextView;

    .line 510
    const v4, 0x406014a

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/LockScreen;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/LockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    .line 511
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    move-object v4, v0

    const v5, 0x40c001c

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(I)V

    .line 513
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    move-object v5, v0

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->updateEmergencyCallButtonState(Landroid/widget/Button;)V

    .line 514
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    move-object v4, v0

    new-instance v5, Lcom/android/internal/policy/impl/LockScreen$1;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/LockScreen$1;-><init>(Lcom/android/internal/policy/impl/LockScreen;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 520
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mPlayIcon:Landroid/widget/ImageButton;

    move-object v4, v0

    new-instance v5, Lcom/android/internal/policy/impl/LockScreen$2;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/LockScreen$2;-><init>(Lcom/android/internal/policy/impl/LockScreen;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 534
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mPauseIcon:Landroid/widget/ImageButton;

    move-object v4, v0

    new-instance v5, Lcom/android/internal/policy/impl/LockScreen$3;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/LockScreen$3;-><init>(Lcom/android/internal/policy/impl/LockScreen;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 548
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mRewindIcon:Landroid/widget/ImageButton;

    move-object v4, v0

    new-instance v5, Lcom/android/internal/policy/impl/LockScreen$4;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/LockScreen$4;-><init>(Lcom/android/internal/policy/impl/LockScreen;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 555
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mForwardIcon:Landroid/widget/ImageButton;

    move-object v4, v0

    new-instance v5, Lcom/android/internal/policy/impl/LockScreen$5;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/LockScreen$5;-><init>(Lcom/android/internal/policy/impl/LockScreen;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 562
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mAlbumArt:Landroid/widget/ImageButton;

    move-object v4, v0

    new-instance v5, Lcom/android/internal/policy/impl/LockScreen$6;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/LockScreen$6;-><init>(Lcom/android/internal/policy/impl/LockScreen;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 572
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/LockScreen;->setFocusable(Z)V

    .line 573
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/LockScreen;->setFocusableInTouchMode(Z)V

    .line 574
    const/high16 v4, 0x6

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/LockScreen;->setDescendantFocusability(I)V

    .line 576
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerInfoCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;)V

    .line 577
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerSimStateCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;)V

    .line 579
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/LockScreen;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "audio"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/media/AudioManager;

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/LockScreen;->mAudioManager:Landroid/media/AudioManager;

    .line 580
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/LockScreen;->isSilentMode()Z

    move-result v4

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z

    .line 583
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mRotaryUnlockDown:Z

    move v4, v0

    if-nez v4, :cond_2a

    .line 584
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mRotarySelector:Lcom/android/emanon/internal/widget/RotarySelector;

    move-object v4, v0

    const v5, 0x4020013

    invoke-virtual {v4, v5}, Lcom/android/emanon/internal/widget/RotarySelector;->setLeftHandleResource(I)V

    .line 585
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mRotarySelector:Lcom/android/emanon/internal/widget/RotarySelector;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mCustomAppIcon:Landroid/graphics/Bitmap;

    move-object v5, v0

    invoke-virtual {v4, v5}, Lcom/android/emanon/internal/widget/RotarySelector;->setMidHandleResource(Landroid/graphics/Bitmap;)V

    .line 590
    :goto_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mRotarySelector:Lcom/android/emanon/internal/widget/RotarySelector;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mCustomAppToggle:Z

    move v5, v0

    invoke-virtual {v4, v5}, Lcom/android/emanon/internal/widget/RotarySelector;->enableCustomAppDimple(Z)V

    .line 592
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mContext:Landroid/content/Context;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 593
    const-string v5, "rotary_style_pref"

    sget-object v6, Landroid/provider/CmSystem$RotaryStyle;->Normal:Landroid/provider/CmSystem$RotaryStyle;

    invoke-static {v6}, Landroid/provider/CmSystem$RotaryStyle;->getIdByStyle(Landroid/provider/CmSystem$RotaryStyle;)I

    move-result v6

    .line 592
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 594
    sget-object v5, Landroid/provider/CmSystem$RotaryStyle;->Revamped:Landroid/provider/CmSystem$RotaryStyle;

    invoke-static {v5}, Landroid/provider/CmSystem$RotaryStyle;->getIdByStyle(Landroid/provider/CmSystem$RotaryStyle;)I

    move-result v5

    if-ne v4, v5, :cond_2b

    const/4 v4, 0x1

    .line 596
    :goto_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mRotarySelector:Lcom/android/emanon/internal/widget/RotarySelector;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mUseLenseSquareLockscreen:Z

    move v6, v0

    if-nez v6, :cond_2c

    if-nez v4, :cond_2c

    const/4 v6, 0x1

    :goto_1b
    invoke-virtual {v5, v6}, Lcom/android/emanon/internal/widget/RotarySelector;->setRotary(Z)V

    .line 597
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mRotarySelector:Lcom/android/emanon/internal/widget/RotarySelector;

    move-object v5, v0

    invoke-virtual {v5, v4}, Lcom/android/emanon/internal/widget/RotarySelector;->setRevamped(Z)V

    .line 598
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mRotarySelector:Lcom/android/emanon/internal/widget/RotarySelector;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mUseLenseSquareLockscreen:Z

    move v5, v0

    invoke-virtual {v4, v5}, Lcom/android/emanon/internal/widget/RotarySelector;->setLenseSquare(Z)V

    .line 600
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mRotaryHideArrows:Z

    move v4, v0

    if-eqz v4, :cond_5

    .line 601
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mRotarySelector:Lcom/android/emanon/internal/widget/RotarySelector;

    move-object v4, v0

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/emanon/internal/widget/RotarySelector;->hideArrows(Z)V

    .line 605
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mUseLenseSquareLockscreen:Z

    move v4, v0

    if-eqz v4, :cond_2d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mCreationOrientation:I

    move v4, v0

    const/4 v5, 0x2

    if-eq v4, v5, :cond_2d

    const/4 v4, 0x1

    :goto_1c
    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/LockScreen;->mLensePortrait:Z

    .line 606
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mLensePortrait:Z

    move v4, v0

    if-nez v4, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mWidgetLayout:I

    move v4, v0

    const/4 v5, 0x1

    if-ne v4, v5, :cond_7

    .line 607
    :cond_6
    const/4 v4, 0x4

    move-object/from16 v0, p0

    move v1, v4

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/LockScreen;->setLenseWidgetsVisibility(I)V

    .line 611
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mContext:Landroid/content/Context;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 612
    const-string v5, "ringlock_style_pref"

    sget-object v6, Landroid/provider/CmSystem$RinglockStyle;->Bubble:Landroid/provider/CmSystem$RinglockStyle;

    invoke-static {v6}, Landroid/provider/CmSystem$RinglockStyle;->getIdByStyle(Landroid/provider/CmSystem$RinglockStyle;)I

    move-result v6

    .line 611
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 616
    invoke-static {}, Lcom/android/internal/policy/impl/LockScreen;->$SWITCH_TABLE$android$provider$CmSystem$RinglockStyle()[I

    move-result-object v5

    invoke-static {v4}, Landroid/provider/CmSystem$RinglockStyle;->getStyleById(I)Landroid/provider/CmSystem$RinglockStyle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/provider/CmSystem$RinglockStyle;->ordinal()I

    move-result v4

    aget v4, v5, v4

    packed-switch v4, :pswitch_data_0

    .line 642
    const v4, 0x402005b

    .line 643
    const v5, 0x4020053

    .line 644
    const v6, 0x4020057

    .line 645
    const v7, 0x4020013

    .line 646
    const v8, 0x4020008

    .line 647
    const v9, 0x4020083

    move/from16 v17, v9

    move v9, v4

    move/from16 v4, v17

    move/from16 v18, v7

    move v7, v6

    move/from16 v6, v18

    move/from16 v19, v5

    move v5, v8

    move/from16 v8, v19

    .line 651
    :goto_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mRingSelector:Lcom/android/emanon/internal/widget/RingSelector;

    move-object v10, v0

    invoke-virtual {v10, v7}, Lcom/android/emanon/internal/widget/RingSelector;->setHighlightBackgroundResource(I)V

    .line 653
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/LockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->density:F

    .line 654
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x40a0007

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    .line 655
    const/4 v11, 0x0

    :goto_1e
    const/4 v12, 0x4

    if-lt v11, v12, :cond_2e

    .line 675
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mRingMinimal:Z

    move v7, v0

    if-eqz v7, :cond_31

    .line 676
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mRingSelector:Lcom/android/emanon/internal/widget/RingSelector;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mRingMinimal:Z

    move v7, v0

    invoke-virtual {v5, v7}, Lcom/android/emanon/internal/widget/RingSelector;->enableRingMinimal(Z)V

    .line 678
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mRingSelector:Lcom/android/emanon/internal/widget/RingSelector;

    move-object v5, v0

    invoke-virtual {v5, v6, v4, v8}, Lcom/android/emanon/internal/widget/RingSelector;->setMiddleRingResources(III)V

    .line 697
    :goto_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mTabSelector:Lcom/android/emanon/internal/widget/SlidingTab;

    move-object v4, v0

    .line 698
    const v5, 0x4020013

    .line 699
    const v6, 0x4020083

    .line 700
    const v7, 0x4020064

    .line 701
    const v8, 0x4020077

    .line 697
    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/android/emanon/internal/widget/SlidingTab;->setLeftTabResources(IIII)V

    .line 703
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/LockScreen;->updateRightTabResources()V

    .line 705
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mRotarySelector:Lcom/android/emanon/internal/widget/RotarySelector;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/emanon/internal/widget/RotarySelector;->setOnDialTriggerListener(Lcom/android/emanon/internal/widget/RotarySelector$OnDialTriggerListener;)V

    .line 706
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mTabSelector:Lcom/android/emanon/internal/widget/SlidingTab;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/emanon/internal/widget/SlidingTab;->setOnTriggerListener(Lcom/android/emanon/internal/widget/SlidingTab$OnTriggerListener;)V

    .line 707
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mRingSelector:Lcom/android/emanon/internal/widget/RingSelector;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/emanon/internal/widget/RingSelector;->setOnRingTriggerListener(Lcom/android/emanon/internal/widget/RingSelector$OnRingTriggerListener;)V

    .line 710
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mTabSelector:Lcom/android/emanon/internal/widget/SlidingTab;

    move-object v4, v0

    .line 711
    const v5, 0x4020013

    .line 712
    const v6, 0x4020083

    .line 713
    const v7, 0x4020064

    .line 714
    const v8, 0x4020077

    .line 710
    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/android/emanon/internal/widget/SlidingTab;->setLeftTabResources(IIII)V

    .line 716
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mSelector2:Lcom/android/emanon/internal/widget/SlidingTab;

    move-object v4, v0

    if-eqz v4, :cond_8

    .line 717
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mSelector2:Lcom/android/emanon/internal/widget/SlidingTab;

    move-object v4, v0

    const v5, 0x4020004

    .line 718
    const v6, 0x4020083

    const v7, 0x4020063

    .line 719
    const v8, 0x4020074

    .line 717
    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/android/emanon/internal/widget/SlidingTab;->setLeftTabResources(IIII)V

    .line 721
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mSelector2:Lcom/android/emanon/internal/widget/SlidingTab;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mCustomAppIcon:Landroid/graphics/Bitmap;

    move-object v5, v0

    .line 722
    const v6, 0x4020083

    .line 723
    const v7, 0x402006c

    .line 724
    const v8, 0x402007d

    .line 721
    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/android/emanon/internal/widget/SlidingTab;->setRightTabResources(Landroid/graphics/Bitmap;III)V

    .line 726
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mSelector2:Lcom/android/emanon/internal/widget/SlidingTab;

    move-object v4, v0

    new-instance v5, Lcom/android/internal/policy/impl/LockScreen$7;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/LockScreen$7;-><init>(Lcom/android/internal/policy/impl/LockScreen;)V

    invoke-virtual {v4, v5}, Lcom/android/emanon/internal/widget/SlidingTab;->setOnTriggerListener(Lcom/android/emanon/internal/widget/SlidingTab$OnTriggerListener;)V

    .line 746
    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 747
    const-string v5, "lockscreen_gestures_enabled"

    const/4 v6, 0x0

    .line 746
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 747
    const/4 v5, 0x1

    if-ne v4, v5, :cond_34

    const/4 v4, 0x1

    .line 746
    :goto_20
    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/LockScreen;->mGestureActive:Z

    .line 748
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 749
    const-string v5, "lockscreen_gestures_trail"

    const/4 v6, 0x0

    .line 748
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 749
    const/4 v5, 0x1

    if-ne v4, v5, :cond_35

    const/4 v4, 0x1

    .line 748
    :goto_21
    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/LockScreen;->mGestureTrail:Z

    .line 750
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 751
    const-string v5, "lockscreen_gestures_color"

    const/16 v6, -0x100

    .line 750
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/LockScreen;->mGestureColor:I

    .line 752
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 753
    const-string v5, "lockscreen_gestures_disable_unlock"

    const/4 v6, 0x0

    .line 752
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 753
    const/4 v5, 0x1

    .line 752
    if-ne v4, v5, :cond_36

    const/4 v4, 0x1

    .line 754
    :goto_22
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mGestureActive:Z

    move v5, v0

    if-nez v5, :cond_9

    .line 755
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/LockScreen;->mGestureTrail:Z

    .line 758
    :cond_9
    const v5, 0x406013a

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/LockScreen;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/gesture/GestureOverlayView;

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/LockScreen;->mGestureOverlay:Landroid/gesture/GestureOverlayView;

    .line 759
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mGestureOverlay:Landroid/gesture/GestureOverlayView;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mGestureTrail:Z

    move v6, v0

    invoke-virtual {v5, v6}, Landroid/gesture/GestureOverlayView;->setGestureVisible(Z)V

    .line 760
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mGestureOverlay:Landroid/gesture/GestureOverlayView;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mGestureColor:I

    move v6, v0

    invoke-virtual {v5, v6}, Landroid/gesture/GestureOverlayView;->setGestureColor(I)V

    .line 761
    const/4 v5, 0x0

    .line 762
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mGestureOverlay:Landroid/gesture/GestureOverlayView;

    move-object v6, v0

    if-eqz v6, :cond_b

    .line 763
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mGestureActive:Z

    move v6, v0

    if-eqz v6, :cond_b

    .line 764
    new-instance v6, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v7

    .line 765
    const-string v8, "/data/com.emanon.lockscreen/files/lockscreen_gestures"

    .line 764
    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 766
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 767
    const-string v8, "lockscreen_gestures_sensitivity"

    const/4 v9, 0x3

    .line 766
    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    int-to-double v7, v7

    move-wide v0, v7

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/policy/impl/LockScreen;->mGestureSensitivity:D

    .line 768
    invoke-static {v6}, Landroid/gesture/GestureLibraries;->fromFile(Ljava/io/File;)Landroid/gesture/GestureLibrary;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/LockScreen;->mLibrary:Landroid/gesture/GestureLibrary;

    .line 769
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mLibrary:Landroid/gesture/GestureLibrary;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/gesture/GestureLibrary;->load()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 770
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mGestureOverlay:Landroid/gesture/GestureOverlayView;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/gesture/GestureOverlayView;->addOnGesturePerformedListener(Landroid/gesture/GestureOverlayView$OnGesturePerformedListener;)V

    .line 771
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mLibrary:Landroid/gesture/GestureLibrary;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/gesture/GestureLibrary;->getGestureEntries()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_37

    .line 783
    :cond_b
    :goto_23
    if-eqz v4, :cond_38

    if-nez v5, :cond_c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mTrackballUnlockScreen:Z

    move v4, v0

    if-nez v4, :cond_c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mMenuUnlockScreen:Z

    move v4, v0

    if-eqz v4, :cond_38

    .line 784
    :cond_c
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/LockScreen;->mHideUnlockTab:Z

    .line 789
    :goto_24
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/LockScreen;->resetStatusInfo(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    .line 790
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mWidgetLayout:I

    move v4, v0

    packed-switch v4, :pswitch_data_1

    .line 798
    :goto_25
    return-void

    .line 176
    :cond_d
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 179
    :cond_e
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 182
    :cond_f
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 185
    :cond_10
    const/4 v4, 0x0

    goto/16 :goto_3

    .line 188
    :cond_11
    const/4 v4, 0x0

    goto/16 :goto_4

    .line 194
    :cond_12
    const/4 v4, 0x0

    goto/16 :goto_5

    .line 200
    :cond_13
    const/4 v4, 0x0

    goto/16 :goto_6

    .line 203
    :cond_14
    const/4 v4, 0x0

    goto/16 :goto_7

    .line 206
    :cond_15
    const/4 v4, 0x0

    goto/16 :goto_8

    .line 211
    :cond_16
    const/4 v4, 0x1

    goto/16 :goto_9

    .line 212
    :cond_17
    const/4 v4, 0x1

    goto/16 :goto_a

    .line 215
    :cond_18
    const/4 v4, 0x0

    goto/16 :goto_b

    .line 218
    :cond_19
    const/4 v4, 0x0

    goto/16 :goto_c

    .line 247
    :cond_1a
    const/4 v4, 0x0

    goto/16 :goto_d

    .line 250
    :cond_1b
    const/4 v4, 0x0

    goto/16 :goto_e

    .line 259
    :cond_1c
    const/4 v4, 0x0

    goto/16 :goto_f

    .line 262
    :cond_1d
    const/4 v4, 0x0

    goto/16 :goto_10

    .line 266
    :cond_1e
    const/4 v4, 0x0

    goto/16 :goto_11

    .line 269
    :cond_1f
    const/4 v4, 0x0

    goto/16 :goto_12

    .line 272
    :cond_20
    const/4 v4, 0x0

    goto/16 :goto_13

    .line 275
    :cond_21
    const/4 v4, 0x0

    goto/16 :goto_14

    .line 278
    :cond_22
    const/4 v4, 0x1

    goto/16 :goto_15

    .line 392
    :cond_23
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mUseKanjiClock:Z

    move v6, v0

    if-eqz v6, :cond_24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mCreationOrientation:I

    move v6, v0

    const/4 v7, 0x2

    if-eq v6, v7, :cond_24

    .line 393
    const v6, 0x4030004

    const/4 v7, 0x1

    move-object v0, v5

    move v1, v6

    move-object/from16 v2, p0

    move v3, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto/16 :goto_16

    .line 394
    :cond_24
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mCreationOrientation:I

    move v6, v0

    const/4 v7, 0x2

    if-eq v6, v7, :cond_25

    .line 395
    const v6, 0x4030002

    const/4 v7, 0x1

    move-object v0, v5

    move v1, v6

    move-object/from16 v2, p0

    move v3, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto/16 :goto_16

    .line 396
    :cond_25
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mUseFuzzyClock:Z

    move v6, v0

    if-eqz v6, :cond_26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mCreationOrientation:I

    move v6, v0

    const/4 v7, 0x2

    if-ne v6, v7, :cond_26

    .line 397
    const v6, 0x4030006

    const/4 v7, 0x1

    move-object v0, v5

    move v1, v6

    move-object/from16 v2, p0

    move v3, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto/16 :goto_16

    .line 398
    :cond_26
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mUseKanjiClock:Z

    move v6, v0

    if-eqz v6, :cond_27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mCreationOrientation:I

    move v6, v0

    const/4 v7, 0x2

    if-ne v6, v7, :cond_27

    .line 399
    const v6, 0x4030007

    const/4 v7, 0x1

    move-object v0, v5

    move v1, v6

    move-object/from16 v2, p0

    move v3, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto/16 :goto_16

    .line 401
    :cond_27
    const v6, 0x4030005

    const/4 v7, 0x1

    move-object v0, v5

    move v1, v6

    move-object/from16 v2, p0

    move v3, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto/16 :goto_16

    .line 413
    :cond_28
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mUseKanjiClock:Z

    move v5, v0

    if-eqz v5, :cond_29

    .line 414
    const v5, 0x406013e

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/LockScreen;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/emanon/internal/widget/KanjiClock;

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/LockScreen;->mKanjiClock:Lcom/android/emanon/internal/widget/KanjiClock;

    goto/16 :goto_17

    .line 416
    :cond_29
    const v5, 0x406013e

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/LockScreen;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/emanon/internal/widget/DigitalClock;

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/LockScreen;->mClock:Lcom/android/emanon/internal/widget/DigitalClock;

    goto/16 :goto_17

    .line 587
    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mRotarySelector:Lcom/android/emanon/internal/widget/RotarySelector;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mCustomAppIcon:Landroid/graphics/Bitmap;

    move-object v5, v0

    invoke-virtual {v4, v5}, Lcom/android/emanon/internal/widget/RotarySelector;->setLeftHandleResource(Landroid/graphics/Bitmap;)V

    .line 588
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mRotarySelector:Lcom/android/emanon/internal/widget/RotarySelector;

    move-object v4, v0

    const v5, 0x4020013

    invoke-virtual {v4, v5}, Lcom/android/emanon/internal/widget/RotarySelector;->setMidHandleResource(I)V

    goto/16 :goto_19

    .line 594
    :cond_2b
    const/4 v4, 0x0

    goto/16 :goto_1a

    .line 596
    :cond_2c
    const/4 v6, 0x0

    goto/16 :goto_1b

    .line 605
    :cond_2d
    const/4 v4, 0x0

    goto/16 :goto_1c

    .line 618
    :pswitch_0
    const v4, 0x4020051

    .line 619
    const v5, 0x4020049

    .line 620
    const v6, 0x402004d

    .line 621
    const v7, 0x4020013

    .line 622
    const v8, 0x4020008

    .line 623
    const v9, 0x4020083

    move/from16 v17, v9

    move v9, v4

    move/from16 v4, v17

    move/from16 v18, v7

    move v7, v6

    move/from16 v6, v18

    move/from16 v19, v5

    move v5, v8

    move/from16 v8, v19

    .line 624
    goto/16 :goto_1d

    .line 626
    :pswitch_1
    const v4, 0x4020047

    .line 627
    const v5, 0x4020044

    .line 628
    const v6, 0x4020046

    .line 629
    const v7, 0x402000f

    .line 630
    const v8, 0x402000b

    .line 631
    const v9, 0x4020084

    move/from16 v17, v9

    move v9, v4

    move/from16 v4, v17

    move/from16 v18, v7

    move v7, v6

    move/from16 v6, v18

    move/from16 v19, v5

    move v5, v8

    move/from16 v8, v19

    .line 632
    goto/16 :goto_1d

    .line 634
    :pswitch_2
    const v4, 0x4020043

    .line 635
    const v5, 0x402003b

    .line 636
    const v6, 0x402003f

    .line 637
    const v7, 0x4020013

    .line 638
    const v8, 0x4020008

    .line 639
    const v9, 0x4020083

    move/from16 v17, v9

    move v9, v4

    move/from16 v4, v17

    move/from16 v18, v7

    move v7, v6

    move/from16 v6, v18

    move/from16 v19, v5

    move v5, v8

    move/from16 v8, v19

    .line 640
    goto/16 :goto_1d

    .line 656
    :cond_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mCustomRingAppActivities:[Ljava/lang/String;

    move-object v12, v0

    aget-object v12, v12, v11

    if-eqz v12, :cond_30

    .line 657
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mRingSelector:Lcom/android/emanon/internal/widget/RingSelector;

    move-object v12, v0

    invoke-virtual {v12, v11}, Lcom/android/emanon/internal/widget/RingSelector;->showSecRing(I)V

    .line 659
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mCustomRingAppActivities:[Ljava/lang/String;

    move-object v12, v0

    aget-object v12, v12, v11

    const/4 v13, 0x0

    invoke-static {v12, v13}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v12

    .line 660
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    .line 661
    const/4 v14, 0x1

    invoke-virtual {v12, v13, v14}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v12

    .line 662
    if-eqz v12, :cond_2f

    .line 663
    invoke-virtual {v12, v13}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    check-cast p2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v12

    .line 664
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mCustomRingAppIcons:[Landroid/graphics/Bitmap;

    move-object v13, v0

    .line 665
    int-to-float v14, v10

    mul-float/2addr v14, v7

    float-to-int v14, v14

    int-to-float v15, v10

    mul-float/2addr v15, v7

    float-to-int v15, v15

    const/16 v16, 0x1

    .line 664
    move-object v0, v12

    move v1, v14

    move v2, v15

    move/from16 v3, v16

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v12

    aput-object v12, v13, v11

    .line 666
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mRingSelector:Lcom/android/emanon/internal/widget/RingSelector;

    move-object v12, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mCustomRingAppIcons:[Landroid/graphics/Bitmap;

    move-object v13, v0

    aget-object v13, v13, v11

    invoke-virtual {v12, v11, v13, v9}, Lcom/android/emanon/internal/widget/RingSelector;->setSecRingResources(ILandroid/graphics/Bitmap;I)V
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0

    .line 655
    :cond_2f
    :goto_26
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1e

    .line 671
    :cond_30
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mRingSelector:Lcom/android/emanon/internal/widget/RingSelector;

    move-object v12, v0

    invoke-virtual {v12, v11}, Lcom/android/emanon/internal/widget/RingSelector;->hideSecRing(I)V

    goto :goto_26

    .line 679
    :cond_31
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mCustomAppToggle:Z

    move v7, v0

    if-eqz v7, :cond_33

    .line 680
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mRingSelector:Lcom/android/emanon/internal/widget/RingSelector;

    move-object v7, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mCustomAppToggle:Z

    move v9, v0

    invoke-virtual {v7, v9}, Lcom/android/emanon/internal/widget/RingSelector;->enableMiddleRing(Z)V

    .line 681
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mRingUnlockMiddle:Z

    move v7, v0

    if-eqz v7, :cond_32

    .line 682
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mRingSelector:Lcom/android/emanon/internal/widget/RingSelector;

    move-object v7, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mRingUnlockMiddle:Z

    move v9, v0

    invoke-virtual {v7, v9}, Lcom/android/emanon/internal/widget/RingSelector;->enableMiddlePrimary(Z)V

    .line 683
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mRingSelector:Lcom/android/emanon/internal/widget/RingSelector;

    move-object v7, v0

    invoke-virtual {v7, v5, v4, v8}, Lcom/android/emanon/internal/widget/RingSelector;->setLeftRingResources(III)V

    .line 685
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mRingSelector:Lcom/android/emanon/internal/widget/RingSelector;

    move-object v5, v0

    invoke-virtual {v5, v6, v4, v8}, Lcom/android/emanon/internal/widget/RingSelector;->setMiddleRingResources(III)V

    goto/16 :goto_1f

    .line 688
    :cond_32
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mRingSelector:Lcom/android/emanon/internal/widget/RingSelector;

    move-object v7, v0

    invoke-virtual {v7, v6, v4, v8}, Lcom/android/emanon/internal/widget/RingSelector;->setLeftRingResources(III)V

    .line 689
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mRingSelector:Lcom/android/emanon/internal/widget/RingSelector;

    move-object v6, v0

    invoke-virtual {v6, v5, v4, v8}, Lcom/android/emanon/internal/widget/RingSelector;->setMiddleRingResources(III)V

    goto/16 :goto_1f

    .line 693
    :cond_33
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mRingSelector:Lcom/android/emanon/internal/widget/RingSelector;

    move-object v5, v0

    invoke-virtual {v5, v6, v4, v8}, Lcom/android/emanon/internal/widget/RingSelector;->setLeftRingResources(III)V

    .line 694
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mRingSelector:Lcom/android/emanon/internal/widget/RingSelector;

    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/emanon/internal/widget/RingSelector;->enableRingMinimal(Z)V

    goto/16 :goto_1f

    .line 747
    :cond_34
    const/4 v4, 0x0

    goto/16 :goto_20

    .line 749
    :cond_35
    const/4 v4, 0x0

    goto/16 :goto_21

    .line 752
    :cond_36
    const/4 v4, 0x0

    goto/16 :goto_22

    .line 771
    :cond_37
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 772
    const-string v7, "___"

    const/4 v8, 0x2

    move-object/from16 v0, p1

    move-object v1, v7

    move v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v7

    .line 773
    const-string v8, "UNLOCK"

    const/4 v9, 0x1

    aget-object v7, v7, v9

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 774
    const/4 v5, 0x1

    .line 775
    goto/16 :goto_23

    .line 786
    :cond_38
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/LockScreen;->mHideUnlockTab:Z

    goto/16 :goto_24

    .line 792
    :pswitch_3
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/LockScreen;->centerWidgets()V

    goto/16 :goto_25

    .line 795
    :pswitch_4
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/LockScreen;->alignWidgetsToRight()V

    goto/16 :goto_25

    .line 668
    :catch_0
    move-exception v12

    goto/16 :goto_26

    :catch_1
    move-exception v4

    goto/16 :goto_18

    .line 616
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 790
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method static synthetic access$0(Lcom/android/internal/policy/impl/LockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    .locals 1
    .parameter

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    return-object v0
.end method

.method static synthetic access$1(Lcom/android/internal/policy/impl/LockScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 1177
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->refreshMusicStatus()V

    return-void
.end method

.method static synthetic access$10(Lcom/android/internal/policy/impl/LockScreen;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1781
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/LockScreen;->runActivity(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2(Lcom/android/internal/policy/impl/LockScreen;)Landroid/media/AudioManager;
    .locals 1
    .parameter

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->am:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$3(Lcom/android/internal/policy/impl/LockScreen;)Landroid/widget/ImageButton;
    .locals 1
    .parameter

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mPauseIcon:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$4(Lcom/android/internal/policy/impl/LockScreen;)Landroid/widget/ImageButton;
    .locals 1
    .parameter

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mPlayIcon:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$5(Lcom/android/internal/policy/impl/LockScreen;)Landroid/widget/ImageButton;
    .locals 1
    .parameter

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mRewindIcon:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$6(Lcom/android/internal/policy/impl/LockScreen;)Landroid/widget/ImageButton;
    .locals 1
    .parameter

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mForwardIcon:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$7(Lcom/android/internal/policy/impl/LockScreen;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1220
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/LockScreen;->sendMediaButtonEvent(I)V

    return-void
.end method

.method static synthetic access$9(Lcom/android/internal/policy/impl/LockScreen;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCustomAppActivity:Ljava/lang/String;

    return-object v0
.end method

.method private alignWidgetToRight(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 859
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 860
    instance-of v2, v1, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v2, :cond_1

    .line 861
    move-object v0, v1

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    move-object p0, v0

    .line 862
    const/16 v2, 0xb

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 863
    const/16 v2, 0x9

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 868
    :cond_0
    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 869
    return-void

    .line 864
    :cond_1
    instance-of v2, v1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v2, :cond_0

    .line 865
    move-object v0, v1

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    move-object v2, v0

    .line 866
    const/4 v3, 0x5

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    goto :goto_0
.end method

.method private alignWidgetsToRight()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 838
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCarrier:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 839
    const/4 v1, -0x1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 840
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mCarrier:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 841
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCarrier:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 843
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mStatusBox:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 845
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mUseFuzzyClock:Z

    if-eqz v0, :cond_0

    .line 846
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mFuzzyClock:Lcom/android/emanon/internal/widget/FuzzyClock;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/LockScreen;->alignWidgetToRight(Landroid/view/View;)V

    .line 852
    :goto_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mDate:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/LockScreen;->alignWidgetToRight(Landroid/view/View;)V

    .line 853
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mStatusCharging:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/LockScreen;->alignWidgetToRight(Landroid/view/View;)V

    .line 854
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mStatusAlarm:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/LockScreen;->alignWidgetToRight(Landroid/view/View;)V

    .line 855
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mStatusCalendar:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/LockScreen;->alignWidgetToRight(Landroid/view/View;)V

    .line 856
    return-void

    .line 847
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mUseKanjiClock:Z

    if-eqz v0, :cond_1

    .line 848
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mKanjiClock:Lcom/android/emanon/internal/widget/KanjiClock;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/LockScreen;->alignWidgetToRight(Landroid/view/View;)V

    goto :goto_0

    .line 850
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mClock:Lcom/android/emanon/internal/widget/DigitalClock;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/LockScreen;->alignWidgetToRight(Landroid/view/View;)V

    goto :goto_0
.end method

.method private centerWidget(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 823
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 824
    instance-of v2, v1, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v2, :cond_1

    .line 825
    move-object v0, v1

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    move-object p0, v0

    .line 826
    const/16 v2, 0xe

    invoke-virtual {p0, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 833
    :cond_0
    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 834
    return-void

    .line 827
    :cond_1
    instance-of v2, v1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v2, :cond_0

    .line 828
    move-object v0, v1

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    move-object v2, v0

    .line 829
    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 830
    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 831
    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    goto :goto_0
.end method

.method private centerWidgets()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 802
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCarrier:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 803
    const/4 v1, -0x1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 804
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mCarrier:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 805
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCarrier:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 807
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mStatusBox:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 809
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mUseFuzzyClock:Z

    if-eqz v0, :cond_0

    .line 810
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mFuzzyClock:Lcom/android/emanon/internal/widget/FuzzyClock;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/LockScreen;->centerWidget(Landroid/view/View;)V

    .line 816
    :goto_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mDate:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/LockScreen;->centerWidget(Landroid/view/View;)V

    .line 817
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mStatusCharging:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/LockScreen;->centerWidget(Landroid/view/View;)V

    .line 818
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mStatusAlarm:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/LockScreen;->centerWidget(Landroid/view/View;)V

    .line 819
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mStatusCalendar:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/LockScreen;->centerWidget(Landroid/view/View;)V

    .line 820
    return-void

    .line 811
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mUseKanjiClock:Z

    if-eqz v0, :cond_1

    .line 812
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mKanjiClock:Lcom/android/emanon/internal/widget/KanjiClock;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/LockScreen;->centerWidget(Landroid/view/View;)V

    goto :goto_0

    .line 814
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mClock:Lcom/android/emanon/internal/widget/DigitalClock;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/LockScreen;->centerWidget(Landroid/view/View;)V

    goto :goto_0
.end method

.method public static getArtworkUri(Landroid/content/Context;JJ)Landroid/net/Uri;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    .line 1682
    cmp-long v0, p3, v1

    if-gez v0, :cond_2

    .line 1685
    cmp-long v0, p1, v1

    if-ltz v0, :cond_1

    .line 1686
    const-wide/16 v0, -0x1

    invoke-static {p0, p1, p2, v0, v1}, Lcom/android/internal/policy/impl/LockScreen;->getArtworkUriFromFile(Landroid/content/Context;JJ)Landroid/net/Uri;

    move-result-object v0

    .line 1711
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    move-object v0, v3

    .line 1688
    goto :goto_0

    .line 1691
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1692
    sget-object v1, Lcom/android/internal/policy/impl/LockScreen;->sArtworkUri:Landroid/net/Uri;

    invoke-static {v1, p3, p4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 1693
    if-eqz v1, :cond_5

    .line 1694
    const/4 v2, 0x0

    .line 1696
    :try_start_0
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1704
    if-eqz v0, :cond_3

    .line 1705
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    :cond_3
    :goto_1
    move-object v0, v1

    .line 1697
    goto :goto_0

    .line 1701
    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/policy/impl/LockScreen;->getArtworkUriFromFile(Landroid/content/Context;JJ)Landroid/net/Uri;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 1704
    if-eqz v3, :cond_0

    .line 1705
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    .line 1702
    :catchall_0
    move-exception v0

    .line 1704
    if-eqz v3, :cond_4

    .line 1705
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 1709
    :cond_4
    :goto_2
    throw v0

    :cond_5
    move-object v0, v3

    .line 1711
    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_2
.end method

.method private static getArtworkUriFromFile(Landroid/content/Context;JJ)Landroid/net/Uri;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const-wide/16 v1, 0x0

    const-string v0, "r"

    .line 1716
    cmp-long v0, p3, v1

    if-gez v0, :cond_1

    cmp-long v0, p1, v1

    if-gez v0, :cond_1

    move-object v0, v3

    .line 1737
    :cond_0
    :goto_0
    return-object v0

    .line 1721
    :cond_1
    cmp-long v0, p3, v1

    if-gez v0, :cond_3

    .line 1722
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "content://media/external/audio/media/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/albumart"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1723
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "r"

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 1724
    if-nez v1, :cond_0

    :cond_2
    :goto_1
    move-object v0, v3

    .line 1737
    goto :goto_0

    .line 1728
    :cond_3
    sget-object v0, Lcom/android/internal/policy/impl/LockScreen;->sArtworkUri:Landroid/net/Uri;

    invoke-static {v0, p3, p4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 1729
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "r"

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1730
    if-eqz v1, :cond_2

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method static getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1467
    const/4 v0, 0x0

    const-string v1, ""

    invoke-static {p0, p1, v0, v1}, Lcom/android/internal/policy/impl/LockScreen;->getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/String;)Ljava/lang/CharSequence;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const-string v1, ""

    .line 1472
    packed-switch p2, :pswitch_data_0

    .line 1475
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    .line 1496
    :goto_0
    return-object v0

    .line 1477
    :cond_0
    if-eqz p1, :cond_1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 1478
    goto :goto_0

    .line 1479
    :cond_1
    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    .line 1480
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1482
    :cond_2
    const-string v0, ""

    move-object v0, v1

    goto :goto_0

    .line 1484
    :pswitch_0
    if-eqz p1, :cond_3

    move-object v0, p1

    .line 1485
    goto :goto_0

    .line 1489
    :pswitch_1
    if-eqz p0, :cond_3

    move-object v0, p0

    .line 1490
    goto :goto_0

    :pswitch_2
    move-object v0, p3

    .line 1494
    goto :goto_0

    .line 1496
    :cond_3
    const-string v0, ""

    move-object v0, v1

    goto :goto_0

    .line 1472
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getCurrentStatus(Lcom/android/internal/telephony/IccCard$State;)Lcom/android/internal/policy/impl/LockScreen$Status;
    .locals 2
    .parameter

    .prologue
    .line 1289
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1290
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    .line 1291
    :goto_0
    if-eqz v0, :cond_1

    .line 1292
    sget-object v0, Lcom/android/internal/policy/impl/LockScreen$Status;->SimMissingLocked:Lcom/android/internal/policy/impl/LockScreen$Status;

    .line 1311
    :goto_1
    return-object v0

    .line 1290
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1295
    :cond_1
    invoke-static {}, Lcom/android/internal/policy/impl/LockScreen;->$SWITCH_TABLE$com$android$internal$telephony$IccCard$State()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/IccCard$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    sparse-switch v0, :sswitch_data_0

    .line 1311
    sget-object v0, Lcom/android/internal/policy/impl/LockScreen$Status;->SimMissing:Lcom/android/internal/policy/impl/LockScreen$Status;

    goto :goto_1

    .line 1297
    :sswitch_0
    sget-object v0, Lcom/android/internal/policy/impl/LockScreen$Status;->SimMissing:Lcom/android/internal/policy/impl/LockScreen$Status;

    goto :goto_1

    .line 1299
    :sswitch_1
    sget-object v0, Lcom/android/internal/policy/impl/LockScreen$Status;->SimMissingLocked:Lcom/android/internal/policy/impl/LockScreen$Status;

    goto :goto_1

    .line 1301
    :sswitch_2
    sget-object v0, Lcom/android/internal/policy/impl/LockScreen$Status;->SimMissing:Lcom/android/internal/policy/impl/LockScreen$Status;

    goto :goto_1

    .line 1303
    :sswitch_3
    sget-object v0, Lcom/android/internal/policy/impl/LockScreen$Status;->SimLocked:Lcom/android/internal/policy/impl/LockScreen$Status;

    goto :goto_1

    .line 1305
    :sswitch_4
    sget-object v0, Lcom/android/internal/policy/impl/LockScreen$Status;->SimPukLocked:Lcom/android/internal/policy/impl/LockScreen$Status;

    goto :goto_1

    .line 1307
    :sswitch_5
    sget-object v0, Lcom/android/internal/policy/impl/LockScreen$Status;->Normal:Lcom/android/internal/policy/impl/LockScreen$Status;

    goto :goto_1

    .line 1309
    :sswitch_6
    sget-object v0, Lcom/android/internal/policy/impl/LockScreen$Status;->SimMissing:Lcom/android/internal/policy/impl/LockScreen$Status;

    goto :goto_1

    .line 1295
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x4 -> :sswitch_1
        0x5 -> :sswitch_2
        0x7 -> :sswitch_3
        0x8 -> :sswitch_4
        0x9 -> :sswitch_5
        0x14 -> :sswitch_6
    .end sparse-switch
.end method

.method private isSilentMode()Z
    .locals 2

    .prologue
    .line 894
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private refreshAlarmDisplay()V
    .locals 1

    .prologue
    .line 1118
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getNextAlarm()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mNextAlarm:Ljava/lang/String;

    .line 1119
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->updateStatusLines()V

    .line 1120
    return-void
.end method

.method private refreshBatteryStringAndIcon()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 1151
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mShowingBatteryInfo:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mLockAlwaysBattery:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mLensePortrait:Z

    if-eqz v0, :cond_2

    .line 1152
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCharging:Ljava/lang/String;

    .line 1175
    :goto_0
    return-void

    .line 1156
    :cond_2
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mPluggedIn:Z

    if-eqz v0, :cond_4

    .line 1158
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x402001a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1157
    iput-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mChargingIcon:Landroid/graphics/drawable/Drawable;

    .line 1159
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDeviceCharged()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1160
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x40c0022

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCharging:Ljava/lang/String;

    goto :goto_0

    .line 1162
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x40c0020

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/android/internal/policy/impl/LockScreen;->mBatteryLevel:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCharging:Ljava/lang/String;

    goto :goto_0

    .line 1165
    :cond_4
    iget v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mBatteryLevel:I

    const/16 v1, 0x14

    if-gt v0, v1, :cond_5

    .line 1167
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x402001d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1166
    iput-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mChargingIcon:Landroid/graphics/drawable/Drawable;

    .line 1168
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x40c0024

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/android/internal/policy/impl/LockScreen;->mBatteryLevel:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCharging:Ljava/lang/String;

    goto :goto_0

    .line 1171
    :cond_5
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x402001b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1170
    iput-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mChargingIcon:Landroid/graphics/drawable/Drawable;

    .line 1172
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x40c0021

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/android/internal/policy/impl/LockScreen;->mBatteryLevel:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCharging:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method private refreshCalendarDisplay()V
    .locals 1

    .prologue
    .line 1134
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mNextCalendar:Ljava/lang/String;

    .line 1135
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->updateStatusLines()V

    .line 1136
    return-void
.end method

.method private refreshMusicStatus()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 1178
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mWasMusicActive:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mIsMusicActive:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mLockAlwaysMusic:Z

    if-nez v0, :cond_1

    .line 1179
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreen;->useLockMusicHeadsetWired:Z

    if-nez v0, :cond_1

    .line 1180
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreen;->useLockMusicHeadsetBT:Z

    if-eqz v0, :cond_3

    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mLockMusicControls:Z

    if-eqz v0, :cond_3

    .line 1181
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->am:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1182
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mPauseIcon:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1183
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mPlayIcon:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1184
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mRewindIcon:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1185
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mForwardIcon:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1198
    :goto_0
    return-void

    .line 1187
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mPlayIcon:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1188
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mPauseIcon:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1189
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mRewindIcon:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1190
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mForwardIcon:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 1193
    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mPlayIcon:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1194
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mPauseIcon:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1195
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mRewindIcon:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1196
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mForwardIcon:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0
.end method

.method private refreshPlayingTitle()V
    .locals 6

    .prologue
    const/16 v2, 0x8

    const/4 v5, 0x0

    .line 1200
    invoke-static {}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->NowPlaying()Ljava/lang/String;

    move-result-object v0

    .line 1201
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mNowPlaying:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1202
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mNowPlaying:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1203
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mAlbumArt:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1205
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->am:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mLockMusicControls:Z

    if-eqz v0, :cond_2

    .line 1206
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mNowPlayingToggle:Z

    if-eqz v0, :cond_0

    .line 1207
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mNowPlaying:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1208
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mNowPlaying:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1211
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->SongId()J

    move-result-wide v1

    .line 1212
    invoke-static {}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->AlbumId()J

    move-result-wide v3

    .line 1211
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/internal/policy/impl/LockScreen;->getArtworkUri(Landroid/content/Context;JJ)Landroid/net/Uri;

    move-result-object v0

    .line 1213
    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mAlbumArtToggle:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mUseRingLockscreen:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mCustomAppToggle:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mHideUnlockTab:Z

    if-eqz v1, :cond_2

    .line 1214
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mAlbumArt:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setImageURI(Landroid/net/Uri;)V

    .line 1215
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mAlbumArt:Landroid/widget/ImageButton;

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1218
    :cond_2
    return-void
.end method

.method private refreshTimeAndDateDisplay()V
    .locals 3

    .prologue
    .line 1245
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mRotarySelector:Lcom/android/emanon/internal/widget/RotarySelector;

    invoke-virtual {v0}, Lcom/android/emanon/internal/widget/RotarySelector;->invalidate()V

    .line 1246
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mDate:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mDateFormatString:Ljava/lang/String;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1247
    return-void
.end method

.method private resetStatusInfo(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V
    .locals 2
    .parameter

    .prologue
    .line 950
    invoke-virtual {p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->shouldShowBatteryInfo()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mShowingBatteryInfo:Z

    .line 951
    invoke-virtual {p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDevicePluggedIn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mPluggedIn:Z

    .line 952
    invoke-virtual {p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getBatteryLevel()I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mBatteryLevel:I

    .line 953
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->am:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mIsMusicActive:Z

    .line 955
    invoke-virtual {p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/LockScreen;->getCurrentStatus(Lcom/android/internal/telephony/IccCard$State;)Lcom/android/internal/policy/impl/LockScreen$Status;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mStatus:Lcom/android/internal/policy/impl/LockScreen$Status;

    .line 956
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mStatus:Lcom/android/internal/policy/impl/LockScreen$Status;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/LockScreen;->updateLayout(Lcom/android/internal/policy/impl/LockScreen$Status;)V

    .line 958
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->refreshBatteryStringAndIcon()V

    .line 959
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->refreshAlarmDisplay()V

    .line 960
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->refreshCalendarDisplay()V

    .line 961
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->refreshMusicStatus()V

    .line 962
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->refreshPlayingTitle()V

    .line 964
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x40c0028

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mDateFormatString:Ljava/lang/String;

    .line 965
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->refreshTimeAndDateDisplay()V

    .line 966
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->updateStatusLines()V

    .line 967
    return-void
.end method

.method private runActivity(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 1783
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1, v0}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 1784
    const/high16 v1, 0x1020

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1786
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1787
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1791
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    .line 1788
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private sendMediaButtonEvent(I)V
    .locals 9
    .parameter

    .prologue
    .line 1221
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 1223
    new-instance v8, Landroid/content/Intent;

    const-string v0, "android.intent.action.MEDIA_BUTTON"

    const/4 v3, 0x0

    invoke-direct {v8, v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1224
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-wide v3, v1

    move v6, p1

    invoke-direct/range {v0 .. v7}, Landroid/view/KeyEvent;-><init>(JJIII)V

    .line 1225
    const-string v3, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v8, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1226
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v8, v3}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1228
    new-instance v8, Landroid/content/Intent;

    const-string v0, "android.intent.action.MEDIA_BUTTON"

    const/4 v3, 0x0

    invoke-direct {v8, v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1229
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v5, 0x1

    const/4 v7, 0x0

    move-wide v3, v1

    move v6, p1

    invoke-direct/range {v0 .. v7}, Landroid/view/KeyEvent;-><init>(JJIII)V

    .line 1230
    const-string v1, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v8, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1231
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v8, v1}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1232
    return-void
.end method

.method static setBackground(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 872
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lockscreen_background"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 873
    if-eqz v0, :cond_0

    .line 874
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 876
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setBackgroundColor(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    .line 891
    :cond_0
    :goto_0
    return-void

    .line 880
    :cond_1
    const-string v0, ""

    .line 882
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.emanon.lockscreen"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/lockwallpaper"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .line 885
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 886
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 887
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    .line 877
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private setLenseWidgetsVisibility(I)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1745
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mUseFuzzyClock:Z

    if-eqz v0, :cond_4

    .line 1746
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mFuzzyClock:Lcom/android/emanon/internal/widget/FuzzyClock;

    invoke-virtual {v0, p1}, Lcom/android/emanon/internal/widget/FuzzyClock;->setVisibility(I)V

    .line 1752
    :goto_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mDate:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1753
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mTime:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1754
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mUseKanjiClock:Z

    if-nez v0, :cond_0

    .line 1756
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mAmPm:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1758
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCarrier:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1759
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mNowPlaying:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1760
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mAlbumArt:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1762
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1763
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mUseKanjiClock:Z

    if-nez v0, :cond_1

    .line 1765
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mAmPm:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1769
    :cond_1
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/LockScreen;->mNowPlayingToggle:Z

    .line 1770
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/LockScreen;->mAlbumArtToggle:Z

    .line 1771
    if-nez p1, :cond_2

    .line 1772
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1773
    const-string v1, "lockscreen_now_playing"

    .line 1772
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 1774
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mNowPlayingToggle:Z

    .line 1775
    :cond_2
    if-nez p1, :cond_3

    .line 1776
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1777
    const-string v1, "lockscreen_album_art"

    .line 1776
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 1778
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mAlbumArtToggle:Z

    .line 1779
    :cond_3
    return-void

    .line 1747
    :cond_4
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mUseKanjiClock:Z

    if-eqz v0, :cond_5

    .line 1748
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mKanjiClock:Lcom/android/emanon/internal/widget/KanjiClock;

    invoke-virtual {v0, p1}, Lcom/android/emanon/internal/widget/KanjiClock;->setVisibility(I)V

    goto :goto_0

    .line 1750
    :cond_5
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mClock:Lcom/android/emanon/internal/widget/DigitalClock;

    invoke-virtual {v0, p1}, Lcom/android/emanon/internal/widget/DigitalClock;->setVisibility(I)V

    goto :goto_0
.end method

.method private setUnlockWidgetsState(Z)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 1429
    if-eqz p1, :cond_5

    .line 1430
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mUseRotaryLockscreen:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mUseLenseSquareLockscreen:Z

    if-eqz v0, :cond_2

    .line 1431
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mRotarySelector:Lcom/android/emanon/internal/widget/RotarySelector;

    invoke-virtual {v0, v2}, Lcom/android/emanon/internal/widget/RotarySelector;->setVisibility(I)V

    .line 1432
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mTabSelector:Lcom/android/emanon/internal/widget/SlidingTab;

    invoke-virtual {v0, v1}, Lcom/android/emanon/internal/widget/SlidingTab;->setVisibility(I)V

    .line 1433
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mRingSelector:Lcom/android/emanon/internal/widget/RingSelector;

    invoke-virtual {v0, v1}, Lcom/android/emanon/internal/widget/RingSelector;->setVisibility(I)V

    .line 1434
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mSelector2:Lcom/android/emanon/internal/widget/SlidingTab;

    if-eqz v0, :cond_1

    .line 1435
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mSelector2:Lcom/android/emanon/internal/widget/SlidingTab;

    invoke-virtual {v0, v1}, Lcom/android/emanon/internal/widget/SlidingTab;->setVisibility(I)V

    .line 1464
    :cond_1
    :goto_0
    return-void

    .line 1437
    :cond_2
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mUseRingLockscreen:Z

    if-eqz v0, :cond_3

    .line 1438
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mRingSelector:Lcom/android/emanon/internal/widget/RingSelector;

    invoke-virtual {v0, v2}, Lcom/android/emanon/internal/widget/RingSelector;->setVisibility(I)V

    .line 1439
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mRotarySelector:Lcom/android/emanon/internal/widget/RotarySelector;

    invoke-virtual {v0, v1}, Lcom/android/emanon/internal/widget/RotarySelector;->setVisibility(I)V

    .line 1440
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mTabSelector:Lcom/android/emanon/internal/widget/SlidingTab;

    invoke-virtual {v0, v1}, Lcom/android/emanon/internal/widget/SlidingTab;->setVisibility(I)V

    .line 1441
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mSelector2:Lcom/android/emanon/internal/widget/SlidingTab;

    if-eqz v0, :cond_1

    .line 1442
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mSelector2:Lcom/android/emanon/internal/widget/SlidingTab;

    invoke-virtual {v0, v1}, Lcom/android/emanon/internal/widget/SlidingTab;->setVisibility(I)V

    goto :goto_0

    .line 1445
    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mRotarySelector:Lcom/android/emanon/internal/widget/RotarySelector;

    invoke-virtual {v0, v1}, Lcom/android/emanon/internal/widget/RotarySelector;->setVisibility(I)V

    .line 1446
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mRingSelector:Lcom/android/emanon/internal/widget/RingSelector;

    invoke-virtual {v0, v1}, Lcom/android/emanon/internal/widget/RingSelector;->setVisibility(I)V

    .line 1447
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mTabSelector:Lcom/android/emanon/internal/widget/SlidingTab;

    invoke-virtual {v0, v2}, Lcom/android/emanon/internal/widget/SlidingTab;->setVisibility(I)V

    .line 1448
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mSelector2:Lcom/android/emanon/internal/widget/SlidingTab;

    if-eqz v0, :cond_1

    .line 1449
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCustomAppToggle:Z

    if-eqz v0, :cond_4

    .line 1450
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mSelector2:Lcom/android/emanon/internal/widget/SlidingTab;

    invoke-virtual {v0, v2}, Lcom/android/emanon/internal/widget/SlidingTab;->setVisibility(I)V

    goto :goto_0

    .line 1452
    :cond_4
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mSelector2:Lcom/android/emanon/internal/widget/SlidingTab;

    invoke-virtual {v0, v1}, Lcom/android/emanon/internal/widget/SlidingTab;->setVisibility(I)V

    goto :goto_0

    .line 1457
    :cond_5
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mRotarySelector:Lcom/android/emanon/internal/widget/RotarySelector;

    invoke-virtual {v0, v1}, Lcom/android/emanon/internal/widget/RotarySelector;->setVisibility(I)V

    .line 1458
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mRingSelector:Lcom/android/emanon/internal/widget/RingSelector;

    invoke-virtual {v0, v1}, Lcom/android/emanon/internal/widget/RingSelector;->setVisibility(I)V

    .line 1459
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mTabSelector:Lcom/android/emanon/internal/widget/SlidingTab;

    invoke-virtual {v0, v1}, Lcom/android/emanon/internal/widget/SlidingTab;->setVisibility(I)V

    .line 1460
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mSelector2:Lcom/android/emanon/internal/widget/SlidingTab;

    if-eqz v0, :cond_1

    .line 1461
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mSelector2:Lcom/android/emanon/internal/widget/SlidingTab;

    invoke-virtual {v0, v1}, Lcom/android/emanon/internal/widget/SlidingTab;->setVisibility(I)V

    goto :goto_0
.end method

.method private shouldEnableMenuKey()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 351
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 352
    const/high16 v1, 0x407

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 353
    const-string v1, "ro.monkey"

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 354
    new-instance v2, Ljava/io/File;

    const-string v3, "/data/local/enable_menu_key"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    .line 355
    if-eqz v0, :cond_0

    if-nez v1, :cond_0

    if-nez v2, :cond_0

    move v0, v4

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private toastMessage(Landroid/widget/TextView;Ljava/lang/String;II)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1081
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mPendingR1:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 1082
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mPendingR1:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1083
    iput-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mPendingR1:Ljava/lang/Runnable;

    .line 1085
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mPendingR2:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 1086
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mPendingR2:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1087
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mPendingR2:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1088
    iput-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mPendingR2:Ljava/lang/Runnable;

    .line 1091
    :cond_1
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1092
    invoke-virtual {p1}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v7

    .line 1094
    new-instance v0, Lcom/android/internal/policy/impl/LockScreen$8;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/LockScreen$8;-><init>(Lcom/android/internal/policy/impl/LockScreen;Landroid/widget/TextView;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mPendingR1:Ljava/lang/Runnable;

    .line 1104
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mPendingR1:Ljava/lang/Runnable;

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1105
    new-instance v0, Lcom/android/internal/policy/impl/LockScreen$9;

    invoke-direct {v0, p0, p1, v6, v7}, Lcom/android/internal/policy/impl/LockScreen$9;-><init>(Lcom/android/internal/policy/impl/LockScreen;Landroid/widget/TextView;Ljava/lang/String;Landroid/content/res/ColorStateList;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mPendingR2:Ljava/lang/Runnable;

    .line 1112
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mPendingR2:Ljava/lang/Runnable;

    const-wide/16 v1, 0xdac

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1113
    return-void
.end method

.method private toggleSilentMode()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1592
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1593
    const-string v1, "volume_contol_silent"

    .line 1592
    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    .line 1594
    :goto_0
    if-eqz v0, :cond_2

    .line 1595
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    if-eq v1, v2, :cond_1

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z

    if-eqz v1, :cond_1

    move v1, v3

    .line 1594
    :goto_1
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z

    .line 1597
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z

    if-eqz v1, :cond_8

    .line 1598
    if-eqz v0, :cond_5

    .line 1599
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    if-eq v0, v2, :cond_4

    move v0, v2

    .line 1604
    :goto_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_7

    move v0, v2

    :goto_3
    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 1611
    :goto_4
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z

    if-eqz v0, :cond_9

    .line 1612
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x40c0029

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1615
    :goto_5
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z

    if-eqz v1, :cond_a

    .line 1616
    const v1, 0x4020020

    .line 1619
    :goto_6
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z

    if-eqz v2, :cond_b

    .line 1620
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x4080004

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 1622
    :goto_7
    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreen;->mScreenLocked:Landroid/widget/TextView;

    invoke-direct {p0, v3, v0, v2, v1}, Lcom/android/internal/policy/impl/LockScreen;->toastMessage(Landroid/widget/TextView;Ljava/lang/String;II)V

    .line 1623
    return-void

    :cond_0
    move v0, v3

    .line 1592
    goto :goto_0

    :cond_1
    move v1, v2

    .line 1595
    goto :goto_1

    .line 1596
    :cond_2
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z

    if-eqz v1, :cond_3

    move v1, v3

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_1

    :cond_4
    move v0, v3

    .line 1599
    goto :goto_2

    .line 1601
    :cond_5
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1602
    const-string v1, "vibrate_in_silent"

    .line 1600
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_6

    move v0, v2

    goto :goto_2

    :cond_6
    move v0, v3

    goto :goto_2

    :cond_7
    move v0, v3

    .line 1606
    goto :goto_3

    .line 1608
    :cond_8
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_4

    .line 1613
    :cond_9
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x40c002a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 1617
    :cond_a
    const v1, 0x4020021

    goto :goto_6

    .line 1621
    :cond_b
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x4080005

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    goto :goto_7
.end method

.method private updateLayout(Lcom/android/internal/policy/impl/LockScreen$Status;)V
    .locals 10
    .parameter

    .prologue
    const v9, 0x40c0027

    const v8, 0x40c0025

    const/16 v7, 0x8

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1321
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1322
    const-string v1, "lockscreen_custom_app_toggle"

    .line 1321
    invoke-static {v0, v1, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1322
    if-ne v0, v6, :cond_3

    move v0, v6

    .line 1321
    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCustomAppToggle:Z

    .line 1323
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1324
    const-string v1, "lockscreen_ring_minimal"

    .line 1323
    invoke-static {v0, v1, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1324
    if-ne v0, v6, :cond_4

    move v0, v6

    .line 1323
    :goto_1
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mRingMinimal:Z

    .line 1325
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCustomAppToggle:Z

    if-eqz v0, :cond_0

    .line 1326
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mRingSelector:Lcom/android/emanon/internal/widget/RingSelector;

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mCustomAppToggle:Z

    invoke-virtual {v0, v1}, Lcom/android/emanon/internal/widget/RingSelector;->enableMiddleRing(Z)V

    .line 1327
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mRotarySelector:Lcom/android/emanon/internal/widget/RotarySelector;

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mCustomAppToggle:Z

    invoke-virtual {v0, v1}, Lcom/android/emanon/internal/widget/RotarySelector;->enableCustomAppDimple(Z)V

    .line 1329
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mRingMinimal:Z

    if-eqz v0, :cond_1

    .line 1330
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mRingSelector:Lcom/android/emanon/internal/widget/RingSelector;

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mRingMinimal:Z

    invoke-virtual {v0, v1}, Lcom/android/emanon/internal/widget/RingSelector;->enableRingMinimal(Z)V

    .line 1333
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 1335
    const-string v0, "gsm.operator.alpha"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1336
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonyPlmn()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1337
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonySpn()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1339
    invoke-static {}, Lcom/android/internal/policy/impl/LockScreen;->$SWITCH_TABLE$com$android$internal$policy$impl$LockScreen$Status()[I

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/internal/policy/impl/LockScreen$Status;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 1423
    :goto_2
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mHideUnlockTab:Z

    if-eqz v0, :cond_2

    .line 1424
    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/LockScreen;->setUnlockWidgetsState(Z)V

    .line 1426
    :cond_2
    return-void

    :cond_3
    move v0, v5

    .line 1322
    goto :goto_0

    :cond_4
    move v0, v5

    .line 1324
    goto :goto_1

    .line 1342
    :pswitch_0
    if-eqz v0, :cond_5

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1343
    :cond_5
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mCarrier:Landroid/widget/TextView;

    .line 1344
    iget v3, p0, Lcom/android/internal/policy/impl/LockScreen;->mCarrierLabelType:I

    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreen;->mCarrierLabelCustom:Ljava/lang/String;

    .line 1343
    invoke-static {v0, v1, v3, v4}, Lcom/android/internal/policy/impl/LockScreen;->getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1350
    :goto_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mScreenLocked:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1353
    invoke-direct {p0, v6}, Lcom/android/internal/policy/impl/LockScreen;->setUnlockWidgetsState(Z)V

    .line 1354
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mScreenLocked:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1355
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mEmergencyCallText:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 1346
    :cond_6
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mCarrier:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/LockScreen;->getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 1360
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCarrier:Landroid/widget/TextView;

    .line 1362
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonyPlmn()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1363
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x40c0001

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1361
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/LockScreen;->getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1360
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1364
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mScreenLocked:Landroid/widget/TextView;

    const v1, 0x40c001a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1367
    invoke-direct {p0, v6}, Lcom/android/internal/policy/impl/LockScreen;->setUnlockWidgetsState(Z)V

    .line 1368
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mScreenLocked:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1369
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mEmergencyCallText:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 1373
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCarrier:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(I)V

    .line 1374
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mScreenLocked:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(I)V

    .line 1377
    invoke-direct {p0, v6}, Lcom/android/internal/policy/impl/LockScreen;->setUnlockWidgetsState(Z)V

    .line 1378
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mScreenLocked:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1379
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mEmergencyCallText:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 1384
    :pswitch_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCarrier:Landroid/widget/TextView;

    .line 1386
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonyPlmn()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1387
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1385
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/LockScreen;->getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1384
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1388
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mScreenLocked:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(I)V

    .line 1391
    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/LockScreen;->setUnlockWidgetsState(Z)V

    .line 1392
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mScreenLocked:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1393
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mEmergencyCallText:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1394
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_2

    .line 1398
    :pswitch_4
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCarrier:Landroid/widget/TextView;

    .line 1400
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonyPlmn()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1401
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x40c0004

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1399
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/LockScreen;->getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1398
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1404
    invoke-direct {p0, v6}, Lcom/android/internal/policy/impl/LockScreen;->setUnlockWidgetsState(Z)V

    .line 1405
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mScreenLocked:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1406
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mEmergencyCallText:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 1410
    :pswitch_5
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCarrier:Landroid/widget/TextView;

    .line 1412
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonyPlmn()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1413
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x40c0002

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1411
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/LockScreen;->getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1410
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1414
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mScreenLocked:Landroid/widget/TextView;

    const v1, 0x40c0003

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1417
    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/LockScreen;->setUnlockWidgetsState(Z)V

    .line 1418
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mScreenLocked:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1419
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mEmergencyCallText:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1420
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_2

    .line 1339
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method private updateRightTabResources()V
    .locals 7

    .prologue
    const/4 v1, 0x1

    .line 898
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z

    if-eqz v0, :cond_0

    .line 899
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    .line 901
    :goto_0
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z

    if-eqz v1, :cond_2

    if-eqz v0, :cond_1

    const v1, 0x4020014

    .line 903
    :goto_1
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z

    if-eqz v2, :cond_3

    const v2, 0x4020086

    .line 906
    :goto_2
    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreen;->mRotarySelector:Lcom/android/emanon/internal/widget/RotarySelector;

    invoke-virtual {v3, v1}, Lcom/android/emanon/internal/widget/RotarySelector;->setRightHandleResource(I)V

    .line 908
    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreen;->mTabSelector:Lcom/android/emanon/internal/widget/SlidingTab;

    .line 909
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z

    if-eqz v4, :cond_4

    const v4, 0x402006e

    .line 911
    :goto_3
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z

    if-eqz v5, :cond_5

    const v5, 0x4020081

    .line 908
    :goto_4
    invoke-virtual {v3, v1, v2, v4, v5}, Lcom/android/emanon/internal/widget/SlidingTab;->setRightTabResources(IIII)V

    .line 915
    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 916
    const-string v4, "ringlock_style_pref"

    sget-object v5, Landroid/provider/CmSystem$RinglockStyle;->Bubble:Landroid/provider/CmSystem$RinglockStyle;

    invoke-static {v5}, Landroid/provider/CmSystem$RinglockStyle;->getIdByStyle(Landroid/provider/CmSystem$RinglockStyle;)I

    move-result v5

    .line 915
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 920
    invoke-static {}, Lcom/android/internal/policy/impl/LockScreen;->$SWITCH_TABLE$android$provider$CmSystem$RinglockStyle()[I

    move-result-object v4

    invoke-static {v3}, Landroid/provider/CmSystem$RinglockStyle;->getStyleById(I)Landroid/provider/CmSystem$RinglockStyle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/provider/CmSystem$RinglockStyle;->ordinal()I

    move-result v3

    aget v3, v4, v3

    packed-switch v3, :pswitch_data_0

    .line 941
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z

    if-eqz v0, :cond_a

    const v0, 0x402005a

    :goto_5
    move v6, v2

    move v2, v1

    move v1, v6

    .line 946
    :goto_6
    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreen;->mRingSelector:Lcom/android/emanon/internal/widget/RingSelector;

    invoke-virtual {v3, v2, v1, v0}, Lcom/android/emanon/internal/widget/RingSelector;->setRightRingResources(III)V

    .line 947
    return-void

    .line 899
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 902
    :cond_1
    const v1, 0x4020011

    goto :goto_1

    :cond_2
    const v1, 0x4020012

    goto :goto_1

    .line 904
    :cond_3
    const v2, 0x4020082

    goto :goto_2

    .line 910
    :cond_4
    const v4, 0x402006d

    goto :goto_3

    .line 912
    :cond_5
    const v5, 0x4020080

    goto :goto_4

    .line 922
    :pswitch_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z

    if-eqz v0, :cond_6

    const v0, 0x4020050

    :goto_7
    move v6, v2

    move v2, v1

    move v1, v6

    .line 924
    goto :goto_6

    .line 923
    :cond_6
    const v0, 0x4020048

    goto :goto_7

    .line 926
    :pswitch_1
    const v1, 0x4020044

    .line 927
    const v2, 0x4020084

    .line 928
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z

    if-eqz v3, :cond_7

    if-eqz v0, :cond_7

    .line 929
    const v0, 0x4020010

    move v6, v1

    move v1, v2

    move v2, v0

    move v0, v6

    goto :goto_6

    .line 930
    :cond_7
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z

    if-eqz v0, :cond_8

    .line 931
    const v0, 0x402000d

    move v6, v1

    move v1, v2

    move v2, v0

    move v0, v6

    goto :goto_6

    .line 933
    :cond_8
    const v0, 0x402000e

    move v6, v1

    move v1, v2

    move v2, v0

    move v0, v6

    .line 935
    goto :goto_6

    .line 937
    :pswitch_2
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z

    if-eqz v0, :cond_9

    const v0, 0x4020042

    :goto_8
    move v6, v2

    move v2, v1

    move v1, v6

    .line 939
    goto :goto_6

    .line 938
    :cond_9
    const v0, 0x402003a

    goto :goto_8

    .line 942
    :cond_a
    const v0, 0x4020052

    goto :goto_5

    .line 920
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateStatusLines()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 1250
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mStatus:Lcom/android/internal/policy/impl/LockScreen$Status;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LockScreen$Status;->showStatusLines()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mLensePortrait:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mWidgetLayout:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1251
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mStatusBox:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1277
    :goto_0
    return-void

    .line 1253
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mStatusBox:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1255
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCharging:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 1256
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mStatusCharging:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mCharging:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1257
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mStatusCharging:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mChargingIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1258
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mStatusCharging:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1263
    :goto_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mNextAlarm:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 1264
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mStatusAlarm:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mNextAlarm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1265
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mStatusAlarm:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1270
    :goto_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mNextCalendar:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 1271
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mStatusCalendar:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mNextCalendar:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1272
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mStatusCalendar:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 1260
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mStatusCharging:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 1267
    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mStatusAlarm:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 1274
    :cond_4
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mStatusCalendar:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1571
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 1572
    iput-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 1573
    iput-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 1574
    iput-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 1575
    return-void
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 1546
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 1523
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 1529
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->updateConfiguration()V

    .line 1530
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter

    .prologue
    .line 1535
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1541
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->updateConfiguration()V

    .line 1542
    return-void
.end method

.method public onDialTrigger(Landroid/view/View;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 993
    .line 996
    if-ne p2, v3, :cond_6

    .line 997
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mRotaryUnlockDown:Z

    if-eqz v0, :cond_2

    move v0, v3

    .line 1002
    :goto_0
    const/4 v2, 0x2

    if-ne p2, v2, :cond_0

    .line 1003
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mRotaryUnlockDown:Z

    if-eqz v2, :cond_3

    move v1, v3

    .line 1009
    :cond_0
    :goto_1
    if-eqz v1, :cond_4

    .line 1010
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 1021
    :cond_1
    :goto_2
    return-void

    :cond_2
    move v0, v1

    move v1, v3

    .line 1000
    goto :goto_0

    :cond_3
    move v0, v3

    .line 1006
    goto :goto_1

    .line 1011
    :cond_4
    if-eqz v0, :cond_5

    .line 1012
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCustomAppActivity:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1013
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCustomAppActivity:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/LockScreen;->runActivity(Ljava/lang/String;)V

    goto :goto_2

    .line 1015
    :cond_5
    const/4 v0, 0x3

    if-ne p2, v0, :cond_1

    .line 1017
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->toggleSilentMode()V

    .line 1018
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->updateRightTabResources()V

    .line 1019
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    goto :goto_2

    :cond_6
    move v0, v1

    goto :goto_0
.end method

.method public onGesturePerformed(Landroid/gesture/GestureOverlayView;Landroid/gesture/Gesture;)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1627
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mLibrary:Landroid/gesture/GestureLibrary;

    invoke-virtual {v0, p2}, Landroid/gesture/GestureLibrary;->recognize(Landroid/gesture/Gesture;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1628
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_9

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/gesture/Prediction;

    iget-wide v2, v0, Landroid/gesture/Prediction;->score:D

    iget-wide v4, p0, Lcom/android/internal/policy/impl/LockScreen;->mGestureSensitivity:D

    cmpl-double v0, v2, v4

    if-lez v0, :cond_9

    .line 1629
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/gesture/Prediction;

    iget-object v0, v0, Landroid/gesture/Prediction;->name:Ljava/lang/String;

    const-string v1, "___"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 1630
    aget-object v1, v0, v7

    .line 1631
    if-eqz v1, :cond_0

    .line 1632
    const-string v2, "UNLOCK"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1633
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 1677
    :cond_0
    :goto_0
    return-void

    .line 1634
    :cond_1
    const-string v2, "SOUND"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1635
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->toggleSilentMode()V

    .line 1636
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    goto :goto_0

    .line 1637
    :cond_2
    const-string v2, "FLASHLIGHT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1638
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "net.cactii.flash2.TOGGLE_FLASHLIGHT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1639
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    goto :goto_0

    .line 1640
    :cond_3
    const-string v2, "NEXT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1641
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mForwardIcon:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->performClick()Z

    goto :goto_0

    .line 1642
    :cond_4
    const-string v2, "PREVIOUS"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1643
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mRewindIcon:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->performClick()Z

    goto :goto_0

    .line 1644
    :cond_5
    const-string v2, "PLAYPAUSE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1645
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mPauseIcon:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_6

    .line 1646
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mPauseIcon:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->performClick()Z

    goto :goto_0

    .line 1648
    :cond_6
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mPlayIcon:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->performClick()Z

    goto :goto_0

    .line 1652
    :cond_7
    const/4 v2, 0x0

    :try_start_0
    invoke-static {v1, v2}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    .line 1653
    const/high16 v2, 0x1020

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1655
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1657
    array-length v0, v0

    if-le v0, v8, :cond_8

    .line 1659
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mContext:Landroid/content/Context;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 1661
    const/4 v1, 0x2

    new-array v1, v1, [J

    const/4 v2, 0x1

    .line 1662
    const-wide/16 v3, 0xc8

    aput-wide v3, v1, v2

    .line 1664
    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 1666
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    goto/16 :goto_0

    .line 1670
    :catch_0
    move-exception v0

    goto/16 :goto_0

    .line 1668
    :cond_8
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 1671
    :catch_1
    move-exception v0

    goto/16 :goto_0

    .line 1675
    :cond_9
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    goto/16 :goto_0
.end method

.method public onGrabbedStateChange(Landroid/view/View;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1056
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 1057
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->isSilentMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z

    .line 1058
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mTabSelector:Lcom/android/emanon/internal/widget/SlidingTab;

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z

    if-eqz v1, :cond_2

    const v1, 0x40c0013

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/emanon/internal/widget/SlidingTab;->setRightHintText(I)V

    .line 1065
    :cond_0
    if-eqz p2, :cond_3

    .line 1066
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mGestureOverlay:Landroid/gesture/GestureOverlayView;

    invoke-virtual {v0}, Landroid/gesture/GestureOverlayView;->cancelGesture()V

    .line 1067
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 1071
    :cond_1
    :goto_1
    return-void

    .line 1059
    :cond_2
    const v1, 0x40c0014

    goto :goto_0

    .line 1068
    :cond_3
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mUseRingLockscreen:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    if-eqz v0, :cond_1

    .line 1069
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    goto :goto_1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    const/16 v1, 0x52

    .line 971
    const/16 v0, 0x17

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mTrackballUnlockScreen:Z

    if-nez v0, :cond_2

    .line 972
    :cond_0
    if-ne p1, v1, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mMenuUnlockScreen:Z

    if-nez v0, :cond_2

    .line 973
    :cond_1
    if-ne p1, v1, :cond_3

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mEnableMenuKeyInLockScreen:Z

    if-eqz v0, :cond_3

    .line 975
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 977
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public onMusicChanged()V
    .locals 0

    .prologue
    .line 1241
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->refreshPlayingTitle()V

    .line 1242
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 1551
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mUseRingLockscreen:Z

    if-eqz v0, :cond_0

    .line 1552
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mRingSelector:Lcom/android/emanon/internal/widget/RingSelector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/emanon/internal/widget/RingSelector;->setVisibility(I)V

    .line 1554
    :cond_0
    return-void
.end method

.method public onPhoneStateChanged(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 1587
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->updateEmergencyCallButtonState(Landroid/widget/Button;)V

    .line 1588
    return-void
.end method

.method public onRefreshBatteryInfo(ZZI)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1142
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/LockScreen;->mShowingBatteryInfo:Z

    .line 1143
    iput-boolean p2, p0, Lcom/android/internal/policy/impl/LockScreen;->mPluggedIn:Z

    .line 1144
    iput p3, p0, Lcom/android/internal/policy/impl/LockScreen;->mBatteryLevel:I

    .line 1146
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->refreshBatteryStringAndIcon()V

    .line 1147
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->updateStatusLines()V

    .line 1148
    return-void
.end method

.method public onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1282
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mStatus:Lcom/android/internal/policy/impl/LockScreen$Status;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/LockScreen;->updateLayout(Lcom/android/internal/policy/impl/LockScreen$Status;)V

    .line 1283
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 1558
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mUseFuzzyClock:Z

    if-eqz v0, :cond_0

    .line 1559
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mFuzzyClock:Lcom/android/emanon/internal/widget/FuzzyClock;

    invoke-virtual {v0}, Lcom/android/emanon/internal/widget/FuzzyClock;->updateTime()V

    .line 1565
    :goto_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/LockScreen;->resetStatusInfo(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    .line 1566
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->updateEmergencyCallButtonState(Landroid/widget/Button;)V

    .line 1567
    return-void

    .line 1560
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mUseKanjiClock:Z

    if-eqz v0, :cond_1

    .line 1561
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mKanjiClock:Lcom/android/emanon/internal/widget/KanjiClock;

    invoke-virtual {v0}, Lcom/android/emanon/internal/widget/KanjiClock;->updateTime()V

    goto :goto_0

    .line 1563
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mClock:Lcom/android/emanon/internal/widget/DigitalClock;

    invoke-virtual {v0}, Lcom/android/emanon/internal/widget/DigitalClock;->updateTime()V

    goto :goto_0
.end method

.method public onRingTrigger(Landroid/view/View;II)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 1025
    .line 1028
    if-ne p2, v3, :cond_7

    .line 1029
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mRingUnlockMiddle:Z

    if-eqz v0, :cond_3

    move v0, v3

    .line 1034
    :goto_0
    const/4 v2, 0x3

    if-ne p2, v2, :cond_1

    .line 1035
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mRingUnlockMiddle:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mRingMinimal:Z

    if-eqz v2, :cond_4

    :cond_0
    move v1, v3

    .line 1041
    :cond_1
    :goto_1
    if-eqz v1, :cond_5

    .line 1042
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 1052
    :cond_2
    :goto_2
    return-void

    :cond_3
    move v0, v1

    move v1, v3

    .line 1032
    goto :goto_0

    :cond_4
    move v0, v3

    .line 1038
    goto :goto_1

    .line 1043
    :cond_5
    if-eqz v0, :cond_6

    .line 1044
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCustomRingAppActivities:[Ljava/lang/String;

    aget-object v0, v0, p3

    if-eqz v0, :cond_2

    .line 1045
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCustomRingAppActivities:[Ljava/lang/String;

    aget-object v0, v0, p3

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/LockScreen;->runActivity(Ljava/lang/String;)V

    goto :goto_2

    .line 1047
    :cond_6
    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    .line 1048
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->toggleSilentMode()V

    .line 1049
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->updateRightTabResources()V

    .line 1050
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    goto :goto_2

    :cond_7
    move v0, v1

    goto :goto_0
.end method

.method public onRingerModeChanged(I)V
    .locals 2
    .parameter

    .prologue
    .line 1579
    const/4 v0, 0x2

    if-eq v0, p1, :cond_1

    const/4 v0, 0x1

    .line 1580
    :goto_0
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z

    if-eq v0, v1, :cond_0

    .line 1581
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z

    .line 1582
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->updateRightTabResources()V

    .line 1584
    :cond_0
    return-void

    .line 1579
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSimStateChanged(Lcom/android/internal/telephony/IccCard$State;)V
    .locals 1
    .parameter

    .prologue
    .line 1501
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/LockScreen;->getCurrentStatus(Lcom/android/internal/telephony/IccCard$State;)Lcom/android/internal/policy/impl/LockScreen$Status;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mStatus:Lcom/android/internal/policy/impl/LockScreen$Status;

    .line 1502
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mStatus:Lcom/android/internal/policy/impl/LockScreen$Status;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/LockScreen;->updateLayout(Lcom/android/internal/policy/impl/LockScreen$Status;)V

    .line 1503
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->updateStatusLines()V

    .line 1504
    return-void
.end method

.method public onTimeChanged()V
    .locals 0

    .prologue
    .line 1236
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->refreshTimeAndDateDisplay()V

    .line 1237
    return-void
.end method

.method public onTrigger(Landroid/view/View;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 982
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 983
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 989
    :cond_0
    :goto_0
    return-void

    .line 984
    :cond_1
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 985
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->toggleSilentMode()V

    .line 986
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->updateRightTabResources()V

    .line 987
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    goto :goto_0
.end method

.method updateConfiguration()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1507
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1508
    iget v1, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iget v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mKeyboardHidden:I

    if-eq v1, v2, :cond_2

    .line 1509
    iget v1, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mKeyboardHidden:I

    .line 1510
    iget v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mKeyboardHidden:I

    if-ne v1, v3, :cond_1

    move v1, v3

    .line 1511
    :goto_0
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mSliderUnlockScreen:Z

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    .line 1512
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 1519
    :cond_0
    :goto_1
    return-void

    .line 1510
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 1516
    :cond_2
    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    iget v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mCreationOrientation:I

    if-eq v1, v2, :cond_0

    .line 1517
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v1, v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->recreateMe(Landroid/content/res/Configuration;)V

    goto :goto_1
.end method
