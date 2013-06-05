.class Lcom/android/internal/policy/impl/LockScreen;
.super Landroid/widget/LinearLayout;
.source "LockScreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardScreen;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;
.implements Lcom/android/internal/widget/SlidingTab$OnTriggerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/LockScreen$4;,
        Lcom/android/internal/policy/impl/LockScreen$Status;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final ENABLE_MENU_KEY_FILE:Ljava/lang/String; = "/data/local/enable_menu_key"

.field private static final MODE_HOMESCREEN_WALLPAPER:I = 0x0

.field private static final MODE_LOCKSCREEN_WALLPAPER:I = 0x1

.field private static final TAG:Ljava/lang/String; = "LockScreen"

.field private static mBatteryInfoState:I

.field private static mPlugedState:I


# instance fields
.field private final BATTERY_INFO_CHARGING:I

.field private final BATTERY_INFO_DEAD:I

.field private final BATTERY_INFO_FULL:I

.field private final BATTERY_INFO_NOT_DISPLAY:I

.field private final BATTERY_INFO_OVERHEAT:I

.field private final PLUG_IN:I

.field private final PLUG_OUT:I

.field private bIsRinging:Z

.field private locale_in:Ljava/util/Locale;

.field private mAlarmIcon:Landroid/graphics/drawable/Drawable;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBatteryLevel:I

.field private final mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mCarrier:Landroid/widget/TextView;

.field private mCharging:Ljava/lang/String;

.field private mChargingIcon:Landroid/graphics/drawable/Drawable;

.field private mContext:Landroid/content/Context;

.field private mCreationOrientation:I

.field private mDate:Landroid/widget/TextView;

.field private mDateFormatString:Ljava/lang/String;

.field private mEmergencyCallButton:Landroid/widget/Button;

.field private mEmergencyCallText:Landroid/widget/TextView;

.field private mEnableMenuKeyInLockScreen:Z

.field private mKeyboardHidden:I

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockscreenBackground:Landroid/widget/ImageView;

.field private mNextAlarm:Ljava/lang/String;

.field private mPendingR1:Ljava/lang/Runnable;

.field private mPendingR2:Ljava/lang/Runnable;

.field private mPluggedIn:Z

.field private mScreenLocked:Landroid/widget/TextView;

.field private mSelector:Lcom/android/internal/widget/SlidingTab;

.field private mShowingBatteryInfo:Z

.field private mSilentMode:Z

.field private mSlidingTabTouchID:I

.field private mStatus:Lcom/android/internal/policy/impl/LockScreen$Status;

.field private mStatus1:Landroid/widget/TextView;

.field private mStatus2:Landroid/widget/TextView;

.field private mTime:Landroid/widget/TextView;

.field private mTimeFormat:Ljava/text/DateFormat;

