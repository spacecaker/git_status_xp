.class public Lcom/android/internal/policy/impl/PhoneWindowManager;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Landroid/view/WindowManagerPolicy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/PhoneWindowManager$SamsungVolumeControlThread;,
        Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenCaptureAction;,
        Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;,
        Lcom/android/internal/policy/impl/PhoneWindowManager$PassHeadsetKey;,
        Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;,
        Lcom/android/internal/policy/impl/PhoneWindowManager$SettingsObserver;
    }
.end annotation


# static fields
.field static final APPLICATION_LAYER:I = 0x2

.field static final APPLICATION_MEDIA_OVERLAY_SUBLAYER:I = -0x1

.field static final APPLICATION_MEDIA_SUBLAYER:I = -0x2

.field static final APPLICATION_PANEL_SUBLAYER:I = 0x1

.field static final APPLICATION_SUB_PANEL_SUBLAYER:I = 0x2

.field private static final BOOKMARK_PICKER_ACTION:Ljava/lang/String; = "com.android.settings.BOOKMARKPICKER"

.field private static final BOOKMARK_PICKER_ACTIVITY:Ljava/lang/String; = "com.android.settings.customizedkey.BookmarkPicker"

.field private static final BOOKMARK_PICKER_ORIGIN:Ljava/lang/String; = "com.android.settings"

.field private static final BTN_MOUSE:I = 0x110

.field private static final CUSTOMIZEDKEY_ASSIGN_ACTION:Ljava/lang/String; = "com.android.settings.CUSTOMIZEDKEYASSIGN"

.field private static final CUSTOMIZEDKEY_ASSIGN_ACTIVITY:Ljava/lang/String; = "com.android.settings.customizedkey.CustomizedkeyAssign"

.field private static final CUSTOMIZEDKEY_ASSIGN_ORIGIN:Ljava/lang/String; = "com.android.settings"

.field static final DEBUG:Z = false

.field static final DEBUG_LAYOUT:Z = false

.field static final DEFAULT_ACCELEROMETER_ROTATION:I = 0x0

.field static final INPUT_METHOD_DIALOG_LAYER:I = 0xd

.field static final INPUT_METHOD_LAYER:I = 0xc

.field private static final IS_VOICE_SHORTCUT_INPUT_STATE:Ljava/lang/String; = "AxT9IME.isVoiceShortcutInputState"

.field static final KEYBOARD_ALWAYS_HIDDEN:Z = false

.field static final KEYGUARD_DIALOG_LAYER:I = 0xf

.field static final KEYGUARD_LAYER:I = 0xe

.field static final PHONE_LAYER:I = 0x3

.field static final PRINT_ANIM:Z = false

.field static final PRIORITY_PHONE_LAYER:I = 0x9

.field static final SEARCH_BAR_LAYER:I = 0x4

.field static final SECURE_SYSTEM_OVERLAY_LAYER:I = 0x11

.field static final SHOW_PROCESSES_ON_ALT_MENU:Z = false

.field static final SHOW_STARTING_ANIMATIONS:Z = true

.field static final STATUS_BAR_LAYER:I = 0x8

.field static final STATUS_BAR_PANEL_LAYER:I = 0x5

.field private static final SW_LID:I = 0x0

.field static final SYSTEM_ALERT_LAYER:I = 0xa

.field static final SYSTEM_DIALOG_LAYER:I = 0x6

.field public static final SYSTEM_DIALOG_REASON_GLOBAL_ACTIONS:Ljava/lang/String; = "globalactions"

.field public static final SYSTEM_DIALOG_REASON_HOME_KEY:Ljava/lang/String; = "homekey"

.field public static final SYSTEM_DIALOG_REASON_KEY:Ljava/lang/String; = "reason"

.field public static final SYSTEM_DIALOG_REASON_RECENT_APPS:Ljava/lang/String; = "recentapps"

.field static final SYSTEM_ERROR_LAYER:I = 0xb

.field static final SYSTEM_OVERLAY_LAYER:I = 0x10

.field static final TAG:Ljava/lang/String; = "WindowManager"

.field static final TOAST_LAYER:I = 0x7

.field private static final VOICE_SHORTCUT_INPUT_STATE_ENABLED:Ljava/lang/String; = "AxT9IME.voiceShortcutInputStateEnabled"

.field static final WALLPAPER_LAYER:I = 0x2

.field private static final WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

.field static final localLOGV:Z

.field static final mTmpContentFrame:Landroid/graphics/Rect;

.field static final mTmpDisplayFrame:Landroid/graphics/Rect;

.field static final mTmpParentFrame:Landroid/graphics/Rect;

.field static final mTmpVisibleFrame:Landroid/graphics/Rect;


# instance fields
.field private final US_FACTOY_TEST_ACTIVITY:Ljava/lang/String;

.field private final US_QWERTYKEY_TEST_CLASS:Ljava/lang/String;

.field private final US_TOUCHKEY_TEST_CLASS:Ljava/lang/String;

.field mAccelerometerDefault:I

.field mAllowLockscreenWhenOn:Z

.field private mAxT9IMEReceiver:Landroid/content/BroadcastReceiver;

.field mBroadcastDone:Landroid/content/BroadcastReceiver;

.field mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

.field mCarDockEnablesAccelerometer:Z

.field mCarDockIntent:Landroid/content/Intent;

.field mCarDockRotation:I

.field mConsumeSearchKeyUp:Z

.field mContentBottom:I

.field mContentLeft:I

.field mContentRight:I

.field mContentTop:I

.field mContext:Landroid/content/Context;

.field mCurBottom:I

.field mCurLeft:I

.field mCurRight:I

.field mCurTop:I

.field mCurrentAppOrientation:I

.field mDeskDockEnablesAccelerometer:Z

.field mDeskDockIntent:Landroid/content/Intent;

.field mDeskDockRotation:I

.field mDismissKeyguard:Z

.field mDockBottom:I

.field mDockLayer:I

.field mDockLeft:I

.field mDockMode:I

.field mDockReceiver:Landroid/content/BroadcastReceiver;

.field mDockRight:I

.field mDockTop:I

.field mEnableShiftMenuBugReports:Z

.field mEndcallBehavior:I

.field mFancyRotationAnimation:I

.field mForceStatusBar:Z

.field mGlobalActions:Lcom/android/internal/policy/impl/GlobalActions;

.field mH:I

.field mHandler:Landroid/os/Handler;

.field mHasSoftInput:Z

.field mHideLockScreen:Z

.field private mHoldKeyConcept:Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;

.field mHomeIntent:Landroid/content/Intent;

.field mHomeLongPress:Ljava/lang/Runnable;

.field mHomePressed:Z

.field mIncallPowerBehavior:I

