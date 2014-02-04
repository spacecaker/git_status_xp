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

.field private mBottomBar:Z

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

.field mVolumeDownLongPress:Ljava/lang/Runnable;

.field mVolumeUpLongPress:Ljava/lang/Runnable;

.field mW:I

.field mWindowManager:Landroid/view/IWindowManager;

.field private mdelayedupdateRotation:Ljava/lang/Runnable;

.field private mdelayedupdateRotationActive:Z

.field private voiceShortcutInputStateEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 309
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpParentFrame:Landroid/graphics/Rect;

    .line 310
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpDisplayFrame:Landroid/graphics/Rect;

    .line 311
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpContentFrame:Landroid/graphics/Rect;

    .line 312
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpVisibleFrame:Landroid/graphics/Rect;

    .line 1221
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_26

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    return-void

    nop

    :array_26
    .array-data 0x4
        0xd3t 0x7t 0x0t 0x0t
        0xdat 0x7t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    const-string v0, "com.sec.android.app.factorytest"

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->US_FACTOY_TEST_ACTIVITY:Ljava/lang/String;

    .line 218
    const-string v0, "com.sec.android.app.simplefunctiontest.KeypadTest"

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->US_TOUCHKEY_TEST_CLASS:Ljava/lang/String;

    .line 219
    const-string v0, "com.sec.android.app.simplefunctiontest.QwertyKeypadTest"

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->US_QWERTYKEY_TEST_CLASS:Ljava/lang/String;

    .line 221
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    .line 244
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEnableShiftMenuBugReports:Z

    .line 247
    iput-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    .line 248
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarPanels:Ljava/util/ArrayList;

    .line 249
    iput-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    .line 259
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUiMode:I

    .line 260
    iput v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    .line 268
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOn:Z

    .line 269
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationSensorEnabled:Z

    .line 270
    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentAppOrientation:I

    .line 272
    iput v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAccelerometerDefault:I

    .line 273
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasSoftInput:Z

    .line 275
    iput v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationMode:I

    .line 276
    iput-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    .line 279
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$1;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationInputHandler:Landroid/view/InputHandler;

    .line 337
    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    .line 338
    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSeascapeRotation:I

    .line 339
    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    .line 340
    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUpsideDownRotation:I

    .line 349
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHoldKeyConcept:Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;

    .line 353
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenCaptureAction;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenCaptureAction;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenCaptureAction:Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenCaptureAction;

    .line 561
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$2;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$2;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerLongPress:Ljava/lang/Runnable;

    .line 607
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$3;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$3;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMenuLongPress:Ljava/lang/Runnable;

    .line 622
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$4;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$4;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeLongPress:Ljava/lang/Runnable;

    .line 1540
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$5;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$5;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAxT9IMEReceiver:Landroid/content/BroadcastReceiver;

    .line 2035
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mdelayedupdateRotationActive:Z

    .line 2036
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$8;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$8;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mdelayedupdateRotation:Ljava/lang/Runnable;

    .line 2393
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$9;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$9;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastDone:Landroid/content/BroadcastReceiver;

    .line 2399
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$10;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$10;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockReceiver:Landroid/content/BroadcastReceiver;

    .line 2649
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$12;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$12;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenLockTimeout:Ljava/lang/Runnable;

    .line 2601
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$13;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$13;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeUpLongPress:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$14;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$14;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownLongPress:Ljava/lang/Runnable;

    .line 3026
    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/PhoneWindowManager;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 155
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->voiceShortcutInputStateEnabled:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/internal/policy/impl/PhoneWindowManager;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 155
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->voiceShortcutInputStateEnabled:Z

    return p1
.end method

.method static synthetic access$202(Lcom/android/internal/policy/impl/PhoneWindowManager;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 155
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mdelayedupdateRotationActive:Z

    return p1
.end method

.method private callCustomizedAssignActivity(I)V
    .registers 5
    .parameter "keyCode"

    .prologue
    .line 1553
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1554
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.settings.CUSTOMIZEDKEYASSIGN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1555
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.customizedkey.CustomizedkeyAssign"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1556
    const-string v1, "keyCode"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1557
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1558
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1560
    return-void
.end method

.method private callCustomizedKey(I)V
    .registers 5
    .parameter "keyCode"

    .prologue
    .line 1527
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1528
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.settings.BOOKMARKPICKER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1529
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.customizedkey.BookmarkPicker"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1530
    const-string v1, "keyCode"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1531
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1532
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1533
    return-void
.end method

.method private determineHiddenState(ZIII)I
    .registers 6
    .parameter "lidOpen"
    .parameter "mode"
    .parameter "hiddenValue"
    .parameter "visibleValue"

    .prologue
    .line 902
    packed-switch p2, :pswitch_data_12

    move v0, p4

    .line 908
    :goto_4
    return v0

    .line 904
    :pswitch_5
    if-eqz p1, :cond_9

    move v0, p4

    goto :goto_4

    :cond_9
    move v0, p3

    goto :goto_4

    .line 906
    :pswitch_b
    if-eqz p1, :cond_f

    move v0, p3

    goto :goto_4

    :cond_f
    move v0, p4

    goto :goto_4

    .line 902
    nop

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_5
        :pswitch_b
    .end packed-switch
.end method

.method static getAudioService()Landroid/media/IAudioService;
    .registers 3

    .prologue
    .line 1209
    const-string v1, "audio"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v0

    .line 1211
    .local v0, audioService:Landroid/media/IAudioService;
    if-nez v0, :cond_13

    .line 1212
    const-string v1, "WindowManager"

    const-string v2, "Unable to find IAudioService interface."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1214
    :cond_13
    return-object v0
.end method

.method private getCurrentLandscapeRotation(I)I
    .registers 4
    .parameter "lastRotation"

    .prologue
    .line 2554
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v1, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;->getCurrentRotation(I)I

    move-result v0

    .line 2555
    .local v0, sensorRotation:I
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isLandscapeOrSeascape(I)Z

    move-result v1

    if-eqz v1, :cond_e

    move v1, v0

    .line 2563
    :goto_d
    return v1

    .line 2559
    :cond_e
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isLandscapeOrSeascape(I)Z

    move-result v1

    if-eqz v1, :cond_16

    move v1, p1

    .line 2560
    goto :goto_d

    .line 2563
    :cond_16
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    goto :goto_d
.end method

.method private getCurrentPortraitRotation(I)I
    .registers 4
    .parameter "lastRotation"

    .prologue
    .line 2571
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v1, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;->getCurrentRotation(I)I

    move-result v0

    .line 2572
    .local v0, sensorRotation:I
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isAnyPortrait(I)Z

    move-result v1

    if-eqz v1, :cond_e

    move v1, v0

    .line 2580
    :goto_d
    return v1

    .line 2576
    :cond_e
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isAnyPortrait(I)Z

    move-result v1

    if-eqz v1, :cond_16

    move v1, p1

    .line 2577
    goto :goto_d

    .line 2580
    :cond_16
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    goto :goto_d
.end method

.method static getLongIntArray(Landroid/content/res/Resources;I)[J
    .registers 7
    .parameter "r"
    .parameter "resid"

    .prologue
    .line 2611
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    .line 2612
    .local v0, ar:[I
    if-nez v0, :cond_8

    .line 2613
    const/4 v3, 0x0

    .line 2619
    :goto_7
    return-object v3

    .line 2615
    :cond_8
    array-length v3, v0

    new-array v2, v3, [J

    .line 2616
    .local v2, out:[J
    const/4 v1, 0x0

    .local v1, i:I
    :goto_c
    array-length v3, v0

    if-ge v1, v3, :cond_17

    .line 2617
    aget v3, v0, v1

    int-to-long v3, v3

    aput-wide v3, v2, v1

    .line 2616
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_17
    move-object v3, v2

    .line 2619
    goto :goto_7
.end method

.method static getTelephonyService()Lcom/android/internal/telephony/ITelephony;
    .registers 3

    .prologue
    .line 1200
    const-string v1, "phone"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 1202
    .local v0, telephonyService:Lcom/android/internal/telephony/ITelephony;
    if-nez v0, :cond_13

    .line 1203
    const-string v1, "WindowManager"

    const-string v2, "Unable to find ITelephony interface."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1205
    :cond_13
    return-object v0
.end method

.method private interceptPowerKeyDown(Z)V
    .registers 6
    .parameter "handled"

    .prologue
    .line 528
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyHandled:Z

    .line 529
    if-nez p1, :cond_f

    .line 530
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerLongPress:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 532
    :cond_f
    return-void
.end method

.method private interceptPowerKeyUp(Z)Z
    .registers 6
    .parameter "canceled"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 535
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyHandled:Z

    if-nez v0, :cond_13

    .line 536
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 537
    if-nez p1, :cond_11

    move v0, v3

    .line 540
    :goto_10
    return v0

    :cond_11
    move v0, v2

    .line 537
    goto :goto_10

    .line 539
    :cond_13
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyHandled:Z

    move v0, v2

    .line 540
    goto :goto_10
.end method

.method private isAnyPortrait(I)Z
    .registers 3
    .parameter "sensorRotation"

    .prologue
    .line 2584
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    if-eq p1, v0, :cond_8

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUpsideDownRotation:I

    if-ne p1, v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private isLandscapeOrSeascape(I)Z
    .registers 3
    .parameter "sensorRotation"

    .prologue
    .line 2567
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    if-eq p1, v0, :cond_8

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSeascapeRotation:I

    if-ne p1, v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private keyguardIsShowingTq()Z
    .registers 2

    .prologue
    .line 2462
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowingAndNotHidden()Z

    move-result v0

    return v0
.end method

.method private readRotation(I)I
    .registers 4
    .parameter "resID"

    .prologue
    .line 814
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getInteger(I)I
    :try_end_9
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_9} :catch_17

    move-result v0

    .line 815
    .local v0, rotation:I
    sparse-switch v0, :sswitch_data_1a

    .line 828
    .end local v0           #rotation:I
    :goto_d
    const/4 v1, -0x1

    :goto_e
    return v1

    .line 817
    .restart local v0       #rotation:I
    :sswitch_f
    const/4 v1, 0x0

    goto :goto_e

    .line 819
    :sswitch_11
    const/4 v1, 0x1

    goto :goto_e

    .line 821
    :sswitch_13
    const/4 v1, 0x2

    goto :goto_e

    .line 823
    :sswitch_15
    const/4 v1, 0x3

    goto :goto_e

    .line 825
    .end local v0           #rotation:I
    :catch_17
    move-exception v1

    goto :goto_d

    .line 815
    nop

    :sswitch_data_1a
    .sparse-switch
        0x0 -> :sswitch_f
        0x5a -> :sswitch_11
        0xb4 -> :sswitch_13
        0x10e -> :sswitch_15
    .end sparse-switch
.end method

.method static sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3
    .parameter "context"
    .parameter "reason"

    .prologue
    .line 2479
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2481
    :try_start_6
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->closeSystemDialogs(Ljava/lang/String;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_d} :catch_e

    .line 2485
    :cond_d
    :goto_d
    return-void

    .line 2482
    :catch_e
    move-exception v0

    goto :goto_d
.end method

.method private updateLockScreenTimeout()V
    .registers 7

    .prologue
    .line 2660
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenLockTimeout:Ljava/lang/Runnable;

    monitor-enter v1

    .line 2661
    :try_start_3
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAllowLockscreenWhenOn:Z

    if-eqz v2, :cond_29

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOn:Z

    if-eqz v2, :cond_29

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isSecure()Z

    move-result v2

    if-eqz v2, :cond_29

    const/4 v2, 0x1

    move v0, v2

    .line 2662
    .local v0, enable:Z
    :goto_15
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLockScreenTimerActive:Z

    if-eq v2, v0, :cond_27

    .line 2663
    if-eqz v0, :cond_2c

    .line 2665
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenLockTimeout:Ljava/lang/Runnable;

    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLockScreenTimeout:I

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2670
    :goto_25
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLockScreenTimerActive:Z

    .line 2672
    :cond_27
    monitor-exit v1

    .line 2673
    return-void

    .line 2661
    .end local v0           #enable:Z
    :cond_29
    const/4 v2, 0x0

    move v0, v2

    goto :goto_15

    .line 2668
    .restart local v0       #enable:Z
    :cond_2c
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenLockTimeout:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_25

    .line 2672
    .end local v0           #enable:Z
    :catchall_34
    move-exception v2

    monitor-exit v1
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_34

    throw v2
.end method

.method private writeSlideCount(Z)V
    .registers 11
    .parameter "lidOpen"

    .prologue
    const-string v6, "/data/app/slideCount"

    .line 2050
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

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2052
    :try_start_1a
    iget-boolean v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRealLidOpen:Z

    if-eqz v6, :cond_6b

    .line 2053
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    const-string v7, "/data/app/slideCount"

    invoke-direct {v6, v7}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 2054
    .local v3, inReader:Ljava/io/BufferedReader;
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 2055
    .local v4, number:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 2056
    if-eqz v4, :cond_39

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_40

    .line 2057
    :cond_39
    new-instance v4, Ljava/lang/String;

    .end local v4           #number:Ljava/lang/String;
    const-string v6, "0"

    invoke-direct {v4, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 2060
    .restart local v4       #number:Ljava/lang/String;
    :cond_40
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2061
    .local v0, SlideOpenCount:I
    add-int/lit8 v0, v0, 0x1

    .line 2062
    new-instance v5, Ljava/io/BufferedWriter;

    new-instance v6, Ljava/io/FileWriter;

    const-string v7, "/data/app/slideCount"

    invoke-direct {v6, v7}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 2063
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

    .line 2064
    .local v1, countString:Ljava/lang/String;
    invoke-virtual {v5, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 2065
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->close()V
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_6b} :catch_6c

    .line 2071
    .end local v0           #SlideOpenCount:I
    .end local v1           #countString:Ljava/lang/String;
    .end local v3           #inReader:Ljava/io/BufferedReader;
    .end local v4           #number:Ljava/lang/String;
    .end local v5           #out:Ljava/io/BufferedWriter;
    :cond_6b
    :goto_6b
    return-void

    .line 2068
    :catch_6c
    move-exception v6

    move-object v2, v6

    .line 2069
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6b
.end method


# virtual methods
.method public addStartingWindow(Landroid/os/IBinder;Ljava/lang/String;ILjava/lang/CharSequence;II)Landroid/view/View;
    .registers 21
    .parameter "appToken"
    .parameter "packageName"
    .parameter "theme"
    .parameter "nonLocalizedLabel"
    .parameter "labelRes"
    .parameter "icon"

    .prologue
    .line 1015
    if-nez p2, :cond_4

    .line 1016
    const/4 v11, 0x0

    .line 1106
    :goto_3
    return-object v11

    .line 1020
    :cond_4
    :try_start_4
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;
    :try_end_6
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_4 .. :try_end_6} :catch_af
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_6} :catch_cc

    .line 1021
    .local v3, context:Landroid/content/Context;
    const/4 v7, 0x0

    .line 1024
    .local v7, setTheme:Z
    if-nez p3, :cond_b

    if-eqz p5, :cond_1d

    .line 1026
    :cond_b
    const/4 v11, 0x0

    :try_start_c
    move-object v0, v3

    move-object/from16 v1, p2

    move v2, v11

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v3

    .line 1027
    if-eqz p3, :cond_1d

    .line 1028
    move-object v0, v3

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/content/Context;->setTheme(I)V
    :try_end_1c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_c .. :try_end_1c} :catch_e7
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_c .. :try_end_1c} :catch_af
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_1c} :catch_cc

    .line 1029
    const/4 v7, 0x1

    .line 1035
    :cond_1d
    :goto_1d
    if-nez v7, :cond_25

    .line 1036
    const v11, 0x1030005

    :try_start_22
    invoke-virtual {v3, v11}, Landroid/content/Context;->setTheme(I)V

    .line 1039
    :cond_25
    invoke-static {v3}, Lcom/android/internal/policy/PolicyManager;->makeNewWindow(Landroid/content/Context;)Landroid/view/Window;

    move-result-object v9

    .line 1040
    .local v9, win:Landroid/view/Window;
    invoke-virtual {v9}, Landroid/view/Window;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v11

    const/16 v12, 0xc

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    if-eqz v11, :cond_38

    .line 1042
    const/4 v11, 0x0

    goto :goto_3

    .line 1045
    :cond_38
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 1046
    .local v6, r:Landroid/content/res/Resources;
    move-object v0, v6

    move/from16 v1, p5

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getText(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    .line 1048
    const/4 v11, 0x3

    invoke-virtual {v9, v11}, Landroid/view/Window;->setType(I)V

    .line 1054
    const v11, 0x20018

    const v12, 0x20018

    invoke-virtual {v9, v11, v12}, Landroid/view/Window;->setFlags(II)V

    .line 1062
    const/4 v11, -0x1

    const/4 v12, -0x1

    invoke-virtual {v9, v11, v12}, Landroid/view/Window;->setLayout(II)V

    .line 1065
    invoke-virtual {v9}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    .line 1066
    .local v5, params:Landroid/view/WindowManager$LayoutParams;
    iput-object p1, v5, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 1067
    move-object/from16 v0, p2

    move-object v1, v5

    iput-object v0, v1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 1068
    invoke-virtual {v9}, Landroid/view/Window;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v11

    const/16 v12, 0x8

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    iput v11, v5, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1070
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

    .line 1072
    const-string v11, "window"

    invoke-virtual {v3, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/WindowManagerImpl;

    .line 1074
    .local v10, wm:Landroid/view/WindowManagerImpl;
    invoke-virtual {v9}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v8

    .line 1076
    .local v8, view:Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/Window;->isFloating()Z

    move-result v11

    if-eqz v11, :cond_a0

    .line 1083
    const/4 v11, 0x0

    goto/16 :goto_3

    .line 1091
    :cond_a0
    invoke-virtual {v10, v8, v5}, Landroid/view/WindowManagerImpl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1095
    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;
    :try_end_a6
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_22 .. :try_end_a6} :catch_af
    .catch Ljava/lang/RuntimeException; {:try_start_22 .. :try_end_a6} :catch_cc

    move-result-object v11

    if-eqz v11, :cond_ac

    move-object v11, v8

    goto/16 :goto_3

    :cond_ac
    const/4 v11, 0x0

    goto/16 :goto_3

    .line 1096
    .end local v3           #context:Landroid/content/Context;
    .end local v5           #params:Landroid/view/WindowManager$LayoutParams;
    .end local v6           #r:Landroid/content/res/Resources;
    .end local v7           #setTheme:Z
    .end local v8           #view:Landroid/view/View;
    .end local v9           #win:Landroid/view/Window;
    .end local v10           #wm:Landroid/view/WindowManagerImpl;
    :catch_af
    move-exception v11

    move-object v4, v11

    .line 1098
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

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1106
    .end local v4           #e:Landroid/view/WindowManager$BadTokenException;
    :goto_c9
    const/4 v11, 0x0

    goto/16 :goto_3

    .line 1099
    :catch_cc
    move-exception v11

    move-object v4, v11

    .line 1103
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

    invoke-static {v11, v12, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c9

    .line 1031
    .end local v4           #e:Ljava/lang/RuntimeException;
    .restart local v3       #context:Landroid/content/Context;
    .restart local v7       #setTheme:Z
    :catch_e7
    move-exception v11

    goto/16 :goto_1d
.end method

.method public adjustConfigurationLw(Landroid/content/res/Configuration;)V
    .registers 7
    .parameter "config"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const-string v4, "GT-S5300"

    .line 913
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->readLidState()V

    .line 914
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidOpen:Z

    .line 915
    .local v0, lidOpen:Z
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/LocalPowerManager;

    invoke-interface {v1, v0}, Landroid/os/LocalPowerManager;->setKeyboardVisibility(Z)V

    .line 917
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidKeyboardAccessibility:I

    invoke-direct {p0, v0, v1, v3, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->determineHiddenState(ZIII)I

    move-result v1

    iput v1, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    .line 921
    const-string v1, "GT-S5300"

    const-string v1, "GT-B5510"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2a

    const-string v1, "GT-S5300"

    const-string v1, "GT-B7800"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 923
    :cond_2a
    iput v2, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    .line 926
    :cond_2c
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidNavigationAccessibility:I

    invoke-direct {p0, v0, v1, v3, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->determineHiddenState(ZIII)I

    move-result v1

    iput v1, p1, Landroid/content/res/Configuration;->navigationHidden:I

    .line 929
    iget v1, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-eq v1, v2, :cond_3c

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasSoftInput:Z

    if-eqz v1, :cond_40

    :cond_3c
    move v1, v2

    :goto_3d
    iput v1, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 933
    return-void

    :cond_40
    move v1, v3

    .line 929
    goto :goto_3d
.end method

.method public adjustWindowParamsLw(Landroid/view/WindowManager$LayoutParams;)V
    .registers 3
    .parameter "attrs"

    .prologue
    .line 875
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    sparse-switch v0, :sswitch_data_14

    .line 887
    :goto_5
    return-void

    .line 880
    :sswitch_6
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v0, v0, 0x18

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_5

    .line 884
    :sswitch_d
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_5

    .line 875
    :sswitch_data_14
    .sparse-switch
        0x7d5 -> :sswitch_d
        0x7d6 -> :sswitch_6
        0x7df -> :sswitch_6
    .end sparse-switch
.end method

.method public allowAppAnimationsLw()Z
    .registers 10

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1960
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v5, :cond_10

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v5}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v5

    if-eqz v5, :cond_10

    move v5, v7

    .line 1983
    :goto_f
    return v5

    .line 1965
    :cond_10
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v5, :cond_5f

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v5}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v5

    if-eqz v5, :cond_5f

    .line 1966
    new-instance v3, Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v5}, Landroid/view/WindowManagerPolicy$WindowState;->getShownFrameLw()Landroid/graphics/Rect;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1967
    .local v3, rect:Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarPanels:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int v0, v5, v8

    .local v0, i:I
    :goto_2f
    if-ltz v0, :cond_49

    .line 1968
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarPanels:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManagerPolicy$WindowState;

    .line 1969
    .local v4, w:Landroid/view/WindowManagerPolicy$WindowState;
    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v5

    if-eqz v5, :cond_46

    .line 1970
    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowState;->getShownFrameLw()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 1967
    :cond_46
    add-int/lit8 v0, v0, -0x1

    goto :goto_2f

    .line 1973
    .end local v4           #w:Landroid/view/WindowManagerPolicy$WindowState;
    :cond_49
    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mW:I

    div-int/lit8 v2, v5, 0xa

    .line 1974
    .local v2, insetw:I
    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mH:I

    div-int/lit8 v1, v5, 0xa

    .line 1975
    .local v1, inseth:I
    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mW:I

    sub-int/2addr v5, v2

    iget v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mH:I

    sub-int/2addr v6, v1

    invoke-virtual {v3, v2, v1, v5, v6}, Landroid/graphics/Rect;->contains(IIII)Z

    move-result v5

    if-eqz v5, :cond_5f

    move v5, v7

    .line 1980
    goto :goto_f

    .end local v0           #i:I
    .end local v1           #inseth:I
    .end local v2           #insetw:I
    .end local v3           #rect:Landroid/graphics/Rect;
    :cond_5f
    move v5, v8

    .line 1983
    goto :goto_f
.end method

.method public allowKeyRepeat()Z
    .registers 2

    .prologue
    .line 2849
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOn:Z

    return v0
.end method

.method public animatingWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)V
    .registers 7
    .parameter "win"
    .parameter "attrs"

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x1

    .line 1852
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v0, :cond_4a

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleOrBehindKeyguardLw()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 1854
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_14

    .line 1855
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceStatusBar:Z

    .line 1857
    :cond_14
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-lt v0, v2, :cond_4a

    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x63

    if-gt v0, v1, :cond_4a

    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    if-nez v0, :cond_4a

    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    if-nez v0, :cond_4a

    iget v0, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v0, v3, :cond_4a

    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ne v0, v3, :cond_4a

    .line 1863
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    .line 1864
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v1, 0x8

    and-int/2addr v0, v1

    if-eqz v0, :cond_39

    .line 1866
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideLockScreen:Z

    .line 1868
    :cond_39
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v1, 0x40

    and-int/2addr v0, v1

    if-eqz v0, :cond_42

    .line 1870
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDismissKeyguard:Z

    .line 1872
    :cond_42
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4a

    .line 1873
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAllowLockscreenWhenOn:Z

    .line 1877
    :cond_4a
    return-void