.field private final mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x0

    sput v0, Lcom/android/internal/policy/impl/LockScreen;->mBatteryInfoState:I

    .line 123
    const/4 v0, -0x1

    sput v0, Lcom/android/internal/policy/impl/LockScreen;->mPlugedState:I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
    .locals 7
    .parameter "context"
    .parameter "configuration"
    .parameter "lockPatternUtils"
    .parameter "updateMonitor"
    .parameter "callback"

    .prologue
    const/4 v6, 0x2

    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 267
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 66
    sget-object v1, Lcom/android/internal/policy/impl/LockScreen$Status;->Normal:Lcom/android/internal/policy/impl/LockScreen$Status;

    iput-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mStatus:Lcom/android/internal/policy/impl/LockScreen$Status;

    .line 87
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mShowingBatteryInfo:Z

    .line 90
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mPluggedIn:Z

    .line 93
    const/16 v1, 0x64

    iput v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mBatteryLevel:I

    .line 95
    iput-object v4, p0, Lcom/android/internal/policy/impl/LockScreen;->mNextAlarm:Ljava/lang/String;

    .line 96
    iput-object v4, p0, Lcom/android/internal/policy/impl/LockScreen;->mAlarmIcon:Landroid/graphics/drawable/Drawable;

    .line 97
    iput-object v4, p0, Lcom/android/internal/policy/impl/LockScreen;->mCharging:Ljava/lang/String;

    .line 98
    iput-object v4, p0, Lcom/android/internal/policy/impl/LockScreen;->mChargingIcon:Landroid/graphics/drawable/Drawable;

    .line 105
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/LockScreen;->bIsRinging:Z

    .line 106
    iput v5, p0, Lcom/android/internal/policy/impl/LockScreen;->mSlidingTabTouchID:I

    .line 116
    iput v2, p0, Lcom/android/internal/policy/impl/LockScreen;->BATTERY_INFO_NOT_DISPLAY:I

    .line 117
    iput v3, p0, Lcom/android/internal/policy/impl/LockScreen;->BATTERY_INFO_CHARGING:I

    .line 118
    iput v6, p0, Lcom/android/internal/policy/impl/LockScreen;->BATTERY_INFO_FULL:I

    .line 119
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/internal/policy/impl/LockScreen;->BATTERY_INFO_OVERHEAT:I

    .line 120
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/internal/policy/impl/LockScreen;->BATTERY_INFO_DEAD:I

    .line 124
    iput v3, p0, Lcom/android/internal/policy/impl/LockScreen;->PLUG_IN:I

    .line 125
    iput v2, p0, Lcom/android/internal/policy/impl/LockScreen;->PLUG_OUT:I

    .line 268
    iput-object p3, p0, Lcom/android/internal/policy/impl/LockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 269
    iput-object p4, p0, Lcom/android/internal/policy/impl/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 270
    iput-object p5, p0, Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 273
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mContext:Landroid/content/Context;

    .line 275
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->shouldEnableMenuKey()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mEnableMenuKeyInLockScreen:Z

    .line 277
    iget v1, p2, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mCreationOrientation:I

    .line 279
    iget v1, p2, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mKeyboardHidden:I

    .line 287
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 289
    .local v0, inflater:Landroid/view/LayoutInflater;
    iget v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mCreationOrientation:I

    if-eq v1, v6, :cond_0

    .line 290
    const v1, 0x1090038

    invoke-virtual {v0, v1, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 295
    :goto_0
    const v1, 0x10201fb

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/LockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mCarrier:Landroid/widget/TextView;

    .line 297
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mCarrier:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 298
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mCarrier:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 300
    const v1, 0x102005c

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/LockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mDate:Landroid/widget/TextView;

    .line 301
    const v1, 0x10201ff

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/LockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mStatus1:Landroid/widget/TextView;

    .line 302
    const v1, 0x1020200

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/LockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mStatus2:Landroid/widget/TextView;

    .line 304
    const v1, 0x1020201

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/LockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mScreenLocked:Landroid/widget/TextView;

    .line 305
    const v1, 0x1020202

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/LockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/SlidingTab;

    iput-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mSelector:Lcom/android/internal/widget/SlidingTab;

    .line 306
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mSelector:Lcom/android/internal/widget/SlidingTab;

    invoke-virtual {v1, v3, v2}, Lcom/android/internal/widget/SlidingTab;->setHoldAfterTrigger(ZZ)V

    .line 307
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mSelector:Lcom/android/internal/widget/SlidingTab;

    const v2, 0x1040347

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/SlidingTab;->setLeftHintText(I)V

    .line 309
    const v1, 0x10201fc

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/LockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mEmergencyCallText:Landroid/widget/TextView;

    .line 310
    const v1, 0x10201ee

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/LockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    .line 311
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    const v2, 0x1040312

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 318
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->updateEmergencyCallButtonState(Landroid/widget/Button;)V

    .line 319
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/internal/policy/impl/LockScreen$1;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/LockScreen$1;-><init>(Lcom/android/internal/policy/impl/LockScreen;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 325
    const v1, 0x10201fa

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/LockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mLockscreenBackground:Landroid/widget/ImageView;

    .line 327
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/LockScreen;->setFocusable(Z)V

    .line 328
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/LockScreen;->setFocusableInTouchMode(Z)V

    .line 329
    const/high16 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/LockScreen;->setDescendantFocusability(I)V

    .line 331
    invoke-virtual {p4, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerInfoCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;)V

    .line 332
    invoke-virtual {p4, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerSimStateCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;)V

    .line 334
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mAudioManager:Landroid/media/AudioManager;

    .line 335
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->isSilentMode()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z

    .line 337
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mSelector:Lcom/android/internal/widget/SlidingTab;

    const v2, 0x10801a6

    const v3, 0x1080219

    const v4, 0x10801fa

    const v5, 0x108020d

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/internal/widget/SlidingTab;->setLeftTabResources(IIII)V

    .line 343
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->updateRightTabResources()V

    .line 345
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mSelector:Lcom/android/internal/widget/SlidingTab;

    invoke-virtual {v1, p0}, Lcom/android/internal/widget/SlidingTab;->setOnTriggerListener(Lcom/android/internal/widget/SlidingTab$OnTriggerListener;)V

    .line 347
    invoke-direct {p0, p4}, Lcom/android/internal/policy/impl/LockScreen;->resetStatusInfo(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    .line 348
    return-void

    .line 292
    :cond_0
    const v1, 0x1090039

    invoke-virtual {v0, v1, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/LockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    return-object v0
.end method

.method static getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2
    .parameter "telephonyPlmn"
    .parameter "telephonySpn"

    .prologue
    .line 940
    if-eqz p0, :cond_0

    if-nez p1, :cond_0

    move-object v0, p0

    .line 952
    :goto_0
    return-object v0

    .line 942
    :cond_0
    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    .line 944
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    move-object v0, p0

    .line 945
    goto :goto_0

    .line 947
    :cond_1
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

    .line 949
    :cond_2
    if-nez p0, :cond_3

    if-eqz p1, :cond_3

    move-object v0, p1

    .line 950
    goto :goto_0

    .line 952
    :cond_3
    const-string v0, ""

    goto :goto_0
.end method

.method private getCurrentStatus(Lcom/android/internal/telephony/IccCard$State;)Lcom/android/internal/policy/impl/LockScreen$Status;
    .locals 3
    .parameter "simState"

    .prologue
    .line 631
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-ne p1, v1, :cond_0

    const/4 v1, 0x1

    move v0, v1

    .line 633
    .local v0, missingAndNotProvisioned:Z
    :goto_0
    if-eqz v0, :cond_1

    .line 634
    sget-object v1, Lcom/android/internal/policy/impl/LockScreen$Status;->SimMissingLocked:Lcom/android/internal/policy/impl/LockScreen$Status;

    .line 677
    :goto_1
    return-object v1

    .line 631
    .end local v0           #missingAndNotProvisioned:Z
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0

    .line 637
    .restart local v0       #missingAndNotProvisioned:Z
    :cond_1
    sget-object v1, Lcom/android/internal/policy/impl/LockScreen$4;->$SwitchMap$com$android$internal$telephony$IccCard$State:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/IccCard$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 677
    sget-object v1, Lcom/android/internal/policy/impl/LockScreen$Status;->SimMissing:Lcom/android/internal/policy/impl/LockScreen$Status;

    goto :goto_1

    .line 639
    :pswitch_0
    sget-object v1, Lcom/android/internal/policy/impl/LockScreen$Status;->SimMissing:Lcom/android/internal/policy/impl/LockScreen$Status;

    goto :goto_1

    .line 641
    :pswitch_1
    sget-object v1, Lcom/android/internal/policy/impl/LockScreen$Status;->NetworkLocked:Lcom/android/internal/policy/impl/LockScreen$Status;

    goto :goto_1

    .line 643
    :pswitch_2
    sget-object v1, Lcom/android/internal/policy/impl/LockScreen$Status;->SimMissing:Lcom/android/internal/policy/impl/LockScreen$Status;

    goto :goto_1

    .line 645
    :pswitch_3
    sget-object v1, Lcom/android/internal/policy/impl/LockScreen$Status;->SimLocked:Lcom/android/internal/policy/impl/LockScreen$Status;

    goto :goto_1

    .line 647
    :pswitch_4
    sget-object v1, Lcom/android/internal/policy/impl/LockScreen$Status;->SimPukLocked:Lcom/android/internal/policy/impl/LockScreen$Status;

    goto :goto_1

    .line 649
    :pswitch_5
    sget-object v1, Lcom/android/internal/policy/impl/LockScreen$Status;->Normal:Lcom/android/internal/policy/impl/LockScreen$Status;

    goto :goto_1

    .line 651
    :pswitch_6
    sget-object v1, Lcom/android/internal/policy/impl/LockScreen$Status;->SimMissing:Lcom/android/internal/policy/impl/LockScreen$Status;

    goto :goto_1

    .line 653
    :pswitch_7
    sget-object v1, Lcom/android/internal/policy/impl/LockScreen$Status;->SimIOError:Lcom/android/internal/policy/impl/LockScreen$Status;

    goto :goto_1

    .line 655
    :pswitch_8
    sget-object v1, Lcom/android/internal/policy/impl/LockScreen$Status;->NetworkSubsetLocked:Lcom/android/internal/policy/impl/LockScreen$Status;

    goto :goto_1

    .line 657
    :pswitch_9
    sget-object v1, Lcom/android/internal/policy/impl/LockScreen$Status;->CorporateLocked:Lcom/android/internal/policy/impl/LockScreen$Status;

    goto :goto_1

    .line 659
    :pswitch_a
    sget-object v1, Lcom/android/internal/policy/impl/LockScreen$Status;->ServiceProviderLocked:Lcom/android/internal/policy/impl/LockScreen$Status;

    goto :goto_1

    .line 661
    :pswitch_b
    sget-object v1, Lcom/android/internal/policy/impl/LockScreen$Status;->SimSimLocked:Lcom/android/internal/policy/impl/LockScreen$Status;

    goto :goto_1

    .line 663
    :pswitch_c
    sget-object v1, Lcom/android/internal/policy/impl/LockScreen$Status;->RuimNetwork1Locked:Lcom/android/internal/policy/impl/LockScreen$Status;

    goto :goto_1

    .line 665
    :pswitch_d
    sget-object v1, Lcom/android/internal/policy/impl/LockScreen$Status;->RuimNetwork2Locked:Lcom/android/internal/policy/impl/LockScreen$Status;

    goto :goto_1

    .line 667
    :pswitch_e
    sget-object v1, Lcom/android/internal/policy/impl/LockScreen$Status;->RuimHrpdLocked:Lcom/android/internal/policy/impl/LockScreen$Status;

    goto :goto_1

    .line 669
    :pswitch_f
    sget-object v1, Lcom/android/internal/policy/impl/LockScreen$Status;->RuimCorporateLocked:Lcom/android/internal/policy/impl/LockScreen$Status;

    goto :goto_1

    .line 671
    :pswitch_10
    sget-object v1, Lcom/android/internal/policy/impl/LockScreen$Status;->RuimServiceProviderLocked:Lcom/android/internal/policy/impl/LockScreen$Status;

    goto :goto_1

    .line 673
    :pswitch_11
    sget-object v1, Lcom/android/internal/policy/impl/LockScreen$Status;->RuimRuimLocked:Lcom/android/internal/policy/impl/LockScreen$Status;

    goto :goto_1

    .line 675
    :pswitch_12
    sget-object v1, Lcom/android/internal/policy/impl/LockScreen$Status;->SimPukBlocked:Lcom/android/internal/policy/impl/LockScreen$Status;

    goto :goto_1

    .line 637
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
    .end packed-switch
.end method

.method private isSilentMode()Z
    .locals 2

    .prologue
    .line 351
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
    .locals 2

    .prologue
    .line 507
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getNextAlarm()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mNextAlarm:Ljava/lang/String;

    .line 508
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mNextAlarm:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 509
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x108002e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mAlarmIcon:Landroid/graphics/drawable/Drawable;

    .line 511
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->updateStatusLines()V

    .line 512
    return-void
.end method

.method private refreshBatteryStringAndIcon()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 553
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mShowingBatteryInfo:Z

    if-nez v0, :cond_0

    .line 554
    iput-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mCharging:Ljava/lang/String;

    .line 579
    :goto_0
    return-void

    .line 558
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mChargingIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 559
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x108001e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mChargingIcon:Landroid/graphics/drawable/Drawable;

    .line 564
    :cond_1
    sget v0, Lcom/android/internal/policy/impl/LockScreen;->mPlugedState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    .line 565
    sget v0, Lcom/android/internal/policy/impl/LockScreen;->mBatteryInfoState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 566
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x1040318

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCharging:Ljava/lang/String;

    goto :goto_0

    .line 567
    :cond_2
    sget v0, Lcom/android/internal/policy/impl/LockScreen;->mBatteryInfoState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 568
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x104044a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCharging:Ljava/lang/String;

    goto :goto_0

    .line 570
    :cond_3
    iget v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mBatteryLevel:I

    const/16 v1, 0x64

    if-lt v0, v1, :cond_5

    const/16 v0, 0x63

    iput v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mBatteryLevel:I

    .line 574
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x1040462

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCharging:Ljava/lang/String;

    goto :goto_0

    .line 571
    :cond_5
    iget v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mBatteryLevel:I

    if-gtz v0, :cond_4

    .line 572
    iput-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mCharging:Ljava/lang/String;

    goto :goto_1

    .line 577
    :cond_6
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x104031a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCharging:Ljava/lang/String;

    goto :goto_0
.end method

.method private refreshTimeAndDateDisplay()V
    .locals 3

    .prologue
    .line 587
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mDate:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mDateFormatString:Ljava/lang/String;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 588
    return-void
.end method

.method private resetStatusInfo(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V
    .locals 2
    .parameter "updateMonitor"

    .prologue
    .line 371
    invoke-virtual {p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->shouldShowBatteryInfo()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mShowingBatteryInfo:Z

    .line 372
    invoke-virtual {p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDevicePluggedIn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mPluggedIn:Z

    .line 373
    invoke-virtual {p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getBatteryLevel()I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mBatteryLevel:I

    .line 376
    invoke-virtual {p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getBatteryInfoState()I

    move-result v0

    sput v0, Lcom/android/internal/policy/impl/LockScreen;->mBatteryInfoState:I

    .line 377
    invoke-virtual {p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getBatteryPlugedState()I

    move-result v0

    sput v0, Lcom/android/internal/policy/impl/LockScreen;->mPlugedState:I

    .line 380
    invoke-virtual {p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/LockScreen;->getCurrentStatus(Lcom/android/internal/telephony/IccCard$State;)Lcom/android/internal/policy/impl/LockScreen$Status;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mStatus:Lcom/android/internal/policy/impl/LockScreen$Status;

    .line 381
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mStatus:Lcom/android/internal/policy/impl/LockScreen$Status;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/LockScreen;->updateLayout(Lcom/android/internal/policy/impl/LockScreen$Status;)V

    .line 383
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->refreshBatteryStringAndIcon()V

    .line 384
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->refreshAlarmDisplay()V

    .line 386
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mTimeFormat:Ljava/text/DateFormat;

    .line 399
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x10400a7

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mDateFormatString:Ljava/lang/String;

    .line 401
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->refreshTimeAndDateDisplay()V

    .line 402
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->updateStatusLines()V

    .line 403
    return-void
.end method

.method private shouldEnableMenuKey()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 249
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 250
    .local v3, res:Landroid/content/res/Resources;
    const v4, 0x10d000e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 251
    .local v0, configDisabled:Z
    const-string v4, "ro.monkey"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 252
    .local v2, isMonkey:Z
    new-instance v4, Ljava/io/File;

    const-string v5, "/data/local/enable_menu_key"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v1

    .line 253
    .local v1, fileOverride:Z
    if-eqz v0, :cond_0

    if-nez v2, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_1
    move v4, v6

    goto :goto_0
.end method

.method private switchLockscreenMode(I)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 1067
    packed-switch p1, :pswitch_data_0

    .line 1076
    :goto_0
    :pswitch_0
    return-void

    .line 1071
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mLockscreenBackground:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getLockscreenWallpaper()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1067
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private toastMessage(Landroid/widget/TextView;Ljava/lang/String;II)V
    .locals 8
    .parameter "textView"
    .parameter "text"
    .parameter "color"
    .parameter "iconResourceId"

    .prologue
    const/4 v1, 0x0

    .line 470
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mPendingR1:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 471
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mPendingR1:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 472
    iput-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mPendingR1:Ljava/lang/Runnable;

    .line 474
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mPendingR2:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 475
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mPendingR2:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 476
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mPendingR2:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 477
    iput-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mPendingR2:Ljava/lang/Runnable;

    .line 480
    :cond_1
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 481
    .local v7, oldText:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v6

    .line 483
    .local v6, oldColors:Landroid/content/res/ColorStateList;
    new-instance v0, Lcom/android/internal/policy/impl/LockScreen$2;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/LockScreen$2;-><init>(Lcom/android/internal/policy/impl/LockScreen;Landroid/widget/TextView;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mPendingR1:Ljava/lang/Runnable;

    .line 493
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mPendingR1:Ljava/lang/Runnable;

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 494
    new-instance v0, Lcom/android/internal/policy/impl/LockScreen$3;

    invoke-direct {v0, p0, p1, v7, v6}, Lcom/android/internal/policy/impl/LockScreen$3;-><init>(Lcom/android/internal/policy/impl/LockScreen;Landroid/widget/TextView;Ljava/lang/String;Landroid/content/res/ColorStateList;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mPendingR2:Ljava/lang/Runnable;

    .line 501
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mPendingR2:Ljava/lang/Runnable;

    const-wide/16 v1, 0xdac

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 502
    return-void
.end method

.method private updateLayout(Lcom/android/internal/policy/impl/LockScreen$Status;)V
    .locals 9
    .parameter "status"

    .prologue
    const v8, 0x1040310

    const/4 v7, 0x4

    const/16 v5, 0x8

    const/4 v4, 0x0

    const-string v6, ""

    .line 776
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 778
    sget-object v0, Lcom/android/internal/policy/impl/LockScreen$4;->$SwitchMap$com$android$internal$policy$impl$LockScreen$Status:[I

    invoke-virtual {p1}, Lcom/android/internal/policy/impl/LockScreen$Status;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 927
    :goto_0
    return-void

    .line 781
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCarrier:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonyPlmn()Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonySpn()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/LockScreen;->getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 787
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mScreenLocked:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 790
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mScreenLocked:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 791
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mSelector:Lcom/android/internal/widget/SlidingTab;

    invoke-virtual {v0, v4}, Lcom/android/internal/widget/SlidingTab;->setVisibility(I)V

    .line 792
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mEmergencyCallText:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 797
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCarrier:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonyPlmn()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x1040321

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/LockScreen;->getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 801
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mScreenLocked:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(I)V

    .line 804
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mScreenLocked:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 808
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mScreenLocked:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 809
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mSelector:Lcom/android/internal/widget/SlidingTab;

    invoke-virtual {v0, v4}, Lcom/android/internal/widget/SlidingTab;->setVisibility(I)V

    .line 810
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mEmergencyCallText:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 814
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCarrier:Landroid/widget/TextView;

    const v1, 0x104031b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 815
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mScreenLocked:Landroid/widget/TextView;

    const v1, 0x104031d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 816
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mScreenLocked:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 819
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mScreenLocked:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 820
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mSelector:Lcom/android/internal/widget/SlidingTab;

    invoke-virtual {v0, v4}, Lcom/android/internal/widget/SlidingTab;->setVisibility(I)V

    .line 821
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mEmergencyCallText:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 826
    :pswitch_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCarrier:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonyPlmn()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x104031b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/LockScreen;->getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 830
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mScreenLocked:Landroid/widget/TextView;

    const v1, 0x104031d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 833
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mScreenLocked:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 834
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mSelector:Lcom/android/internal/widget/SlidingTab;

    invoke-virtual {v0, v4}, Lcom/android/internal/widget/SlidingTab;->setVisibility(I)V

    .line 835
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mEmergencyCallText:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 836
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    .line 840
    :pswitch_4
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCarrier:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonyPlmn()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x1040329

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/LockScreen;->getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 846
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mScreenLocked:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 847
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mSelector:Lcom/android/internal/widget/SlidingTab;

    invoke-virtual {v0, v4}, Lcom/android/internal/widget/SlidingTab;->setVisibility(I)V

    .line 848
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mEmergencyCallText:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 852
    :pswitch_5
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCarrier:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonyPlmn()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x1040327

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/LockScreen;->getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 856
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mScreenLocked:Landroid/widget/TextView;

    const v1, 0x1040328

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 859
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mScreenLocked:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 860
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mSelector:Lcom/android/internal/widget/SlidingTab;

    invoke-virtual {v0, v4}, Lcom/android/internal/widget/SlidingTab;->setVisibility(I)V

    .line 861
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mEmergencyCallText:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 862
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    .line 866
    :pswitch_6
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCarrier:Landroid/widget/TextView;

    const v1, 0x104031f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 867
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mScreenLocked:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(I)V

    .line 869
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mScreenLocked:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 872
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mScreenLocked:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 873
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mSelector:Lcom/android/internal/widget/SlidingTab;

    invoke-virtual {v0, v4}, Lcom/android/internal/widget/SlidingTab;->setVisibility(I)V

    .line 874
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    .line 878
    :pswitch_7
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCarrier:Landroid/widget/TextView;

    const v1, 0x1040323

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 879
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->updateLayoutForPersoText()V

    goto/16 :goto_0

    .line 883
    :pswitch_8
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCarrier:Landroid/widget/TextView;

    const v1, 0x1040325

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 884
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->updateLayoutForPersoText()V

    goto/16 :goto_0

    .line 888
    :pswitch_9
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCarrier:Landroid/widget/TextView;

    const v1, 0x1040324

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 889
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->updateLayoutForPersoText()V

    goto/16 :goto_0

    .line 893
    :pswitch_a
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCarrier:Landroid/widget/TextView;

    const v1, 0x1040326

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 894
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->updateLayoutForPersoText()V

    goto/16 :goto_0

    .line 898
    :pswitch_b
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCarrier:Landroid/widget/TextView;

    const v1, 0x1040331

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 899
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->updateLayoutForPersoText()V

    goto/16 :goto_0

    .line 903
    :pswitch_c
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCarrier:Landroid/widget/TextView;

    const v1, 0x1040332

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 904
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->updateLayoutForPersoText()V

    goto/16 :goto_0

    .line 908
    :pswitch_d
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCarrier:Landroid/widget/TextView;

    const v1, 0x1040333

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 909
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->updateLayoutForPersoText()V

    goto/16 :goto_0

    .line 913
    :pswitch_e
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCarrier:Landroid/widget/TextView;

    const v1, 0x1040335

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 914
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->updateLayoutForPersoText()V

    goto/16 :goto_0

    .line 918
    :pswitch_f
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCarrier:Landroid/widget/TextView;

    const v1, 0x1040334

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 919
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->updateLayoutForPersoText()V

    goto/16 :goto_0

    .line 923
    :pswitch_10
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCarrier:Landroid/widget/TextView;

    const v1, 0x1040336

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 924
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->updateLayoutForPersoText()V

    goto/16 :goto_0

    .line 778
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method

.method private updateLayoutForPersoText()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 930
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mScreenLocked:Landroid/widget/TextView;

    const v1, 0x1040310

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 933
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mScreenLocked:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 934
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mSelector:Lcom/android/internal/widget/SlidingTab;

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/SlidingTab;->setVisibility(I)V

    .line 935
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 936
    return-void
.end method

.method private updateRightTabResources()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 355
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    if-ne v1, v2, :cond_0

    move v0, v2

    .line 358
    .local v0, vibe:Z
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mSelector:Lcom/android/internal/widget/SlidingTab;

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z

    if-eqz v2, :cond_2

    if-eqz v0, :cond_1

    const v2, 0x10801a7

    :goto_1
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z

    if-eqz v3, :cond_3

    const v3, 0x108021b

    :goto_2
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z

    if-eqz v4, :cond_4

    const v4, 0x1080204

    :goto_3
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z

    if-eqz v5, :cond_5

    const v5, 0x1080217

    :goto_4
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/internal/widget/SlidingTab;->setRightTabResources(IIII)V

    .line 368
    return-void

    .line 355
    .end local v0           #vibe:Z
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0

    .line 358
    .restart local v0       #vibe:Z
    :cond_1
    const v2, 0x10801a4

    goto :goto_1

    :cond_2
    const v2, 0x10801a5

    goto :goto_1

    :cond_3
    const v3, 0x1080218

    goto :goto_2

    :cond_4
    const v4, 0x1080203

    goto :goto_3

    :cond_5
    const v5, 0x1080216

    goto :goto_4
.end method

.method private updateStatusLines()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 591
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mStatus:Lcom/android/internal/policy/impl/LockScreen$Status;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LockScreen$Status;->showStatusLines()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCharging:Ljava/lang/String;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mNextAlarm:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 593
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mStatus1:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 594
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mStatus2:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 619
    :cond_1
    :goto_0
    return-void

    .line 595
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCharging:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mNextAlarm:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 597
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mStatus1:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 598
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mStatus2:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 600
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mStatus1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mCharging:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 601
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mStatus1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mChargingIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 602
    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mNextAlarm:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCharging:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 604
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mStatus1:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 605
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mStatus2:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 607
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mStatus1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mNextAlarm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 608
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mStatus1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mAlarmIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 609
    :cond_4
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCharging:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mNextAlarm:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 611
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mStatus1:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 612
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mStatus2:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 614
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mStatus1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mCharging:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 615
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mStatus1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mChargingIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 616
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mStatus2:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mNextAlarm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 617
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mStatus2:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mAlarmIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method public cleanUp()V
    .locals 1

    .prologue
    .line 1040
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 1041
    return-void
.end method

.method public forceResetSlidingTab()V
    .locals 1

    .prologue
    .line 1023
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mSelector:Lcom/android/internal/widget/SlidingTab;

    if-eqz v0, :cond_0

    .line 1024
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mSelector:Lcom/android/internal/widget/SlidingTab;

    invoke-virtual {v0}, Lcom/android/internal/widget/SlidingTab;->forceResetSlidingTab()V

    .line 1025
    :cond_0
    return-void
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 1013
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 990
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 996
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->updateConfiguration()V

    .line 997
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 1002
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1008
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->updateConfiguration()V

    .line 1009
    return-void
.end method

.method public onGrabbedStateChange(Landroid/view/View;I)V
    .locals 2
    .parameter "v"
    .parameter "grabbedState"

    .prologue
    .line 454
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 455
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->isSilentMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z

    .line 456
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mSelector:Lcom/android/internal/widget/SlidingTab;

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z

    if-eqz v1, :cond_1

    const v1, 0x1040348

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/SlidingTab;->setRightHintText(I)V

    .line 459
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 460
    return-void

    .line 456
    :cond_1
    const v1, 0x1040349

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "event"

    .prologue
    const/4 v7, 0x0

    .line 685
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 686
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 687
    .local v3, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 688
    .local v4, y:F
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 690
    .local v2, tmpRect:Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/android/internal/policy/impl/LockScreen;->mSelector:Lcom/android/internal/widget/SlidingTab;

    if-eqz v5, :cond_0

    .line 691
    iget-object v5, p0, Lcom/android/internal/policy/impl/LockScreen;->mSelector:Lcom/android/internal/widget/SlidingTab;

    invoke-virtual {v5, v2}, Lcom/android/internal/widget/SlidingTab;->getHitRect(Landroid/graphics/Rect;)V

    .line 692
    :cond_0
    float-to-int v5, v3

    float-to-int v6, v4

    invoke-virtual {v2, v5, v6}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    .line 696
    .local v1, slidingTabHit:Z
    packed-switch v0, :pswitch_data_0

    move v5, v7

    .line 704
    :goto_0
    return v5

    .line 698
    :pswitch_0
    if-eqz v1, :cond_1

    .line 699
    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    move v5, v7

    .line 701
    goto :goto_0

    .line 696
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 407
    const/16 v0, 0x52

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mEnableMenuKeyInLockScreen:Z

    if-eqz v0, :cond_0

    .line 408
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 410
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 1018
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->forceResetSlidingTab()V

    .line 1019
    return-void
.end method

.method public onPhoneStateChanged(Ljava/lang/String;)V
    .locals 2
    .parameter "newState"

    .prologue
    .line 1053
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->updateEmergencyCallButtonState(Landroid/widget/Button;)V

    .line 1054
    sget-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1055
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreen;->bIsRinging:Z

    .line 1062
    :goto_0
    return-void

    .line 1057
    :cond_0
    sget-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreen;->bIsRinging:Z

    if-eqz v0, :cond_1

    .line 1058
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->forceResetSlidingTab()V

    .line 1059
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreen;->bIsRinging:Z

    goto :goto_0
.end method

.method public onRefreshBatteryInfo(ZZI)V
    .locals 1
    .parameter "showBatteryInfo"
    .parameter "pluggedIn"
    .parameter "batteryLevel"

    .prologue
    .line 518
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/LockScreen;->mShowingBatteryInfo:Z

    .line 519
    iput-boolean p2, p0, Lcom/android/internal/policy/impl/LockScreen;->mPluggedIn:Z

    .line 520
    iput p3, p0, Lcom/android/internal/policy/impl/LockScreen;->mBatteryLevel:I

    .line 523
    sget v0, Lcom/android/internal/policy/impl/LockScreen;->mPlugedState:I

    if-gez v0, :cond_0

    .line 524
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mPluggedIn:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    sput v0, Lcom/android/internal/policy/impl/LockScreen;->mPlugedState:I

    .line 526
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->refreshBatteryStringAndIcon()V

    .line 527
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->updateStatusLines()V

    .line 528
    return-void

    .line 524
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "plmn"
    .parameter "spn"

    .prologue
    .line 624
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mStatus:Lcom/android/internal/policy/impl/LockScreen$Status;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/LockScreen;->updateLayout(Lcom/android/internal/policy/impl/LockScreen$Status;)V

    .line 625
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 1029
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mSelector:Lcom/android/internal/widget/SlidingTab;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/SlidingTab;->reset(Z)V

    .line 1030
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/LockScreen;->resetStatusInfo(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    .line 1032
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getWallpaperMode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/LockScreen;->switchLockscreenMode(I)V

    .line 1033
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mLockscreenBackground:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1035
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->updateEmergencyCallButtonState(Landroid/widget/Button;)V

    .line 1036
    return-void
.end method

.method public onRingerModeChanged(I)V
    .locals 2
    .parameter "state"

    .prologue
    .line 1045
    const/4 v1, 0x2

    if-eq v1, p1, :cond_1

    const/4 v1, 0x1

    move v0, v1

    .line 1046
    .local v0, silent:Z
    :goto_0
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z

    if-eq v0, v1, :cond_0

    .line 1047
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z

    .line 1048
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->updateRightTabResources()V

    .line 1050
    :cond_0
    return-void

    .line 1045
    .end local v0           #silent:Z
    :cond_1
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public onSimStateChanged(Lcom/android/internal/telephony/IccCard$State;)V
    .locals 1
    .parameter "simState"

    .prologue
    .line 958
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/LockScreen;->getCurrentStatus(Lcom/android/internal/telephony/IccCard$State;)Lcom/android/internal/policy/impl/LockScreen$Status;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mStatus:Lcom/android/internal/policy/impl/LockScreen$Status;

    .line 959
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mStatus:Lcom/android/internal/policy/impl/LockScreen$Status;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/LockScreen;->updateLayout(Lcom/android/internal/policy/impl/LockScreen$Status;)V

    .line 960
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->updateStatusLines()V

    .line 961
    return-void
.end method

.method public onTimeChanged()V
    .locals 0

    .prologue
    .line 583
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->refreshTimeAndDateDisplay()V

    .line 584
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .parameter "event"

    .prologue
    const/4 v9, 0x2

    const/4 v12, -0x1

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 710
    const/4 v1, 0x0

    .line 711
    .local v1, count:I
    if-eqz p1, :cond_0

    .line 712
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    .line 716
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 717
    .local v0, action:I
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 718
    .local v7, tempRect:Landroid/graphics/Rect;
    new-array v6, v9, [I

    .line 720
    .local v6, slidingTabPos:[I
    iget-object v8, p0, Lcom/android/internal/policy/impl/LockScreen;->mSelector:Lcom/android/internal/widget/SlidingTab;

    invoke-virtual {v8, v6}, Lcom/android/internal/widget/SlidingTab;->getLocationOnScreen([I)V

    .line 726
    const v8, 0xff00

    and-int/2addr v8, v0

    shr-int/lit8 v3, v8, 0x8

    .line 727
    .local v3, id:I
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    .line 728
    .local v4, mFocusX:F
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    .line 732
    .local v5, mFocusY:F
    if-eqz v0, :cond_1

    const/4 v8, 0x5

    if-eq v0, v8, :cond_1

    const/16 v8, 0x105

    if-ne v0, v8, :cond_5

    .line 733
    :cond_1
    iget-object v8, p0, Lcom/android/internal/policy/impl/LockScreen;->mSelector:Lcom/android/internal/widget/SlidingTab;

    invoke-virtual {v8, v7}, Lcom/android/internal/widget/SlidingTab;->getHitRect(Landroid/graphics/Rect;)V

    .line 734
    float-to-int v8, v4

    float-to-int v9, v5

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Rect;->contains(II)Z

    move-result v8

    if-nez v8, :cond_2

    if-nez v0, :cond_3

    :cond_2
    iget v8, p0, Lcom/android/internal/policy/impl/LockScreen;->mSlidingTabTouchID:I

    if-eq v8, v12, :cond_4

    .line 766
    :cond_3
    :goto_0
    return v10

    .line 737
    :cond_4
    aget v8, v6, v11

    int-to-float v8, v8

    sub-float v8, v4, v8

    aget v9, v6, v10

    int-to-float v9, v9

    sub-float v9, v5, v9

    invoke-virtual {p1, v8, v9}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 738
    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->setAction(I)V

    .line 739
    iget-object v8, p0, Lcom/android/internal/policy/impl/LockScreen;->mSelector:Lcom/android/internal/widget/SlidingTab;

    invoke-virtual {v8, p1}, Lcom/android/internal/widget/SlidingTab;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 740
    iput v3, p0, Lcom/android/internal/policy/impl/LockScreen;->mSlidingTabTouchID:I

    goto :goto_0

    .line 744
    :cond_5
    if-ne v0, v9, :cond_7

    .line 745
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v8

    if-ge v2, v8, :cond_3

    .line 746
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    .line 747
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    .line 749
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v8

    iget v9, p0, Lcom/android/internal/policy/impl/LockScreen;->mSlidingTabTouchID:I

    if-ne v8, v9, :cond_6

    .line 750
    aget v8, v6, v11

    int-to-float v8, v8

    sub-float v8, v4, v8

    aget v9, v6, v10

    int-to-float v9, v9

    sub-float v9, v5, v9

    invoke-virtual {p1, v8, v9}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 751
    iget-object v8, p0, Lcom/android/internal/policy/impl/LockScreen;->mSelector:Lcom/android/internal/widget/SlidingTab;

    invoke-virtual {v8, p1}, Lcom/android/internal/widget/SlidingTab;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 745
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 754
    .end local v2           #i:I
    :cond_7
    if-eq v0, v10, :cond_8

    const/4 v8, 0x6

    if-eq v0, v8, :cond_8

    const/16 v8, 0x106

    if-ne v0, v8, :cond_3

    .line 755
    :cond_8
    iget v8, p0, Lcom/android/internal/policy/impl/LockScreen;->mSlidingTabTouchID:I

    if-eq v8, v3, :cond_9

    if-ne v0, v10, :cond_3

    .line 758
    :cond_9
    iput v12, p0, Lcom/android/internal/policy/impl/LockScreen;->mSlidingTabTouchID:I

    .line 759
    aget v8, v6, v11

    int-to-float v8, v8

    sub-float v8, v4, v8

    aget v9, v6, v10

    int-to-float v9, v9

    sub-float v9, v5, v9

    invoke-virtual {p1, v8, v9}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 760
    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->setAction(I)V

    .line 761
    iget-object v8, p0, Lcom/android/internal/policy/impl/LockScreen;->mSelector:Lcom/android/internal/widget/SlidingTab;

    invoke-virtual {v8, p1}, Lcom/android/internal/widget/SlidingTab;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0
.end method

.method public onTrigger(Landroid/view/View;I)V
    .locals 8
    .parameter "v"
    .parameter "whichHandle"

    .prologue
    const/4 v5, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 415
    if-ne p2, v6, :cond_2

    .line 416
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v4}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->isSecure()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 417
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreen;->mSelector:Lcom/android/internal/widget/SlidingTab;

    invoke-virtual {v4}, Lcom/android/internal/widget/SlidingTab;->cancelAnimation()V

    .line 418
    :cond_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v4}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 450
    :cond_1
    :goto_0
    return-void

    .line 419
    :cond_2
    if-ne p2, v5, :cond_1

    .line 421
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z

    if-nez v4, :cond_3

    move v4, v6

    :goto_1
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z

    .line 422
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z

    if-eqz v4, :cond_6

    .line 423
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "vibrate_in_silent"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v6, :cond_4

    move v3, v6

    .line 427
    .local v3, vibe:Z
    :goto_2
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreen;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v3, :cond_5

    move v5, v6

    :goto_3
    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 434
    .end local v3           #vibe:Z
    :goto_4
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->updateRightTabResources()V

    .line 436
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z

    if-eqz v4, :cond_7

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x1040124

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .line 440
    .local v0, message:Ljava/lang/String;
    :goto_5
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z

    if-eqz v4, :cond_8

    const v4, 0x10801ab

    move v2, v4

    .line 444
    .local v2, toastIcon:I
    :goto_6
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z

    if-eqz v4, :cond_9

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x106002f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    move v1, v4

    .line 447
    .local v1, toastColor:I
    :goto_7
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreen;->mScreenLocked:Landroid/widget/TextView;

    invoke-direct {p0, v4, v0, v1, v2}, Lcom/android/internal/policy/impl/LockScreen;->toastMessage(Landroid/widget/TextView;Ljava/lang/String;II)V

    .line 448
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v4}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    goto :goto_0

    .end local v0           #message:Ljava/lang/String;
    .end local v1           #toastColor:I
    .end local v2           #toastIcon:I
    :cond_3
    move v4, v7

    .line 421
    goto :goto_1

    :cond_4
    move v3, v7

    .line 423
    goto :goto_2

    .restart local v3       #vibe:Z
    :cond_5
    move v5, v7

    .line 427
    goto :goto_3

    .line 431
    .end local v3           #vibe:Z
    :cond_6
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreen;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_4

    .line 436
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x1040125

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    goto :goto_5

    .line 440
    .restart local v0       #message:Ljava/lang/String;
    :cond_8
    const v4, 0x10801ac

    move v2, v4

    goto :goto_6

    .line 444
    .restart local v2       #toastIcon:I
    :cond_9
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1060030

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    move v1, v4

    goto :goto_7
.end method

.method public onUpdateBatteryInfo(II)V
    .locals 4
    .parameter "batteryInfoStatus"
    .parameter "batteryLevel"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 533
    sput p1, Lcom/android/internal/policy/impl/LockScreen;->mBatteryInfoState:I

    .line 534
    iput p2, p0, Lcom/android/internal/policy/impl/LockScreen;->mBatteryLevel:I

    .line 535
    sget v0, Lcom/android/internal/policy/impl/LockScreen;->mBatteryInfoState:I

    if-nez v0, :cond_1

    .line 536
    iget v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mBatteryLevel:I

    const/16 v1, 0x14

    if-ge v0, v1, :cond_0

    .line 537
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mShowingBatteryInfo:Z

    .line 540
    :goto_0
    sput v3, Lcom/android/internal/policy/impl/LockScreen;->mPlugedState:I

    .line 548
    :goto_1
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->refreshBatteryStringAndIcon()V

    .line 549
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->updateStatusLines()V

    .line 550
    return-void

    .line 539
    :cond_0
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/LockScreen;->mShowingBatteryInfo:Z

    goto :goto_0

    .line 543
    :cond_1
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mShowingBatteryInfo:Z

    .line 544
    sput v2, Lcom/android/internal/policy/impl/LockScreen;->mPlugedState:I

    goto :goto_1
.end method

.method updateConfiguration()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 964
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 965
    .local v1, newConfig:Landroid/content/res/Configuration;
    const-string v2, "GT-S5830"

    const-string v3, "GT-I5510"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 966
    iget v2, v1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iget v3, p0, Lcom/android/internal/policy/impl/LockScreen;->mKeyboardHidden:I

    if-eq v2, v3, :cond_2

    .line 967
    iget v2, v1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mKeyboardHidden:I

    .line 968
    iget v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mKeyboardHidden:I

    if-ne v2, v4, :cond_1

    move v0, v4

    .line 969
    .local v0, isKeyboardOpen:Z
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isKeyguardBypassEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 970
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 986
    .end local v0           #isKeyboardOpen:Z
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v5

    .line 968
    goto :goto_0

    .line 972
    :cond_2
    iget v2, v1, Landroid/content/res/Configuration;->orientation:I

    iget v3, p0, Lcom/android/internal/policy/impl/LockScreen;->mCreationOrientation:I

    if-eq v2, v3, :cond_0

    .line 973
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2, v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->recreateMe(Landroid/content/res/Configuration;)V

    goto :goto_1

    .line 976
    :cond_3
    iget v2, v1, Landroid/content/res/Configuration;->orientation:I

    iget v3, p0, Lcom/android/internal/policy/impl/LockScreen;->mCreationOrientation:I

    if-eq v2, v3, :cond_4

    .line 977
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2, v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->recreateMe(Landroid/content/res/Configuration;)V

    goto :goto_1

    .line 978
    :cond_4
    iget v2, v1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iget v3, p0, Lcom/android/internal/policy/impl/LockScreen;->mKeyboardHidden:I

    if-eq v2, v3, :cond_0

    .line 979
    iget v2, v1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mKeyboardHidden:I

    .line 980
    iget v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mKeyboardHidden:I

    if-ne v2, v4, :cond_5

    move v0, v4

    .line 981
    .restart local v0       #isKeyboardOpen:Z
    :goto_2
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isKeyguardBypassEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 982
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    goto :goto_1

    .end local v0           #isKeyboardOpen:Z
    :cond_5
    move v0, v5

    .line 980
    goto :goto_2
.end method