.field mKeyboardTapVibePattern:[J

.field mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

.field mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

.field mLandscapeRotation:I

.field mLidKeyboardAccessibility:I

.field mLidNavigationAccessibility:I

.field mLidOpen:Z

.field mLidOpenRotation:I

.field final mLock:Ljava/lang/Object;

.field mLockScreenTimeout:I

.field mLockScreenTimerActive:Z

.field mLongPressVibePattern:[J

.field mMenuLongPress:Ljava/lang/Runnable;

.field mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

.field mOrientationSensorEnabled:Z

.field mPointerLocationInputChannel:Landroid/view/InputChannel;

.field private final mPointerLocationInputHandler:Landroid/view/InputHandler;

.field mPointerLocationMode:I

.field mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

.field mPortraitRotation:I

.field volatile mPowerKeyHandled:Z

.field private final mPowerLongPress:Ljava/lang/Runnable;

.field mPowerManager:Landroid/os/LocalPowerManager;

.field mRealLidOpen:Z

.field mRecentAppsDialog:Lcom/android/internal/policy/impl/RecentApplicationsDialog;

.field mSafeMode:Z

.field mSafeModeDisabledVibePattern:[J

.field mSafeModeEnabledVibePattern:[J

.field private mSamsungVolumeControlThread:Lcom/android/internal/policy/impl/PhoneWindowManager$SamsungVolumeControlThread;

.field private mScreenCaptureAction:Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenCaptureAction;

.field mScreenLockTimeout:Ljava/lang/Runnable;

.field mScreenOn:Z

.field mSearchKeyPressed:Z

.field mSeascapeRotation:I

.field mShortcutManager:Lcom/android/internal/policy/impl/ShortcutManager;

.field mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

.field final mStatusBarPanels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/WindowManagerPolicy$WindowState;",
            ">;"
        }
    .end annotation
.end field

.field mSystemReady:Z

.field mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

.field mUiMode:I

.field mUpsideDownRotation:I

.field mVibrator:Landroid/os/Vibrator;

.field mVirtualKeyVibePattern:[J

.field mW:I

.field mWindowManager:Landroid/view/IWindowManager;

.field private mdelayedupdateRotation:Ljava/lang/Runnable;

.field private mdelayedupdateRotationActive:Z

.field private voiceShortcutInputStateEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 307
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpParentFrame:Landroid/graphics/Rect;

    .line 308
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpDisplayFrame:Landroid/graphics/Rect;

    .line 309
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpContentFrame:Landroid/graphics/Rect;

    .line 310
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpVisibleFrame:Landroid/graphics/Rect;

    .line 1216
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0xd3t 0x7t 0x0t 0x0t
        0xdat 0x7t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    const-string v0, "com.sec.android.app.factorytest"

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->US_FACTOY_TEST_ACTIVITY:Ljava/lang/String;

    .line 216
    const-string v0, "com.sec.android.app.simplefunctiontest.KeypadTest"

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->US_TOUCHKEY_TEST_CLASS:Ljava/lang/String;

    .line 217
    const-string v0, "com.sec.android.app.simplefunctiontest.QwertyKeypadTest"

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->US_QWERTYKEY_TEST_CLASS:Ljava/lang/String;

    .line 219
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    .line 242
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEnableShiftMenuBugReports:Z

    .line 245
    iput-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    .line 246
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarPanels:Ljava/util/ArrayList;

    .line 247
    iput-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    .line 257
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUiMode:I

    .line 258
    iput v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    .line 266
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOn:Z

    .line 267
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationSensorEnabled:Z

    .line 268
    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentAppOrientation:I

    .line 270
    iput v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAccelerometerDefault:I

    .line 271
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasSoftInput:Z

    .line 273
    iput v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationMode:I

    .line 274
    iput-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    .line 277
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$1;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationInputHandler:Landroid/view/InputHandler;

    .line 335
    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    .line 336
    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSeascapeRotation:I

    .line 337
    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    .line 338
    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUpsideDownRotation:I

    .line 347
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHoldKeyConcept:Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;

    .line 351
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenCaptureAction;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenCaptureAction;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenCaptureAction:Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenCaptureAction;

    .line 559
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$2;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$2;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerLongPress:Ljava/lang/Runnable;

    .line 602
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$3;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$3;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMenuLongPress:Ljava/lang/Runnable;

    .line 617
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$4;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$4;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeLongPress:Ljava/lang/Runnable;

    .line 1535
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$5;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$5;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAxT9IMEReceiver:Landroid/content/BroadcastReceiver;

    .line 2030
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mdelayedupdateRotationActive:Z

    .line 2031
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$8;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$8;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mdelayedupdateRotation:Ljava/lang/Runnable;

    .line 2388
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$9;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$9;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastDone:Landroid/content/BroadcastReceiver;

    .line 2394
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$10;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$10;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockReceiver:Landroid/content/BroadcastReceiver;

    .line 2644
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$12;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$12;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenLockTimeout:Ljava/lang/Runnable;

    .line 3024
    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/PhoneWindowManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 153
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->voiceShortcutInputStateEnabled:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/internal/policy/impl/PhoneWindowManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 153
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->voiceShortcutInputStateEnabled:Z

    return p1
.end method

.method static synthetic access$202(Lcom/android/internal/policy/impl/PhoneWindowManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 153
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mdelayedupdateRotationActive:Z

    return p1
.end method

.method private callCustomizedAssignActivity(I)V
    .locals 3
    .parameter "keyCode"

    .prologue
    .line 1548
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1549
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.settings.CUSTOMIZEDKEYASSIGN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1550
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.customizedkey.CustomizedkeyAssign"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1551
    const-string v1, "keyCode"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1552
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1553
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1555
    return-void
.end method

.method private callCustomizedKey(I)V
    .locals 3
    .parameter "keyCode"

    .prologue
    .line 1522
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1523
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.settings.BOOKMARKPICKER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1524
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.customizedkey.BookmarkPicker"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1525
    const-string v1, "keyCode"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1526
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1527
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1528
    return-void
.end method

.method private determineHiddenState(ZIII)I
    .locals 1
    .parameter "lidOpen"
    .parameter "mode"
    .parameter "hiddenValue"
    .parameter "visibleValue"

    .prologue
    .line 897
    packed-switch p2, :pswitch_data_0

    move v0, p4

    .line 903
    :goto_0
    return v0

    .line 899
    :pswitch_0
    if-eqz p1, :cond_0

    move v0, p4

    goto :goto_0

    :cond_0
    move v0, p3

    goto :goto_0

    .line 901
    :pswitch_1
    if-eqz p1, :cond_1

    move v0, p3

    goto :goto_0

    :cond_1
    move v0, p4

    goto :goto_0

    .line 897
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static getAudioService()Landroid/media/IAudioService;
    .locals 3

    .prologue
    .line 1204
    const-string v1, "audio"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v0

    .line 1206
    .local v0, audioService:Landroid/media/IAudioService;
    if-nez v0, :cond_0

    .line 1207
    const-string v1, "WindowManager"

    const-string v2, "Unable to find IAudioService interface."

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1209
    :cond_0
    return-object v0
.end method

.method private getCurrentLandscapeRotation(I)I
    .locals 2
    .parameter "lastRotation"

    .prologue
    .line 2549
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v1, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;->getCurrentRotation(I)I

    move-result v0

    .line 2550
    .local v0, sensorRotation:I
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isLandscapeOrSeascape(I)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v0

    .line 2558
    :goto_0
    return v1

    .line 2554
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isLandscapeOrSeascape(I)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, p1

    .line 2555
    goto :goto_0

    .line 2558
    :cond_1
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    goto :goto_0
.end method

.method private getCurrentPortraitRotation(I)I
    .locals 2
    .parameter "lastRotation"

    .prologue
    .line 2566
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v1, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;->getCurrentRotation(I)I

    move-result v0

    .line 2567
    .local v0, sensorRotation:I
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isAnyPortrait(I)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v0

    .line 2575
    :goto_0
    return v1

    .line 2571
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isAnyPortrait(I)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, p1

    .line 2572
    goto :goto_0

    .line 2575
    :cond_1
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    goto :goto_0
.end method

.method static getLongIntArray(Landroid/content/res/Resources;I)[J
    .locals 5
    .parameter "r"
    .parameter "resid"

    .prologue
    .line 2606
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    .line 2607
    .local v0, ar:[I
    if-nez v0, :cond_0

    .line 2608
    const/4 v3, 0x0

    .line 2614
    :goto_0
    return-object v3

    .line 2610
    :cond_0
    array-length v3, v0

    new-array v2, v3, [J

    .line 2611
    .local v2, out:[J
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v3, v0

    if-ge v1, v3, :cond_1

    .line 2612
    aget v3, v0, v1

    int-to-long v3, v3

    aput-wide v3, v2, v1

    .line 2611
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move-object v3, v2

    .line 2614
    goto :goto_0
.end method

.method static getTelephonyService()Lcom/android/internal/telephony/ITelephony;
    .locals 3

    .prologue
    .line 1195
    const-string v1, "phone"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 1197
    .local v0, telephonyService:Lcom/android/internal/telephony/ITelephony;
    if-nez v0, :cond_0

    .line 1198
    const-string v1, "WindowManager"

    const-string v2, "Unable to find ITelephony interface."

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1200
    :cond_0
    return-object v0
.end method

.method private interceptPowerKeyDown(Z)V
    .locals 4
    .parameter "handled"

    .prologue
    .line 526
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyHandled:Z

    .line 527
    if-nez p1, :cond_0

    .line 528
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerLongPress:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 530
    :cond_0
    return-void
.end method

.method private interceptPowerKeyUp(Z)Z
    .locals 4
    .parameter "canceled"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 533
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyHandled:Z

    if-nez v0, :cond_1

    .line 534
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 535
    if-nez p1, :cond_0

    move v0, v3

    .line 538
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 535
    goto :goto_0

    .line 537
    :cond_1
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyHandled:Z

    move v0, v2

    .line 538
    goto :goto_0
.end method

.method private isAnyPortrait(I)Z
    .locals 1
    .parameter "sensorRotation"

    .prologue
    .line 2579
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    if-eq p1, v0, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUpsideDownRotation:I

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isLandscapeOrSeascape(I)Z
    .locals 1
    .parameter "sensorRotation"

    .prologue
    .line 2562
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    if-eq p1, v0, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSeascapeRotation:I

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private keyguardIsShowingTq()Z
    .locals 1

    .prologue
    .line 2457
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowingAndNotHidden()Z

    move-result v0

    return v0
.end method

.method private readRotation(I)I
    .locals 2
    .parameter "resID"

    .prologue
    .line 809
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getInteger(I)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 810
    .local v0, rotation:I
    sparse-switch v0, :sswitch_data_0

    .line 823
    .end local v0           #rotation:I
    :goto_0
    const/4 v1, -0x1

    :goto_1
    return v1

    .line 812
    .restart local v0       #rotation:I
    :sswitch_0
    const/4 v1, 0x0

    goto :goto_1

    .line 814
    :sswitch_1
    const/4 v1, 0x1

    goto :goto_1

    .line 816
    :sswitch_2
    const/4 v1, 0x2

    goto :goto_1

    .line 818
    :sswitch_3
    const/4 v1, 0x3

    goto :goto_1

    .line 820
    .end local v0           #rotation:I
    :catch_0
    move-exception v1

    goto :goto_0

    .line 810
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method static sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "reason"

    .prologue
    .line 2474
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2476
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->closeSystemDialogs(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2480
    :cond_0
    :goto_0
    return-void

    .line 2477
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private updateLockScreenTimeout()V
    .locals 6

    .prologue
    .line 2655
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenLockTimeout:Ljava/lang/Runnable;

    monitor-enter v1

    .line 2656
    :try_start_0
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAllowLockscreenWhenOn:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOn:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isSecure()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    move v0, v2

    .line 2657
    .local v0, enable:Z
    :goto_0
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLockScreenTimerActive:Z

    if-eq v2, v0, :cond_0

    .line 2658
    if-eqz v0, :cond_2

    .line 2660
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenLockTimeout:Ljava/lang/Runnable;

    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLockScreenTimeout:I

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2665
    :goto_1
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLockScreenTimerActive:Z

    .line 2667
    :cond_0
    monitor-exit v1

    .line 2668
    return-void

    .line 2656
    .end local v0           #enable:Z
    :cond_1
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0

    .line 2663
    .restart local v0       #enable:Z
    :cond_2
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenLockTimeout:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 2667
    .end local v0           #enable:Z
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private writeSlideCount(Z)V
    .locals 9
    .parameter "lidOpen"

    .prologue
    const-string v6, "/data/app/slideCount"

    .line 2045
    const-string v6, "WindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SW_LID "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2047
    :try_start_0
    iget-boolean v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRealLidOpen:Z

    if-eqz v6, :cond_2

    .line 2048
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    const-string v7, "/data/app/slideCount"

    invoke-direct {v6, v7}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 2049
    .local v3, inReader:Ljava/io/BufferedReader;
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 2050
    .local v4, number:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 2051
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_1

    .line 2052
    :cond_0
    new-instance v4, Ljava/lang/String;

    .end local v4           #number:Ljava/lang/String;
    const-string v6, "0"

    invoke-direct {v4, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 2055
    .restart local v4       #number:Ljava/lang/String;
    :cond_1
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2056
    .local v0, SlideOpenCount:I
    add-int/lit8 v0, v0, 0x1

    .line 2057
    new-instance v5, Ljava/io/BufferedWriter;

    new-instance v6, Ljava/io/FileWriter;

    const-string v7, "/data/app/slideCount"

    invoke-direct {v6, v7}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 2058
    .local v5, out:Ljava/io/BufferedWriter;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2059
    .local v1, countString:Ljava/lang/String;
    invoke-virtual {v5, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 2060
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2066
    .end local v0           #SlideOpenCount:I
    .end local v1           #countString:Ljava/lang/String;
    .end local v3           #inReader:Ljava/io/BufferedReader;
    .end local v4           #number:Ljava/lang/String;
    .end local v5           #out:Ljava/io/BufferedWriter;
    :cond_2
    :goto_0
    return-void

    .line 2063
    :catch_0
    move-exception v6

    move-object v2, v6

    .line 2064
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public addStartingWindow(Landroid/os/IBinder;Ljava/lang/String;ILjava/lang/CharSequence;II)Landroid/view/View;
    .locals 14
    .parameter "appToken"
    .parameter "packageName"
    .parameter "theme"
    .parameter "nonLocalizedLabel"
    .parameter "labelRes"
    .parameter "icon"

    .prologue
    .line 1010
    if-nez p2, :cond_0

    .line 1011
    const/4 v11, 0x0

    .line 1101
    :goto_0
    return-object v11

    .line 1015
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1016
    .local v3, context:Landroid/content/Context;
    const/4 v7, 0x0

    .line 1019
    .local v7, setTheme:Z
    if-nez p3, :cond_1

    if-eqz p5, :cond_2

    .line 1021
    :cond_1
    const/4 v11, 0x0

    :try_start_1
    move-object v0, v3

    move-object/from16 v1, p2

    move v2, v11

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v3

    .line 1022
    if-eqz p3, :cond_2

    .line 1023
    move-object v0, v3

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/content/Context;->setTheme(I)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1024
    const/4 v7, 0x1

    .line 1030
    :cond_2
    :goto_1
    if-nez v7, :cond_3

    .line 1031
    const v11, 0x1030005

    :try_start_2
    invoke-virtual {v3, v11}, Landroid/content/Context;->setTheme(I)V

    .line 1034
    :cond_3
    invoke-static {v3}, Lcom/android/internal/policy/PolicyManager;->makeNewWindow(Landroid/content/Context;)Landroid/view/Window;

    move-result-object v9

    .line 1035
    .local v9, win:Landroid/view/Window;
    invoke-virtual {v9}, Landroid/view/Window;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v11

    const/16 v12, 0xc

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 1037
    const/4 v11, 0x0

    goto :goto_0

    .line 1040
    :cond_4
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 1041
    .local v6, r:Landroid/content/res/Resources;
    move-object v0, v6

    move/from16 v1, p5

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getText(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    .line 1043
    const/4 v11, 0x3

    invoke-virtual {v9, v11}, Landroid/view/Window;->setType(I)V

    .line 1049
    const v11, 0x20018

    const v12, 0x20018

    invoke-virtual {v9, v11, v12}, Landroid/view/Window;->setFlags(II)V

    .line 1057
    const/4 v11, -0x1

    const/4 v12, -0x1

    invoke-virtual {v9, v11, v12}, Landroid/view/Window;->setLayout(II)V

    .line 1060
    invoke-virtual {v9}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    .line 1061
    .local v5, params:Landroid/view/WindowManager$LayoutParams;
    iput-object p1, v5, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 1062
    move-object/from16 v0, p2

    move-object v1, v5

    iput-object v0, v1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 1063
    invoke-virtual {v9}, Landroid/view/Window;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v11

    const/16 v12, 0x8

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    iput v11, v5, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1065
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Starting "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v0, v11

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 1067
    const-string v11, "window"

    invoke-virtual {v3, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/WindowManagerImpl;

    .line 1069
    .local v10, wm:Landroid/view/WindowManagerImpl;
    invoke-virtual {v9}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v8

    .line 1071
    .local v8, view:Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/Window;->isFloating()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 1078
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 1086
    :cond_5
    invoke-virtual {v10, v8, v5}, Landroid/view/WindowManagerImpl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1090
    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;
    :try_end_2
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v11

    if-eqz v11, :cond_6

    move-object v11, v8

    goto/16 :goto_0

    :cond_6
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 1091
    .end local v3           #context:Landroid/content/Context;
    .end local v5           #params:Landroid/view/WindowManager$LayoutParams;
    .end local v6           #r:Landroid/content/res/Resources;
    .end local v7           #setTheme:Z
    .end local v8           #view:Landroid/view/View;
    .end local v9           #win:Landroid/view/Window;
    .end local v10           #wm:Landroid/view/WindowManagerImpl;
    :catch_0
    move-exception v11

    move-object v4, v11

    .line 1093
    .local v4, e:Landroid/view/WindowManager$BadTokenException;
    const-string v11, "WindowManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " already running, starting window not displayed"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1101
    .end local v4           #e:Landroid/view/WindowManager$BadTokenException;
    :goto_2
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 1094
    :catch_1
    move-exception v11

    move-object v4, v11

    .line 1098
    .local v4, e:Ljava/lang/RuntimeException;
    const-string v11, "WindowManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " failed creating starting window"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v4}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 1026
    .end local v4           #e:Ljava/lang/RuntimeException;
    .restart local v3       #context:Landroid/content/Context;
    .restart local v7       #setTheme:Z
    :catch_2
    move-exception v11

    goto/16 :goto_1
.end method

.method public adjustConfigurationLw(Landroid/content/res/Configuration;)V
    .locals 5
    .parameter "config"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const-string v4, "GT-S5830i"

    .line 908
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->readLidState()V

    .line 909
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidOpen:Z

    .line 910
    .local v0, lidOpen:Z
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/LocalPowerManager;

    invoke-interface {v1, v0}, Landroid/os/LocalPowerManager;->setKeyboardVisibility(Z)V

    .line 912
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidKeyboardAccessibility:I

    invoke-direct {p0, v0, v1, v3, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->determineHiddenState(ZIII)I

    move-result v1

    iput v1, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    .line 916
    const-string v1, "GT-S5830i"

    const-string v1, "GT-B5510"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "GT-S5830i"

    const-string v1, "GT-B7800"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 918
    :cond_0
    iput v2, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    .line 921
    :cond_1
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidNavigationAccessibility:I

    invoke-direct {p0, v0, v1, v3, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->determineHiddenState(ZIII)I

    move-result v1

    iput v1, p1, Landroid/content/res/Configuration;->navigationHidden:I

    .line 924
    iget v1, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-eq v1, v2, :cond_2

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasSoftInput:Z

    if-eqz v1, :cond_3

    :cond_2
    move v1, v2

    :goto_0
    iput v1, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 928
    return-void

    :cond_3
    move v1, v3

    .line 924
    goto :goto_0
.end method

.method public adjustWindowParamsLw(Landroid/view/WindowManager$LayoutParams;)V
    .locals 1
    .parameter "attrs"

    .prologue
    .line 870
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    sparse-switch v0, :sswitch_data_0

    .line 882
    :goto_0
    return-void

    .line 875
    :sswitch_0
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v0, v0, 0x18

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0

    .line 879
    :sswitch_1
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0

    .line 870
    :sswitch_data_0
    .sparse-switch
        0x7d5 -> :sswitch_1
        0x7d6 -> :sswitch_0
        0x7df -> :sswitch_0
    .end sparse-switch
.end method

.method public allowAppAnimationsLw()Z
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1955
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v5}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v7

    .line 1978
    :goto_0
    return v5

    .line 1960
    :cond_0
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v5}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1961
    new-instance v3, Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v5}, Landroid/view/WindowManagerPolicy$WindowState;->getShownFrameLw()Landroid/graphics/Rect;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1962
    .local v3, rect:Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarPanels:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int v0, v5, v8

    .local v0, i:I
    :goto_1
    if-ltz v0, :cond_2

    .line 1963
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarPanels:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManagerPolicy$WindowState;

    .line 1964
    .local v4, w:Landroid/view/WindowManagerPolicy$WindowState;
    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1965
    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowState;->getShownFrameLw()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 1962
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 1968
    .end local v4           #w:Landroid/view/WindowManagerPolicy$WindowState;
    :cond_2
    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mW:I

    div-int/lit8 v2, v5, 0xa

    .line 1969
    .local v2, insetw:I
    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mH:I

    div-int/lit8 v1, v5, 0xa

    .line 1970
    .local v1, inseth:I
    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mW:I

    sub-int/2addr v5, v2

    iget v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mH:I

    sub-int/2addr v6, v1

    invoke-virtual {v3, v2, v1, v5, v6}, Landroid/graphics/Rect;->contains(IIII)Z

    move-result v5

    if-eqz v5, :cond_3

    move v5, v7

    .line 1975
    goto :goto_0

    .end local v0           #i:I
    .end local v1           #inseth:I
    .end local v2           #insetw:I
    .end local v3           #rect:Landroid/graphics/Rect;
    :cond_3
    move v5, v8

    .line 1978
    goto :goto_0
.end method

.method public allowKeyRepeat()Z
    .locals 1

    .prologue
    .line 2844
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOn:Z

    return v0
.end method

.method public animatingWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)V
    .locals 4
    .parameter "win"
    .parameter "attrs"

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x1

    .line 1847
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v0, :cond_3

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleOrBehindKeyguardLw()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1849
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_0

    .line 1850
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceStatusBar:Z

    .line 1852
    :cond_0
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-lt v0, v2, :cond_3

    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x63

    if-gt v0, v1, :cond_3

    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    if-nez v0, :cond_3

    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    if-nez v0, :cond_3

    iget v0, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v0, v3, :cond_3

    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ne v0, v3, :cond_3

    .line 1858
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    .line 1859
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v1, 0x8

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 1861
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideLockScreen:Z

    .line 1863
    :cond_1
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v1, 0x40

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    .line 1865
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDismissKeyguard:Z

    .line 1867
    :cond_2
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    .line 1868
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAllowLockscreenWhenOn:Z

    .line 1872
    :cond_3
    return-void
.end method

.method public beginAnimationLw(II)V
    .locals 2
    .parameter "displayWidth"
    .parameter "displayHeight"

    .prologue
    const/4 v1, 0x0

    .line 1836
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    .line 1837
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceStatusBar:Z

    .line 1839
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideLockScreen:Z

    .line 1840
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAllowLockscreenWhenOn:Z

    .line 1841
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDismissKeyguard:Z

    .line 1842
    return-void
.end method

.method public beginLayoutLw(II)V
    .locals 5
    .parameter "displayWidth"
    .parameter "displayHeight"

    .prologue
    const/4 v4, 0x0

    .line 1606
    iput p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mW:I

    .line 1607
    iput p2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mH:I

    .line 1608
    iput v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurLeft:I

    iput v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    iput v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    .line 1609
    iput v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    iput v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    iput v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    .line 1610
    iput p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurRight:I

    iput p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    iput p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    .line 1611
    iput p2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    iput p2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    iput p2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    .line 1612
    const/high16 v3, 0x1000

    iput v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLayer:I

    .line 1615
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v3, :cond_0

    .line 1616
    sget-object v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpParentFrame:Landroid/graphics/Rect;

    .line 1617
    .local v1, pf:Landroid/graphics/Rect;
    sget-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpDisplayFrame:Landroid/graphics/Rect;

    .line 1618
    .local v0, df:Landroid/graphics/Rect;
    sget-object v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpVisibleFrame:Landroid/graphics/Rect;

    .line 1619
    .local v2, vf:Landroid/graphics/Rect;
    iput v4, v2, Landroid/graphics/Rect;->left:I

    iput v4, v0, Landroid/graphics/Rect;->left:I

    iput v4, v1, Landroid/graphics/Rect;->left:I

    .line 1620
    iput v4, v2, Landroid/graphics/Rect;->top:I

    iput v4, v0, Landroid/graphics/Rect;->top:I

    iput v4, v1, Landroid/graphics/Rect;->top:I

    .line 1621
    iput p1, v2, Landroid/graphics/Rect;->right:I

    iput p1, v0, Landroid/graphics/Rect;->right:I

    iput p1, v1, Landroid/graphics/Rect;->right:I

    .line 1622
    iput p2, v2, Landroid/graphics/Rect;->bottom:I

    iput p2, v0, Landroid/graphics/Rect;->bottom:I

    iput p2, v1, Landroid/graphics/Rect;->bottom:I

    .line 1624
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3, v1, v0, v2, v2}, Landroid/view/WindowManagerPolicy$WindowState;->computeFrameLw(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1625
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1628
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iput v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    iput v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    iput v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    .line 1634
    .end local v0           #df:Landroid/graphics/Rect;
    .end local v1           #pf:Landroid/graphics/Rect;
    .end local v2           #vf:Landroid/graphics/Rect;
    :cond_0
    return-void
.end method

.method public canBeForceHidden(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z
    .locals 2
    .parameter "win"
    .parameter "attrs"

    .prologue
    .line 999
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7d0

    if-eq v0, v1, :cond_0

    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7dd

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public checkAddPermission(Landroid/view/WindowManager$LayoutParams;)I
    .locals 4
    .parameter "attrs"

    .prologue
    const/4 v3, 0x0

    .line 828
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 830
    .local v1, type:I
    const/16 v2, 0x7d0

    if-lt v1, v2, :cond_0

    const/16 v2, 0xbb7

    if-le v1, v2, :cond_1

    :cond_0
    move v2, v3

    .line 866
    :goto_0
    return v2

    .line 835
    :cond_1
    const/16 v2, 0xbb6

    if-ne v1, v2, :cond_2

    move v2, v3

    .line 836
    goto :goto_0

    .line 839
    :cond_2
    const/4 v0, 0x0

    .line 840
    .local v0, permission:Ljava/lang/String;
    packed-switch v1, :pswitch_data_0

    .line 858
    :pswitch_0
    const-string v0, "android.permission.INTERNAL_SYSTEM_WINDOW"

    .line 860
    :goto_1
    :pswitch_1
    if-eqz v0, :cond_3

    .line 861
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_3

    .line 863
    const/4 v2, -0x8

    goto :goto_0

    .line 855
    :pswitch_2
    const-string v0, "android.permission.SYSTEM_ALERT_WINDOW"

    .line 856
    goto :goto_1

    :cond_3
    move v2, v3

    .line 866
    goto :goto_0

    .line 840
    :pswitch_data_0
    .packed-switch 0x7d2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public createForceHideEnterAnimation()Landroid/view/animation/Animation;
    .locals 2

    .prologue
    .line 1190
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const v1, 0x10a001d

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method createHomeDockIntent()Landroid/content/Intent;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 2707
    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUiMode:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 2708
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockIntent:Landroid/content/Intent;

    .line 2715
    .local v1, intent:Landroid/content/Intent;
    :goto_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 2717
    .local v0, ai:Landroid/content/pm/ActivityInfo;
    if-nez v0, :cond_2

    move-object v3, v5

    .line 2727
    .end local v0           #ai:Landroid/content/pm/ActivityInfo;
    .end local v1           #intent:Landroid/content/Intent;
    :goto_1
    return-object v3

    .line 2709
    :cond_0
    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUiMode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 2710
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockIntent:Landroid/content/Intent;

    .restart local v1       #intent:Landroid/content/Intent;
    goto :goto_0

    .end local v1           #intent:Landroid/content/Intent;
    :cond_1
    move-object v3, v5

    .line 2712
    goto :goto_1

    .line 2721
    .restart local v0       #ai:Landroid/content/pm/ActivityInfo;
    .restart local v1       #intent:Landroid/content/Intent;
    :cond_2
    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v3, :cond_3

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "android.dock_home"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2722
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 2723
    .end local v1           #intent:Landroid/content/Intent;
    .local v2, intent:Landroid/content/Intent;
    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object v3, v2

    .line 2724
    goto :goto_1

    .end local v2           #intent:Landroid/content/Intent;
    .restart local v1       #intent:Landroid/content/Intent;
    :cond_3
    move-object v3, v5

    .line 2727
    goto :goto_1
.end method

.method public detectSafeMode()Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    const-string v5, "WindowManager"

    .line 2584
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    const/16 v6, 0x52

    invoke-interface {v5, v6}, Landroid/view/IWindowManager;->getKeycodeState(I)I

    move-result v2

    .line 2585
    .local v2, menuState:I
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    const/16 v6, 0x2f

    invoke-interface {v5, v6}, Landroid/view/IWindowManager;->getKeycodeState(I)I

    move-result v3

    .line 2586
    .local v3, sState:I
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    const/16 v6, 0x17

    invoke-interface {v5, v6}, Landroid/view/IWindowManager;->getDPadKeycodeState(I)I

    move-result v0

    .line 2587
    .local v0, dpadState:I
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    const/16 v6, 0x110

    invoke-interface {v5, v6}, Landroid/view/IWindowManager;->getTrackballScancodeState(I)I

    move-result v4

    .line 2588
    .local v4, trackballState:I
    if-gtz v2, :cond_0

    if-gtz v3, :cond_0

    if-gtz v0, :cond_0

    if-lez v4, :cond_1

    :cond_0
    move v5, v7

    :goto_0
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSafeMode:Z

    .line 2589
    const/4 v5, 0x0

    iget-boolean v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSafeMode:Z

    if-eqz v6, :cond_2

    const/16 v6, 0x2711

    :goto_1
    const/4 v7, 0x1

    invoke-virtual {p0, v5, v6, v7}, Lcom/android/internal/policy/impl/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 2592
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSafeMode:Z

    if-eqz v5, :cond_3

    .line 2593
    const-string v5, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SAFE MODE ENABLED (menu="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " s="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " dpad="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " trackball="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2598
    :goto_2
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSafeMode:Z

    return v5

    .line 2588
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 2589
    :cond_2
    const/16 v6, 0x2710

    goto :goto_1

    .line 2596
    :cond_3
    const-string v5, "WindowManager"

    const-string v6, "SAFE MODE not enabled"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 2599
    .end local v0           #dpadState:I
    .end local v2           #menuState:I
    .end local v3           #sState:I
    .end local v4           #trackballState:I
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 2601
    .local v1, e:Landroid/os/RemoteException;
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "window manager dead"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public doesForceHide(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z
    .locals 2
    .parameter "win"
    .parameter "attrs"

    .prologue
    .line 995
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7d4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public enableKeyguard(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 2448
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->setKeyguardEnabled(Z)V

    .line 2449
    return-void
.end method

.method public enableScreenAfterBoot()V
    .locals 1

    .prologue
    .line 2672
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->readLidState()V

    .line 2673
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateRotation(I)V

    .line 2674
    return-void
.end method

.method public exitKeyguardSecurely(Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 2453
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->verifyUnlock(Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;)V

    .line 2454
    return-void
.end method

.method public finishAnimationLw()I
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1876
    const/4 v0, 0x0

    .line 1878
    .local v0, changes:I
    const/4 v2, 0x0

    .line 1879
    .local v2, hiding:Z
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v5, :cond_0

    .line 1882
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceStatusBar:Z

    if-eqz v5, :cond_4

    .line 1884
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v5, v6}, Landroid/view/WindowManagerPolicy$WindowState;->showLw(Z)Z

    move-result v5

    if-eqz v5, :cond_0

    or-int/lit8 v0, v0, 0x1

    .line 1904
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    .line 1905
    const-string v5, "statusbar"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v4

    .line 1906
    .local v4, sbs:Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v4, :cond_1

    .line 1909
    :try_start_0
    invoke-interface {v4}, Lcom/android/internal/statusbar/IStatusBarService;->collapse()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1917
    .end local v4           #sbs:Lcom/android/internal/statusbar/IStatusBarService;
    :cond_1
    :goto_1
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v5, :cond_3

    .line 1919
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDismissKeyguard:Z

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isSecure()Z

    move-result v5

    if-nez v5, :cond_8

    .line 1920
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v5, v6}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1921
    or-int/lit8 v0, v0, 0x7

    .line 1925
    :cond_2
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1926
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/internal/policy/impl/PhoneWindowManager$7;

    invoke-direct {v6, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$7;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1950
    :cond_3
    :goto_2
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateLockScreenTimeout()V

    .line 1951
    return v0

    .line 1885
    :cond_4
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v5, :cond_0

    .line 1889
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v5}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 1891
    .local v3, lp:Landroid/view/WindowManager$LayoutParams;
    iget v5, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v5, v5, 0x400

    if-eqz v5, :cond_6

    move v1, v6

    .line 1893
    .local v1, hideStatusBar:Z
    :goto_3
    if-eqz v1, :cond_7

    .line 1895
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v5, v6}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    move-result v5

    if-eqz v5, :cond_5

    or-int/lit8 v0, v0, 0x1

    .line 1896
    :cond_5
    const/4 v2, 0x1

    goto :goto_0

    .end local v1           #hideStatusBar:Z
    :cond_6
    move v1, v7

    .line 1891
    goto :goto_3

    .line 1899
    .restart local v1       #hideStatusBar:Z
    :cond_7
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v5, v6}, Landroid/view/WindowManagerPolicy$WindowState;->showLw(Z)Z

    move-result v5

    if-eqz v5, :cond_0

    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1932
    .end local v1           #hideStatusBar:Z
    .end local v3           #lp:Landroid/view/WindowManager$LayoutParams;
    :cond_8
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideLockScreen:Z

    if-eqz v5, :cond_a

    .line 1933
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v5, v6}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1934
    or-int/lit8 v0, v0, 0x7

    .line 1938
    :cond_9
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v5, v6}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->setHidden(Z)V

    goto :goto_2

    .line 1940
    :cond_a
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v5, v6}, Landroid/view/WindowManagerPolicy$WindowState;->showLw(Z)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 1941
    or-int/lit8 v0, v0, 0x7

    .line 1945
    :cond_b
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v5, v7}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->setHidden(Z)V

    goto :goto_2

    .line 1910
    .restart local v4       #sbs:Lcom/android/internal/statusbar/IStatusBarService;
    :catch_0
    move-exception v5

    goto/16 :goto_1
.end method

.method public finishLayoutLw()I
    .locals 1

    .prologue
    .line 1831
    const/4 v0, 0x0

    return v0
.end method

.method public getContentInsetHintLw(Landroid/view/WindowManager$LayoutParams;Landroid/graphics/Rect;)V
    .locals 6
    .parameter "attrs"
    .parameter "contentInset"

    .prologue
    .line 1593
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1595
    .local v0, fl:I
    const v1, 0x10500

    and-int/2addr v1, v0

    const v2, 0x10100

    if-ne v1, v2, :cond_0

    .line 1598
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurLeft:I

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mW:I

    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurRight:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mH:I

    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    sub-int/2addr v4, v5

    invoke-virtual {p2, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 1602
    :goto_0
    return-void

    .line 1600
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_0
.end method

.method public getMaxWallpaperLayer()I
    .locals 1

    .prologue
    .line 991
    const/16 v0, 0x8

    return v0
.end method

.method goHome()Z
    .locals 15

    .prologue
    .line 2759
    :try_start_0
    const-string v0, "persist.sys.uts-test-mode"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2761
    const-string v0, "WindowManager"

    const-string v1, "UTS-TEST-MODE"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2776
    :cond_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-interface/range {v3 .. v13}, Landroid/app/IActivityManager;->startActivity(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;[Landroid/net/Uri;ILandroid/os/IBinder;Ljava/lang/String;IZZ)I

    move-result v14

    .line 2780
    .local v14, result:I
    const/4 v0, 0x1

    if-ne v14, v0, :cond_2

    .line 2781
    const/4 v0, 0x0

    .line 2787
    .end local v14           #result:I
    :goto_0
    return v0

    .line 2763
    :cond_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->stopAppSwitches()V

    .line 2764
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows()V

    .line 2765
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->createHomeDockIntent()Landroid/content/Intent;

    move-result-object v2

    .line 2766
    .local v2, dock:Landroid/content/Intent;
    if-eqz v2, :cond_0

    .line 2767
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-interface/range {v0 .. v10}, Landroid/app/IActivityManager;->startActivity(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;[Landroid/net/Uri;ILandroid/os/IBinder;Ljava/lang/String;IZZ)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v14

    .line 2771
    .restart local v14       #result:I
    const/4 v0, 0x1

    if-ne v14, v0, :cond_0

    .line 2772
    const/4 v0, 0x0

    goto :goto_0

    .line 2783
    .end local v2           #dock:Landroid/content/Intent;
    .end local v14           #result:I
    :catch_0
    move-exception v0

    .line 2787
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method handleVolumeKey(II)V
    .locals 5
    .parameter "stream"
    .parameter "keycode"

    .prologue
    const-string v4, "WindowManager"

    .line 2087
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getAudioService()Landroid/media/IAudioService;

    move-result-object v0

    .line 2089
    .local v0, audioService:Landroid/media/IAudioService;
    const-string v2, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleVolumeKey stream="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2090
    if-nez v0, :cond_0

    .line 2108
    :goto_0
    return-void

    .line 2097
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2098
    const/16 v2, 0x18

    if-ne p2, v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    const/4 v3, 0x0

    invoke-interface {v0, p1, v2, v3}, Landroid/media/IAudioService;->adjustStreamVolume(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2106
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    .line 2098
    :cond_1
    const/4 v2, -0x1

    goto :goto_1

    .line 2103
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 2104
    .local v1, e:Landroid/os/RemoteException;
    :try_start_1
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IAudioService.adjustStreamVolume() threw RemoteException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2106
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    .end local v1           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v2
.end method

.method public inKeyguardRestrictedKeyInputMode()Z
    .locals 1

    .prologue
    .line 2462
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isInputRestricted()Z

    move-result v0

    return v0
.end method

.method public init(Landroid/content/Context;Landroid/view/IWindowManager;Landroid/os/LocalPowerManager;)V
    .locals 10
    .parameter "context"
    .parameter "windowManager"
    .parameter "powerManager"

    .prologue
    const/4 v8, 0x0

    const/high16 v7, 0x1020

    const-string v9, "android.intent.action.MAIN"

    .line 643
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 644
    iput-object p2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    .line 645
    iput-object p3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/LocalPowerManager;

    .line 646
    new-instance v5, Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-direct {v5, p1, p0, p3}, Lcom/android/internal/policy/impl/KeyguardViewMediator;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/os/LocalPowerManager;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    .line 647
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    iput-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    .line 648
    new-instance v5, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v5, p0, v6}, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    .line 649
    new-instance v4, Lcom/android/internal/policy/impl/PhoneWindowManager$SettingsObserver;

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v4, p0, v5}, Lcom/android/internal/policy/impl/PhoneWindowManager$SettingsObserver;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/os/Handler;)V

    .line 650
    .local v4, settingsObserver:Lcom/android/internal/policy/impl/PhoneWindowManager$SettingsObserver;
    invoke-virtual {v4}, Lcom/android/internal/policy/impl/PhoneWindowManager$SettingsObserver;->observe()V

    .line 651
    new-instance v5, Lcom/android/internal/policy/impl/ShortcutManager;

    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v5, p1, v6}, Lcom/android/internal/policy/impl/ShortcutManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShortcutManager:Lcom/android/internal/policy/impl/ShortcutManager;

    .line 652
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShortcutManager:Lcom/android/internal/policy/impl/ShortcutManager;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/ShortcutManager;->observe()V

    .line 653
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v5, v9, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    .line 654
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    const-string v6, "android.intent.category.HOME"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 655
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    invoke-virtual {v5, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 657
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v5, v9, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockIntent:Landroid/content/Intent;

    .line 658
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockIntent:Landroid/content/Intent;

    const-string v6, "android.intent.category.CAR_DOCK"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 659
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockIntent:Landroid/content/Intent;

    invoke-virtual {v5, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 661
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v5, v9, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockIntent:Landroid/content/Intent;

    .line 662
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockIntent:Landroid/content/Intent;

    const-string v6, "android.intent.category.DESK_DOCK"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 663
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockIntent:Landroid/content/Intent;

    invoke-virtual {v5, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 665
    const-string v5, "power"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .line 666
    .local v3, pm:Landroid/os/PowerManager;
    const/4 v5, 0x1

    const-string v6, "PhoneWindowManager.mBroadcastWakeLock"

    invoke-virtual {v3, v5, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 668
    const-string v5, "1"

    const-string v6, "ro.debuggable"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEnableShiftMenuBugReports:Z

    .line 669
    const v5, 0x10e0004

    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/PhoneWindowManager;->readRotation(I)I

    move-result v5

    iput v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidOpenRotation:I

    .line 671
    const v5, 0x10e0006

    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/PhoneWindowManager;->readRotation(I)I

    move-result v5

    iput v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockRotation:I

    .line 673
    const v5, 0x10e0005

    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/PhoneWindowManager;->readRotation(I)I

    move-result v5

    iput v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockRotation:I

    .line 675
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10d000f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockEnablesAccelerometer:Z

    .line 677
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10d000e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockEnablesAccelerometer:Z

    .line 679
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10e0009

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidKeyboardAccessibility:I

    .line 681
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10e000a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidNavigationAccessibility:I

    .line 684
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 685
    .local v1, filter:Landroid/content/IntentFilter;
    sget-object v5, Landroid/app/UiModeManager;->ACTION_ENTER_CAR_MODE:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 686
    sget-object v5, Landroid/app/UiModeManager;->ACTION_EXIT_CAR_MODE:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 687
    sget-object v5, Landroid/app/UiModeManager;->ACTION_ENTER_DESK_MODE:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 688
    sget-object v5, Landroid/app/UiModeManager;->ACTION_EXIT_DESK_MODE:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 689
    const-string v5, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 690
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v5, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v2

    .line 691
    .local v2, intent:Landroid/content/Intent;
    if-eqz v2, :cond_0

    .line 693
    const-string v5, "android.intent.extra.DOCK_STATE"

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    .line 698
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 699
    .local v0, axT9IMEFilter:Landroid/content/IntentFilter;
    const-string v5, "AxT9IME.isVoiceShortcutInputState"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 700
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAxT9IMEReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v5, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 702
    new-instance v5, Landroid/os/Vibrator;

    invoke-direct {v5}, Landroid/os/Vibrator;-><init>()V

    iput-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    .line 703
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1070017

    invoke-static {v5, v6}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressVibePattern:[J

    .line 705
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1070018

    invoke-static {v5, v6}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVirtualKeyVibePattern:[J

    .line 707
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1070019

    invoke-static {v5, v6}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyboardTapVibePattern:[J

    .line 709
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x107001a

    invoke-static {v5, v6}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSafeModeDisabledVibePattern:[J

    .line 711
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x107001b

    invoke-static {v5, v6}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSafeModeEnabledVibePattern:[J

    .line 713
    return-void
.end method

.method public interceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;IIIIIII)Z
    .locals 31
    .parameter "win"
    .parameter "action"
    .parameter "flags"
    .parameter "keyCode"
    .parameter "scanCode"
    .parameter "metaState"
    .parameter "repeatCount"
    .parameter "policyFlags"

    .prologue
    .line 1225
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->keyguardOn()Z

    move-result v16

    .line 1226
    .local v16, keyguardOn:Z
    if-nez p2, :cond_3

    const/16 v27, 0x1

    move/from16 v8, v27

    .line 1228
    .local v8, down:Z
    :goto_0
    const/16 v27, 0x1

    move/from16 v0, p2

    move/from16 v1, v27

    if-ne v0, v1, :cond_4

    const/16 v27, 0x1

    move/from16 v26, v27

    .line 1229
    .local v26, up:Z
    :goto_1
    const/16 v27, 0x80

    move/from16 v0, p2

    move/from16 v1, v27

    if-ne v0, v1, :cond_5

    const/16 v27, 0x1

    move/from16 v17, v27

    .line 1231
    .local v17, longPress:Z
    :goto_2
    and-int/lit8 v27, p3, 0x20

    if-eqz v27, :cond_6

    const/16 v27, 0x1

    move/from16 v5, v27

    .line 1241
    .local v5, canceled:Z
    :goto_3
    const/16 v27, 0x3

    move/from16 v0, p4

    move/from16 v1, v27

    if-ne v0, v1, :cond_0

    if-nez v8, :cond_0

    .line 1242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeLongPress:Ljava/lang/Runnable;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1247
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomePressed:Z

    move/from16 v27, v0

    if-eqz v27, :cond_9

    .line 1251
    const/16 v27, 0x3

    move/from16 v0, p4

    move/from16 v1, v27

    if-ne v0, v1, :cond_2

    .line 1252
    if-nez v8, :cond_2

    .line 1253
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomePressed:Z

    .line 1256
    new-instance v14, Landroid/content/Intent;

    const-string v27, "CLOSE_CONTEXT_MENU"

    move-object v0, v14

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1257
    .local v14, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object v1, v14

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1259
    if-nez v5, :cond_8

    .line 1263
    const/4 v11, 0x0

    .line 1264
    .local v11, incomingRinging:Z
    const/4 v15, 0x0

    .line 1266
    .local v15, isQwertyTest:I
    :try_start_0
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v22

    .line 1267
    .local v22, telephonyService:Lcom/android/internal/telephony/ITelephony;
    if-eqz v22, :cond_1

    .line 1268
    invoke-interface/range {v22 .. v22}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    .line 1274
    .end local v22           #telephonyService:Lcom/android/internal/telephony/ITelephony;
    :cond_1
    :goto_4
    if-eqz v11, :cond_7

    .line 1275
    const-string v27, "WindowManager"

    const-string v28, "Ignoring HOME; there\'s a ringing incoming call."

    invoke-static/range {v27 .. v28}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1286
    .end local v11           #incomingRinging:Z
    .end local v14           #intent:Landroid/content/Intent;
    .end local v15           #isQwertyTest:I
    :cond_2
    :goto_5
    const/16 v27, 0x1

    .line 1517
    :goto_6
    return v27

    .line 1226
    .end local v5           #canceled:Z
    .end local v8           #down:Z
    .end local v17           #longPress:Z
    .end local v26           #up:Z
    :cond_3
    const/16 v27, 0x0

    move/from16 v8, v27

    goto/16 :goto_0

    .line 1228
    .restart local v8       #down:Z
    :cond_4
    const/16 v27, 0x0

    move/from16 v26, v27

    goto/16 :goto_1

    .line 1229
    .restart local v26       #up:Z
    :cond_5
    const/16 v27, 0x0

    move/from16 v17, v27

    goto :goto_2

    .line 1231
    .restart local v17       #longPress:Z
    :cond_6
    const/16 v27, 0x0

    move/from16 v5, v27

    goto :goto_3

    .line 1270
    .restart local v5       #canceled:Z
    .restart local v11       #incomingRinging:Z
    .restart local v14       #intent:Landroid/content/Intent;
    .restart local v15       #isQwertyTest:I
    :catch_0
    move-exception v27

    move-object/from16 v9, v27

    .line 1271
    .local v9, ex:Landroid/os/RemoteException;
    const-string v27, "WindowManager"

    const-string v28, "RemoteException from getPhoneInterface()"

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object v2, v9

    invoke-static {v0, v1, v2}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 1278
    .end local v9           #ex:Landroid/os/RemoteException;
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->launchHomeFromHotKey()V

    goto :goto_5

    .line 1281
    .end local v11           #incomingRinging:Z
    .end local v15           #isQwertyTest:I
    :cond_8
    const-string v27, "WindowManager"

    const-string v28, "Ignoring HOME; event canceled."

    invoke-static/range {v27 .. v28}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 1293
    .end local v14           #intent:Landroid/content/Intent;
    :cond_9
    const/16 v27, 0x3

    move/from16 v0, p4

    move/from16 v1, v27

    if-ne v0, v1, :cond_14

    .line 1295
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHoldKeyConcept:Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;

    move-object/from16 v27, v0

    #calls: Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;->getCurrentTopActivity()Landroid/content/ComponentName;
    invoke-static/range {v27 .. v27}, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;->access$000(Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;)Landroid/content/ComponentName;

    move-result-object v23

    .line 1296
    .local v23, topActivity:Landroid/content/ComponentName;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHoldKeyConcept:Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, p4

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;->isSystemKeyEventRequested(ILandroid/content/ComponentName;)Z

    move-result v27

    if-eqz v27, :cond_a

    .line 1298
    const/16 v27, 0x0

    goto :goto_6

    .line 1306
    :cond_a
    if-eqz p1, :cond_c

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v27

    move-object/from16 v4, v27

    .line 1307
    .local v4, attrs:Landroid/view/WindowManager$LayoutParams;
    :goto_7
    if-eqz v4, :cond_f

    .line 1308
    move-object v0, v4

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v24, v0

    .line 1309
    .local v24, type:I
    const/16 v27, 0x7d4

    move/from16 v0, v24

    move/from16 v1, v27

    if-eq v0, v1, :cond_b

    const/16 v27, 0x7d9

    move/from16 v0, v24

    move/from16 v1, v27

    if-ne v0, v1, :cond_d

    .line 1312
    :cond_b
    const/16 v27, 0x0

    goto :goto_6

    .line 1306
    .end local v4           #attrs:Landroid/view/WindowManager$LayoutParams;
    .end local v24           #type:I
    :cond_c
    const/16 v27, 0x0

    move-object/from16 v4, v27

    goto :goto_7

    .line 1314
    .restart local v4       #attrs:Landroid/view/WindowManager$LayoutParams;
    .restart local v24       #type:I
    :cond_d
    sget-object v27, Lcom/android/internal/policy/impl/PhoneWindowManager;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v25, v0

    .line 1315
    .local v25, typeCount:I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_8
    move v0, v10

    move/from16 v1, v25

    if-ge v0, v1, :cond_f

    .line 1316
    sget-object v27, Lcom/android/internal/policy/impl/PhoneWindowManager;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    aget v27, v27, v10

    move/from16 v0, v24

    move/from16 v1, v27

    if-ne v0, v1, :cond_e

    .line 1318
    const/16 v27, 0x1

    goto/16 :goto_6

    .line 1315
    :cond_e
    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    .line 1323
    .end local v10           #i:I
    .end local v24           #type:I
    .end local v25           #typeCount:I
    :cond_f
    if-eqz v8, :cond_13

    if-nez p7, :cond_13

    .line 1324
    if-nez v16, :cond_10

    .line 1326
    const/4 v12, 0x0

    .line 1328
    .local v12, incomingRinging_long:Z
    :try_start_1
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v18

    .line 1329
    .local v18, phoneServ:Lcom/android/internal/telephony/ITelephony;
    if-eqz v18, :cond_11

    .line 1330
    invoke-interface/range {v18 .. v18}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v12

    .line 1337
    .end local v18           #phoneServ:Lcom/android/internal/telephony/ITelephony;
    :goto_9
    if-nez v12, :cond_10

    .line 1338
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeLongPress:Ljava/lang/Runnable;

    move-object/from16 v28, v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v29

    invoke-virtual/range {v27 .. v30}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1345
    .end local v12           #incomingRinging_long:Z
    :cond_10
    :try_start_2
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v18

    .line 1346
    .restart local v18       #phoneServ:Lcom/android/internal/telephony/ITelephony;
    if-eqz v18, :cond_12

    .line 1347
    invoke-interface/range {v18 .. v18}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v27

    if-eqz v27, :cond_12

    const/16 v27, 0x0

    goto/16 :goto_6

    .line 1332
    .restart local v12       #incomingRinging_long:Z
    :cond_11
    :try_start_3
    const-string v27, "WindowManager"

    const-string v28, "Unable to find ITelephony interface"

    invoke-static/range {v27 .. v28}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_9

    .line 1334
    .end local v18           #phoneServ:Lcom/android/internal/telephony/ITelephony;
    :catch_1
    move-exception v27

    move-object/from16 v9, v27

    .line 1335
    .restart local v9       #ex:Landroid/os/RemoteException;
    const-string v27, "WindowManager"

    const-string v28, "RemoteException from getTelephonyService()"

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object v2, v9

    invoke-static {v0, v1, v2}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    .line 1349
    .end local v9           #ex:Landroid/os/RemoteException;
    .end local v12           #incomingRinging_long:Z
    :catch_2
    move-exception v27

    move-object/from16 v9, v27

    .line 1350
    .restart local v9       #ex:Landroid/os/RemoteException;
    const-string v27, "WindowManager"

    const-string v28, "RemoteException from getTelephonyService()"

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object v2, v9

    invoke-static {v0, v1, v2}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1352
    .end local v9           #ex:Landroid/os/RemoteException;
    :cond_12
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomePressed:Z

    .line 1354
    :cond_13
    const/16 v27, 0x1

    goto/16 :goto_6

    .line 1355
    .end local v4           #attrs:Landroid/view/WindowManager$LayoutParams;
    .end local v23           #topActivity:Landroid/content/ComponentName;
    :cond_14
    const/16 v27, 0x52

    move/from16 v0, p4

    move/from16 v1, v27

    if-ne v0, v1, :cond_17

    .line 1357
    const/4 v6, 0x1

    .line 1359
    .local v6, chordBug:I
    if-eqz v8, :cond_16

    if-nez p7, :cond_16

    .line 1362
    const-string v27, "GT-S5830i"

    const-string v28, "GT-B5510"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_15

    .line 1364
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMenuLongPress:Ljava/lang/Runnable;

    move-object/from16 v28, v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v29

    invoke-virtual/range {v27 .. v30}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1367
    :cond_15
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEnableShiftMenuBugReports:Z

    move/from16 v27, v0

    if-eqz v27, :cond_16

    and-int/lit8 v27, p6, 0x1

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_16

    .line 1368
    new-instance v14, Landroid/content/Intent;

    const-string v27, "android.intent.action.BUG_REPORT"

    move-object v0, v14

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1369
    .restart local v14       #intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move-object/from16 v0, v27

    move-object v1, v14

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1370
    const/16 v27, 0x1

    goto/16 :goto_6

    .line 1390
    .end local v14           #intent:Landroid/content/Intent;
    :cond_16
    if-nez v8, :cond_18

    .line 1393
    const-string v27, "GT-S5830i"

    const-string v28, "GT-B5510"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_18

    .line 1395
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMenuLongPress:Ljava/lang/Runnable;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1396
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSearchKeyPressed:Z

    .line 1398
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mConsumeSearchKeyUp:Z

    move/from16 v27, v0

    if-eqz v27, :cond_18

    .line 1400
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mConsumeSearchKeyUp:Z

    .line 1401
    const/16 v27, 0x1

    goto/16 :goto_6

    .line 1407
    .end local v6           #chordBug:I
    :cond_17
    const/16 v27, 0x54

    move/from16 v0, p4

    move/from16 v1, v27

    if-ne v0, v1, :cond_1a

    .line 1408
    if-eqz v8, :cond_19

    .line 1409
    if-nez p7, :cond_18

    .line 1410
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSearchKeyPressed:Z

    .line 1500
    :cond_18
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSearchKeyPressed:Z

    move/from16 v27, v0

    if-eqz v27, :cond_25

    .line 1501
    if-eqz v8, :cond_25

    if-nez p7, :cond_25

    if-nez v16, :cond_25

    .line 1502
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShortcutManager:Lcom/android/internal/policy/impl/ShortcutManager;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, p4

    move/from16 v2, p6

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/ShortcutManager;->getIntent(II)Landroid/content/Intent;

    move-result-object v21

    .line 1503
    .local v21, shortcutIntent:Landroid/content/Intent;
    if-eqz v21, :cond_25

    .line 1504
    const/high16 v27, 0x1000

    move-object/from16 v0, v21

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1505
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1511
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mConsumeSearchKeyUp:Z

    .line 1512
    const/16 v27, 0x1

    goto/16 :goto_6

    .line 1421
    .end local v21           #shortcutIntent:Landroid/content/Intent;
    :cond_19
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSearchKeyPressed:Z

    .line 1423
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mConsumeSearchKeyUp:Z

    move/from16 v27, v0

    if-eqz v27, :cond_18

    .line 1425
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mConsumeSearchKeyUp:Z

    .line 1426
    const/16 v27, 0x1

    goto/16 :goto_6

    .line 1432
    :cond_1a
    const/16 v27, 0x72

    move/from16 v0, p4

    move/from16 v1, v27

    if-ne v0, v1, :cond_1f

    .line 1434
    if-eqz v26, :cond_18

    if-nez p7, :cond_18

    if-nez v16, :cond_18

    .line 1436
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    const-string v28, "activity"

    invoke-virtual/range {v27 .. v28}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    .line 1437
    .local v3, activityManager:Landroid/app/ActivityManager;
    const/16 v27, 0x14

    move-object v0, v3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v13

    .line 1438
    .local v13, info:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v27

    if-eqz v27, :cond_1b

    .line 1439
    const/16 v27, 0x1

    goto/16 :goto_6

    .line 1441
    :cond_1b
    const/16 v27, 0x0

    move-object v0, v13

    move/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1442
    .local v20, runningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v19

    .line 1443
    .local v19, pkgName:Ljava/lang/String;
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    .line 1444
    .local v7, className:Ljava/lang/String;
    const-string v27, "com.sec.android.app.simplefunctiontest.QwertyKeypadTest"

    move-object v0, v7

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_1c

    const-string v27, "com.sec.android.app.factorytest"

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_1d

    .line 1445
    :cond_1c
    const-string v27, "WindowManager"

    const-string v28, "KEYCODE_EXPLORER is skipped"

    invoke-static/range {v27 .. v28}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1446
    const/16 v27, 0x1

    goto/16 :goto_6

    .line 1448
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShortcutManager:Lcom/android/internal/policy/impl/ShortcutManager;

    move-object/from16 v27, v0

    const/16 v28, 0x51

    move-object/from16 v0, v27

    move/from16 v1, v28

    move/from16 v2, p6

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/ShortcutManager;->getIntent(II)Landroid/content/Intent;

    move-result-object v21

    .line 1450
    .restart local v21       #shortcutIntent:Landroid/content/Intent;
    if-eqz v21, :cond_1e

    .line 1451
    const/high16 v27, 0x1000

    move-object/from16 v0, v21

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1452
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1453
    const/16 v27, 0x1

    goto/16 :goto_6

    .line 1458
    :cond_1e
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->callCustomizedAssignActivity(I)V

    .line 1459
    const/16 v27, 0x1

    goto/16 :goto_6

    .line 1462
    .end local v3           #activityManager:Landroid/app/ActivityManager;
    .end local v7           #className:Ljava/lang/String;
    .end local v13           #info:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v19           #pkgName:Ljava/lang/String;
    .end local v20           #runningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v21           #shortcutIntent:Landroid/content/Intent;
    :cond_1f
    const/16 v27, 0x73

    move/from16 v0, p4

    move/from16 v1, v27

    if-ne v0, v1, :cond_18

    .line 1464
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->voiceShortcutInputStateEnabled:Z

    move/from16 v27, v0

    if-eqz v27, :cond_20

    .line 1465
    const/16 v27, 0x1

    goto/16 :goto_6

    .line 1467
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHoldKeyConcept:Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;

    move-object/from16 v27, v0

    #calls: Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;->getCurrentTopActivity()Landroid/content/ComponentName;
    invoke-static/range {v27 .. v27}, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;->access$000(Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;)Landroid/content/ComponentName;

    move-result-object v23

    .line 1469
    .restart local v23       #topActivity:Landroid/content/ComponentName;
    if-eqz v26, :cond_18

    if-nez p7, :cond_18

    if-nez v16, :cond_18

    .line 1471
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    const-string v28, "activity"

    invoke-virtual/range {v27 .. v28}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    .line 1472
    .restart local v3       #activityManager:Landroid/app/ActivityManager;
    const/16 v27, 0x14

    move-object v0, v3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v13

    .line 1473
    .restart local v13       #info:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v27

    if-eqz v27, :cond_21

    .line 1474
    const/16 v27, 0x1

    goto/16 :goto_6

    .line 1476
    :cond_21
    const/16 v27, 0x0

    move-object v0, v13

    move/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1477
    .restart local v20       #runningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v19

    .line 1478
    .restart local v19       #pkgName:Ljava/lang/String;
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    .line 1479
    .restart local v7       #className:Ljava/lang/String;
    const-string v27, "com.sec.android.app.simplefunctiontest.QwertyKeypadTest"

    move-object v0, v7

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_22

    const-string v27, "com.sec.android.app.factorytest"

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_23

    .line 1480
    :cond_22
    const-string v27, "WindowManager"

    const-string v28, "KEYCODE_ENVELOPE is skipped"

    invoke-static/range {v27 .. v28}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1481
    const/16 v27, 0x1

    goto/16 :goto_6

    .line 1483
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShortcutManager:Lcom/android/internal/policy/impl/ShortcutManager;

    move-object/from16 v27, v0

    const/16 v28, 0x45

    move-object/from16 v0, v27

    move/from16 v1, v28

    move/from16 v2, p6

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/ShortcutManager;->getIntent(II)Landroid/content/Intent;

    move-result-object v21

    .line 1484
    .restart local v21       #shortcutIntent:Landroid/content/Intent;
    if-eqz v21, :cond_24

    .line 1485
    const/high16 v27, 0x1000

    move-object/from16 v0, v21

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1486
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1487
    const/16 v27, 0x1

    goto/16 :goto_6

    .line 1492
    :cond_24
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->callCustomizedAssignActivity(I)V

    .line 1493
    const/16 v27, 0x1

    goto/16 :goto_6

    .line 1517
    .end local v3           #activityManager:Landroid/app/ActivityManager;
    .end local v7           #className:Ljava/lang/String;
    .end local v13           #info:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v19           #pkgName:Ljava/lang/String;
    .end local v20           #runningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v21           #shortcutIntent:Landroid/content/Intent;
    .end local v23           #topActivity:Landroid/content/ComponentName;
    :cond_25
    const/16 v27, 0x0

    goto/16 :goto_6
.end method

.method public interceptKeyBeforeQueueing(JIIIIIZ)I
    .locals 28
    .parameter "whenNanos"
    .parameter "action"
    .parameter "flags"
    .parameter "keyCode"
    .parameter "scanCode"
    .parameter "policyFlags"
    .parameter "isScreenOn"

    .prologue
    .line 2114
    if-nez p3, :cond_2

    const/4 v7, 0x1

    move/from16 v18, v7

    .line 2115
    .local v18, down:Z
    :goto_0
    and-int/lit8 v7, p4, 0x20

    if-eqz v7, :cond_3

    const/4 v7, 0x1

    move/from16 v17, v7

    .line 2117
    .local v17, canceled:Z
    :goto_1
    const/high16 v7, 0x100

    and-int v7, v7, p7

    if-eqz v7, :cond_4

    const/4 v7, 0x1

    move/from16 v21, v7

    .line 2123
    .local v21, isInjected:Z
    :goto_2
    if-nez p8, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDismissKeyguard:Z

    move v7, v0

    if-nez v7, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideLockScreen:Z

    move v7, v0

    if-eqz v7, :cond_5

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    move-object v7, v0

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowingAndNotHidden()Z

    move-result v7

    move/from16 v23, v7

    .line 2132
    .local v23, keyguardActive:Z
    :goto_3
    if-eqz v18, :cond_1

    move/from16 v0, p7

    and-int/lit16 v0, v0, 0x100

    move v7, v0

    if-eqz v7, :cond_1

    .line 2133
    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move-object v1, v7

    move v2, v8

    move v3, v9

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 2138
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenCaptureAction:Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenCaptureAction;

    move-object v7, v0

    move-object v0, v7

    move/from16 v1, p5

    move/from16 v2, p8

    move/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenCaptureAction;->doIninterceptKeyBeforeQueueing(IZZ)I

    move-result v26

    .line 2139
    .local v26, tmpResult:I
    const/4 v7, -0x1

    move/from16 v0, v26

    move v1, v7

    if-eq v0, v1, :cond_6

    move/from16 v7, v26

    .line 2368
    :goto_4
    return v7

    .line 2114
    .end local v17           #canceled:Z
    .end local v18           #down:Z
    .end local v21           #isInjected:Z
    .end local v23           #keyguardActive:Z
    .end local v26           #tmpResult:I
    :cond_2
    const/4 v7, 0x0

    move/from16 v18, v7

    goto :goto_0

    .line 2115
    .restart local v18       #down:Z
    :cond_3
    const/4 v7, 0x0

    move/from16 v17, v7

    goto :goto_1

    .line 2117
    .restart local v17       #canceled:Z
    :cond_4
    const/4 v7, 0x0

    move/from16 v21, v7

    goto :goto_2

    .line 2123
    .restart local v21       #isInjected:Z
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    move-object v7, v0

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowing()Z

    move-result v7

    move/from16 v23, v7

    goto :goto_3

    .line 2153
    .restart local v23       #keyguardActive:Z
    .restart local v26       #tmpResult:I
    :cond_6
    if-nez p8, :cond_7

    if-eqz v21, :cond_a

    .line 2155
    :cond_7
    const/16 v24, 0x1

    .line 2175
    .local v24, result:I
    :cond_8
    :goto_5
    sparse-switch p5, :sswitch_data_0

    :cond_9
    :goto_6
    move/from16 v7, v24

    .line 2368
    goto :goto_4

    .line 2159
    .end local v24           #result:I
    :cond_a
    const/16 v24, 0x0

    .line 2161
    .restart local v24       #result:I
    and-int/lit8 v7, p7, 0x3

    if-eqz v7, :cond_b

    const/4 v7, 0x1

    move/from16 v22, v7

    .line 2163
    .local v22, isWakeKey:Z
    :goto_7
    if-eqz v18, :cond_8

    if-eqz v22, :cond_8

    .line 2164
    if-eqz v23, :cond_c

    .line 2166
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    move-object v7, v0

    move-object v0, v7

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->onWakeKeyWhenKeyguardShowingTq(I)Z

    goto :goto_5

    .line 2161
    .end local v22           #isWakeKey:Z
    :cond_b
    const/4 v7, 0x0

    move/from16 v22, v7

    goto :goto_7

    .line 2169
    .restart local v22       #isWakeKey:Z
    :cond_c
    or-int/lit8 v24, v24, 0x2

    goto :goto_5

    .line 2178
    .end local v22           #isWakeKey:Z
    :sswitch_0
    if-eqz v18, :cond_e

    .line 2179
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v25

    .line 2180
    .local v25, telephonyService:Lcom/android/internal/telephony/ITelephony;
    if-eqz v25, :cond_d

    .line 2182
    :try_start_0
    invoke-interface/range {v25 .. v25}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z

    move-result v7

    if-eqz v7, :cond_d

    .line 2189
    const-string v7, "WindowManager"

    const-string v8, "interceptKeyBeforeQueueing: VOLUME key-down while ringing: Silence ringer!"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2194
    invoke-interface/range {v25 .. v25}, Lcom/android/internal/telephony/ITelephony;->silenceRinger()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2198
    and-int/lit8 v24, v24, -0x2

    goto :goto_6

    .line 2212
    :catch_0
    move-exception v7

    move-object/from16 v19, v7

    .line 2213
    .local v19, ex:Landroid/os/RemoteException;
    const-string v7, "WindowManager"

    const-string v8, "ITelephony threw RemoteException"

    move-object v0, v7

    move-object v1, v8

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2227
    .end local v19           #ex:Landroid/os/RemoteException;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSamsungVolumeControlThread:Lcom/android/internal/policy/impl/PhoneWindowManager$SamsungVolumeControlThread;

    move-object v7, v0

    if-nez v7, :cond_9

    .line 2228
    new-instance v7, Lcom/android/internal/policy/impl/PhoneWindowManager$SamsungVolumeControlThread;

    const/4 v8, 0x0

    move-object v0, v7

    move-object/from16 v1, p0

    move-object v2, v8

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager$SamsungVolumeControlThread;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Lcom/android/internal/policy/impl/PhoneWindowManager$1;)V

    move-object v0, v7

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSamsungVolumeControlThread:Lcom/android/internal/policy/impl/PhoneWindowManager$SamsungVolumeControlThread;

    .line 2229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSamsungVolumeControlThread:Lcom/android/internal/policy/impl/PhoneWindowManager$SamsungVolumeControlThread;

    move-object v7, v0

    move-object v0, v7

    move/from16 v1, p5

    move/from16 v2, v18

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager$SamsungVolumeControlThread;->updateInfo(IZZ)V

    .line 2230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSamsungVolumeControlThread:Lcom/android/internal/policy/impl/PhoneWindowManager$SamsungVolumeControlThread;

    move-object v7, v0

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/PhoneWindowManager$SamsungVolumeControlThread;->start()V

    goto :goto_6

    .line 2235
    .end local v25           #telephonyService:Lcom/android/internal/telephony/ITelephony;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSamsungVolumeControlThread:Lcom/android/internal/policy/impl/PhoneWindowManager$SamsungVolumeControlThread;

    move-object v7, v0

    if-eqz v7, :cond_9

    .line 2236
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSamsungVolumeControlThread:Lcom/android/internal/policy/impl/PhoneWindowManager$SamsungVolumeControlThread;

    move-object v7, v0

    move-object v0, v7

    move/from16 v1, p5

    move/from16 v2, v18

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager$SamsungVolumeControlThread;->updateInfo(IZZ)V

    .line 2237
    const/4 v7, 0x0

    move-object v0, v7

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSamsungVolumeControlThread:Lcom/android/internal/policy/impl/PhoneWindowManager$SamsungVolumeControlThread;

    goto/16 :goto_6

    .line 2245
    :sswitch_1
    and-int/lit8 v24, v24, -0x2

    .line 2246
    if-eqz v18, :cond_12

    .line 2247
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v25

    .line 2248
    .restart local v25       #telephonyService:Lcom/android/internal/telephony/ITelephony;
    const/16 v20, 0x0

    .line 2249
    .local v20, hungUp:Z
    if-eqz v25, :cond_f

    .line 2251
    :try_start_1
    invoke-interface/range {v25 .. v25}, Lcom/android/internal/telephony/ITelephony;->endCall()Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v20

    .line 2256
    :cond_f
    :goto_8
    if-eqz p8, :cond_10

    if-eqz v20, :cond_11

    :cond_10
    const/4 v7, 0x1

    :goto_9
    move-object/from16 v0, p0

    move v1, v7

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptPowerKeyDown(Z)V

    goto/16 :goto_6

    .line 2252
    :catch_1
    move-exception v19

    .line 2253
    .restart local v19       #ex:Landroid/os/RemoteException;
    const-string v7, "WindowManager"

    const-string v8, "ITelephony threw RemoteException"

    move-object v0, v7

    move-object v1, v8

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    .line 2256
    .end local v19           #ex:Landroid/os/RemoteException;
    :cond_11
    const/4 v7, 0x0

    goto :goto_9

    .line 2258
    .end local v20           #hungUp:Z
    .end local v25           #telephonyService:Lcom/android/internal/telephony/ITelephony;
    :cond_12
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptPowerKeyUp(Z)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 2259
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEndcallBehavior:I

    move v7, v0

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_13

    .line 2261
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->goHome()Z

    move-result v7

    if-nez v7, :cond_9

    .line 2265
    :cond_13
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEndcallBehavior:I

    move v7, v0

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_9

    .line 2267
    and-int/lit8 v7, v24, -0x3

    or-int/lit8 v24, v7, 0x4

    goto/16 :goto_6

    .line 2275
    :sswitch_2
    and-int/lit8 v24, v24, -0x2

    .line 2276
    if-eqz v18, :cond_18

    .line 2277
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v25

    .line 2278
    .restart local v25       #telephonyService:Lcom/android/internal/telephony/ITelephony;
    const/16 v20, 0x0

    .line 2279
    .restart local v20       #hungUp:Z
    if-eqz v25, :cond_14

    .line 2281
    :try_start_2
    invoke-interface/range {v25 .. v25}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z

    move-result v7

    if-eqz v7, :cond_16

    .line 2284
    invoke-interface/range {v25 .. v25}, Lcom/android/internal/telephony/ITelephony;->silenceRinger()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 2296
    :cond_14
    :goto_a
    if-eqz p8, :cond_15

    if-eqz v20, :cond_17

    :cond_15
    const/4 v7, 0x1

    :goto_b
    move-object/from16 v0, p0

    move v1, v7

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptPowerKeyDown(Z)V

    .line 2299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHoldKeyConcept:Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;

    move-object v7, v0

    #calls: Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;->getCurrentTopActivity()Landroid/content/ComponentName;
    invoke-static {v7}, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;->access$000(Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;)Landroid/content/ComponentName;

    move-result-object v27

    .line 2300
    .local v27, topActivity:Landroid/content/ComponentName;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHoldKeyConcept:Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;

    move-object v7, v0

    const/16 v8, 0x1a

    move-object v0, v7

    move v1, v8

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;->isSystemKeyEventRequested(ILandroid/content/ComponentName;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 2302
    or-int/lit8 v24, v24, 0x1

    goto/16 :goto_6

    .line 2285
    .end local v27           #topActivity:Landroid/content/ComponentName;
    :cond_16
    :try_start_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIncallPowerBehavior:I

    move v7, v0

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_14

    invoke-interface/range {v25 .. v25}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z

    move-result v7

    if-eqz v7, :cond_14

    .line 2290
    invoke-interface/range {v25 .. v25}, Lcom/android/internal/telephony/ITelephony;->endCall()Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    move-result v20

    goto :goto_a

    .line 2292
    :catch_2
    move-exception v7

    move-object/from16 v19, v7

    .line 2293
    .restart local v19       #ex:Landroid/os/RemoteException;
    const-string v7, "WindowManager"

    const-string v8, "ITelephony threw RemoteException"

    move-object v0, v7

    move-object v1, v8

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a

    .line 2296
    .end local v19           #ex:Landroid/os/RemoteException;
    :cond_17
    const/4 v7, 0x0

    goto :goto_b

    .line 2308
    .end local v20           #hungUp:Z
    .end local v25           #telephonyService:Lcom/android/internal/telephony/ITelephony;
    :cond_18
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptPowerKeyUp(Z)Z

    move-result v7

    if-eqz v7, :cond_19

    .line 2309
    and-int/lit8 v7, v24, -0x3

    or-int/lit8 v24, v7, 0x4

    .line 2313
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHoldKeyConcept:Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;

    move-object v7, v0

    #calls: Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;->getCurrentTopActivity()Landroid/content/ComponentName;
    invoke-static {v7}, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;->access$000(Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;)Landroid/content/ComponentName;

    move-result-object v27

    .line 2314
    .restart local v27       #topActivity:Landroid/content/ComponentName;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHoldKeyConcept:Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;

    move-object v7, v0

    const/16 v8, 0x1a

    move-object v0, v7

    move v1, v8

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;->isSystemKeyEventRequested(ILandroid/content/ComponentName;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 2316
    or-int/lit8 v24, v24, 0x1

    .line 2317
    and-int/lit8 v24, v24, -0x5

    goto/16 :goto_6

    .line 2333
    .end local v27           #topActivity:Landroid/content/ComponentName;
    :sswitch_3
    and-int/lit8 v7, v24, 0x1

    if-nez v7, :cond_9

    .line 2337
    const-wide/32 v7, 0xf4240

    div-long v5, p1, v7

    .line 2338
    .local v5, when:J
    new-instance v4, Landroid/view/KeyEvent;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x101

    move-wide v7, v5

    move/from16 v9, p3

    move/from16 v10, p5

    move/from16 v14, p6

    move/from16 v15, p4

    invoke-direct/range {v4 .. v16}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 2340
    .local v4, keyEvent:Landroid/view/KeyEvent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object v7, v0

    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2341
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object v7, v0

    new-instance v8, Lcom/android/internal/policy/impl/PhoneWindowManager$PassHeadsetKey;

    move-object v0, v8

    move-object/from16 v1, p0

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager$PassHeadsetKey;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/view/KeyEvent;)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_6

    .line 2347
    .end local v4           #keyEvent:Landroid/view/KeyEvent;
    .end local v5           #when:J
    :sswitch_4
    if-eqz v18, :cond_9

    .line 2348
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v25

    .line 2349
    .restart local v25       #telephonyService:Lcom/android/internal/telephony/ITelephony;
    if-eqz v25, :cond_9

    .line 2351
    :try_start_4
    invoke-interface/range {v25 .. v25}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 2352
    const-string v7, "WindowManager"

    const-string v8, "interceptKeyBeforeQueueing: CALL key-down while ringing: Answer the call!"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2354
    invoke-interface/range {v25 .. v25}, Lcom/android/internal/telephony/ITelephony;->answerRingingCall()V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3

    .line 2358
    and-int/lit8 v24, v24, -0x2

    goto/16 :goto_6

    .line 2360
    :catch_3
    move-exception v7

    move-object/from16 v19, v7

    .line 2361
    .restart local v19       #ex:Landroid/os/RemoteException;
    const-string v7, "WindowManager"

    const-string v8, "ITelephony threw RemoteException"

    move-object v0, v7

    move-object v1, v8

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_6

    .line 2175
    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_4
        0x6 -> :sswitch_1
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x1a -> :sswitch_2
        0x4f -> :sswitch_3
        0x55 -> :sswitch_3
        0x56 -> :sswitch_3
        0x57 -> :sswitch_3
        0x58 -> :sswitch_3
        0x59 -> :sswitch_3
        0x5a -> :sswitch_3
    .end sparse-switch
.end method

.method isDeviceProvisioned()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 597
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_provisioned"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method isMusicActive()Z
    .locals 3

    .prologue
    .line 2074
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 2075
    .local v0, am:Landroid/media/AudioManager;
    if-nez v0, :cond_0

    .line 2076
    const-string v1, "WindowManager"

    const-string v2, "isMusicActive: couldn\'t get AudioManager reference"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2077
    const/4 v1, 0x0

    .line 2079
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v1

    goto :goto_0
.end method

.method public isPowerNeglecting()Z
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 542
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 543
    .local v0, activityManager:Landroid/app/ActivityManager;
    const/16 v5, 0x14

    invoke-virtual {v0, v5}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    .line 544
    .local v2, info:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v8

    .line 557
    :goto_0
    return v5

    .line 548
    :cond_0
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 549
    .local v4, runningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v5, v4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 550
    .local v3, pkgName:Ljava/lang/String;
    iget-object v5, v4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 551
    .local v1, className:Ljava/lang/String;
    const-string v5, "isPowerNeglecting"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "className :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "pkgName : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    const-string v5, "com.sec.android.app.simplefunctiontest.KeypadTest"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "com.sec.android.app.simplefunctiontest.QwertyKeypadTest"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 555
    :cond_1
    const/4 v5, 0x1

    goto :goto_0

    :cond_2
    move v5, v8

    .line 557
    goto :goto_0
.end method

.method public isScreenOn()Z
    .locals 1

    .prologue
    .line 2443
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOn:Z

    return v0
.end method

.method public isSystemKeyEventRequested(ILandroid/content/ComponentName;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "componentName"

    .prologue
    .line 2923
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHoldKeyConcept:Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;->isSystemKeyEventRequested(ILandroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method keyguardOn()Z
    .locals 1

    .prologue
    .line 1213
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->keyguardIsShowingTq()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->inKeyguardRestrictedKeyInputMode()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method launchHomeFromHotKey()V
    .locals 2

    .prologue
    .line 1564
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowingAndNotHidden()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1590
    :goto_0
    return-void

    .line 1566
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideLockScreen:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isInputRestricted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1569
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    new-instance v1, Lcom/android/internal/policy/impl/PhoneWindowManager$6;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$6;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->verifyUnlock(Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;)V

    goto :goto_0

    .line 1584
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->stopAppSwitches()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1587
    :goto_1
    const-string v0, "homekey"

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 1588
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->startDockOrHome()V

    goto :goto_0

    .line 1585
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public layoutWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 12
    .parameter "win"
    .parameter "attrs"
    .parameter "attached"

    .prologue
    const/16 v11, 0x7db

    const/16 v4, 0x10

    const/4 v5, 0x0

    .line 1688
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne p1, v0, :cond_1

    .line 1827
    :cond_0
    :goto_0
    return-void

    .line 1699
    :cond_1
    iget v2, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1700
    .local v2, fl:I
    iget v3, p2, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 1702
    .local v3, sim:I
    sget-object v6, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpParentFrame:Landroid/graphics/Rect;

    .line 1703
    .local v6, pf:Landroid/graphics/Rect;
    sget-object v7, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpDisplayFrame:Landroid/graphics/Rect;

    .line 1704
    .local v7, df:Landroid/graphics/Rect;
    sget-object v8, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpContentFrame:Landroid/graphics/Rect;

    .line 1705
    .local v8, cf:Landroid/graphics/Rect;
    sget-object v9, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpVisibleFrame:Landroid/graphics/Rect;

    .line 1707
    .local v9, vf:Landroid/graphics/Rect;
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v0, v11, :cond_5

    .line 1708
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    iput v0, v9, Landroid/graphics/Rect;->left:I

    iput v0, v8, Landroid/graphics/Rect;->left:I

    iput v0, v7, Landroid/graphics/Rect;->left:I

    iput v0, v6, Landroid/graphics/Rect;->left:I

    .line 1709
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    iput v0, v9, Landroid/graphics/Rect;->top:I

    iput v0, v8, Landroid/graphics/Rect;->top:I

    iput v0, v7, Landroid/graphics/Rect;->top:I

    iput v0, v6, Landroid/graphics/Rect;->top:I

    .line 1710
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    iput v0, v9, Landroid/graphics/Rect;->right:I

    iput v0, v8, Landroid/graphics/Rect;->right:I

    iput v0, v7, Landroid/graphics/Rect;->right:I

    iput v0, v6, Landroid/graphics/Rect;->right:I

    .line 1711
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    iput v0, v9, Landroid/graphics/Rect;->bottom:I

    iput v0, v8, Landroid/graphics/Rect;->bottom:I

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    iput v0, v6, Landroid/graphics/Rect;->bottom:I

    .line 1713
    const/16 v0, 0x50

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1714
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLayer:I

    .line 1788
    :goto_1
    and-int/lit16 v0, v2, 0x200

    if-eqz v0, :cond_2

    .line 1789
    const/16 v0, -0x2710

    iput v0, v9, Landroid/graphics/Rect;->top:I

    iput v0, v9, Landroid/graphics/Rect;->left:I

    iput v0, v8, Landroid/graphics/Rect;->top:I

    iput v0, v8, Landroid/graphics/Rect;->left:I

    iput v0, v7, Landroid/graphics/Rect;->top:I

    iput v0, v7, Landroid/graphics/Rect;->left:I

    .line 1790
    const/16 v0, 0x2710

    iput v0, v9, Landroid/graphics/Rect;->bottom:I

    iput v0, v9, Landroid/graphics/Rect;->right:I

    iput v0, v8, Landroid/graphics/Rect;->bottom:I

    iput v0, v8, Landroid/graphics/Rect;->right:I

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    iput v0, v7, Landroid/graphics/Rect;->right:I

    .line 1808
    :cond_2
    invoke-interface {p1, v6, v7, v8, v9}, Landroid/view/WindowManagerPolicy$WindowState;->computeFrameLw(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1812
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v0, v11, :cond_3

    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0xbb6

    if-ne v0, v1, :cond_0

    :cond_3
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getGivenInsetsPendingLw()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1813
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    iget v10, v0, Landroid/graphics/Rect;->top:I

    .line 1814
    .local v10, top:I
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getGivenContentInsetsLw()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v10, v0

    .line 1815
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    if-le v0, v10, :cond_4

    .line 1816
    iput v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    .line 1818
    :cond_4
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getVisibleFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    iget v10, v0, Landroid/graphics/Rect;->top:I

    .line 1819
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getGivenVisibleInsetsLw()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v10, v0

    .line 1820
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    if-le v0, v10, :cond_0

    .line 1821
    iput v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    goto/16 :goto_0

    .line 1716
    .end local v10           #top:I
    :cond_5
    const v0, 0x10500

    and-int/2addr v0, v2

    const v1, 0x10100

    if-ne v0, v1, :cond_8

    .line 1723
    if-eqz p3, :cond_6

    .line 1726
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    invoke-virtual/range {v0 .. v9}, Lcom/android/internal/policy/impl/PhoneWindowManager;->setAttachedWindowFrames(Landroid/view/WindowManagerPolicy$WindowState;IILandroid/view/WindowManagerPolicy$WindowState;ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_1

    .line 1728
    :cond_6
    iput v5, v7, Landroid/graphics/Rect;->left:I

    iput v5, v6, Landroid/graphics/Rect;->left:I

    .line 1729
    iput v5, v7, Landroid/graphics/Rect;->top:I

    iput v5, v6, Landroid/graphics/Rect;->top:I

    .line 1730
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mW:I

    iput v0, v7, Landroid/graphics/Rect;->right:I

    iput v0, v6, Landroid/graphics/Rect;->right:I

    .line 1731
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mH:I

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    iput v0, v6, Landroid/graphics/Rect;->bottom:I

    .line 1732
    and-int/lit16 v0, v3, 0xf0

    if-eq v0, v4, :cond_7

    .line 1733
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    iput v0, v8, Landroid/graphics/Rect;->left:I

    .line 1734
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    iput v0, v8, Landroid/graphics/Rect;->top:I

    .line 1735
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    iput v0, v8, Landroid/graphics/Rect;->right:I

    .line 1736
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    iput v0, v8, Landroid/graphics/Rect;->bottom:I

    .line 1743
    :goto_2
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurLeft:I

    iput v0, v9, Landroid/graphics/Rect;->left:I

    .line 1744
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    iput v0, v9, Landroid/graphics/Rect;->top:I

    .line 1745
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurRight:I

    iput v0, v9, Landroid/graphics/Rect;->right:I

    .line 1746
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    iput v0, v9, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_1

    .line 1738
    :cond_7
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    iput v0, v8, Landroid/graphics/Rect;->left:I

    .line 1739
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    iput v0, v8, Landroid/graphics/Rect;->top:I

    .line 1740
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    iput v0, v8, Landroid/graphics/Rect;->right:I

    .line 1741
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    iput v0, v8, Landroid/graphics/Rect;->bottom:I

    goto :goto_2

    .line 1748
    :cond_8
    and-int/lit16 v0, v2, 0x100

    if-eqz v0, :cond_9

    .line 1751
    iput v5, v8, Landroid/graphics/Rect;->left:I

    iput v5, v7, Landroid/graphics/Rect;->left:I

    iput v5, v6, Landroid/graphics/Rect;->left:I

    .line 1752
    iput v5, v8, Landroid/graphics/Rect;->top:I

    iput v5, v7, Landroid/graphics/Rect;->top:I

    iput v5, v6, Landroid/graphics/Rect;->top:I

    .line 1753
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mW:I

    iput v0, v8, Landroid/graphics/Rect;->right:I

    iput v0, v7, Landroid/graphics/Rect;->right:I

    iput v0, v6, Landroid/graphics/Rect;->right:I

    .line 1754
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mH:I

    iput v0, v8, Landroid/graphics/Rect;->bottom:I

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    iput v0, v6, Landroid/graphics/Rect;->bottom:I

    .line 1755
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurLeft:I

    iput v0, v9, Landroid/graphics/Rect;->left:I

    .line 1756
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    iput v0, v9, Landroid/graphics/Rect;->top:I

    .line 1757
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurRight:I

    iput v0, v9, Landroid/graphics/Rect;->right:I

    .line 1758
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    iput v0, v9, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_1

    .line 1759
    :cond_9
    if-eqz p3, :cond_a

    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    .line 1762
    invoke-virtual/range {v0 .. v9}, Lcom/android/internal/policy/impl/PhoneWindowManager;->setAttachedWindowFrames(Landroid/view/WindowManagerPolicy$WindowState;IILandroid/view/WindowManagerPolicy$WindowState;ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto/16 :goto_1

    .line 1766
    :cond_a
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    iput v0, v6, Landroid/graphics/Rect;->left:I

    .line 1767
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    iput v0, v6, Landroid/graphics/Rect;->top:I

    .line 1768
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    iput v0, v6, Landroid/graphics/Rect;->right:I

    .line 1769
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    iput v0, v6, Landroid/graphics/Rect;->bottom:I

    .line 1770
    and-int/lit16 v0, v3, 0xf0

    if-eq v0, v4, :cond_b

    .line 1771
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    iput v0, v8, Landroid/graphics/Rect;->left:I

    iput v0, v7, Landroid/graphics/Rect;->left:I

    .line 1772
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    iput v0, v8, Landroid/graphics/Rect;->top:I

    iput v0, v7, Landroid/graphics/Rect;->top:I

    .line 1773
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    iput v0, v8, Landroid/graphics/Rect;->right:I

    iput v0, v7, Landroid/graphics/Rect;->right:I

    .line 1774
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    iput v0, v8, Landroid/graphics/Rect;->bottom:I

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 1781
    :goto_3
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurLeft:I

    iput v0, v9, Landroid/graphics/Rect;->left:I

    .line 1782
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    iput v0, v9, Landroid/graphics/Rect;->top:I

    .line 1783
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurRight:I

    iput v0, v9, Landroid/graphics/Rect;->right:I

    .line 1784
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    iput v0, v9, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_1

    .line 1776
    :cond_b
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    iput v0, v8, Landroid/graphics/Rect;->left:I

    iput v0, v7, Landroid/graphics/Rect;->left:I

    .line 1777
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    iput v0, v8, Landroid/graphics/Rect;->top:I

    iput v0, v7, Landroid/graphics/Rect;->top:I

    .line 1778
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    iput v0, v8, Landroid/graphics/Rect;->right:I

    iput v0, v7, Landroid/graphics/Rect;->right:I

    .line 1779
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    iput v0, v8, Landroid/graphics/Rect;->bottom:I

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    goto :goto_3
.end method

.method needSensorRunningLp()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const-string v3, "OrientationDebug"

    .line 449
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentAppOrientation:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentAppOrientation:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentAppOrientation:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentAppOrientation:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 455
    :cond_0
    const-string v0, "OrientationDebug"

    const-string v0, "[pwm] needSensorRunningLp(), return true #1"

    invoke-static {v3, v0}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 479
    :goto_0
    return v0

    .line 458
    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockEnablesAccelerometer:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    :cond_2
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockEnablesAccelerometer:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    if-ne v0, v2, :cond_4

    .line 462
    :cond_3
    const-string v0, "OrientationDebug"

    const-string v0, "[pwm] needSensorRunningLp(), return true #2"

    invoke-static {v3, v0}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 463
    goto :goto_0

    .line 465
    :cond_4
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAccelerometerDefault:I

    if-nez v0, :cond_5

    .line 474
    const-string v0, "OrientationDebug"

    const-string v0, "[pwm] needSensorRunningLp(), return false #3"

    invoke-static {v3, v0}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    const/4 v0, 0x0

    goto :goto_0

    .line 478
    :cond_5
    const-string v0, "OrientationDebug"

    const-string v0, "[pwm] needSensorRunningLp(), return true #4"

    invoke-static {v3, v0}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 479
    goto :goto_0
.end method

.method public notifyLidSwitchChanged(JZ)V
    .locals 6
    .parameter "whenNanos"
    .parameter "lidOpen"

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 1984
    iput-boolean p3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRealLidOpen:Z

    .line 1985
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mdelayedupdateRotation:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1986
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mdelayedupdateRotationActive:Z

    .line 1987
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isScreenOn()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1989
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mdelayedupdateRotationActive:Z

    .line 1990
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mdelayedupdateRotation:Ljava/lang/Runnable;

    const-wide/16 v3, 0x5dc

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1998
    :goto_0
    const-string v1, "GT-S5830i"

    const-string v2, "GT-I5510"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1999
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidOpen:Z

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->writeSlideCount(Z)V

    .line 2003
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRealLidOpen:Z

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->doLidChangeTq(Z)Z

    move-result v0

    .line 2005
    .local v0, awakeNow:Z
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isScreenOn()Z

    move-result v1

    if-nez v1, :cond_3

    .line 2009
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->pokeWakelock()V

    .line 2028
    :cond_1
    :goto_1
    return-void

    .line 1992
    .end local v0           #awakeNow:Z
    :cond_2
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRealLidOpen:Z

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidOpen:Z

    .line 1993
    const-string v1, "WindowManager"

    const-string v2, "updateRotation"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1994
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateRotation(I)V

    goto :goto_0

    .line 2010
    .restart local v0       #awakeNow:Z
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->keyguardIsShowingTq()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isScreenOn()Z

    move-result v1

    if-nez v1, :cond_4

    .line 2011
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRealLidOpen:Z

    if-eqz v1, :cond_1

    .line 2015
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    const/16 v2, 0x1a

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->onWakeKeyWhenKeyguardShowingTq(I)Z

    goto :goto_1

    .line 2020
    :cond_4
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidOpen:Z

    if-eqz v1, :cond_5

    .line 2021
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/LocalPowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x5

    invoke-interface {v1, v2, v3, v5, v4}, Landroid/os/LocalPowerManager;->userActivity(JZI)V

    goto :goto_1

    .line 2024
    :cond_5
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/LocalPowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-interface {v1, v2, v3, v5, v5}, Landroid/os/LocalPowerManager;->userActivity(JZI)V

    goto :goto_1
.end method

.method public performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z
    .locals 6
    .parameter "win"
    .parameter "effectId"
    .parameter "always"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2800
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "haptic_feedback_enabled"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_1

    move v0, v5

    .line 2802
    .local v0, hapticsDisabled:Z
    :goto_0
    if-nez p3, :cond_2

    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowingAndNotHidden()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    move v2, v4

    .line 2832
    :goto_1
    return v2

    .end local v0           #hapticsDisabled:Z
    :cond_1
    move v0, v4

    .line 2800
    goto :goto_0

    .line 2805
    .restart local v0       #hapticsDisabled:Z
    :cond_2
    const/4 v1, 0x0

    .line 2806
    .local v1, pattern:[J
    sparse-switch p2, :sswitch_data_0

    move v2, v4

    .line 2823
    goto :goto_1

    .line 2808
    :sswitch_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressVibePattern:[J

    .line 2825
    :goto_2
    array-length v2, v1

    if-ne v2, v5, :cond_3

    .line 2827
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    aget-wide v3, v1, v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Vibrator;->vibrate(J)V

    :goto_3
    move v2, v5

    .line 2832
    goto :goto_1

    .line 2811
    :sswitch_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVirtualKeyVibePattern:[J

    .line 2812
    goto :goto_2

    .line 2814
    :sswitch_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyboardTapVibePattern:[J

    .line 2815
    goto :goto_2

    .line 2817
    :sswitch_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSafeModeDisabledVibePattern:[J

    .line 2818
    goto :goto_2

    .line 2820
    :sswitch_4
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSafeModeEnabledVibePattern:[J

    .line 2821
    goto :goto_2

    .line 2830
    :cond_3
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    const/4 v3, -0x1

    invoke-virtual {v2, v1, v3}, Landroid/os/Vibrator;->vibrate([JI)V

    goto :goto_3

    .line 2806
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x3 -> :sswitch_2
        0x2710 -> :sswitch_3
        0x2711 -> :sswitch_4
    .end sparse-switch
.end method

.method public prepareAddWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I
    .locals 5
    .parameter "win"
    .parameter "attrs"

    .prologue
    const/4 v2, -0x7

    const-string v4, "android.permission.STATUS_BAR_SERVICE"

    const-string v3, "PhoneWindowManager"

    .line 1133
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    sparse-switch v0, :sswitch_data_0

    .line 1158
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0

    .line 1135
    :sswitch_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.STATUS_BAR_SERVICE"

    const-string v1, "PhoneWindowManager"

    invoke-virtual {v0, v4, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1140
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    move v0, v2

    .line 1141
    goto :goto_1

    .line 1143
    :cond_0
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_0

    .line 1146
    :sswitch_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.STATUS_BAR_SERVICE"

    const-string v1, "PhoneWindowManager"

    invoke-virtual {v0, v4, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1149
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarPanels:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1152
    :sswitch_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_1

    move v0, v2

    .line 1153
    goto :goto_1

    .line 1155
    :cond_1
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_0

    .line 1133
    :sswitch_data_0
    .sparse-switch
        0x7d0 -> :sswitch_0
        0x7d4 -> :sswitch_2
        0x7de -> :sswitch_1
    .end sparse-switch
.end method

.method readLidState()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 886
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/IWindowManager;->getSwitchState(I)I

    move-result v0

    .line 887
    .local v0, sw:I
    if-ltz v0, :cond_0

    .line 888
    if-nez v0, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidOpen:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 893
    .end local v0           #sw:I
    :cond_0
    :goto_1
    return-void

    .restart local v0       #sw:I
    :cond_1
    move v1, v3

    .line 888
    goto :goto_0

    .line 890
    .end local v0           #sw:I
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public removeStartingWindow(Landroid/os/IBinder;Landroid/view/View;)V
    .locals 3
    .parameter "appToken"
    .parameter "window"

    .prologue
    .line 1112
    if-eqz p2, :cond_0

    .line 1113
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManagerImpl;

    .line 1114
    .local v0, wm:Landroid/view/WindowManagerImpl;
    invoke-virtual {v0, p2}, Landroid/view/WindowManagerImpl;->removeView(Landroid/view/View;)V

    .line 1116
    .end local v0           #wm:Landroid/view/WindowManagerImpl;
    :cond_0
    return-void
.end method

.method public removeWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 2
    .parameter "win"

    .prologue
    const/4 v1, 0x0

    .line 1163
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_0

    .line 1164
    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    .line 1171
    :goto_0
    return-void

    .line 1166
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_1

    .line 1167
    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_0

    .line 1169
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarPanels:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z
    .locals 1
    .parameter "keyCode"
    .parameter "componentName"
    .parameter "request"

    .prologue
    .line 2919
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHoldKeyConcept:Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z

    move-result v0

    return v0
.end method

.method public rotationForOrientationLw(IIZ)I
    .locals 7
    .parameter "orientation"
    .parameter "lastRotation"
    .parameter "displayEnabled"

    .prologue
    const/4 v3, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2485
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    if-gez v1, :cond_0

    .line 2487
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 2489
    .local v0, d:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v2

    if-le v1, v2, :cond_1

    .line 2490
    iput v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    .line 2491
    iput v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    .line 2492
    iput v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUpsideDownRotation:I

    .line 2493
    iput v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSeascapeRotation:I

    .line 2502
    .end local v0           #d:Landroid/view/Display;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2503
    packed-switch p1, :pswitch_data_0

    .line 2527
    :pswitch_0
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    const/16 v3, 0xa

    if-ne p1, v3, :cond_3

    move v3, v5

    :goto_1
    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;->setAllow180Rotation(Z)V

    .line 2533
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidOpen:Z

    if-eqz v2, :cond_4

    .line 2534
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidOpenRotation:I

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, v2

    .line 2543
    :goto_2
    return v1

    .line 2495
    .restart local v0       #d:Landroid/view/Display;
    :cond_1
    iput v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    .line 2496
    iput v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    .line 2497
    iput v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUpsideDownRotation:I

    .line 2498
    iput v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSeascapeRotation:I

    goto :goto_0

    .line 2506
    .end local v0           #d:Landroid/view/Display;
    :pswitch_1
    :try_start_1
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    monitor-exit v1

    move v1, v2

    goto :goto_2

    .line 2509
    :pswitch_2
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    monitor-exit v1

    move v1, v2

    goto :goto_2

    .line 2512
    :pswitch_3
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUpsideDownRotation:I

    monitor-exit v1

    move v1, v2

    goto :goto_2

    .line 2515
    :pswitch_4
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSeascapeRotation:I

    monitor-exit v1

    move v1, v2

    goto :goto_2

    .line 2518
    :pswitch_5
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    const/4 v3, 0x2

    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isLandscapeOrSeascape(I)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;->setAllow180Rotation(Z)V

    .line 2520
    invoke-direct {p0, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getCurrentLandscapeRotation(I)I

    move-result v2

    monitor-exit v1

    move v1, v2

    goto :goto_2

    .line 2522
    :pswitch_6
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    const/4 v3, 0x2

    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isLandscapeOrSeascape(I)Z

    move-result v3

    if-nez v3, :cond_2

    move v3, v5

    :goto_3
    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;->setAllow180Rotation(Z)V

    .line 2524
    invoke-direct {p0, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getCurrentPortraitRotation(I)I

    move-result v2

    monitor-exit v1

    move v1, v2

    goto :goto_2

    :cond_2
    move v3, v4

    .line 2522
    goto :goto_3

    :cond_3
    move v3, v4

    .line 2527
    goto :goto_1

    .line 2535
    :cond_4
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    if-ne v2, v6, :cond_5

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockRotation:I

    if-ltz v2, :cond_5

    .line 2536
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockRotation:I

    monitor-exit v1

    move v1, v2

    goto :goto_2

    .line 2537
    :cond_5
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    if-ne v2, v5, :cond_6

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockRotation:I

    if-ltz v2, :cond_6

    .line 2538
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockRotation:I

    monitor-exit v1

    move v1, v2

    goto :goto_2

    .line 2540
    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->useSensorForOrientationLp(I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2541
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v2, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;->getCurrentRotation(I)I

    move-result v2

    monitor-exit v1

    move v1, v2

    goto :goto_2

    .line 2543
    :cond_7
    monitor-exit v1

    move v1, v4

    goto :goto_2

    .line 2545
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 2503
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public screenOnStoppedLw()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2836
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowingAndNotHidden()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/LocalPowerManager;

    invoke-interface {v2}, Landroid/os/LocalPowerManager;->isScreenOn()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2837
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2838
    .local v0, curTime:J
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/LocalPowerManager;

    invoke-interface {v2, v0, v1, v3, v3}, Landroid/os/LocalPowerManager;->userActivity(JZI)V

    .line 2840
    .end local v0           #curTime:J
    :cond_0
    return-void
.end method

.method public screenTurnedOff(I)V
    .locals 2
    .parameter "why"

    .prologue
    const/4 v1, 0x0

    .line 2421
    const v0, 0x11170

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(II)I

    .line 2422
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideLockScreen:Z

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->onScreenTurnedOff(IZ)V

    .line 2423
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2424
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOn:Z

    .line 2425
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateOrientationListenerLp()V

    .line 2426
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateLockScreenTimeout()V

    .line 2427
    monitor-exit v0

    .line 2428
    return-void

    .line 2427
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public screenTurnedOn()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 2432
    const v0, 0x11170

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(II)I

    .line 2433
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->onScreenTurnedOn()V

    .line 2434
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2435
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOn:Z

    .line 2436
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateOrientationListenerLp()V

    .line 2437
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateLockScreenTimeout()V

    .line 2438
    monitor-exit v0

    .line 2439
    return-void

    .line 2438
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public selectAnimationLw(Landroid/view/WindowManagerPolicy$WindowState;I)I
    .locals 1
    .parameter "win"
    .parameter "transit"

    .prologue
    .line 1179
    const/4 v0, 0x5

    if-ne p2, v0, :cond_0

    .line 1180
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->hasAppShownWindows()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1182
    const v0, 0x10a0011

    .line 1186
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method sendCloseSystemWindows()V
    .locals 2

    .prologue
    .line 2466
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    .line 2467
    return-void
.end method

.method sendCloseSystemWindows(Ljava/lang/String;)V
    .locals 1
    .parameter "reason"

    .prologue
    .line 2470
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    .line 2471
    return-void
.end method

.method setAttachedWindowFrames(Landroid/view/WindowManagerPolicy$WindowState;IILandroid/view/WindowManagerPolicy$WindowState;ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 2
    .parameter "win"
    .parameter "fl"
    .parameter "sim"
    .parameter "attached"
    .parameter "insetDecors"
    .parameter "pf"
    .parameter "df"
    .parameter "cf"
    .parameter "vf"

    .prologue
    .line 1638
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v0

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLayer:I

    if-le v0, v1, :cond_0

    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v0

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLayer:I

    if-ge v0, v1, :cond_0

    .line 1646
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    iput v0, p9, Landroid/graphics/Rect;->left:I

    iput v0, p8, Landroid/graphics/Rect;->left:I

    iput v0, p7, Landroid/graphics/Rect;->left:I

    .line 1647
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    iput v0, p9, Landroid/graphics/Rect;->top:I

    iput v0, p8, Landroid/graphics/Rect;->top:I

    iput v0, p7, Landroid/graphics/Rect;->top:I

    .line 1648
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    iput v0, p9, Landroid/graphics/Rect;->right:I

    iput v0, p8, Landroid/graphics/Rect;->right:I

    iput v0, p7, Landroid/graphics/Rect;->right:I

    .line 1649
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    iput v0, p9, Landroid/graphics/Rect;->bottom:I

    iput v0, p8, Landroid/graphics/Rect;->bottom:I

    iput v0, p7, Landroid/graphics/Rect;->bottom:I

    .line 1680
    :goto_0
    and-int/lit16 v0, p2, 0x100

    if-nez v0, :cond_7

    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    :goto_1
    invoke-virtual {p6, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1682
    return-void

    .line 1657
    :cond_0
    and-int/lit16 v0, p3, 0xf0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_2

    .line 1658
    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getDisplayFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p8, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1674
    :cond_1
    :goto_2
    if-eqz p5, :cond_6

    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getDisplayFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    :goto_3
    invoke-virtual {p7, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1675
    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getVisibleFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p9, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 1666
    :cond_2
    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p8, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1667
    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v0

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLayer:I

    if-ge v0, v1, :cond_1

    .line 1668
    iget v0, p8, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    if-ge v0, v1, :cond_3

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    iput v0, p8, Landroid/graphics/Rect;->left:I

    .line 1669
    :cond_3
    iget v0, p8, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    if-ge v0, v1, :cond_4

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    iput v0, p8, Landroid/graphics/Rect;->top:I

    .line 1670
    :cond_4
    iget v0, p8, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    if-le v0, v1, :cond_5

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    iput v0, p8, Landroid/graphics/Rect;->right:I

    .line 1671
    :cond_5
    iget v0, p8, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    if-le v0, v1, :cond_1

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    iput v0, p8, Landroid/graphics/Rect;->bottom:I

    goto :goto_2

    :cond_6
    move-object v0, p8

    .line 1674
    goto :goto_3

    :cond_7
    move-object v0, p7

    .line 1680
    goto :goto_1
.end method

.method public setCurrentOrientationLw(I)V
    .locals 2
    .parameter "newOrientation"

    .prologue
    .line 2791
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2792
    :try_start_0
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentAppOrientation:I

    if-eq p1, v1, :cond_0

    .line 2793
    iput p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentAppOrientation:I

    .line 2794
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateOrientationListenerLp()V

    .line 2796
    :cond_0
    monitor-exit v0

    .line 2797
    return-void

    .line 2796
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method showGlobalActionsDialog()V
    .locals 3

    .prologue
    .line 584
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mGlobalActions:Lcom/android/internal/policy/impl/GlobalActions;

    if-nez v1, :cond_0

    .line 585
    new-instance v1, Lcom/android/internal/policy/impl/GlobalActions;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/policy/impl/GlobalActions;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mGlobalActions:Lcom/android/internal/policy/impl/GlobalActions;

    .line 587
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowingAndNotHidden()Z

    move-result v0

    .line 588
    .local v0, keyguardShowing:Z
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mGlobalActions:Lcom/android/internal/policy/impl/GlobalActions;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isDeviceProvisioned()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/policy/impl/GlobalActions;->showDialog(ZZ)V

    .line 589
    if-eqz v0, :cond_1

    .line 592
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->pokeWakelock()V

    .line 594
    :cond_1
    return-void
.end method

.method showRecentAppsDialog()V
    .locals 2

    .prologue
    .line 634
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRecentAppsDialog:Lcom/android/internal/policy/impl/RecentApplicationsDialog;

    if-nez v0, :cond_0

    .line 635
    new-instance v0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/RecentApplicationsDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRecentAppsDialog:Lcom/android/internal/policy/impl/RecentApplicationsDialog;

    .line 637
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRecentAppsDialog:Lcom/android/internal/policy/impl/RecentApplicationsDialog;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->show()V

    .line 638
    return-void
.end method

.method startDockOrHome()V
    .locals 3

    .prologue
    .line 2731
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->createHomeDockIntent()Landroid/content/Intent;

    move-result-object v0

    .line 2732
    .local v0, dock:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 2734
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2740
    :goto_0
    return-void

    .line 2736
    :catch_0
    move-exception v1

    .line 2739
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public subWindowTypeToLayerLw(I)I
    .locals 3
    .parameter "type"

    .prologue
    .line 975
    packed-switch p1, :pswitch_data_0

    .line 986
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown sub-window type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 978
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 980
    :pswitch_1
    const/4 v0, -0x2

    goto :goto_0

    .line 982
    :pswitch_2
    const/4 v0, -0x1

    goto :goto_0

    .line 984
    :pswitch_3
    const/4 v0, 0x2

    goto :goto_0

    .line 975
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public systemReady()V
    .locals 3

    .prologue
    .line 2620
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->onSystemReady()V

    .line 2621
    const-string v0, "dev.bootcomplete"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2622
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2623
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateOrientationListenerLp()V

    .line 2624
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemReady:Z

    .line 2625
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/internal/policy/impl/PhoneWindowManager$11;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$11;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2630
    monitor-exit v0

    .line 2631
    return-void

    .line 2630
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method updateOrientationListenerLp()V
    .locals 4

    .prologue
    const-string v3, "OrientationDebug"

    .line 493
    const-string v1, "OrientationDebug"

    const-string v1, "[pwm] in updateOrientationListenerLp()"

    invoke-static {v3, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;->canDetectOrientation()Z

    move-result v1

    if-nez v1, :cond_1

    .line 523
    :cond_0
    :goto_0
    return-void

    .line 500
    :cond_1
    const-string v1, "OrientationDebug"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "in updateOrientationListenerLp(), Screen status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", current orientation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentAppOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", SensorEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationSensorEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    const/4 v0, 0x1

    .line 504
    .local v0, disable:Z
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOn:Z

    if-eqz v1, :cond_2

    .line 505
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->needSensorRunningLp()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 506
    const/4 v0, 0x0

    .line 508
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationSensorEnabled:Z

    if-nez v1, :cond_2

    .line 509
    const-string v1, "OrientationDebug"

    const-string v1, "[pwm] in updateOrientationListenerLp(), now call mOrientationListener.enable(), and mOrientationSensorEnabled = true #1"

    invoke-static {v3, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;->enable()V

    .line 512
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationSensorEnabled:Z

    .line 517
    :cond_2
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationSensorEnabled:Z

    if-eqz v1, :cond_0

    .line 518
    const-string v1, "OrientationDebug"

    const-string v1, "[pwm] in updateOrientationListenerLp(), now call mOrientationListener.disable(), and mOrientationSensorEnabled = false #2"

    invoke-static {v3, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;->disable()V

    .line 521
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationSensorEnabled:Z

    goto :goto_0
.end method

.method updateRotation(I)V
    .locals 4
    .parameter "animFlags"

    .prologue
    const/4 v3, 0x1

    .line 2677
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/LocalPowerManager;

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidOpen:Z

    invoke-interface {v1, v2}, Landroid/os/LocalPowerManager;->setKeyboardVisibility(Z)V

    .line 2678
    const/4 v0, 0x0

    .line 2679
    .local v0, rotation:I
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidOpen:Z

    if-eqz v1, :cond_1

    .line 2680
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidOpenRotation:I

    .line 2689
    :cond_0
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFancyRotationAnimation:I

    or-int/2addr v3, p1

    invoke-interface {v1, v0, v2, v3}, Landroid/view/IWindowManager;->setRotation(IZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2694
    :goto_1
    return-void

    .line 2681
    :cond_1
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockRotation:I

    if-ltz v1, :cond_2

    .line 2682
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockRotation:I

    goto :goto_0

    .line 2683
    :cond_2
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    if-ne v1, v3, :cond_0

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockRotation:I

    if-ltz v1, :cond_0

    .line 2684
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockRotation:I

    goto :goto_0

    .line 2691
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public updateSettings()V
    .locals 14

    .prologue
    .line 716
    iget-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 717
    .local v8, resolver:Landroid/content/ContentResolver;
    const/4 v9, 0x0

    .line 718
    .local v9, updateRotation:Z
    const/4 v1, 0x0

    .line 719
    .local v1, addView:Landroid/view/View;
    const/4 v7, 0x0

    .line 720
    .local v7, removeView:Landroid/view/View;
    iget-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v11

    .line 721
    :try_start_0
    const-string v12, "end_button_behavior"

    const/4 v13, 0x2

    invoke-static {v8, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    iput v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEndcallBehavior:I

    .line 724
    const-string v12, "incall_power_button_behavior"

    const/4 v13, 0x1

    invoke-static {v8, v12, v13}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    iput v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIncallPowerBehavior:I

    .line 727
    const-string v12, "fancy_rotation_anim"

    const/4 v13, 0x0

    invoke-static {v8, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    if-eqz v12, :cond_7

    const/16 v12, 0x80

    :goto_0
    iput v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFancyRotationAnimation:I

    .line 729
    const-string v12, "accelerometer_rotation"

    const/4 v13, 0x0

    invoke-static {v8, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 731
    .local v0, accelerometerDefault:I
    iget v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAccelerometerDefault:I

    if-eq v12, v0, :cond_0

    .line 732
    const-string v12, "OrientationDebug"

    const-string v13, "[pwm] in updateSettings(), mAccelerometerDefault != accelerometerDefault, now call updateOrientationListenerLp()"

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAccelerometerDefault:I

    .line 734
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateOrientationListenerLp()V

    .line 736
    :cond_0
    iget-boolean v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemReady:Z

    if-eqz v12, :cond_1

    .line 737
    const-string v12, "pointer_location"

    const/4 v13, 0x0

    invoke-static {v8, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 739
    .local v6, pointerLocation:I
    iget v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationMode:I

    if-eq v12, v6, :cond_1

    .line 740
    iput v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationMode:I

    .line 741
    if-eqz v6, :cond_8

    .line 742
    iget-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    if-nez v12, :cond_1

    .line 743
    new-instance v12, Lcom/android/internal/widget/PointerLocationView;

    iget-object v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v12, v13}, Lcom/android/internal/widget/PointerLocationView;-><init>(Landroid/content/Context;)V

    iput-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    .line 744
    iget-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/android/internal/widget/PointerLocationView;->setPrintCoords(Z)V

    .line 745
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    .line 754
    .end local v6           #pointerLocation:I
    :cond_1
    :goto_1
    const-string v12, "screen_off_timeout"

    const/4 v13, 0x0

    invoke-static {v8, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    iput v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLockScreenTimeout:I

    .line 756
    const-string v12, "default_input_method"

    invoke-static {v8, v12}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 758
    .local v4, imId:Ljava/lang/String;
    if-eqz v4, :cond_9

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_9

    const/4 v12, 0x1

    move v3, v12

    .line 759
    .local v3, hasSoftInput:Z
    :goto_2
    iget-boolean v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasSoftInput:Z

    if-eq v12, v3, :cond_2

    .line 760
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasSoftInput:Z

    .line 761
    const/4 v9, 0x1

    .line 763
    :cond_2
    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 764
    if-eqz v9, :cond_3

    .line 765
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateRotation(I)V

    .line 767
    :cond_3
    if-eqz v1, :cond_4

    .line 768
    new-instance v5, Landroid/view/WindowManager$LayoutParams;

    const/4 v11, -0x1

    const/4 v12, -0x1

    invoke-direct {v5, v11, v12}, Landroid/view/WindowManager$LayoutParams;-><init>(II)V

    .line 771
    .local v5, lp:Landroid/view/WindowManager$LayoutParams;
    const/16 v11, 0x7df

    iput v11, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 772
    const/16 v11, 0x118

    iput v11, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 776
    const/4 v11, -0x3

    iput v11, v5, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 777
    const-string v11, "PointerLocation"

    invoke-virtual {v5, v11}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 778
    iget-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v12, "window"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/WindowManagerImpl;

    .line 780
    .local v10, wm:Landroid/view/WindowManagerImpl;
    invoke-virtual {v10, v1, v5}, Landroid/view/WindowManagerImpl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 782
    iget-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationInputChannel:Landroid/view/InputChannel;

    if-nez v11, :cond_4

    .line 784
    :try_start_1
    iget-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    const-string v12, "PointerLocationView"

    invoke-interface {v11, v12}, Landroid/view/IWindowManager;->monitorInput(Ljava/lang/String;)Landroid/view/InputChannel;

    move-result-object v11

    iput-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationInputChannel:Landroid/view/InputChannel;

    .line 786
    iget-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationInputChannel:Landroid/view/InputChannel;

    iget-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationInputHandler:Landroid/view/InputHandler;

    iget-object v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v13}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v13

    invoke-virtual {v13}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v13

    invoke-static {v11, v12, v13}, Landroid/view/InputQueue;->registerInputChannel(Landroid/view/InputChannel;Landroid/view/InputHandler;Landroid/os/MessageQueue;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 794
    .end local v5           #lp:Landroid/view/WindowManager$LayoutParams;
    .end local v10           #wm:Landroid/view/WindowManagerImpl;
    :cond_4
    :goto_3
    if-eqz v7, :cond_6

    .line 795
    iget-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationInputChannel:Landroid/view/InputChannel;

    if-eqz v11, :cond_5

    .line 796
    iget-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationInputChannel:Landroid/view/InputChannel;

    invoke-static {v11}, Landroid/view/InputQueue;->unregisterInputChannel(Landroid/view/InputChannel;)V

    .line 797
    iget-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationInputChannel:Landroid/view/InputChannel;

    invoke-virtual {v11}, Landroid/view/InputChannel;->dispose()V

    .line 798
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationInputChannel:Landroid/view/InputChannel;

    .line 801
    :cond_5
    iget-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v12, "window"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/WindowManagerImpl;

    .line 803
    .restart local v10       #wm:Landroid/view/WindowManagerImpl;
    invoke-virtual {v10, v7}, Landroid/view/WindowManagerImpl;->removeView(Landroid/view/View;)V

    .line 805
    .end local v10           #wm:Landroid/view/WindowManagerImpl;
    :cond_6
    return-void

    .line 727
    .end local v0           #accelerometerDefault:I
    .end local v3           #hasSoftInput:Z
    .end local v4           #imId:Ljava/lang/String;
    :cond_7
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 748
    .restart local v0       #accelerometerDefault:I
    .restart local v6       #pointerLocation:I
    :cond_8
    :try_start_2
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    .line 749
    const/4 v12, 0x0

    iput-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    goto/16 :goto_1

    .line 763
    .end local v0           #accelerometerDefault:I
    .end local v6           #pointerLocation:I
    :catchall_0
    move-exception v12

    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v12

    .line 758
    .restart local v0       #accelerometerDefault:I
    .restart local v4       #imId:Ljava/lang/String;
    :cond_9
    const/4 v12, 0x0

    move v3, v12

    goto/16 :goto_2

    .line 788
    .restart local v3       #hasSoftInput:Z
    .restart local v5       #lp:Landroid/view/WindowManager$LayoutParams;
    .restart local v10       #wm:Landroid/view/WindowManagerImpl;
    :catch_0
    move-exception v11

    move-object v2, v11

    .line 789
    .local v2, ex:Landroid/os/RemoteException;
    const-string v11, "WindowManager"

    const-string v12, "Could not set up input monitoring channel for PointerLocation."

    invoke-static {v11, v12, v2}, Landroid/util/secutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method

.method useSensorForOrientationLp(I)Z
    .locals 4
    .parameter "appOrientation"

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 417
    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    const/4 v0, 0x7

    if-ne p1, v0, :cond_1

    :cond_0
    move v0, v1

    .line 440
    :goto_0
    return v0

    .line 424
    :cond_1
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAccelerometerDefault:I

    if-eqz v0, :cond_3

    if-eq p1, v2, :cond_2

    if-ne p1, v3, :cond_3

    :cond_2
    move v0, v1

    .line 427
    goto :goto_0

    .line 430
    :cond_3
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockEnablesAccelerometer:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    if-eq v0, v2, :cond_5

    :cond_4
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockEnablesAccelerometer:Z

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    if-ne v0, v1, :cond_7

    .line 433
    :cond_5
    if-eq p1, v2, :cond_6

    if-eq p1, v3, :cond_6

    const/4 v0, 0x5

    if-ne p1, v0, :cond_7

    :cond_6
    move v0, v1

    .line 436
    goto :goto_0

    .line 440
    :cond_7
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public userActivity()V
    .locals 5

    .prologue
    .line 2635
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenLockTimeout:Ljava/lang/Runnable;

    monitor-enter v0

    .line 2636
    :try_start_0
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLockScreenTimerActive:Z

    if-eqz v1, :cond_0

    .line 2638
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenLockTimeout:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2639
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenLockTimeout:Ljava/lang/Runnable;

    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLockScreenTimeout:I

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2641
    :cond_0
    monitor-exit v0

    .line 2642
    return-void

    .line 2641
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public windowTypeToLayerLw(I)I
    .locals 4
    .parameter "type"

    .prologue
    const/4 v3, 0x2

    .line 932
    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/16 v0, 0x63

    if-gt p1, v0, :cond_0

    move v0, v3

    .line 970
    :goto_0
    return v0

    .line 935
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 969
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown window type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    .line 970
    goto :goto_0

    .line 937
    :pswitch_0
    const/16 v0, 0x8

    goto :goto_0

    .line 939
    :pswitch_1
    const/4 v0, 0x5

    goto :goto_0

    .line 941
    :pswitch_2
    const/4 v0, 0x6

    goto :goto_0

    .line 943
    :pswitch_3
    const/4 v0, 0x4

    goto :goto_0

    .line 945
    :pswitch_4
    const/4 v0, 0x3

    goto :goto_0

    .line 947
    :pswitch_5
    const/16 v0, 0xe

    goto :goto_0

    .line 949
    :pswitch_6
    const/16 v0, 0xf

    goto :goto_0

    .line 951
    :pswitch_7
    const/16 v0, 0xa

    goto :goto_0

    .line 953
    :pswitch_8
    const/16 v0, 0xb

    goto :goto_0

    .line 955
    :pswitch_9
    const/16 v0, 0xc

    goto :goto_0

    .line 957
    :pswitch_a
    const/16 v0, 0xd

    goto :goto_0

    .line 959
    :pswitch_b
    const/16 v0, 0x10

    goto :goto_0

    .line 961
    :pswitch_c
    const/16 v0, 0x11

    goto :goto_0

    .line 963
    :pswitch_d
    const/16 v0, 0x9

    goto :goto_0

    .line 965
    :pswitch_e
    const/4 v0, 0x7

    goto :goto_0

    :pswitch_f
    move v0, v3

    .line 967
    goto :goto_0

    .line 935
    nop

    :pswitch_data_0
    .packed-switch 0x7d0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_7
        :pswitch_5
        :pswitch_e
        :pswitch_b
        :pswitch_d
        :pswitch_2
        :pswitch_6
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_f
        :pswitch_1
        :pswitch_c
    .end packed-switch
.end method