.end method

.method public beginAnimationLw(II)V
    .registers 5
    .parameter "displayWidth"
    .parameter "displayHeight"

    .prologue
    const/4 v1, 0x0

    .line 1841
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    .line 1842
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceStatusBar:Z

    .line 1844
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideLockScreen:Z

    .line 1845
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAllowLockscreenWhenOn:Z

    .line 1846
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDismissKeyguard:Z

    .line 1847
    return-void
.end method

.method public beginLayoutLw(II)V
    .registers 9
    .parameter "displayWidth"
    .parameter "displayHeight"

    .prologue
    const/4 v5, 0x0

    .line 1555
    iput p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mW:I

    .line 1556
    iput p2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mH:I

    .line 1557
    iput v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurLeft:I

    iput v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    iput v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    .line 1558
    iput v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    iput v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    iput v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    .line 1559
    iput p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurRight:I

    iput p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    iput p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    .line 1560
    iput p2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    iput p2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    iput p2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    .line 1561
    const/high16 v4, 0x1000

    iput v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLayer:I

    .line 1564
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v4, :cond_7b

    .line 1565
    sget-object v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpParentFrame:Landroid/graphics/Rect;

    .line 1566
    .local v1, pf:Landroid/graphics/Rect;
    sget-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpDisplayFrame:Landroid/graphics/Rect;

    .line 1567
    .local v0, df:Landroid/graphics/Rect;
    sget-object v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpVisibleFrame:Landroid/graphics/Rect;

    .line 1568
    .local v3, vf:Landroid/graphics/Rect;
    iput v5, v3, Landroid/graphics/Rect;->left:I

    iput v5, v0, Landroid/graphics/Rect;->left:I

    iput v5, v1, Landroid/graphics/Rect;->left:I

    .line 1569
    iput v5, v3, Landroid/graphics/Rect;->top:I

    iput v5, v0, Landroid/graphics/Rect;->top:I

    iput v5, v1, Landroid/graphics/Rect;->top:I

    .line 1571
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBottomBar:Z

    if-eqz v4, :cond_50

    .line 1573
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1050004

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 1575
    .local v2, statusbar_height:I
    sub-int v4, p2, v2

    iput v4, v3, Landroid/graphics/Rect;->top:I

    iput v4, v0, Landroid/graphics/Rect;->top:I

    iput v4, v1, Landroid/graphics/Rect;->top:I

    .line 1578
    .end local v2           #statusbar_height:I
    :cond_50
    iput p1, v3, Landroid/graphics/Rect;->right:I

    iput p1, v0, Landroid/graphics/Rect;->right:I

    iput p1, v1, Landroid/graphics/Rect;->right:I

    .line 1579
    iput p2, v3, Landroid/graphics/Rect;->bottom:I

    iput p2, v0, Landroid/graphics/Rect;->bottom:I

    iput p2, v1, Landroid/graphics/Rect;->bottom:I

    .line 1581
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v4, v1, v0, v3, v3}, Landroid/view/WindowManagerPolicy$WindowState;->computeFrameLw(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1582
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v4

    if-eqz v4, :cond_7b

    .line 1585
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBottomBar:Z

    if-eqz v4, :cond_7c

    .line 1587
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iput v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    iput v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    iput v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    .line 1596
    .end local v0           #df:Landroid/graphics/Rect;
    .end local v1           #pf:Landroid/graphics/Rect;
    .end local v3           #vf:Landroid/graphics/Rect;
    :cond_7b
    :goto_7b
    return-void

    .line 1589
    .restart local v0       #df:Landroid/graphics/Rect;
    .restart local v1       #pf:Landroid/graphics/Rect;
    .restart local v3       #vf:Landroid/graphics/Rect;
    :cond_7c
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iput v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    iput v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    iput v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    goto :goto_7b
.end method

.method public canBeForceHidden(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z
    .registers 5
    .parameter "win"
    .parameter "attrs"

    .prologue
    .line 1004
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7d0

    if-eq v0, v1, :cond_e

    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7dd

    if-eq v0, v1, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public checkAddPermission(Landroid/view/WindowManager$LayoutParams;)I
    .registers 6
    .parameter "attrs"

    .prologue
    const/4 v3, 0x0

    .line 833
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 835
    .local v1, type:I
    const/16 v2, 0x7d0

    if-lt v1, v2, :cond_b

    const/16 v2, 0xbb7

    if-le v1, v2, :cond_d

    :cond_b
    move v2, v3

    .line 871
    :goto_c
    return v2

    .line 840
    :cond_d
    const/16 v2, 0xbb6

    if-ne v1, v2, :cond_13

    move v2, v3

    .line 841
    goto :goto_c

    .line 844
    :cond_13
    const/4 v0, 0x0

    .line 845
    .local v0, permission:Ljava/lang/String;
    packed-switch v1, :pswitch_data_2a

    .line 863
    :pswitch_17
    const-string v0, "android.permission.INTERNAL_SYSTEM_WINDOW"

    .line 865
    :goto_19
    :pswitch_19
    if-eqz v0, :cond_28

    .line 866
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_28

    .line 868
    const/4 v2, -0x8

    goto :goto_c

    .line 860
    :pswitch_25
    const-string v0, "android.permission.SYSTEM_ALERT_WINDOW"

    .line 861
    goto :goto_19

    :cond_28
    move v2, v3

    .line 871
    goto :goto_c

    .line 845
    :pswitch_data_2a
    .packed-switch 0x7d2
        :pswitch_25
        :pswitch_25
        :pswitch_17
        :pswitch_19
        :pswitch_25
        :pswitch_25
        :pswitch_17
        :pswitch_17
        :pswitch_25
        :pswitch_19
        :pswitch_17
        :pswitch_19
    .end packed-switch
.end method

.method public createForceHideEnterAnimation()Landroid/view/animation/Animation;
    .registers 3

    .prologue
    .line 1195
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const v1, 0x10a001d

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method createHomeDockIntent()Landroid/content/Intent;
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 2712
    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUiMode:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_18

    .line 2713
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockIntent:Landroid/content/Intent;

    .line 2720
    .local v1, intent:Landroid/content/Intent;
    :goto_8
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 2722
    .local v0, ai:Landroid/content/pm/ActivityInfo;
    if-nez v0, :cond_22

    move-object v3, v5

    .line 2732
    .end local v0           #ai:Landroid/content/pm/ActivityInfo;
    .end local v1           #intent:Landroid/content/Intent;
    :goto_17
    return-object v3

    .line 2714
    :cond_18
    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUiMode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_20

    .line 2715
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockIntent:Landroid/content/Intent;

    .restart local v1       #intent:Landroid/content/Intent;
    goto :goto_8

    .end local v1           #intent:Landroid/content/Intent;
    :cond_20
    move-object v3, v5

    .line 2717
    goto :goto_17

    .line 2726
    .restart local v0       #ai:Landroid/content/pm/ActivityInfo;
    .restart local v1       #intent:Landroid/content/Intent;
    :cond_22
    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v3, :cond_3e

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "android.dock_home"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 2727
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 2728
    .end local v1           #intent:Landroid/content/Intent;
    .local v2, intent:Landroid/content/Intent;
    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object v3, v2

    .line 2729
    goto :goto_17

    .end local v2           #intent:Landroid/content/Intent;
    .restart local v1       #intent:Landroid/content/Intent;
    :cond_3e
    move-object v3, v5

    .line 2732
    goto :goto_17
.end method

.method public detectSafeMode()Z
    .registers 9

    .prologue
    const/4 v7, 0x1

    const-string v5, "WindowManager"

    .line 2589
    :try_start_3
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    const/16 v6, 0x52

    invoke-interface {v5, v6}, Landroid/view/IWindowManager;->getKeycodeState(I)I

    move-result v2

    .line 2590
    .local v2, menuState:I
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    const/16 v6, 0x2f

    invoke-interface {v5, v6}, Landroid/view/IWindowManager;->getKeycodeState(I)I

    move-result v3

    .line 2591
    .local v3, sState:I
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    const/16 v6, 0x17

    invoke-interface {v5, v6}, Landroid/view/IWindowManager;->getDPadKeycodeState(I)I

    move-result v0

    .line 2592
    .local v0, dpadState:I
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    const/16 v6, 0x110

    invoke-interface {v5, v6}, Landroid/view/IWindowManager;->getTrackballScancodeState(I)I

    move-result v4

    .line 2593
    .local v4, trackballState:I
    if-gtz v2, :cond_2b

    if-gtz v3, :cond_2b

    if-gtz v0, :cond_2b

    if-lez v4, :cond_7c

    :cond_2b
    move v5, v7

    :goto_2c
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSafeMode:Z

    .line 2594
    const/4 v5, 0x0

    iget-boolean v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSafeMode:Z

    if-eqz v6, :cond_7e

    const/16 v6, 0x2711

    :goto_35
    const/4 v7, 0x1

    invoke-virtual {p0, v5, v6, v7}, Lcom/android/internal/policy/impl/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 2597
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSafeMode:Z

    if-eqz v5, :cond_81

    .line 2598
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

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2603
    :goto_79
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSafeMode:Z

    return v5

    .line 2593
    :cond_7c
    const/4 v5, 0x0

    goto :goto_2c

    .line 2594
    :cond_7e
    const/16 v6, 0x2710

    goto :goto_35

    .line 2601
    :cond_81
    const-string v5, "WindowManager"

    const-string v6, "SAFE MODE not enabled"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_88
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_88} :catch_89

    goto :goto_79

    .line 2604
    .end local v0           #dpadState:I
    .end local v2           #menuState:I
    .end local v3           #sState:I
    .end local v4           #trackballState:I
    :catch_89
    move-exception v5

    move-object v1, v5

    .line 2606
    .local v1, e:Landroid/os/RemoteException;
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "window manager dead"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public doesForceHide(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z
    .registers 5
    .parameter "win"
    .parameter "attrs"

    .prologue
    .line 1000
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7d4

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public enableKeyguard(Z)V
    .registers 3
    .parameter "enabled"

    .prologue
    .line 2453
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->setKeyguardEnabled(Z)V

    .line 2454
    return-void
.end method

.method public enableScreenAfterBoot()V
    .registers 2

    .prologue
    .line 2677
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->readLidState()V

    .line 2678
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateRotation(I)V

    .line 2679
    return-void
.end method

.method public exitKeyguardSecurely(Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;)V
    .registers 3
    .parameter "callback"

    .prologue
    .line 2458
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->verifyUnlock(Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;)V

    .line 2459
    return-void
.end method

.method public finishAnimationLw()I
    .registers 9

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1881
    const/4 v0, 0x0

    .line 1883
    .local v0, changes:I
    const/4 v2, 0x0

    .line 1884
    .local v2, hiding:Z
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v5, :cond_16

    .line 1887
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceStatusBar:Z

    if-eqz v5, :cond_59

    .line 1889
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v5, v6}, Landroid/view/WindowManagerPolicy$WindowState;->showLw(Z)Z

    move-result v5

    if-eqz v5, :cond_16

    or-int/lit8 v0, v0, 0x1

    .line 1909
    :cond_16
    :goto_16
    if-eqz v0, :cond_29

    if-eqz v2, :cond_29

    .line 1910
    const-string v5, "statusbar"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v4

    .line 1911
    .local v4, sbs:Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v4, :cond_29

    .line 1914
    :try_start_26
    invoke-interface {v4}, Lcom/android/internal/statusbar/IStatusBarService;->collapse()V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_29} :catch_a9

    .line 1922
    .end local v4           #sbs:Lcom/android/internal/statusbar/IStatusBarService;
    :cond_29
    :goto_29
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v5, :cond_55

    .line 1924
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDismissKeyguard:Z

    if-eqz v5, :cond_85

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isSecure()Z

    move-result v5

    if-nez v5, :cond_85

    .line 1925
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v5, v6}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    move-result v5

    if-eqz v5, :cond_43

    .line 1926
    or-int/lit8 v0, v0, 0x7

    .line 1930
    :cond_43
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_55

    .line 1931
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/internal/policy/impl/PhoneWindowManager$7;

    invoke-direct {v6, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$7;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1955
    :cond_55
    :goto_55
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateLockScreenTimeout()V

    .line 1956
    return v0

    .line 1890
    :cond_59
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v5, :cond_16

    .line 1894
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v5}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 1896
    .local v3, lp:Landroid/view/WindowManager$LayoutParams;
    iget v5, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v5, v5, 0x400

    if-eqz v5, :cond_78

    move v1, v6

    .line 1898
    .local v1, hideStatusBar:Z
    :goto_6a
    if-eqz v1, :cond_7a

    .line 1900
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v5, v6}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    move-result v5

    if-eqz v5, :cond_76

    or-int/lit8 v0, v0, 0x1

    .line 1901
    :cond_76
    const/4 v2, 0x1

    goto :goto_16

    .end local v1           #hideStatusBar:Z
    :cond_78
    move v1, v7

    .line 1896
    goto :goto_6a

    .line 1904
    .restart local v1       #hideStatusBar:Z
    :cond_7a
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v5, v6}, Landroid/view/WindowManagerPolicy$WindowState;->showLw(Z)Z

    move-result v5

    if-eqz v5, :cond_16

    or-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 1937
    .end local v1           #hideStatusBar:Z
    .end local v3           #lp:Landroid/view/WindowManager$LayoutParams;
    :cond_85
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideLockScreen:Z

    if-eqz v5, :cond_99

    .line 1938
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v5, v6}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    move-result v5

    if-eqz v5, :cond_93

    .line 1939
    or-int/lit8 v0, v0, 0x7

    .line 1943
    :cond_93
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v5, v6}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->setHidden(Z)V

    goto :goto_55

    .line 1945
    :cond_99
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v5, v6}, Landroid/view/WindowManagerPolicy$WindowState;->showLw(Z)Z

    move-result v5

    if-eqz v5, :cond_a3

    .line 1946
    or-int/lit8 v0, v0, 0x7

    .line 1950
    :cond_a3
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v5, v7}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->setHidden(Z)V

    goto :goto_55

    .line 1915
    .restart local v4       #sbs:Lcom/android/internal/statusbar/IStatusBarService;
    :catch_a9
    move-exception v5

    goto/16 :goto_29
.end method

.method public finishLayoutLw()I
    .registers 2

    .prologue
    .line 1836
    const/4 v0, 0x0

    return v0
.end method

.method public getContentInsetHintLw(Landroid/view/WindowManager$LayoutParams;Landroid/graphics/Rect;)V
    .registers 9
    .parameter "attrs"
    .parameter "contentInset"

    .prologue
    .line 1598
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1600
    .local v0, fl:I
    const v1, 0x10500

    and-int/2addr v1, v0

    const v2, 0x10100

    if-ne v1, v2, :cond_1d

    .line 1603
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurLeft:I

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mW:I

    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurRight:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mH:I

    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    sub-int/2addr v4, v5

    invoke-virtual {p2, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 1607
    :goto_1c
    return-void

    .line 1605
    :cond_1d
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_1c
.end method

.method public getMaxWallpaperLayer()I
    .registers 2

    .prologue
    .line 996
    const/16 v0, 0x8

    return v0
.end method

.method goHome()Z
    .registers 16

    .prologue
    .line 2764
    :try_start_0
    const-string v0, "persist.sys.uts-test-mode"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_34

    .line 2766
    const-string v0, "WindowManager"

    const-string v1, "UTS-TEST-MODE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2781
    :cond_11
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

    .line 2785
    .local v14, result:I
    const/4 v0, 0x1

    if-ne v14, v0, :cond_64

    .line 2786
    const/4 v0, 0x0

    .line 2792
    .end local v14           #result:I
    :goto_33
    return v0

    .line 2768
    :cond_34
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->stopAppSwitches()V

    .line 2769
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows()V

    .line 2770
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->createHomeDockIntent()Landroid/content/Intent;

    move-result-object v2

    .line 2771
    .local v2, dock:Landroid/content/Intent;
    if-eqz v2, :cond_11

    .line 2772
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
    :try_end_5d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5d} :catch_63

    move-result v14

    .line 2776
    .restart local v14       #result:I
    const/4 v0, 0x1

    if-ne v14, v0, :cond_11

    .line 2777
    const/4 v0, 0x0

    goto :goto_33

    .line 2788
    .end local v2           #dock:Landroid/content/Intent;
    .end local v14           #result:I
    :catch_63
    move-exception v0

    .line 2792
    :cond_64
    const/4 v0, 0x1

    goto :goto_33
.end method

.method handleVolumeKey(II)V
    .registers 8
    .parameter "stream"
    .parameter "keycode"

    .prologue
    const-string v4, "WindowManager"

    .line 2092
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getAudioService()Landroid/media/IAudioService;

    move-result-object v0

    .line 2094
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

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2095
    if-nez v0, :cond_21

    .line 2113
    :goto_20
    return-void

    .line 2102
    :cond_21
    :try_start_21
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2103
    const/16 v2, 0x18

    if-ne p2, v2, :cond_35

    const/4 v2, 0x1

    :goto_2b
    const/4 v3, 0x0

    invoke-interface {v0, p1, v2, v3}, Landroid/media/IAudioService;->adjustStreamVolume(III)V
    :try_end_2f
    .catchall {:try_start_21 .. :try_end_2f} :catchall_57
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_2f} :catch_37

    .line 2111
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_20

    .line 2103
    :cond_35
    const/4 v2, -0x1

    goto :goto_2b

    .line 2108
    :catch_37
    move-exception v2

    move-object v1, v2

    .line 2109
    .local v1, e:Landroid/os/RemoteException;
    :try_start_39
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

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_51
    .catchall {:try_start_39 .. :try_end_51} :catchall_57

    .line 2111
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_20

    .end local v1           #e:Landroid/os/RemoteException;
    :catchall_57
    move-exception v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v2
.end method

.method handleVolumeLongPress(I)V
    .registers 6
    .parameter "keycode"

    .prologue
    const/16 v1, 0x18

    if-ne p1, v1, :cond_f

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeUpLongPress:Ljava/lang/Runnable;

    .local v0, btnHandler:Ljava/lang/Runnable;
    :goto_6
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    sget v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->LONG_PRESS_TIMEOUT:I

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .end local v0           #btnHandler:Ljava/lang/Runnable;
    :cond_f
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownLongPress:Ljava/lang/Runnable;

    .restart local v0       #btnHandler:Ljava/lang/Runnable;
    goto :goto_6
.end method

.method handleVolumeLongPressAbort()V
    .registers 3

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeUpLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public inKeyguardRestrictedKeyInputMode()Z
    .registers 2

    .prologue
    .line 2467
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isInputRestricted()Z

    move-result v0

    return v0
.end method

.method public init(Landroid/content/Context;Landroid/view/IWindowManager;Landroid/os/LocalPowerManager;)V
    .registers 14
    .parameter "context"
    .parameter "windowManager"
    .parameter "powerManager"

    .prologue
    const/4 v8, 0x0

    const/high16 v7, 0x1020

    const-string v9, "android.intent.action.MAIN"

    .line 648
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 649
    iput-object p2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    .line 650
    iput-object p3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/LocalPowerManager;

    .line 651
    new-instance v5, Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-direct {v5, p1, p0, p3}, Lcom/android/internal/policy/impl/KeyguardViewMediator;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/os/LocalPowerManager;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    .line 652
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    iput-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    .line 653
    new-instance v5, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v5, p0, v6}, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    .line 654
    new-instance v4, Lcom/android/internal/policy/impl/PhoneWindowManager$SettingsObserver;

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v4, p0, v5}, Lcom/android/internal/policy/impl/PhoneWindowManager$SettingsObserver;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/os/Handler;)V

    .line 655
    .local v4, settingsObserver:Lcom/android/internal/policy/impl/PhoneWindowManager$SettingsObserver;
    invoke-virtual {v4}, Lcom/android/internal/policy/impl/PhoneWindowManager$SettingsObserver;->observe()V

    .line 656
    new-instance v5, Lcom/android/internal/policy/impl/ShortcutManager;

    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v5, p1, v6}, Lcom/android/internal/policy/impl/ShortcutManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShortcutManager:Lcom/android/internal/policy/impl/ShortcutManager;

    .line 657
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShortcutManager:Lcom/android/internal/policy/impl/ShortcutManager;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/ShortcutManager;->observe()V

    .line 658
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v5, v9, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    .line 659
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    const-string v6, "android.intent.category.HOME"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 660
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    invoke-virtual {v5, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 662
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v5, v9, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockIntent:Landroid/content/Intent;

    .line 663
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockIntent:Landroid/content/Intent;

    const-string v6, "android.intent.category.CAR_DOCK"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 664
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockIntent:Landroid/content/Intent;

    invoke-virtual {v5, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 666
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v5, v9, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockIntent:Landroid/content/Intent;

    .line 667
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockIntent:Landroid/content/Intent;

    const-string v6, "android.intent.category.DESK_DOCK"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 668
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockIntent:Landroid/content/Intent;

    invoke-virtual {v5, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 670
    const-string v5, "power"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .line 671
    .local v3, pm:Landroid/os/PowerManager;
    const/4 v5, 0x1

    const-string v6, "PhoneWindowManager.mBroadcastWakeLock"

    invoke-virtual {v3, v5, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 673
    const-string v5, "1"

    const-string v6, "ro.debuggable"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEnableShiftMenuBugReports:Z

    .line 674
    const v5, 0x10e0004

    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/PhoneWindowManager;->readRotation(I)I

    move-result v5

    iput v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidOpenRotation:I

    .line 676
    const v5, 0x10e0006

    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/PhoneWindowManager;->readRotation(I)I

    move-result v5

    iput v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockRotation:I

    .line 678
    const v5, 0x10e0005

    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/PhoneWindowManager;->readRotation(I)I

    move-result v5

    iput v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockRotation:I

    .line 680
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10d000f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockEnablesAccelerometer:Z

    .line 682
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10d000e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockEnablesAccelerometer:Z

    .line 684
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10e0009

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidKeyboardAccessibility:I

    .line 686
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10e000a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidNavigationAccessibility:I

    .line 689
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 690
    .local v1, filter:Landroid/content/IntentFilter;
    sget-object v5, Landroid/app/UiModeManager;->ACTION_ENTER_CAR_MODE:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 691
    sget-object v5, Landroid/app/UiModeManager;->ACTION_EXIT_CAR_MODE:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 692
    sget-object v5, Landroid/app/UiModeManager;->ACTION_ENTER_DESK_MODE:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 693
    sget-object v5, Landroid/app/UiModeManager;->ACTION_EXIT_DESK_MODE:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 694
    const-string v5, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 695
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v5, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v2

    .line 696
    .local v2, intent:Landroid/content/Intent;
    if-eqz v2, :cond_11e

    .line 698
    const-string v5, "android.intent.extra.DOCK_STATE"

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    .line 703
    :cond_11e
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 704
    .local v0, axT9IMEFilter:Landroid/content/IntentFilter;
    const-string v5, "AxT9IME.isVoiceShortcutInputState"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 705
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAxT9IMEReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v5, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 707
    new-instance v5, Landroid/os/Vibrator;

    invoke-direct {v5}, Landroid/os/Vibrator;-><init>()V

    iput-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    .line 708
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1070017

    invoke-static {v5, v6}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressVibePattern:[J

    .line 710
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1070018

    invoke-static {v5, v6}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVirtualKeyVibePattern:[J

    .line 712
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1070019

    invoke-static {v5, v6}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyboardTapVibePattern:[J

    .line 714
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x107001a

    invoke-static {v5, v6}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSafeModeDisabledVibePattern:[J

    .line 716
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x107001b

    invoke-static {v5, v6}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSafeModeEnabledVibePattern:[J

    .line 718
    return-void
.end method

.method public interceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;IIIIIII)Z
    .registers 40
    .parameter "win"
    .parameter "action"
    .parameter "flags"
    .parameter "keyCode"
    .parameter "scanCode"
    .parameter "metaState"
    .parameter "repeatCount"
    .parameter "policyFlags"

    .prologue
    .line 1230
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->keyguardOn()Z

    move-result v16

    .line 1231
    .local v16, keyguardOn:Z
    if-nez p2, :cond_8d

    const/16 v27, 0x1

    move/from16 v8, v27

    .line 1233
    .local v8, down:Z
    :goto_a
    const/16 v27, 0x1

    move/from16 v0, p2

    move/from16 v1, v27

    if-ne v0, v1, :cond_93

    const/16 v27, 0x1

    move/from16 v26, v27

    .line 1234
    .local v26, up:Z
    :goto_16
    const/16 v27, 0x80

    move/from16 v0, p2

    move/from16 v1, v27

    if-ne v0, v1, :cond_99

    const/16 v27, 0x1

    move/from16 v17, v27

    .line 1236
    .local v17, longPress:Z
    :goto_22
    and-int/lit8 v27, p3, 0x20

    if-eqz v27, :cond_9e

    const/16 v27, 0x1

    move/from16 v5, v27

    .line 1246
    .local v5, canceled:Z
    :goto_2a
    const/16 v27, 0x3

    move/from16 v0, p4

    move/from16 v1, v27

    if-ne v0, v1, :cond_43

    if-nez v8, :cond_43

    .line 1247
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeLongPress:Ljava/lang/Runnable;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1252
    :cond_43
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomePressed:Z

    move/from16 v27, v0

    if-eqz v27, :cond_bf

    .line 1256
    const/16 v27, 0x3

    move/from16 v0, p4

    move/from16 v1, v27

    if-ne v0, v1, :cond_8a

    .line 1257
    if-nez v8, :cond_8a

    .line 1258
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomePressed:Z

    .line 1261
    new-instance v14, Landroid/content/Intent;

    const-string v27, "CLOSE_CONTEXT_MENU"

    move-object v0, v14

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1262
    .local v14, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object v1, v14

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1264
    if-nez v5, :cond_b7

    .line 1268
    const/4 v11, 0x0

    .line 1269
    .local v11, incomingRinging:Z
    const/4 v15, 0x0

    .line 1271
    .local v15, isQwertyTest:I
    :try_start_77
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v22

    .line 1272
    .local v22, telephonyService:Lcom/android/internal/telephony/ITelephony;
    if-eqz v22, :cond_81

    .line 1273
    invoke-interface/range {v22 .. v22}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z
    :try_end_80
    .catch Landroid/os/RemoteException; {:try_start_77 .. :try_end_80} :catch_a3

    move-result v11

    .line 1279
    .end local v22           #telephonyService:Lcom/android/internal/telephony/ITelephony;
    :cond_81
    :goto_81
    if-eqz v11, :cond_b3

    .line 1280
    const-string v27, "WindowManager"

    const-string v28, "Ignoring HOME; there\'s a ringing incoming call."

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1291
    .end local v11           #incomingRinging:Z
    .end local v14           #intent:Landroid/content/Intent;
    .end local v15           #isQwertyTest:I
    :cond_8a
    :goto_8a
    const/16 v27, 0x1

    .line 1522
    :goto_8c
    return v27

    .line 1231
    .end local v5           #canceled:Z
    .end local v8           #down:Z
    .end local v17           #longPress:Z
    .end local v26           #up:Z
    :cond_8d
    const/16 v27, 0x0

    move/from16 v8, v27

    goto/16 :goto_a

    .line 1233
    .restart local v8       #down:Z
    :cond_93
    const/16 v27, 0x0

    move/from16 v26, v27

    goto/16 :goto_16

    .line 1234
    .restart local v26       #up:Z
    :cond_99
    const/16 v27, 0x0

    move/from16 v17, v27

    goto :goto_22

    .line 1236
    .restart local v17       #longPress:Z
    :cond_9e
    const/16 v27, 0x0

    move/from16 v5, v27

    goto :goto_2a

    .line 1275
    .restart local v5       #canceled:Z
    .restart local v11       #incomingRinging:Z
    .restart local v14       #intent:Landroid/content/Intent;
    .restart local v15       #isQwertyTest:I
    :catch_a3
    move-exception v27

    move-object/from16 v9, v27

    .line 1276
    .local v9, ex:Landroid/os/RemoteException;
    const-string v27, "WindowManager"

    const-string v28, "RemoteException from getPhoneInterface()"

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object v2, v9

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_81

    .line 1283
    .end local v9           #ex:Landroid/os/RemoteException;
    :cond_b3
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->launchHomeFromHotKey()V

    goto :goto_8a

    .line 1286
    .end local v11           #incomingRinging:Z
    .end local v15           #isQwertyTest:I
    :cond_b7
    const-string v27, "WindowManager"

    const-string v28, "Ignoring HOME; event canceled."

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8a

    .line 1298
    .end local v14           #intent:Landroid/content/Intent;
    :cond_bf
    const/16 v27, 0x3

    move/from16 v0, p4

    move/from16 v1, v27

    if-ne v0, v1, :cond_194

    .line 1300
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHoldKeyConcept:Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;->access$000(Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;)Landroid/content/ComponentName;

    move-result-object v23

    .line 1301
    .local v23, topActivity:Landroid/content/ComponentName;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHoldKeyConcept:Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, p4

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;->isSystemKeyEventRequested(ILandroid/content/ComponentName;)Z

    move-result v27

    if-eqz v27, :cond_e6

    .line 1303
    const/16 v27, 0x0

    goto :goto_8c

    .line 1311
    :cond_e6
    if-eqz p1, :cond_108

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v27

    move-object/from16 v4, v27

    .line 1312
    .local v4, attrs:Landroid/view/WindowManager$LayoutParams;
    :goto_ee
    if-eqz v4, :cond_12b

    .line 1313
    move-object v0, v4

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v24, v0

    .line 1314
    .local v24, type:I
    const/16 v27, 0x7d4

    move/from16 v0, v24

    move/from16 v1, v27

    if-eq v0, v1, :cond_105

    const/16 v27, 0x7d9

    move/from16 v0, v24

    move/from16 v1, v27

    if-ne v0, v1, :cond_10d

    .line 1317
    :cond_105
    const/16 v27, 0x0

    goto :goto_8c

    .line 1311
    .end local v4           #attrs:Landroid/view/WindowManager$LayoutParams;
    .end local v24           #type:I
    :cond_108
    const/16 v27, 0x0

    move-object/from16 v4, v27

    goto :goto_ee

    .line 1319
    .restart local v4       #attrs:Landroid/view/WindowManager$LayoutParams;
    .restart local v24       #type:I
    :cond_10d
    sget-object v27, Lcom/android/internal/policy/impl/PhoneWindowManager;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v25, v0

    .line 1320
    .local v25, typeCount:I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_115
    move v0, v10

    move/from16 v1, v25

    if-ge v0, v1, :cond_12b

    .line 1321
    sget-object v27, Lcom/android/internal/policy/impl/PhoneWindowManager;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    aget v27, v27, v10

    move/from16 v0, v24

    move/from16 v1, v27

    if-ne v0, v1, :cond_128

    .line 1323
    const/16 v27, 0x1

    goto/16 :goto_8c

    .line 1320
    :cond_128
    add-int/lit8 v10, v10, 0x1

    goto :goto_115

    .line 1328
    .end local v10           #i:I
    .end local v24           #type:I
    .end local v25           #typeCount:I
    :cond_12b
    if-eqz v8, :cond_190

    if-nez p7, :cond_190

    .line 1329
    if-nez v16, :cond_151

    .line 1331
    const/4 v12, 0x0

    .line 1333
    .local v12, incomingRinging_long:Z
    :try_start_132
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v18

    .line 1334
    .local v18, phoneServ:Lcom/android/internal/telephony/ITelephony;
    if-eqz v18, :cond_161

    .line 1335
    invoke-interface/range {v18 .. v18}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z
    :try_end_13b
    .catch Landroid/os/RemoteException; {:try_start_132 .. :try_end_13b} :catch_169

    move-result v12

    .line 1342
    .end local v18           #phoneServ:Lcom/android/internal/telephony/ITelephony;
    :goto_13c
    if-nez v12, :cond_151

    .line 1343
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeLongPress:Ljava/lang/Runnable;

    move-object/from16 v28, v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v29

    invoke-virtual/range {v27 .. v30}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1350
    .end local v12           #incomingRinging_long:Z
    :cond_151
    :try_start_151
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v18

    .line 1351
    .restart local v18       #phoneServ:Lcom/android/internal/telephony/ITelephony;
    if-eqz v18, :cond_188

    .line 1352
    invoke-interface/range {v18 .. v18}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z
    :try_end_15a
    .catch Landroid/os/RemoteException; {:try_start_151 .. :try_end_15a} :catch_179

    move-result v27

    if-eqz v27, :cond_188

    const/16 v27, 0x0

    goto/16 :goto_8c

    .line 1337
    .restart local v12       #incomingRinging_long:Z
    :cond_161
    :try_start_161
    const-string v27, "WindowManager"

    const-string v28, "Unable to find ITelephony interface"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_168
    .catch Landroid/os/RemoteException; {:try_start_161 .. :try_end_168} :catch_169

    goto :goto_13c

    .line 1339
    .end local v18           #phoneServ:Lcom/android/internal/telephony/ITelephony;
    :catch_169
    move-exception v27

    move-object/from16 v9, v27

    .line 1340
    .restart local v9       #ex:Landroid/os/RemoteException;
    const-string v27, "WindowManager"

    const-string v28, "RemoteException from getTelephonyService()"

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object v2, v9

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_13c

    .line 1354
    .end local v9           #ex:Landroid/os/RemoteException;
    .end local v12           #incomingRinging_long:Z
    :catch_179
    move-exception v27

    move-object/from16 v9, v27

    .line 1355
    .restart local v9       #ex:Landroid/os/RemoteException;
    const-string v27, "WindowManager"

    const-string v28, "RemoteException from getTelephonyService()"

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object v2, v9

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1357
    .end local v9           #ex:Landroid/os/RemoteException;
    :cond_188
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomePressed:Z

    .line 1359
    :cond_190
    const/16 v27, 0x1

    goto/16 :goto_8c

    .line 1360
    .end local v4           #attrs:Landroid/view/WindowManager$LayoutParams;
    .end local v23           #topActivity:Landroid/content/ComponentName;
    :cond_194
    const/16 v27, 0x52

    move/from16 v0, p4

    move/from16 v1, v27

    if-ne v0, v1, :cond_225

    .line 1362
    const/4 v6, 0x1

    .line 1364
    .local v6, chordBug:I
    if-eqz v8, :cond_1ee

    if-nez p7, :cond_1ee

    .line 1367
    const-string v27, "GT-s5300"

    const-string v28, "GT-B5510"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_1be

    .line 1369
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMenuLongPress:Ljava/lang/Runnable;

    move-object/from16 v28, v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v29

    invoke-virtual/range {v27 .. v30}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1372
    :cond_1be
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEnableShiftMenuBugReports:Z

    move/from16 v27, v0

    if-eqz v27, :cond_1ee

    and-int/lit8 v27, p6, 0x1

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_1ee

    .line 1373
    new-instance v14, Landroid/content/Intent;

    const-string v27, "android.intent.action.BUG_REPORT"

    move-object v0, v14

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1374
    .restart local v14       #intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move-object/from16 v0, v27

    move-object v1, v14

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1375
    const/16 v27, 0x1

    goto/16 :goto_8c

    .line 1395
    .end local v14           #intent:Landroid/content/Intent;
    :cond_1ee
    if-nez v8, :cond_239

    .line 1398
    const-string v27, "GT-s5300"

    const-string v28, "GT-B5510"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_239

    .line 1400
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMenuLongPress:Ljava/lang/Runnable;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1401
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSearchKeyPressed:Z

    .line 1403
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mConsumeSearchKeyUp:Z

    move/from16 v27, v0

    if-eqz v27, :cond_239

    .line 1405
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mConsumeSearchKeyUp:Z

    .line 1406
    const/16 v27, 0x1

    goto/16 :goto_8c

    .line 1412
    .end local v6           #chordBug:I
    :cond_225
    const/16 v27, 0x54

    move/from16 v0, p4

    move/from16 v1, v27

    if-ne v0, v1, :cond_297

    .line 1413
    if-eqz v8, :cond_27b

    .line 1414
    if-nez p7, :cond_239

    .line 1415
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSearchKeyPressed:Z

    .line 1505
    :cond_239
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSearchKeyPressed:Z

    move/from16 v27, v0

    if-eqz v27, :cond_40b

    .line 1506
    if-eqz v8, :cond_40b

    if-nez p7, :cond_40b

    if-nez v16, :cond_40b

    .line 1507
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShortcutManager:Lcom/android/internal/policy/impl/ShortcutManager;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, p4

    move/from16 v2, p6

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/ShortcutManager;->getIntent(II)Landroid/content/Intent;

    move-result-object v21

    .line 1508
    .local v21, shortcutIntent:Landroid/content/Intent;
    if-eqz v21, :cond_40b

    .line 1509
    const/high16 v27, 0x1000

    move-object/from16 v0, v21

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1510
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1516
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mConsumeSearchKeyUp:Z

    .line 1517
    const/16 v27, 0x1

    goto/16 :goto_8c

    .line 1426
    .end local v21           #shortcutIntent:Landroid/content/Intent;
    :cond_27b
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSearchKeyPressed:Z

    .line 1428
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mConsumeSearchKeyUp:Z

    move/from16 v27, v0

    if-eqz v27, :cond_239

    .line 1430
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mConsumeSearchKeyUp:Z

    .line 1431
    const/16 v27, 0x1

    goto/16 :goto_8c

    .line 1437
    :cond_297
    const/16 v27, 0x72

    move/from16 v0, p4

    move/from16 v1, v27

    if-ne v0, v1, :cond_346

    .line 1439
    if-eqz v26, :cond_239

    if-nez p7, :cond_239

    if-nez v16, :cond_239

    .line 1441
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

    .line 1442
    .local v3, activityManager:Landroid/app/ActivityManager;
    const/16 v27, 0x14

    move-object v0, v3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v13

    .line 1443
    .local v13, info:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v27

    if-eqz v27, :cond_2cc

    .line 1444
    const/16 v27, 0x1

    goto/16 :goto_8c

    .line 1446
    :cond_2cc
    const/16 v27, 0x0

    move-object v0, v13

    move/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1447
    .local v20, runningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v19

    .line 1448
    .local v19, pkgName:Ljava/lang/String;
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    .line 1449
    .local v7, className:Ljava/lang/String;
    const-string v27, "com.sec.android.app.simplefunctiontest.QwertyKeypadTest"

    move-object v0, v7

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_302

    const-string v27, "com.sec.android.app.factorytest"

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_30d

    .line 1450
    :cond_302
    const-string v27, "WindowManager"

    const-string v28, "KEYCODE_EXPLORER is skipped"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1451
    const/16 v27, 0x1

    goto/16 :goto_8c

    .line 1453
    :cond_30d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShortcutManager:Lcom/android/internal/policy/impl/ShortcutManager;

    move-object/from16 v27, v0

    const/16 v28, 0x51

    move-object/from16 v0, v27

    move/from16 v1, v28

    move/from16 v2, p6

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/ShortcutManager;->getIntent(II)Landroid/content/Intent;

    move-result-object v21

    .line 1455
    .restart local v21       #shortcutIntent:Landroid/content/Intent;
    if-eqz v21, :cond_33b

    .line 1456
    const/high16 v27, 0x1000

    move-object/from16 v0, v21

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1457
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1458
    const/16 v27, 0x1

    goto/16 :goto_8c

    .line 1463
    :cond_33b
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->callCustomizedAssignActivity(I)V

    .line 1464
    const/16 v27, 0x1

    goto/16 :goto_8c

    .line 1467
    .end local v3           #activityManager:Landroid/app/ActivityManager;
    .end local v7           #className:Ljava/lang/String;
    .end local v13           #info:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v19           #pkgName:Ljava/lang/String;
    .end local v20           #runningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v21           #shortcutIntent:Landroid/content/Intent;
    :cond_346
    const/16 v27, 0x73

    move/from16 v0, p4

    move/from16 v1, v27

    if-ne v0, v1, :cond_239

    .line 1469
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->voiceShortcutInputStateEnabled:Z

    move/from16 v27, v0

    if-eqz v27, :cond_35a

    .line 1470
    const/16 v27, 0x1

    goto/16 :goto_8c

    .line 1472
    :cond_35a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHoldKeyConcept:Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;->access$000(Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;)Landroid/content/ComponentName;

    move-result-object v23

    .line 1474
    .restart local v23       #topActivity:Landroid/content/ComponentName;
    if-eqz v26, :cond_239

    if-nez p7, :cond_239

    if-nez v16, :cond_239

    .line 1476
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

    .line 1477
    .restart local v3       #activityManager:Landroid/app/ActivityManager;
    const/16 v27, 0x14

    move-object v0, v3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v13

    .line 1478
    .restart local v13       #info:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v27

    if-eqz v27, :cond_391

    .line 1479
    const/16 v27, 0x1

    goto/16 :goto_8c

    .line 1481
    :cond_391
    const/16 v27, 0x0

    move-object v0, v13

    move/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1482
    .restart local v20       #runningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v19

    .line 1483
    .restart local v19       #pkgName:Ljava/lang/String;
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    .line 1484
    .restart local v7       #className:Ljava/lang/String;
    const-string v27, "com.sec.android.app.simplefunctiontest.QwertyKeypadTest"

    move-object v0, v7

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_3c7

    const-string v27, "com.sec.android.app.factorytest"

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_3d2

    .line 1485
    :cond_3c7
    const-string v27, "WindowManager"

    const-string v28, "KEYCODE_ENVELOPE is skipped"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1486
    const/16 v27, 0x1

    goto/16 :goto_8c

    .line 1488
    :cond_3d2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShortcutManager:Lcom/android/internal/policy/impl/ShortcutManager;

    move-object/from16 v27, v0

    const/16 v28, 0x45

    move-object/from16 v0, v27

    move/from16 v1, v28

    move/from16 v2, p6

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/ShortcutManager;->getIntent(II)Landroid/content/Intent;

    move-result-object v21

    .line 1489
    .restart local v21       #shortcutIntent:Landroid/content/Intent;
    if-eqz v21, :cond_400

    .line 1490
    const/high16 v27, 0x1000

    move-object/from16 v0, v21

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1491
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1492
    const/16 v27, 0x1

    goto/16 :goto_8c

    .line 1497
    :cond_400
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->callCustomizedAssignActivity(I)V

    .line 1498
    const/16 v27, 0x1

    goto/16 :goto_8c

    .line 1522
    .end local v3           #activityManager:Landroid/app/ActivityManager;
    .end local v7           #className:Ljava/lang/String;
    .end local v13           #info:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v19           #pkgName:Ljava/lang/String;
    .end local v20           #runningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v21           #shortcutIntent:Landroid/content/Intent;
    .end local v23           #topActivity:Landroid/content/ComponentName;
    :cond_40b
    const/16 v27, 0x0

    goto/16 :goto_8c
.end method

.method public interceptKeyBeforeQueueing(JIIIIIZ)I
    .registers 37
    .parameter "whenNanos"
    .parameter "action"
    .parameter "flags"
    .parameter "keyCode"
    .parameter "scanCode"
    .parameter "policyFlags"
    .parameter "isScreenOn"

    .prologue
    .line 2119
    if-nez p3, :cond_4f

    const/4 v7, 0x1

    move/from16 v18, v7

    .line 2120
    .local v18, down:Z
    :goto_5
    and-int/lit8 v7, p4, 0x20

    if-eqz v7, :cond_53

    const/4 v7, 0x1

    move/from16 v17, v7

    .line 2122
    .local v17, canceled:Z
    :goto_c
    const/high16 v7, 0x100

    and-int v7, v7, p7

    if-eqz v7, :cond_57

    const/4 v7, 0x1

    move/from16 v21, v7

    .line 2128
    .local v21, isInjected:Z
    :goto_15
    if-eqz p8, :cond_5b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    move-object v7, v0

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowingAndNotHidden()Z

    move-result v7

    move/from16 v23, v7

    .line 2137
    .local v23, keyguardActive:Z
    :goto_22
    if-eqz v18, :cond_36

    move/from16 v0, p7

    and-int/lit16 v0, v0, 0x100

    move v7, v0

    if-eqz v7, :cond_36

    .line 2138
    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move-object v1, v7

    move v2, v8

    move v3, v9

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 2143
    :cond_36
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenCaptureAction:Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenCaptureAction;

    move-object v7, v0

    move-object v0, v7

    move/from16 v1, p5

    move/from16 v2, p8

    move/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenCaptureAction;->doIninterceptKeyBeforeQueueing(IZZ)I

    move-result v26

    .line 2144
    .local v26, tmpResult:I
    const/4 v7, -0x1

    move/from16 v0, v26

    move v1, v7

    if-eq v0, v1, :cond_67

    move/from16 v7, v26

    .line 2373
    :goto_4e
    return v7

    .line 2119
    .end local v17           #canceled:Z
    .end local v18           #down:Z
    .end local v21           #isInjected:Z
    .end local v23           #keyguardActive:Z
    .end local v26           #tmpResult:I
    :cond_4f
    const/4 v7, 0x0

    move/from16 v18, v7

    goto :goto_5

    .line 2120
    .restart local v18       #down:Z
    :cond_53
    const/4 v7, 0x0

    move/from16 v17, v7

    goto :goto_c

    .line 2122
    .restart local v17       #canceled:Z
    :cond_57
    const/4 v7, 0x0

    move/from16 v21, v7

    goto :goto_15

    .line 2128
    .restart local v21       #isInjected:Z
    :cond_5b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    move-object v7, v0

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowing()Z

    move-result v7

    move/from16 v23, v7

    goto :goto_22

    .line 2158
    .restart local v23       #keyguardActive:Z
    .restart local v26       #tmpResult:I
    :cond_67
    if-nez p8, :cond_6b

    if-eqz v21, :cond_73

    .line 2160
    :cond_6b
    const/16 v24, 0x1

    .line 2180
    .local v24, result:I
    :cond_6d
    :goto_6d
    sparse-switch p5, :sswitch_data_254

    :cond_70
    :goto_70
    move/from16 v7, v24

    .line 2373
    goto :goto_4e

    .line 2164
    .end local v24           #result:I
    :cond_73
    const/16 v24, 0x0

    .line 2166
    .restart local v24       #result:I
    and-int/lit8 v7, p7, 0x3

    if-eqz v7, :cond_8e

    const/4 v7, 0x1

    move/from16 v22, v7

    .line 2168
    .local v22, isWakeKey:Z
    :goto_7c
    if-eqz v18, :cond_6d

    if-eqz v22, :cond_6d

    .line 2169
    if-eqz v23, :cond_92

    .line 2171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    move-object v7, v0

    move-object v0, v7

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->onWakeKeyWhenKeyguardShowingTq(I)Z

    goto :goto_6d

    .line 2166
    .end local v22           #isWakeKey:Z
    :cond_8e
    const/4 v7, 0x0

    move/from16 v22, v7

    goto :goto_7c

    .line 2174
    .restart local v22       #isWakeKey:Z
    :cond_92
    or-int/lit8 v24, v24, 0x2

    goto :goto_6d

    .line 2183
    .end local v22           #isWakeKey:Z
    :sswitch_95
    if-eqz v18, :cond_ec

    .line 2184
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v25

    .line 2185
    .local v25, telephonyService:Lcom/android/internal/telephony/ITelephony;
    if-eqz v25, :cond_be

    .line 2187
    :try_start_9d
    invoke-interface/range {v25 .. v25}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z

    move-result v7

    if-eqz v7, :cond_be

    .line 2194
    const-string v7, "WindowManager"

    const-string v8, "interceptKeyBeforeQueueing: VOLUME key-down while ringing: Silence ringer!"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2199
    invoke-interface/range {v25 .. v25}, Lcom/android/internal/telephony/ITelephony;->silenceRinger()V
    :try_end_ad
    .catch Landroid/os/RemoteException; {:try_start_9d .. :try_end_ad} :catch_b0

    .line 2203
    and-int/lit8 v24, v24, -0x2

    goto :goto_70

    .line 2217
    :catch_b0
    move-exception v7

    move-object/from16 v19, v7

    .line 2218
    .local v19, ex:Landroid/os/RemoteException;
    const-string v7, "WindowManager"

    const-string v8, "ITelephony threw RemoteException"

    move-object v0, v7

    move-object v1, v8

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2232
    .end local v19           #ex:Landroid/os/RemoteException;
    :cond_be
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSamsungVolumeControlThread:Lcom/android/internal/policy/impl/PhoneWindowManager$SamsungVolumeControlThread;

    move-object v7, v0

    if-nez v7, :cond_70

    .line 2233
    new-instance v7, Lcom/android/internal/policy/impl/PhoneWindowManager$SamsungVolumeControlThread;

    const/4 v8, 0x0

    move-object v0, v7

    move-object/from16 v1, p0

    move-object v2, v8

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager$SamsungVolumeControlThread;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Lcom/android/internal/policy/impl/PhoneWindowManager$1;)V

    move-object v0, v7

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSamsungVolumeControlThread:Lcom/android/internal/policy/impl/PhoneWindowManager$SamsungVolumeControlThread;

    .line 2234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSamsungVolumeControlThread:Lcom/android/internal/policy/impl/PhoneWindowManager$SamsungVolumeControlThread;

    move-object v7, v0

    move-object v0, v7

    move/from16 v1, p5

    move/from16 v2, v18

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager$SamsungVolumeControlThread;->updateInfo(IZZ)V

    .line 2235
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSamsungVolumeControlThread:Lcom/android/internal/policy/impl/PhoneWindowManager$SamsungVolumeControlThread;

    move-object v7, v0

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/PhoneWindowManager$SamsungVolumeControlThread;->start()V

    goto :goto_70

    .line 2240
    .end local v25           #telephonyService:Lcom/android/internal/telephony/ITelephony;
    :cond_ec
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSamsungVolumeControlThread:Lcom/android/internal/policy/impl/PhoneWindowManager$SamsungVolumeControlThread;

    move-object v7, v0

    if-eqz v7, :cond_70

    .line 2241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSamsungVolumeControlThread:Lcom/android/internal/policy/impl/PhoneWindowManager$SamsungVolumeControlThread;

    move-object v7, v0

    move-object v0, v7

    move/from16 v1, p5

    move/from16 v2, v18

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager$SamsungVolumeControlThread;->updateInfo(IZZ)V

    .line 2242
    const/4 v7, 0x0

    move-object v0, v7

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSamsungVolumeControlThread:Lcom/android/internal/policy/impl/PhoneWindowManager$SamsungVolumeControlThread;

    goto/16 :goto_70

    .line 2250
    :sswitch_10a
    and-int/lit8 v24, v24, -0x2

    .line 2251
    if-eqz v18, :cond_136

    .line 2252
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v25

    .line 2253
    .restart local v25       #telephonyService:Lcom/android/internal/telephony/ITelephony;
    const/16 v20, 0x0

    .line 2254
    .local v20, hungUp:Z
    if-eqz v25, :cond_11a

    .line 2256
    :try_start_116
    invoke-interface/range {v25 .. v25}, Lcom/android/internal/telephony/ITelephony;->endCall()Z
    :try_end_119
    .catch Landroid/os/RemoteException; {:try_start_116 .. :try_end_119} :catch_127

    move-result v20

    .line 2261
    :cond_11a
    :goto_11a
    if-eqz p8, :cond_11e

    if-eqz v20, :cond_134

    :cond_11e
    const/4 v7, 0x1

    :goto_11f
    move-object/from16 v0, p0

    move v1, v7

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptPowerKeyDown(Z)V

    goto/16 :goto_70

    .line 2257
    :catch_127
    move-exception v19

    .line 2258
    .restart local v19       #ex:Landroid/os/RemoteException;
    const-string v7, "WindowManager"

    const-string v8, "ITelephony threw RemoteException"

    move-object v0, v7

    move-object v1, v8

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_11a

    .line 2261
    .end local v19           #ex:Landroid/os/RemoteException;
    :cond_134
    const/4 v7, 0x0

    goto :goto_11f

    .line 2263
    .end local v20           #hungUp:Z
    .end local v25           #telephonyService:Lcom/android/internal/telephony/ITelephony;
    :cond_136
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptPowerKeyUp(Z)Z

    move-result v7

    if-eqz v7, :cond_70

    .line 2264
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEndcallBehavior:I

    move v7, v0

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_14f

    .line 2266
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->goHome()Z

    move-result v7

    if-nez v7, :cond_70

    .line 2270
    :cond_14f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEndcallBehavior:I

    move v7, v0

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_70

    .line 2272
    and-int/lit8 v7, v24, -0x3

    or-int/lit8 v24, v7, 0x4

    goto/16 :goto_70

    .line 2280
    :sswitch_15e
    and-int/lit8 v24, v24, -0x2

    .line 2281
    if-eqz v18, :cond_1c3

    .line 2282
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v25

    .line 2283
    .restart local v25       #telephonyService:Lcom/android/internal/telephony/ITelephony;
    const/16 v20, 0x0

    .line 2284
    .restart local v20       #hungUp:Z
    if-eqz v25, :cond_173

    .line 2286
    :try_start_16a
    invoke-interface/range {v25 .. v25}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z

    move-result v7

    if-eqz v7, :cond_19c

    .line 2289
    invoke-interface/range {v25 .. v25}, Lcom/android/internal/telephony/ITelephony;->silenceRinger()V
    :try_end_173
    .catch Landroid/os/RemoteException; {:try_start_16a .. :try_end_173} :catch_1b2

    .line 2301
    :cond_173
    :goto_173
    if-eqz p8, :cond_177

    if-eqz v20, :cond_1c1

    :cond_177
    const/4 v7, 0x1

    :goto_178
    move-object/from16 v0, p0

    move v1, v7

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptPowerKeyDown(Z)V

    .line 2304
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHoldKeyConcept:Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;

    move-object v7, v0

    invoke-static {v7}, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;->access$000(Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;)Landroid/content/ComponentName;

    move-result-object v27

    .line 2305
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

    if-eqz v7, :cond_70

    .line 2307
    or-int/lit8 v24, v24, 0x1

    goto/16 :goto_70

    .line 2290
    .end local v27           #topActivity:Landroid/content/ComponentName;
    :cond_19c
    :try_start_19c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIncallPowerBehavior:I

    move v7, v0

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_173

    invoke-interface/range {v25 .. v25}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z

    move-result v7

    if-eqz v7, :cond_173

    if-eqz p8, :cond_173

    .line 2295
    invoke-interface/range {v25 .. v25}, Lcom/android/internal/telephony/ITelephony;->endCall()Z
    :try_end_1b0
    .catch Landroid/os/RemoteException; {:try_start_19c .. :try_end_1b0} :catch_1b2

    move-result v20

    goto :goto_173

    .line 2297
    :catch_1b2
    move-exception v7

    move-object/from16 v19, v7

    .line 2298
    .restart local v19       #ex:Landroid/os/RemoteException;
    const-string v7, "WindowManager"

    const-string v8, "ITelephony threw RemoteException"

    move-object v0, v7

    move-object v1, v8

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_173

    .line 2301
    .end local v19           #ex:Landroid/os/RemoteException;
    :cond_1c1
    const/4 v7, 0x0

    goto :goto_178

    .line 2313
    .end local v20           #hungUp:Z
    .end local v25           #telephonyService:Lcom/android/internal/telephony/ITelephony;
    :cond_1c3
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptPowerKeyUp(Z)Z

    move-result v7

    if-eqz v7, :cond_1d1

    .line 2314
    and-int/lit8 v7, v24, -0x3

    or-int/lit8 v24, v7, 0x4

    .line 2318
    :cond_1d1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHoldKeyConcept:Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;

    move-object v7, v0

    invoke-static {v7}, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;->access$000(Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;)Landroid/content/ComponentName;

    move-result-object v27

    .line 2319
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

    if-eqz v7, :cond_70

    .line 2321
    or-int/lit8 v24, v24, 0x1

    .line 2322
    and-int/lit8 v24, v24, -0x5

    goto/16 :goto_70

    .line 2338
    .end local v27           #topActivity:Landroid/content/ComponentName;
    :sswitch_1f1
    and-int/lit8 v7, v24, 0x1

    if-nez v7, :cond_70

    .line 2342
    const-wide/32 v7, 0xf4240

    div-long v5, p1, v7

    .line 2343
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

    .line 2345
    .local v4, keyEvent:Landroid/view/KeyEvent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object v7, v0

    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2346
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object v7, v0

    new-instance v8, Lcom/android/internal/policy/impl/PhoneWindowManager$PassHeadsetKey;

    move-object v0, v8

    move-object/from16 v1, p0

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager$PassHeadsetKey;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/view/KeyEvent;)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_70

    .line 2352
    .end local v4           #keyEvent:Landroid/view/KeyEvent;
    .end local v5           #when:J
    :sswitch_228
    if-eqz v18, :cond_70

    .line 2353
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v25

    .line 2354
    .restart local v25       #telephonyService:Lcom/android/internal/telephony/ITelephony;
    if-eqz v25, :cond_70

    .line 2356
    :try_start_230
    invoke-interface/range {v25 .. v25}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z

    move-result v7

    if-eqz v7, :cond_70

    .line 2357
    const-string v7, "WindowManager"

    const-string v8, "interceptKeyBeforeQueueing: CALL key-down while ringing: Answer the call!"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2359
    invoke-interface/range {v25 .. v25}, Lcom/android/internal/telephony/ITelephony;->answerRingingCall()V
    :try_end_240
    .catch Landroid/os/RemoteException; {:try_start_230 .. :try_end_240} :catch_244

    .line 2363
    and-int/lit8 v24, v24, -0x2

    goto/16 :goto_70

    .line 2365
    :catch_244
    move-exception v7

    move-object/from16 v19, v7

    .line 2366
    .restart local v19       #ex:Landroid/os/RemoteException;
    const-string v7, "WindowManager"

    const-string v8, "ITelephony threw RemoteException"

    move-object v0, v7

    move-object v1, v8

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_70

    .line 2180
    :sswitch_data_254
    .sparse-switch
        0x5 -> :sswitch_228
        0x6 -> :sswitch_10a
        0x18 -> :sswitch_95
        0x19 -> :sswitch_95
        0x1a -> :sswitch_15e
        0x4f -> :sswitch_1f1
        0x55 -> :sswitch_1f1
        0x56 -> :sswitch_1f1
        0x57 -> :sswitch_1f1
        0x58 -> :sswitch_1f1
        0x59 -> :sswitch_1f1
        0x5a -> :sswitch_1f1
    .end sparse-switch
.end method

.method isDeviceProvisioned()Z
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 602
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_provisioned"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    :goto_10
    return v0

    :cond_11
    move v0, v2

    goto :goto_10
.end method

.method isMusicActive()Z
    .registers 4

    .prologue
    .line 2079
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 2080
    .local v0, am:Landroid/media/AudioManager;
    if-nez v0, :cond_15

    .line 2081
    const-string v1, "WindowManager"

    const-string v2, "isMusicActive: couldn\'t get AudioManager reference"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2082
    const/4 v1, 0x0

    .line 2084
    :goto_14
    return v1

    :cond_15
    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v1

    goto :goto_14
.end method

.method public isPowerNeglecting()Z
    .registers 10

    .prologue
    const/4 v8, 0x0

    .line 544
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 545
    .local v0, activityManager:Landroid/app/ActivityManager;
    const/16 v5, 0x14

    invoke-virtual {v0, v5}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    .line 546
    .local v2, info:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1b

    move v5, v8

    .line 559
    :goto_1a
    return v5

    .line 550
    :cond_1b
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 551
    .local v4, runningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v5, v4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 552
    .local v3, pkgName:Ljava/lang/String;
    iget-object v5, v4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 553
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

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    const-string v5, "com.sec.android.app.simplefunctiontest.KeypadTest"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5f

    const-string v5, "com.sec.android.app.simplefunctiontest.QwertyKeypadTest"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_61

    .line 557
    :cond_5f
    const/4 v5, 0x1

    goto :goto_1a

    :cond_61
    move v5, v8

    .line 559
    goto :goto_1a
.end method

.method public isScreenOn()Z
    .registers 2

    .prologue
    .line 2448
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOn:Z

    return v0
.end method

.method public isSystemKeyEventRequested(ILandroid/content/ComponentName;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "componentName"

    .prologue
    .line 2928
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHoldKeyConcept:Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;->isSystemKeyEventRequested(ILandroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method keyguardOn()Z
    .registers 2

    .prologue
    .line 1218
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->keyguardIsShowingTq()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->inKeyguardRestrictedKeyInputMode()Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method launchHomeFromHotKey()V
    .registers 3

    .prologue
    .line 1569
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowingAndNotHidden()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1595
    :goto_8
    return-void

    .line 1571
    :cond_9
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideLockScreen:Z

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isInputRestricted()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1574
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    new-instance v1, Lcom/android/internal/policy/impl/PhoneWindowManager$6;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$6;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->verifyUnlock(Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;)V

    goto :goto_8

    .line 1589
    :cond_20
    :try_start_20
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->stopAppSwitches()V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_27} :catch_30

    .line 1592
    :goto_27
    const-string v0, "homekey"

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 1593
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->startDockOrHome()V

    goto :goto_8

    .line 1590
    :catch_30
    move-exception v0

    goto :goto_27
.end method

.method public layoutWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManagerPolicy$WindowState;)V
    .registers 16
    .parameter "win"
    .parameter "attrs"
    .parameter "attached"

    .prologue
    const/16 v11, 0x7db

    const/16 v4, 0x10

    const/4 v5, 0x0

    .line 1693
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne p1, v0, :cond_a

    .line 1832
    :cond_9
    :goto_9
    return-void

    .line 1704
    :cond_a
    iget v2, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1705
    .local v2, fl:I
    iget v3, p2, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 1707
    .local v3, sim:I
    sget-object v6, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpParentFrame:Landroid/graphics/Rect;

    .line 1708
    .local v6, pf:Landroid/graphics/Rect;
    sget-object v7, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpDisplayFrame:Landroid/graphics/Rect;

    .line 1709
    .local v7, df:Landroid/graphics/Rect;
    sget-object v8, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpContentFrame:Landroid/graphics/Rect;

    .line 1710
    .local v8, cf:Landroid/graphics/Rect;
    sget-object v9, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpVisibleFrame:Landroid/graphics/Rect;

    .line 1712
    .local v9, vf:Landroid/graphics/Rect;
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v0, v11, :cond_a7

    .line 1713
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    iput v0, v9, Landroid/graphics/Rect;->left:I

    iput v0, v8, Landroid/graphics/Rect;->left:I

    iput v0, v7, Landroid/graphics/Rect;->left:I

    iput v0, v6, Landroid/graphics/Rect;->left:I

    .line 1714
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    iput v0, v9, Landroid/graphics/Rect;->top:I

    iput v0, v8, Landroid/graphics/Rect;->top:I

    iput v0, v7, Landroid/graphics/Rect;->top:I

    iput v0, v6, Landroid/graphics/Rect;->top:I

    .line 1715
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    iput v0, v9, Landroid/graphics/Rect;->right:I

    iput v0, v8, Landroid/graphics/Rect;->right:I

    iput v0, v7, Landroid/graphics/Rect;->right:I

    iput v0, v6, Landroid/graphics/Rect;->right:I

    .line 1716
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    iput v0, v9, Landroid/graphics/Rect;->bottom:I

    iput v0, v8, Landroid/graphics/Rect;->bottom:I

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    iput v0, v6, Landroid/graphics/Rect;->bottom:I

    .line 1718
    const/16 v0, 0x50

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1719
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLayer:I

    .line 1793
    :goto_4c
    and-int/lit16 v0, v2, 0x200

    if-eqz v0, :cond_6c

    .line 1794
    const/16 v0, -0x2710

    iput v0, v9, Landroid/graphics/Rect;->top:I

    iput v0, v9, Landroid/graphics/Rect;->left:I

    iput v0, v8, Landroid/graphics/Rect;->top:I

    iput v0, v8, Landroid/graphics/Rect;->left:I

    iput v0, v7, Landroid/graphics/Rect;->top:I

    iput v0, v7, Landroid/graphics/Rect;->left:I

    .line 1795
    const/16 v0, 0x2710

    iput v0, v9, Landroid/graphics/Rect;->bottom:I

    iput v0, v9, Landroid/graphics/Rect;->right:I

    iput v0, v8, Landroid/graphics/Rect;->bottom:I

    iput v0, v8, Landroid/graphics/Rect;->right:I

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    iput v0, v7, Landroid/graphics/Rect;->right:I

    .line 1813
    :cond_6c
    invoke-interface {p1, v6, v7, v8, v9}, Landroid/view/WindowManagerPolicy$WindowState;->computeFrameLw(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1817
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v0, v11, :cond_79

    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0xbb6

    if-ne v0, v1, :cond_9

    :cond_79
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getGivenInsetsPendingLw()Z

    move-result v0

    if-nez v0, :cond_9

    .line 1818
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    iget v10, v0, Landroid/graphics/Rect;->top:I

    .line 1819
    .local v10, top:I
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getGivenContentInsetsLw()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v10, v0

    .line 1820
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    if-le v0, v10, :cond_92

    .line 1821
    iput v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    .line 1823
    :cond_92
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getVisibleFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    iget v10, v0, Landroid/graphics/Rect;->top:I

    .line 1824
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getGivenVisibleInsetsLw()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v10, v0

    .line 1825
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    if-le v0, v10, :cond_9

    .line 1826
    iput v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    goto/16 :goto_9

    .line 1721
    .end local v10           #top:I
    :cond_a7
    const v0, 0x10500

    and-int/2addr v0, v2

    const v1, 0x10100

    if-ne v0, v1, :cond_105

    .line 1728
    if-eqz p3, :cond_ba

    .line 1731
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    invoke-virtual/range {v0 .. v9}, Lcom/android/internal/policy/impl/PhoneWindowManager;->setAttachedWindowFrames(Landroid/view/WindowManagerPolicy$WindowState;IILandroid/view/WindowManagerPolicy$WindowState;ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_4c

    .line 1733
    :cond_ba
    iput v5, v7, Landroid/graphics/Rect;->left:I

    iput v5, v6, Landroid/graphics/Rect;->left:I

    .line 1734
    iput v5, v7, Landroid/graphics/Rect;->top:I

    iput v5, v6, Landroid/graphics/Rect;->top:I

    .line 1735
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mW:I

    iput v0, v7, Landroid/graphics/Rect;->right:I

    iput v0, v6, Landroid/graphics/Rect;->right:I

    .line 1736
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mH:I

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    iput v0, v6, Landroid/graphics/Rect;->bottom:I

    .line 1737
    and-int/lit16 v0, v3, 0xf0

    if-eq v0, v4, :cond_f4

    .line 1738
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    iput v0, v8, Landroid/graphics/Rect;->left:I

    .line 1739
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    iput v0, v8, Landroid/graphics/Rect;->top:I

    .line 1740
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    iput v0, v8, Landroid/graphics/Rect;->right:I

    .line 1741
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    iput v0, v8, Landroid/graphics/Rect;->bottom:I

    .line 1748
    :goto_e2
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurLeft:I

    iput v0, v9, Landroid/graphics/Rect;->left:I

    .line 1749
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    iput v0, v9, Landroid/graphics/Rect;->top:I

    .line 1750
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurRight:I

    iput v0, v9, Landroid/graphics/Rect;->right:I

    .line 1751
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    iput v0, v9, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_4c

    .line 1743
    :cond_f4
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    iput v0, v8, Landroid/graphics/Rect;->left:I

    .line 1744
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    iput v0, v8, Landroid/graphics/Rect;->top:I

    .line 1745
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    iput v0, v8, Landroid/graphics/Rect;->right:I

    .line 1746
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    iput v0, v8, Landroid/graphics/Rect;->bottom:I

    goto :goto_e2

    .line 1753
    :cond_105
    and-int/lit16 v0, v2, 0x100

    if-eqz v0, :cond_137

    .line 1756
    iput v5, v8, Landroid/graphics/Rect;->left:I

    iput v5, v7, Landroid/graphics/Rect;->left:I

    iput v5, v6, Landroid/graphics/Rect;->left:I

    .line 1757
    iput v5, v8, Landroid/graphics/Rect;->top:I

    iput v5, v7, Landroid/graphics/Rect;->top:I

    iput v5, v6, Landroid/graphics/Rect;->top:I

    .line 1758
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mW:I

    iput v0, v8, Landroid/graphics/Rect;->right:I

    iput v0, v7, Landroid/graphics/Rect;->right:I

    iput v0, v6, Landroid/graphics/Rect;->right:I

    .line 1759
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mH:I

    iput v0, v8, Landroid/graphics/Rect;->bottom:I

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    iput v0, v6, Landroid/graphics/Rect;->bottom:I

    .line 1760
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurLeft:I

    iput v0, v9, Landroid/graphics/Rect;->left:I

    .line 1761
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    iput v0, v9, Landroid/graphics/Rect;->top:I

    .line 1762
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurRight:I

    iput v0, v9, Landroid/graphics/Rect;->right:I

    .line 1763
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    iput v0, v9, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_4c

    .line 1764
    :cond_137
    if-eqz p3, :cond_141

    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    .line 1767
    invoke-virtual/range {v0 .. v9}, Lcom/android/internal/policy/impl/PhoneWindowManager;->setAttachedWindowFrames(Landroid/view/WindowManagerPolicy$WindowState;IILandroid/view/WindowManagerPolicy$WindowState;ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto/16 :goto_4c

    .line 1771
    :cond_141
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    iput v0, v6, Landroid/graphics/Rect;->left:I

    .line 1772
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    iput v0, v6, Landroid/graphics/Rect;->top:I

    .line 1773
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    iput v0, v6, Landroid/graphics/Rect;->right:I

    .line 1774
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    iput v0, v6, Landroid/graphics/Rect;->bottom:I

    .line 1775
    and-int/lit16 v0, v3, 0xf0

    if-eq v0, v4, :cond_17f

    .line 1776
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    iput v0, v8, Landroid/graphics/Rect;->left:I

    iput v0, v7, Landroid/graphics/Rect;->left:I

    .line 1777
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    iput v0, v8, Landroid/graphics/Rect;->top:I

    iput v0, v7, Landroid/graphics/Rect;->top:I

    .line 1778
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    iput v0, v8, Landroid/graphics/Rect;->right:I

    iput v0, v7, Landroid/graphics/Rect;->right:I

    .line 1779
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    iput v0, v8, Landroid/graphics/Rect;->bottom:I

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 1786
    :goto_16d
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurLeft:I

    iput v0, v9, Landroid/graphics/Rect;->left:I

    .line 1787
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    iput v0, v9, Landroid/graphics/Rect;->top:I

    .line 1788
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurRight:I

    iput v0, v9, Landroid/graphics/Rect;->right:I

    .line 1789
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    iput v0, v9, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_4c

    .line 1781
    :cond_17f
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    iput v0, v8, Landroid/graphics/Rect;->left:I

    iput v0, v7, Landroid/graphics/Rect;->left:I

    .line 1782
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    iput v0, v8, Landroid/graphics/Rect;->top:I

    iput v0, v7, Landroid/graphics/Rect;->top:I

    .line 1783
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    iput v0, v8, Landroid/graphics/Rect;->right:I

    iput v0, v7, Landroid/graphics/Rect;->right:I

    .line 1784
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    iput v0, v8, Landroid/graphics/Rect;->bottom:I

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    goto :goto_16d
.end method

.method needSensorRunningLp()Z
    .registers 5

    .prologue
    const/4 v2, 0x1

    const-string v3, "OrientationDebug"

    .line 451
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentAppOrientation:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_18

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentAppOrientation:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_18

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentAppOrientation:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_18

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentAppOrientation:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_21

    .line 457
    :cond_18
    const-string v0, "OrientationDebug"

    const-string v0, "[pwm] needSensorRunningLp(), return true #1"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 481
    :goto_20
    return v0

    .line 460
    :cond_21
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockEnablesAccelerometer:Z

    if-eqz v0, :cond_2a

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_32

    :cond_2a
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockEnablesAccelerometer:Z

    if-eqz v0, :cond_3b

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    if-ne v0, v2, :cond_3b

    .line 464
    :cond_32
    const-string v0, "OrientationDebug"

    const-string v0, "[pwm] needSensorRunningLp(), return true #2"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 465
    goto :goto_20

    .line 467
    :cond_3b
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAccelerometerDefault:I

    if-nez v0, :cond_48

    .line 476
    const-string v0, "OrientationDebug"

    const-string v0, "[pwm] needSensorRunningLp(), return false #3"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    const/4 v0, 0x0

    goto :goto_20

    .line 480
    :cond_48
    const-string v0, "OrientationDebug"

    const-string v0, "[pwm] needSensorRunningLp(), return true #4"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 481
    goto :goto_20
.end method

.method public notifyLidSwitchChanged(JZ)V
    .registers 10
    .parameter "whenNanos"
    .parameter "lidOpen"

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 1989
    iput-boolean p3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRealLidOpen:Z

    .line 1990
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mdelayedupdateRotation:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1991
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mdelayedupdateRotationActive:Z

    .line 1992
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isScreenOn()Z

    move-result v1

    if-nez v1, :cond_43

    .line 1994
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mdelayedupdateRotationActive:Z

    .line 1995
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mdelayedupdateRotation:Ljava/lang/Runnable;

    const-wide/16 v3, 0x5dc

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2003
    :goto_1e
    const-string v1, "GT-S5300"

    const-string v2, "GT-I5510"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 2004
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidOpen:Z

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->writeSlideCount(Z)V

    .line 2008
    :cond_2d
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRealLidOpen:Z

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->doLidChangeTq(Z)Z

    move-result v0

    .line 2010
    .local v0, awakeNow:Z
    if-eqz v0, :cond_52

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isScreenOn()Z

    move-result v1

    if-nez v1, :cond_52

    .line 2014
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->pokeWakelock()V

    .line 2033
    :cond_42
    :goto_42
    return-void

    .line 1997
    .end local v0           #awakeNow:Z
    :cond_43
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRealLidOpen:Z

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidOpen:Z

    .line 1998
    const-string v1, "WindowManager"

    const-string v2, "updateRotation"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1999
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateRotation(I)V

    goto :goto_1e

    .line 2015
    .restart local v0       #awakeNow:Z
    :cond_52
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->keyguardIsShowingTq()Z

    move-result v1

    if-eqz v1, :cond_6a

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isScreenOn()Z

    move-result v1

    if-nez v1, :cond_6a

    .line 2016
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRealLidOpen:Z

    if-eqz v1, :cond_42

    .line 2020
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    const/16 v2, 0x1a

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->onWakeKeyWhenKeyguardShowingTq(I)Z

    goto :goto_42

    .line 2025
    :cond_6a
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidOpen:Z

    if-eqz v1, :cond_79

    .line 2026
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/LocalPowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x5

    invoke-interface {v1, v2, v3, v5, v4}, Landroid/os/LocalPowerManager;->userActivity(JZI)V

    goto :goto_42

    .line 2029
    :cond_79
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/LocalPowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-interface {v1, v2, v3, v5, v5}, Landroid/os/LocalPowerManager;->userActivity(JZI)V

    goto :goto_42
.end method

.method public performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z
    .registers 10
    .parameter "win"
    .parameter "effectId"
    .parameter "always"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2805
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "haptic_feedback_enabled"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_1f

    move v0, v5

    .line 2807
    .local v0, hapticsDisabled:Z
    :goto_11
    if-nez p3, :cond_21

    if-nez v0, :cond_1d

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowingAndNotHidden()Z

    move-result v2

    if-eqz v2, :cond_21

    :cond_1d
    move v2, v4

    .line 2837
    :goto_1e
    return v2

    .end local v0           #hapticsDisabled:Z
    :cond_1f
    move v0, v4

    .line 2805
    goto :goto_11

    .line 2810
    .restart local v0       #hapticsDisabled:Z
    :cond_21
    const/4 v1, 0x0

    .line 2811
    .local v1, pattern:[J
    sparse-switch p2, :sswitch_data_48

    move v2, v4

    .line 2828
    goto :goto_1e

    .line 2813
    :sswitch_27
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressVibePattern:[J

    .line 2830
    :goto_29
    array-length v2, v1

    if-ne v2, v5, :cond_41

    .line 2832
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    aget-wide v3, v1, v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Vibrator;->vibrate(J)V

    :goto_33
    move v2, v5

    .line 2837
    goto :goto_1e

    .line 2816
    :sswitch_35
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVirtualKeyVibePattern:[J

    .line 2817
    goto :goto_29

    .line 2819
    :sswitch_38
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyboardTapVibePattern:[J

    .line 2820
    goto :goto_29

    .line 2822
    :sswitch_3b
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSafeModeDisabledVibePattern:[J

    .line 2823
    goto :goto_29

    .line 2825
    :sswitch_3e
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSafeModeEnabledVibePattern:[J

    .line 2826
    goto :goto_29

    .line 2835
    :cond_41
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    const/4 v3, -0x1

    invoke-virtual {v2, v1, v3}, Landroid/os/Vibrator;->vibrate([JI)V

    goto :goto_33

    .line 2811
    :sswitch_data_48
    .sparse-switch
        0x0 -> :sswitch_27
        0x1 -> :sswitch_35
        0x3 -> :sswitch_38
        0x2710 -> :sswitch_3b
        0x2711 -> :sswitch_3e
    .end sparse-switch
.end method

.method public prepareAddWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I
    .registers 8
    .parameter "win"
    .parameter "attrs"

    .prologue
    const/4 v2, -0x7

    const-string v4, "android.permission.STATUS_BAR_SERVICE"

    const-string v3, "PhoneWindowManager"

    .line 1138
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    sparse-switch v0, :sswitch_data_36

    .line 1163
    :goto_a
    const/4 v0, 0x0

    :goto_b
    return v0

    .line 1140
    :sswitch_c
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.STATUS_BAR_SERVICE"

    const-string v1, "PhoneWindowManager"

    invoke-virtual {v0, v4, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1145
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_1b

    move v0, v2

    .line 1146
    goto :goto_b

    .line 1148
    :cond_1b
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_a

    .line 1151
    :sswitch_1e
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.STATUS_BAR_SERVICE"

    const-string v1, "PhoneWindowManager"

    invoke-virtual {v0, v4, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1154
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarPanels:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 1157
    :sswitch_2d
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_33

    move v0, v2

    .line 1158
    goto :goto_b

    .line 1160
    :cond_33
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_a

    .line 1138
    :sswitch_data_36
    .sparse-switch
        0x7d0 -> :sswitch_c
        0x7d4 -> :sswitch_2d
        0x7de -> :sswitch_1e
    .end sparse-switch
.end method

.method readLidState()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 891
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/IWindowManager;->getSwitchState(I)I

    move-result v0

    .line 892
    .local v0, sw:I
    if-ltz v0, :cond_f

    .line 893
    if-nez v0, :cond_10

    const/4 v1, 0x1

    :goto_d
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidOpen:Z
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_f} :catch_12

    .line 898
    .end local v0           #sw:I
    :cond_f
    :goto_f
    return-void

    .restart local v0       #sw:I
    :cond_10
    move v1, v3

    .line 893
    goto :goto_d

    .line 895
    .end local v0           #sw:I
    :catch_12
    move-exception v1

    goto :goto_f
.end method

.method public removeStartingWindow(Landroid/os/IBinder;Landroid/view/View;)V
    .registers 6
    .parameter "appToken"
    .parameter "window"

    .prologue
    .line 1117
    if-eqz p2, :cond_f

    .line 1118
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManagerImpl;

    .line 1119
    .local v0, wm:Landroid/view/WindowManagerImpl;
    invoke-virtual {v0, p2}, Landroid/view/WindowManagerImpl;->removeView(Landroid/view/View;)V

    .line 1121
    .end local v0           #wm:Landroid/view/WindowManagerImpl;
    :cond_f
    return-void
.end method

.method public removeWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V
    .registers 4
    .parameter "win"

    .prologue
    const/4 v1, 0x0

    .line 1168
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_8

    .line 1169
    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    .line 1176
    :goto_7
    return-void

    .line 1171
    :cond_8
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_f

    .line 1172
    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_7

    .line 1174
    :cond_f
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarPanels:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_7
.end method

.method public requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z
    .registers 5
    .parameter "keyCode"
    .parameter "componentName"
    .parameter "request"

    .prologue
    .line 2924
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHoldKeyConcept:Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z

    move-result v0

    return v0
.end method

.method public rotationForOrientationLw(IIZ)I
    .registers 11
    .parameter "orientation"
    .parameter "lastRotation"
    .parameter "displayEnabled"

    .prologue
    const/4 v3, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2490
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    if-gez v1, :cond_28

    .line 2492
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 2494
    .local v0, d:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v2

    if-le v1, v2, :cond_41

    .line 2495
    iput v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    .line 2496
    iput v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    .line 2497
    iput v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUpsideDownRotation:I

    .line 2498
    iput v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSeascapeRotation:I

    .line 2507
    .end local v0           #d:Landroid/view/Display;
    :cond_28
    :goto_28
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2508
    packed-switch p1, :pswitch_data_b6

    .line 2532
    :pswitch_2e
    :try_start_2e
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    const/16 v3, 0xa

    if-ne p1, v3, :cond_85

    move v3, v5

    :goto_35
    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;->setAllow180Rotation(Z)V

    .line 2538
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidOpen:Z

    if-eqz v2, :cond_87

    .line 2539
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidOpenRotation:I

    monitor-exit v1
    :try_end_3f
    .catchall {:try_start_2e .. :try_end_3f} :catchall_b3

    move v1, v2

    .line 2548
    :goto_40
    return v1

    .line 2500
    .restart local v0       #d:Landroid/view/Display;
    :cond_41
    iput v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    .line 2501
    iput v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    .line 2502
    iput v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUpsideDownRotation:I

    .line 2503
    iput v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSeascapeRotation:I

    goto :goto_28

    .line 2511
    .end local v0           #d:Landroid/view/Display;
    :pswitch_4a
    :try_start_4a
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    monitor-exit v1

    move v1, v2

    goto :goto_40

    .line 2514
    :pswitch_4f
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    monitor-exit v1

    move v1, v2

    goto :goto_40

    .line 2517
    :pswitch_54
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUpsideDownRotation:I

    monitor-exit v1

    move v1, v2

    goto :goto_40

    .line 2520
    :pswitch_59
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSeascapeRotation:I

    monitor-exit v1

    move v1, v2

    goto :goto_40

    .line 2523
    :pswitch_5e
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    const/4 v3, 0x2

    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isLandscapeOrSeascape(I)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;->setAllow180Rotation(Z)V

    .line 2525
    invoke-direct {p0, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getCurrentLandscapeRotation(I)I

    move-result v2

    monitor-exit v1

    move v1, v2

    goto :goto_40

    .line 2527
    :pswitch_6f
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    const/4 v3, 0x2

    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isLandscapeOrSeascape(I)Z

    move-result v3

    if-nez v3, :cond_83

    move v3, v5

    :goto_79
    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;->setAllow180Rotation(Z)V

    .line 2529
    invoke-direct {p0, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getCurrentPortraitRotation(I)I

    move-result v2

    monitor-exit v1

    move v1, v2

    goto :goto_40

    :cond_83
    move v3, v4

    .line 2527
    goto :goto_79

    :cond_85
    move v3, v4

    .line 2532
    goto :goto_35

    .line 2540
    :cond_87
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    if-ne v2, v6, :cond_94

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockRotation:I

    if-ltz v2, :cond_94

    .line 2541
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockRotation:I

    monitor-exit v1

    move v1, v2

    goto :goto_40

    .line 2542
    :cond_94
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    if-ne v2, v5, :cond_a1

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockRotation:I

    if-ltz v2, :cond_a1

    .line 2543
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockRotation:I

    monitor-exit v1

    move v1, v2

    goto :goto_40

    .line 2545
    :cond_a1
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->useSensorForOrientationLp(I)Z

    move-result v2

    if-eqz v2, :cond_b0

    .line 2546
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v2, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;->getCurrentRotation(I)I

    move-result v2

    monitor-exit v1

    move v1, v2

    goto :goto_40

    .line 2548
    :cond_b0
    monitor-exit v1

    move v1, v4

    goto :goto_40

    .line 2550
    :catchall_b3
    move-exception v2

    monitor-exit v1
    :try_end_b5
    .catchall {:try_start_4a .. :try_end_b5} :catchall_b3

    throw v2

    .line 2508
    :pswitch_data_b6
    .packed-switch 0x0
        :pswitch_4f
        :pswitch_4a
        :pswitch_2e
        :pswitch_2e
        :pswitch_2e
        :pswitch_2e
        :pswitch_5e
        :pswitch_6f
        :pswitch_59
        :pswitch_54
    .end packed-switch
.end method

.method public screenOnStoppedLw()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 2841
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowingAndNotHidden()Z

    move-result v2

    if-nez v2, :cond_1a

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/LocalPowerManager;

    invoke-interface {v2}, Landroid/os/LocalPowerManager;->isScreenOn()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 2842
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2843
    .local v0, curTime:J
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/LocalPowerManager;

    invoke-interface {v2, v0, v1, v3, v3}, Landroid/os/LocalPowerManager;->userActivity(JZI)V

    .line 2845
    .end local v0           #curTime:J
    :cond_1a
    return-void
.end method

.method public screenTurnedOff(I)V
    .registers 4
    .parameter "why"

    .prologue
    const/4 v1, 0x0

    .line 2426
    const v0, 0x11170

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(II)I

    .line 2427
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->onScreenTurnedOff(I)V

    .line 2428
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2429
    const/4 v1, 0x0

    :try_start_10
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOn:Z

    .line 2430
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateOrientationListenerLp()V

    .line 2431
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateLockScreenTimeout()V

    .line 2432
    monitor-exit v0

    .line 2433
    return-void

    .line 2432
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_10 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method public screenTurnedOn()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 2437
    const v0, 0x11170

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(II)I

    .line 2438
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->onScreenTurnedOn()V

    .line 2439
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2440
    const/4 v1, 0x1

    :try_start_10
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOn:Z

    .line 2441
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateOrientationListenerLp()V

    .line 2442
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateLockScreenTimeout()V

    .line 2443
    monitor-exit v0

    .line 2444
    return-void

    .line 2443
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_10 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method public selectAnimationLw(Landroid/view/WindowManagerPolicy$WindowState;I)I
    .registers 4
    .parameter "win"
    .parameter "transit"

    .prologue
    .line 1184
    const/4 v0, 0x5

    if-ne p2, v0, :cond_d

    .line 1185
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->hasAppShownWindows()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1187
    const v0, 0x10a0011

    .line 1191
    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method sendCloseSystemWindows()V
    .registers 3

    .prologue
    .line 2471
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    .line 2472
    return-void
.end method

.method sendCloseSystemWindows(Ljava/lang/String;)V
    .registers 3
    .parameter "reason"

    .prologue
    .line 2475
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    .line 2476
    return-void
.end method

.method setAttachedWindowFrames(Landroid/view/WindowManagerPolicy$WindowState;IILandroid/view/WindowManagerPolicy$WindowState;ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 12
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
    .line 1643
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v0

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLayer:I

    if-le v0, v1, :cond_3c

    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v0

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLayer:I

    if-ge v0, v1, :cond_3c

    .line 1651
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    iput v0, p9, Landroid/graphics/Rect;->left:I

    iput v0, p8, Landroid/graphics/Rect;->left:I

    iput v0, p7, Landroid/graphics/Rect;->left:I

    .line 1652
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    iput v0, p9, Landroid/graphics/Rect;->top:I

    iput v0, p8, Landroid/graphics/Rect;->top:I

    iput v0, p7, Landroid/graphics/Rect;->top:I

    .line 1653
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    iput v0, p9, Landroid/graphics/Rect;->right:I

    iput v0, p8, Landroid/graphics/Rect;->right:I

    iput v0, p7, Landroid/graphics/Rect;->right:I

    .line 1654
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    iput v0, p9, Landroid/graphics/Rect;->bottom:I

    iput v0, p8, Landroid/graphics/Rect;->bottom:I

    iput v0, p7, Landroid/graphics/Rect;->bottom:I

    .line 1685
    :goto_30
    and-int/lit16 v0, p2, 0x100

    if-nez v0, :cond_94

    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    :goto_38
    invoke-virtual {p6, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1687
    return-void

    .line 1662
    :cond_3c
    and-int/lit16 v0, p3, 0xf0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_5a

    .line 1663
    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getDisplayFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p8, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1679
    :cond_49
    :goto_49
    if-eqz p5, :cond_92

    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getDisplayFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    :goto_4f
    invoke-virtual {p7, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1680
    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getVisibleFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p9, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_30

    .line 1671
    :cond_5a
    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p8, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1672
    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v0

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLayer:I

    if-ge v0, v1, :cond_49

    .line 1673
    iget v0, p8, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    if-ge v0, v1, :cond_73

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    iput v0, p8, Landroid/graphics/Rect;->left:I

    .line 1674
    :cond_73
    iget v0, p8, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    if-ge v0, v1, :cond_7d

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    iput v0, p8, Landroid/graphics/Rect;->top:I

    .line 1675
    :cond_7d
    iget v0, p8, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    if-le v0, v1, :cond_87

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    iput v0, p8, Landroid/graphics/Rect;->right:I

    .line 1676
    :cond_87
    iget v0, p8, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    if-le v0, v1, :cond_49

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    iput v0, p8, Landroid/graphics/Rect;->bottom:I

    goto :goto_49

    :cond_92
    move-object v0, p8

    .line 1679
    goto :goto_4f

    :cond_94
    move-object v0, p7

    .line 1685
    goto :goto_38
.end method

.method public setCurrentOrientationLw(I)V
    .registers 4
    .parameter "newOrientation"

    .prologue
    .line 2796
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2797
    :try_start_3
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentAppOrientation:I

    if-eq p1, v1, :cond_c

    .line 2798
    iput p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentAppOrientation:I

    .line 2799
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateOrientationListenerLp()V

    .line 2801
    :cond_c
    monitor-exit v0

    .line 2802
    return-void

    .line 2801
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method showGlobalActionsDialog()V
    .registers 4

    .prologue
    .line 589
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mGlobalActions:Lcom/android/internal/policy/impl/GlobalActions;

    if-nez v1, :cond_d

    .line 590
    new-instance v1, Lcom/android/internal/policy/impl/GlobalActions;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/policy/impl/GlobalActions;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mGlobalActions:Lcom/android/internal/policy/impl/GlobalActions;

    .line 592
    :cond_d
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowingAndNotHidden()Z

    move-result v0

    .line 593
    .local v0, keyguardShowing:Z
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mGlobalActions:Lcom/android/internal/policy/impl/GlobalActions;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isDeviceProvisioned()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/policy/impl/GlobalActions;->showDialog(ZZ)V

    .line 594
    if-eqz v0, :cond_23

    .line 597
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->pokeWakelock()V

    .line 599
    :cond_23
    return-void
.end method

.method showRecentAppsDialog()V
    .registers 3

    .prologue
    .line 639
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRecentAppsDialog:Lcom/android/internal/policy/impl/RecentApplicationsDialog;

    if-nez v0, :cond_d

    .line 640
    new-instance v0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/RecentApplicationsDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRecentAppsDialog:Lcom/android/internal/policy/impl/RecentApplicationsDialog;

    .line 642
    :cond_d
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRecentAppsDialog:Lcom/android/internal/policy/impl/RecentApplicationsDialog;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->show()V

    .line 643
    return-void
.end method

.method startDockOrHome()V
    .registers 4

    .prologue
    .line 2736
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->createHomeDockIntent()Landroid/content/Intent;

    move-result-object v0

    .line 2737
    .local v0, dock:Landroid/content/Intent;
    if-eqz v0, :cond_d

    .line 2739
    :try_start_6
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_b
    .catch Landroid/content/ActivityNotFoundException; {:try_start_6 .. :try_end_b} :catch_c

    .line 2745
    :goto_b
    return-void

    .line 2741
    :catch_c
    move-exception v1

    .line 2744
    :cond_d
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_b
.end method

.method public subWindowTypeToLayerLw(I)I
    .registers 5
    .parameter "type"

    .prologue
    .line 980
    packed-switch p1, :pswitch_data_26

    .line 991
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

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    const/4 v0, 0x0

    :goto_1c
    return v0

    .line 983
    :pswitch_1d
    const/4 v0, 0x1

    goto :goto_1c

    .line 985
    :pswitch_1f
    const/4 v0, -0x2

    goto :goto_1c

    .line 987
    :pswitch_21
    const/4 v0, -0x1

    goto :goto_1c

    .line 989
    :pswitch_23
    const/4 v0, 0x2

    goto :goto_1c

    .line 980
    nop

    :pswitch_data_26
    .packed-switch 0x3e8
        :pswitch_1d
        :pswitch_1f
        :pswitch_23
        :pswitch_1d
        :pswitch_21
    .end packed-switch
.end method

.method public systemReady()V
    .registers 4

    .prologue
    .line 2625
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->onSystemReady()V

    .line 2626
    const-string v0, "dev.bootcomplete"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2627
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2628
    :try_start_f
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateOrientationListenerLp()V

    .line 2629
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemReady:Z

    .line 2630
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/internal/policy/impl/PhoneWindowManager$11;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$11;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2635
    monitor-exit v0

    .line 2636
    return-void

    .line 2635
    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_f .. :try_end_23} :catchall_21

    throw v1
.end method

.method updateOrientationListenerLp()V
    .registers 5

    .prologue
    const-string v3, "OrientationDebug"

    .line 495
    const-string v1, "OrientationDebug"

    const-string v1, "[pwm] in updateOrientationListenerLp()"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;->canDetectOrientation()Z

    move-result v1

    if-nez v1, :cond_12

    .line 525
    :cond_11
    :goto_11
    return-void

    .line 502
    :cond_12
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

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    const/4 v0, 0x1

    .line 506
    .local v0, disable:Z
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOn:Z

    if-eqz v1, :cond_63

    .line 507
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->needSensorRunningLp()Z

    move-result v1

    if-eqz v1, :cond_63

    .line 508
    const/4 v0, 0x0

    .line 510
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationSensorEnabled:Z

    if-nez v1, :cond_63

    .line 511
    const-string v1, "OrientationDebug"

    const-string v1, "[pwm] in updateOrientationListenerLp(), now call mOrientationListener.enable(), and mOrientationSensorEnabled = true #1"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;->enable()V

    .line 514
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationSensorEnabled:Z

    .line 519
    :cond_63
    if-eqz v0, :cond_11

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationSensorEnabled:Z

    if-eqz v1, :cond_11

    .line 520
    const-string v1, "OrientationDebug"

    const-string v1, "[pwm] in updateOrientationListenerLp(), now call mOrientationListener.disable(), and mOrientationSensorEnabled = false #2"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;->disable()V

    .line 523
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationSensorEnabled:Z

    goto :goto_11
.end method

.method updateRotation(I)V
    .registers 6
    .parameter "animFlags"

    .prologue
    const/4 v3, 0x1

    .line 2682
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/LocalPowerManager;

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidOpen:Z

    invoke-interface {v1, v2}, Landroid/os/LocalPowerManager;->setKeyboardVisibility(Z)V

    .line 2683
    const/4 v0, 0x0

    .line 2684
    .local v0, rotation:I
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidOpen:Z

    if-eqz v1, :cond_19

    .line 2685
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidOpenRotation:I

    .line 2694
    :cond_f
    :goto_f
    :try_start_f
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFancyRotationAnimation:I

    or-int/2addr v3, p1

    invoke-interface {v1, v0, v2, v3}, Landroid/view/IWindowManager;->setRotation(IZI)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_18} :catch_30

    .line 2699
    :goto_18
    return-void

    .line 2686
    :cond_19
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_25

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockRotation:I

    if-ltz v1, :cond_25

    .line 2687
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockRotation:I

    goto :goto_f

    .line 2688
    :cond_25
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    if-ne v1, v3, :cond_f

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockRotation:I

    if-ltz v1, :cond_f

    .line 2689
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockRotation:I

    goto :goto_f

    .line 2696
    :catch_30
    move-exception v1

    goto :goto_18
.end method

.method public updateSettings()V
    .registers 16

    .prologue
    .line 783
    iget-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 784
    .local v9, resolver:Landroid/content/ContentResolver;
    const/4 v10, 0x0

    .line 785
    .local v10, updateRotation:Z
    const/4 v1, 0x0

    .line 786
    .local v1, addView:Landroid/view/View;
    const/4 v8, 0x0

    .line 787
    .local v8, removeView:Landroid/view/View;
    iget-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v12

    .line 788
    :try_start_c
    const-string v13, "end_button_behavior"

    const/4 v14, 0x2

    invoke-static {v9, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    iput v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEndcallBehavior:I

    .line 791
    const-string v13, "incall_power_button_behavior"

    const/4 v14, 0x1

    invoke-static {v9, v13, v14}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    iput v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIncallPowerBehavior:I

    .line 794
    const-string v13, "fancy_rotation_anim"

    const/4 v14, 0x0

    invoke-static {v9, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    if-eqz v13, :cond_107

    const/16 v13, 0x80

    :goto_29
    iput v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFancyRotationAnimation:I

    .line 804
    iget-object v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const/4 v14, 0x2

    invoke-static {v13, v14}, Landroid/provider/CmSystem;->getDefaultBool(Landroid/content/Context;I)Z

    move-result v13

    if-eqz v13, :cond_10a

    const/4 v13, 0x1

    move v2, v13

    .line 805
    .local v2, defValue:I
    :goto_36
    const-string v13, "status_bar_bottom"

    invoke-static {v9, v13, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_10e

    const/4 v13, 0x1

    :goto_40
    iput-boolean v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBottomBar:Z

    .line 807
    const-string v13, "accelerometer_rotation"

    const/4 v14, 0x0

    invoke-static {v9, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 809
    .local v0, accelerometerDefault:I
    iget v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAccelerometerDefault:I

    if-eq v13, v0, :cond_52

    .line 810
    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAccelerometerDefault:I

    .line 811
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateOrientationListenerLp()V

    .line 813
    :cond_52
    iget-boolean v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemReady:Z

    if-eqz v13, :cond_7a

    .line 814
    const-string v13, "pointer_location"

    const/4 v14, 0x0

    invoke-static {v9, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 816
    .local v7, pointerLocation:I
    iget v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationMode:I

    if-eq v13, v7, :cond_7a

    .line 817
    iput v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationMode:I

    .line 818
    if-eqz v7, :cond_111

    .line 819
    iget-object v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    if-nez v13, :cond_7a

    .line 820
    new-instance v13, Lcom/android/internal/widget/PointerLocationView;

    iget-object v14, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v13, v14}, Lcom/android/internal/widget/PointerLocationView;-><init>(Landroid/content/Context;)V

    iput-object v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    .line 821
    iget-object v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/android/internal/widget/PointerLocationView;->setPrintCoords(Z)V

    .line 822
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    .line 831
    .end local v7           #pointerLocation:I
    :cond_7a
    :goto_7a
    const-string v13, "screen_off_timeout"

    const/4 v14, 0x0

    invoke-static {v9, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    iput v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLockScreenTimeout:I

    .line 833
    const-string v13, "default_input_method"

    invoke-static {v9, v13}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 835
    .local v5, imId:Ljava/lang/String;
    if-eqz v5, :cond_11b

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_11b

    const/4 v13, 0x1

    move v4, v13

    .line 836
    .local v4, hasSoftInput:Z
    :goto_93
    iget-boolean v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasSoftInput:Z

    if-eq v13, v4, :cond_9a

    .line 837
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasSoftInput:Z

    .line 838
    const/4 v10, 0x1

    .line 840
    :cond_9a
    monitor-exit v12
    :try_end_9b
    .catchall {:try_start_c .. :try_end_9b} :catchall_118

    .line 841
    if-eqz v10, :cond_a1

    .line 842
    const/4 v12, 0x0

    invoke-virtual {p0, v12}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateRotation(I)V

    .line 844
    :cond_a1
    if-eqz v1, :cond_e6

    .line 845
    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    const/4 v12, -0x1

    const/4 v13, -0x1

    invoke-direct {v6, v12, v13}, Landroid/view/WindowManager$LayoutParams;-><init>(II)V

    .line 848
    .local v6, lp:Landroid/view/WindowManager$LayoutParams;
    const/16 v12, 0x7df

    iput v12, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 849
    const/16 v12, 0x118

    iput v12, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 853
    const/4 v12, -0x3

    iput v12, v6, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 854
    const-string v12, "PointerLocation"

    invoke-virtual {v6, v12}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 855
    iget-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v13, "window"

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/WindowManagerImpl;

    .line 857
    .local v11, wm:Landroid/view/WindowManagerImpl;
    invoke-virtual {v11, v1, v6}, Landroid/view/WindowManagerImpl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 859
    iget-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationInputChannel:Landroid/view/InputChannel;

    if-nez v12, :cond_e6

    .line 861
    :try_start_cb
    iget-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    const-string v13, "PointerLocationView"

    invoke-interface {v12, v13}, Landroid/view/IWindowManager;->monitorInput(Ljava/lang/String;)Landroid/view/InputChannel;

    move-result-object v12

    iput-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationInputChannel:Landroid/view/InputChannel;

    .line 863
    iget-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationInputChannel:Landroid/view/InputChannel;

    iget-object v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationInputHandler:Landroid/view/InputHandler;

    iget-object v14, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v14}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v14

    invoke-virtual {v14}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v14

    invoke-static {v12, v13, v14}, Landroid/view/InputQueue;->registerInputChannel(Landroid/view/InputChannel;Landroid/view/InputHandler;Landroid/os/MessageQueue;)V
    :try_end_e6
    .catch Landroid/os/RemoteException; {:try_start_cb .. :try_end_e6} :catch_11f

    .line 871
    .end local v6           #lp:Landroid/view/WindowManager$LayoutParams;
    .end local v11           #wm:Landroid/view/WindowManagerImpl;
    :cond_e6
    :goto_e6
    if-eqz v8, :cond_106

    .line 872
    iget-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationInputChannel:Landroid/view/InputChannel;

    if-eqz v12, :cond_f9

    .line 873
    iget-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationInputChannel:Landroid/view/InputChannel;

    invoke-static {v12}, Landroid/view/InputQueue;->unregisterInputChannel(Landroid/view/InputChannel;)V

    .line 874
    iget-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationInputChannel:Landroid/view/InputChannel;

    invoke-virtual {v12}, Landroid/view/InputChannel;->dispose()V

    .line 875
    const/4 v12, 0x0

    iput-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationInputChannel:Landroid/view/InputChannel;

    .line 878
    :cond_f9
    iget-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v13, "window"

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/WindowManagerImpl;

    .line 880
    .restart local v11       #wm:Landroid/view/WindowManagerImpl;
    invoke-virtual {v11, v8}, Landroid/view/WindowManagerImpl;->removeView(Landroid/view/View;)V

    .line 882
    .end local v11           #wm:Landroid/view/WindowManagerImpl;
    :cond_106
    return-void

    .line 794
    .end local v0           #accelerometerDefault:I
    .end local v2           #defValue:I
    .end local v4           #hasSoftInput:Z
    .end local v5           #imId:Ljava/lang/String;
    :cond_107
    const/4 v13, 0x0

    goto/16 :goto_29

    .line 804
    :cond_10a
    const/4 v13, 0x0

    move v2, v13

    goto/16 :goto_36

    .line 805
    .restart local v2       #defValue:I
    :cond_10e
    const/4 v13, 0x0

    goto/16 :goto_40

    .line 825
    .restart local v0       #accelerometerDefault:I
    .restart local v7       #pointerLocation:I
    :cond_111
    :try_start_111
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    .line 826
    const/4 v13, 0x0

    iput-object v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    goto/16 :goto_7a

    .line 840
    .end local v0           #accelerometerDefault:I
    .end local v2           #defValue:I
    .end local v7           #pointerLocation:I
    :catchall_118
    move-exception v13

    monitor-exit v12
    :try_end_11a
    .catchall {:try_start_111 .. :try_end_11a} :catchall_118

    throw v13

    .line 835
    .restart local v0       #accelerometerDefault:I
    .restart local v2       #defValue:I
    .restart local v5       #imId:Ljava/lang/String;
    :cond_11b
    const/4 v13, 0x0

    move v4, v13

    goto/16 :goto_93

    .line 865
    .restart local v4       #hasSoftInput:Z
    .restart local v6       #lp:Landroid/view/WindowManager$LayoutParams;
    .restart local v11       #wm:Landroid/view/WindowManagerImpl;
    :catch_11f
    move-exception v12

    move-object v3, v12

    .line 866
    .local v3, ex:Landroid/os/RemoteException;
    const-string v12, "WindowManager"

    const-string v13, "Could not set up input monitoring channel for PointerLocation."

    invoke-static {v12, v13, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e6
.end method

.method useSensorForOrientationLp(I)Z
    .registers 6
    .parameter "appOrientation"

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 419
    const/4 v0, 0x4

    if-eq p1, v0, :cond_10

    const/16 v0, 0xa

    if-eq p1, v0, :cond_10

    const/4 v0, 0x6

    if-eq p1, v0, :cond_10

    const/4 v0, 0x7

    if-ne p1, v0, :cond_12

    :cond_10
    move v0, v1

    .line 442
    :goto_11
    return v0

    .line 426
    :cond_12
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAccelerometerDefault:I

    if-eqz v0, :cond_1c

    if-eq p1, v2, :cond_1a

    if-ne p1, v3, :cond_1c

    :cond_1a
    move v0, v1

    .line 429
    goto :goto_11

    .line 432
    :cond_1c
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockEnablesAccelerometer:Z

    if-eqz v0, :cond_24

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    if-eq v0, v2, :cond_2c

    :cond_24
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockEnablesAccelerometer:Z

    if-eqz v0, :cond_35

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    if-ne v0, v1, :cond_35

    .line 435
    :cond_2c
    if-eq p1, v2, :cond_33

    if-eq p1, v3, :cond_33

    const/4 v0, 0x5

    if-ne p1, v0, :cond_35

    :cond_33
    move v0, v1

    .line 438
    goto :goto_11

    .line 442
    :cond_35
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public userActivity()V
    .registers 6

    .prologue
    .line 2640
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenLockTimeout:Ljava/lang/Runnable;

    monitor-enter v0

    .line 2641
    :try_start_3
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLockScreenTimerActive:Z

    if-eqz v1, :cond_18

    .line 2643
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenLockTimeout:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2644
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenLockTimeout:Ljava/lang/Runnable;

    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLockScreenTimeout:I

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2646
    :cond_18
    monitor-exit v0

    .line 2647
    return-void

    .line 2646
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method public windowTypeToLayerLw(I)I
    .registers 6
    .parameter "type"

    .prologue
    const/4 v3, 0x2

    .line 937
    const/4 v0, 0x1

    if-lt p1, v0, :cond_a

    const/16 v0, 0x63

    if-gt p1, v0, :cond_a

    move v0, v3

    .line 975
    :goto_9
    return v0

    .line 940
    :cond_a
    packed-switch p1, :pswitch_data_52

    .line 974
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

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    .line 975
    goto :goto_9

    .line 942
    :pswitch_27
    const/16 v0, 0x8

    goto :goto_9

    .line 944
    :pswitch_2a
    const/4 v0, 0x5

    goto :goto_9

    .line 946
    :pswitch_2c
    const/4 v0, 0x6

    goto :goto_9

    .line 948
    :pswitch_2e
    const/4 v0, 0x4

    goto :goto_9

    .line 950
    :pswitch_30
    const/4 v0, 0x3

    goto :goto_9

    .line 952
    :pswitch_32
    const/16 v0, 0xe

    goto :goto_9

    .line 954
    :pswitch_35
    const/16 v0, 0xf

    goto :goto_9

    .line 956
    :pswitch_38
    const/16 v0, 0xa

    goto :goto_9

    .line 958
    :pswitch_3b
    const/16 v0, 0xb

    goto :goto_9

    .line 960
    :pswitch_3e
    const/16 v0, 0xc

    goto :goto_9

    .line 962
    :pswitch_41
    const/16 v0, 0xd

    goto :goto_9

    .line 964
    :pswitch_44
    const/16 v0, 0x10

    goto :goto_9

    .line 966
    :pswitch_47
    const/16 v0, 0x11

    goto :goto_9

    .line 968
    :pswitch_4a
    const/16 v0, 0x9

    goto :goto_9

    .line 970
    :pswitch_4d
    const/4 v0, 0x7

    goto :goto_9

    :pswitch_4f
    move v0, v3

    .line 972
    goto :goto_9

    .line 940
    nop

    :pswitch_data_52
    .packed-switch 0x7d0
        :pswitch_27
        :pswitch_2e
        :pswitch_30
        :pswitch_38
        :pswitch_32
        :pswitch_4d
        :pswitch_44
        :pswitch_4a
        :pswitch_2c
        :pswitch_35
        :pswitch_3b
        :pswitch_3e
        :pswitch_41
        :pswitch_4f
        :pswitch_2a
        :pswitch_47
    .end packed-switch
.end method
