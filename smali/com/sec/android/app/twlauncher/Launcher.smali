.class public final Lcom/sec/android/app/twlauncher/Launcher;
.super Landroid/app/ActivityGroup;
.source "Launcher.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/sec/android/app/twlauncher/LauncherModel$Callbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/twlauncher/Launcher$WallpaperFastBitmapDrawable;,
        Lcom/sec/android/app/twlauncher/Launcher$PackageDeleteObserver;,
        Lcom/sec/android/app/twlauncher/Launcher$BadgeChangeObserver;,
        Lcom/sec/android/app/twlauncher/Launcher$AppWidgetResetObserver;,
        Lcom/sec/android/app/twlauncher/Launcher$AirplaneModeChangeReceiver;,
        Lcom/sec/android/app/twlauncher/Launcher$CloseSystemDialogsIntentReceiver;,
        Lcom/sec/android/app/twlauncher/Launcher$TextDialog;,
        Lcom/sec/android/app/twlauncher/Launcher$CreateShortcut;,
        Lcom/sec/android/app/twlauncher/Launcher$RenameFolder;,
        Lcom/sec/android/app/twlauncher/Launcher$LaunchThreadListener;,
        Lcom/sec/android/app/twlauncher/Launcher$LocaleConfiguration;
    }
.end annotation


# static fields
.field static DEFAULT_SCREEN_COUNT:I

.field static DEFAULT_SCREEN_POSITION:I

.field static NUMBER_CELLS_X:I

.field static NUMBER_CELLS_Y:I

.field static SCREEN_COUNT:I

.field static USE_MAINMENU_CONCENTRATION_EFFECT:Z

.field static USE_MAINMENU_ICONMODE:Z

.field static USE_MAINMENU_LISTMODE:Z

.field protected static mBootVer:Ljava/lang/String;

.field private static mFolders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/sec/android/app/twlauncher/FolderInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected static mHwVer:Ljava/lang/String;

.field protected static mIsDefaultIMEI:Z

.field public static mMenuWallpaperBitmap:Landroid/graphics/Bitmap;

.field protected static mPdaVer:Ljava/lang/String;

.field protected static mPhoneVer:Ljava/lang/String;

.field protected static mUART:Ljava/lang/String;

.field protected static mUSB:Ljava/lang/String;

.field static mUninstallPackageName:Ljava/lang/String;

.field private static final sLock:Ljava/lang/Object;

.field private static sScreen:I


# instance fields
.field private MenuManagerBackKeyDownInfo:Z

.field private final UNINSTALL_COMPLETE:I

.field public isHomeKeyToDefaultPage:Z

.field private mAddItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

.field private mAddWidgetType:I

.field private final mAirplaneModeChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mAppShortcutZone:Lcom/sec/android/app/twlauncher/AppShortcutZone;

.field private mAppWidgetHost:Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;

.field private mAppWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

.field private mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private mBadgeCache:Lcom/sec/android/app/twlauncher/BadgeCache;

.field private final mBadgeObserver:Landroid/database/ContentObserver;

.field mBlankScreen:[I

.field private final mCellCoordinates:[I

.field private final mCloseSystemDialogsReceiver:Landroid/content/BroadcastReceiver;

.field private mConfigChange:Z

.field private mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

.field private mDeleteIndex:I

.field private mDeleteZone:Lcom/sec/android/app/twlauncher/DeleteZone;

.field private mDesktopItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mDestroyed:Z

.field private mDimWallpaperImageDrawable:Landroid/graphics/drawable/Drawable;

.field private mDragLayer:Lcom/sec/android/app/twlauncher/DragLayer;

.field private mExec:Ljava/util/concurrent/ExecutorService;

.field private mFolderInfo:Lcom/sec/android/app/twlauncher/FolderInfo;

.field private mForce16BitWindow:Z

.field private mHandler:Landroid/os/Handler;

.field private mIconCache:Lcom/sec/android/app/twlauncher/IconCache;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsActive:Z

.field private mIsChangedBadge:Z

.field private mIsDeletePopup:Z

.field private mIsMoveDefaultScreen:Z

.field private mIsNewIntent:Z

.field private mIsOpaqueWindow:Z

.field private mIsScreenOff:Z

.field private mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

.field private mLocaleChanged:Z

.field private mMainMenuLoading:Z

.field private mMenuAddInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

.field private mMenuDrawer:Lcom/sec/android/app/twlauncher/MenuDrawer;

.field private mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

.field private mMenuScreenCount:I

.field private mModel:Lcom/sec/android/app/twlauncher/LauncherModel;

.field private mOpenFolders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/Folder;",
            ">;"
        }
    .end annotation
.end field

.field private mPrefs:Landroid/content/SharedPreferences;

.field mProductModelFamilyName:Ljava/lang/String;

.field mProductModelName:Ljava/lang/String;

.field private mQuickViewMainMenu:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

.field private mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mResOrientation:I

.field private mRestoring:Z

.field private mRunBadgeChanged:Ljava/lang/Runnable;

.field private mSamsungWidgetInfo:Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

.field private mSamsungWidgetPackageManager:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

.field private mSavedInstanceState:Landroid/os/Bundle;

.field private mSavedState:Landroid/os/Bundle;

.field private mSpans:[I

.field private mStateQuickNavigation:I

.field private mToast:Landroid/widget/Toast;

.field private mTopFourZone:Lcom/sec/android/app/twlauncher/TopFourZone;

.field private mUserFolders:[J

.field private mWaitingForResult:Z

.field private mWallpaperCanvasView:Lcom/sec/android/app/twlauncher/WallpaperCanvasView;

.field private final mWallpaperChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mWallpaperImageDrawable:Landroid/graphics/drawable/Drawable;

.field private mWidgetId:I

.field private final mWidgetObserver:Landroid/database/ContentObserver;

.field private mWidgetPreview:Lcom/sec/android/app/twlauncher/WidgetPreview;

.field private mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

.field private mWorkspaceLoading:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x7

    const/4 v0, 0x4

    const/4 v1, 0x0

    .line 179
    sput v0, Lcom/sec/android/app/twlauncher/Launcher;->NUMBER_CELLS_X:I

    .line 180
    sput v0, Lcom/sec/android/app/twlauncher/Launcher;->NUMBER_CELLS_Y:I

    .line 181
    sput v2, Lcom/sec/android/app/twlauncher/Launcher;->SCREEN_COUNT:I

    .line 182
    sput v2, Lcom/sec/android/app/twlauncher/Launcher;->DEFAULT_SCREEN_COUNT:I

    .line 192
    sput v1, Lcom/sec/android/app/twlauncher/Launcher;->DEFAULT_SCREEN_POSITION:I

    .line 194
    sput-boolean v1, Lcom/sec/android/app/twlauncher/Launcher;->USE_MAINMENU_CONCENTRATION_EFFECT:Z

    .line 195
    sput-boolean v1, Lcom/sec/android/app/twlauncher/Launcher;->USE_MAINMENU_LISTMODE:Z

    .line 196
    sput-boolean v1, Lcom/sec/android/app/twlauncher/Launcher;->USE_MAINMENU_ICONMODE:Z

    .line 244
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sec/android/app/twlauncher/Launcher;->sLock:Ljava/lang/Object;

    .line 245
    sput v1, Lcom/sec/android/app/twlauncher/Launcher;->sScreen:I

    .line 308
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/android/app/twlauncher/Launcher;->mFolders:Ljava/util/HashMap;

    .line 371
    sput-boolean v1, Lcom/sec/android/app/twlauncher/Launcher;->mIsDefaultIMEI:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 390
    invoke-direct {p0, v2}, Landroid/app/ActivityGroup;-><init>(Z)V

    .line 248
    new-instance v0, Lcom/sec/android/app/twlauncher/Launcher$CloseSystemDialogsIntentReceiver;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/twlauncher/Launcher$CloseSystemDialogsIntentReceiver;-><init>(Lcom/sec/android/app/twlauncher/Launcher;Lcom/sec/android/app/twlauncher/Launcher$1;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mCloseSystemDialogsReceiver:Landroid/content/BroadcastReceiver;

    .line 250
    new-instance v0, Lcom/sec/android/app/twlauncher/Launcher$AirplaneModeChangeReceiver;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/twlauncher/Launcher$AirplaneModeChangeReceiver;-><init>(Lcom/sec/android/app/twlauncher/Launcher;Lcom/sec/android/app/twlauncher/Launcher$1;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAirplaneModeChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 253
    new-instance v0, Lcom/sec/android/app/twlauncher/Launcher$AppWidgetResetObserver;

    invoke-direct {v0, p0}, Lcom/sec/android/app/twlauncher/Launcher$AppWidgetResetObserver;-><init>(Lcom/sec/android/app/twlauncher/Launcher;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWidgetObserver:Landroid/database/ContentObserver;

    .line 254
    new-instance v0, Lcom/sec/android/app/twlauncher/Launcher$BadgeChangeObserver;

    invoke-direct {v0, p0}, Lcom/sec/android/app/twlauncher/Launcher$BadgeChangeObserver;-><init>(Lcom/sec/android/app/twlauncher/Launcher;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mBadgeObserver:Landroid/database/ContentObserver;

    .line 279
    new-array v0, v5, [I

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mCellCoordinates:[I

    .line 282
    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->MenuManagerBackKeyDownInfo:Z

    .line 286
    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    .line 288
    iput-boolean v4, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspaceLoading:Z

    .line 289
    iput-boolean v4, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMainMenuLoading:Z

    .line 307
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDesktopItems:Ljava/util/ArrayList;

    .line 355
    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->isHomeKeyToDefaultPage:Z

    .line 358
    iput v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mStateQuickNavigation:I

    .line 359
    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsDeletePopup:Z

    .line 360
    iput v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDeleteIndex:I

    .line 361
    iput v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuScreenCount:I

    .line 365
    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWallpaperImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 366
    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDimWallpaperImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 379
    const-string v0, "S1"

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mProductModelFamilyName:Ljava/lang/String;

    .line 380
    const-string v0, "GT-I9000"

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mProductModelName:Ljava/lang/String;

    .line 382
    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mForce16BitWindow:Z

    .line 384
    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mConfigChange:Z

    .line 386
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mOpenFolders:Ljava/util/ArrayList;

    .line 387
    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mUserFolders:[J

    .line 555
    new-instance v0, Lcom/sec/android/app/twlauncher/Launcher$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/twlauncher/Launcher$1;-><init>(Lcom/sec/android/app/twlauncher/Launcher;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 573
    new-instance v0, Lcom/sec/android/app/twlauncher/Launcher$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/twlauncher/Launcher$2;-><init>(Lcom/sec/android/app/twlauncher/Launcher;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWallpaperChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 4405
    iput v4, p0, Lcom/sec/android/app/twlauncher/Launcher;->UNINSTALL_COMPLETE:I

    .line 4411
    new-instance v0, Lcom/sec/android/app/twlauncher/Launcher$7;

    invoke-direct {v0, p0}, Lcom/sec/android/app/twlauncher/Launcher$7;-><init>(Lcom/sec/android/app/twlauncher/Launcher;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mHandler:Landroid/os/Handler;

    .line 4749
    iput v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddWidgetType:I

    .line 4751
    iput v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWidgetId:I

    .line 4753
    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    .line 4754
    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

    .line 4755
    new-array v0, v5, [I

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSpans:[I

    .line 4757
    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSamsungWidgetInfo:Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    .line 4759
    new-array v0, v5, [I

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mBlankScreen:[I

    .line 4969
    new-instance v0, Lcom/sec/android/app/twlauncher/Launcher$8;

    invoke-direct {v0, p0}, Lcom/sec/android/app/twlauncher/Launcher$8;-><init>(Lcom/sec/android/app/twlauncher/Launcher;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mRunBadgeChanged:Ljava/lang/Runnable;

    .line 5023
    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsOpaqueWindow:Z

    .line 391
    return-void
.end method

.method private acceptFilter()Z
    .locals 1

    .prologue
    .line 1125
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/inputmethod/InputMethodManager;

    .line 1127
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->isFullscreenMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$1402(Lcom/sec/android/app/twlauncher/Launcher;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWaitingForResult:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/FolderInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mFolderInfo:Lcom/sec/android/app/twlauncher/FolderInfo;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/sec/android/app/twlauncher/Launcher;Lcom/sec/android/app/twlauncher/FolderInfo;)Lcom/sec/android/app/twlauncher/FolderInfo;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mFolderInfo:Lcom/sec/android/app/twlauncher/FolderInfo;

    return-object p1
.end method

.method static synthetic access$1700()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 128
    sget-object v0, Lcom/sec/android/app/twlauncher/Launcher;->mFolders:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/sec/android/app/twlauncher/Launcher;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspaceLoading:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/sec/android/app/twlauncher/Launcher;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspaceLoading:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/LauncherModel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/sec/android/app/twlauncher/Launcher;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 128
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/twlauncher/Launcher;->pickShortcut(II)V

    return-void
.end method

.method static synthetic access$202(Lcom/sec/android/app/twlauncher/Launcher;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsScreenOff:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetHost:Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSamsungWidgetPackageManager:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/sec/android/app/twlauncher/Launcher;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->startWallpaper()V

    return-void
.end method

.method static synthetic access$2500(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/DragLayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDragLayer:Lcom/sec/android/app/twlauncher/DragLayer;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/sec/android/app/twlauncher/Launcher;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->onAppWidgetReset()V

    return-void
.end method

.method static synthetic access$2700(Lcom/sec/android/app/twlauncher/Launcher;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mRunBadgeChanged:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/sec/android/app/twlauncher/Launcher;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/sec/android/app/twlauncher/Launcher;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsChangedBadge:Z

    return p1
.end method

.method static synthetic access$300(Lcom/sec/android/app/twlauncher/Launcher;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsActive:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/MenuManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/sec/android/app/twlauncher/Launcher;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->setSomethingsInDefaultIMEI()V

    return-void
.end method

.method static synthetic access$3200(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/sec/android/app/twlauncher/Launcher;Landroid/os/Bundle;Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 128
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/twlauncher/Launcher;->completeAddAppWidget(Landroid/os/Bundle;Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/sec/android/app/twlauncher/Launcher;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->onBadgeChanged()V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/app/twlauncher/Launcher;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/Launcher;->closeDrawer(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/QuickViewMainMenu;
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewMainMenu:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/QuickViewWorkspace;
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/Workspace;
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    return-object v0
.end method

.method private addItems()V
    .locals 1

    .prologue
    .line 2190
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuAddInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->showAddDialog(Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;)V

    .line 2191
    return-void
.end method

.method static addLiveFolder(Landroid/content/Context;Landroid/content/Intent;Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;Z)Lcom/sec/android/app/twlauncher/LiveFolderInfo;
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x0

    .line 2423
    const-string v1, "android.intent.extra.livefolder.BASE_INTENT"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 2424
    const-string v2, "android.intent.extra.livefolder.NAME"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2429
    const-string v2, "android.intent.extra.livefolder.ICON"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    .line 2430
    if-eqz v3, :cond_1

    instance-of v2, v3, Landroid/content/Intent$ShortcutIconResource;

    if-eqz v2, :cond_1

    .line 2432
    :try_start_0
    move-object v0, v3

    check-cast v0, Landroid/content/Intent$ShortcutIconResource;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2433
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 2434
    iget-object v6, v2, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v5

    .line 2436
    iget-object v6, v2, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 2437
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    move-object v10, v2

    move-object v2, v3

    move-object v3, v10

    .line 2443
    :goto_0
    if-nez v2, :cond_0

    .line 2444
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f02006e

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object v5, v2

    .line 2447
    :goto_1
    new-instance v2, Lcom/sec/android/app/twlauncher/LiveFolderInfo;

    invoke-direct {v2}, Lcom/sec/android/app/twlauncher/LiveFolderInfo;-><init>()V

    .line 2448
    invoke-static {v5, p0}, Lcom/sec/android/app/twlauncher/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, v2, Lcom/sec/android/app/twlauncher/LiveFolderInfo;->icon:Landroid/graphics/Bitmap;

    .line 2449
    iput-object v4, v2, Lcom/sec/android/app/twlauncher/FolderInfo;->title:Ljava/lang/CharSequence;

    .line 2450
    iput-object v3, v2, Lcom/sec/android/app/twlauncher/LiveFolderInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    .line 2451
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    iput-object v3, v2, Lcom/sec/android/app/twlauncher/LiveFolderInfo;->uri:Landroid/net/Uri;

    .line 2452
    iput-object v1, v2, Lcom/sec/android/app/twlauncher/LiveFolderInfo;->baseIntent:Landroid/content/Intent;

    .line 2453
    const-string v1, "android.intent.extra.livefolder.DISPLAY_MODE"

    const/4 v3, 0x1

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v2, Lcom/sec/android/app/twlauncher/LiveFolderInfo;->displayMode:I

    .line 2456
    const-wide/16 v3, -0x64

    iget v5, p2, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    iget v6, p2, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellX:I

    iget v7, p2, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellY:I

    move-object v1, p0

    move v8, p3

    invoke-static/range {v1 .. v8}, Lcom/sec/android/app/twlauncher/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;JIIIZ)V

    .line 2458
    sget-object v1, Lcom/sec/android/app/twlauncher/Launcher;->mFolders:Ljava/util/HashMap;

    iget-wide v3, v2, Lcom/sec/android/app/twlauncher/ItemInfo;->id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2460
    return-object v2

    .line 2438
    :catch_0
    move-exception v2

    move-object v2, v9

    .line 2439
    :goto_2
    const-string v5, "Launcher"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not load live folder icon: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v2

    move-object v2, v9

    goto :goto_0

    .line 2438
    :catch_1
    move-exception v5

    goto :goto_2

    :cond_0
    move-object v5, v2

    goto :goto_1

    :cond_1
    move-object v3, v9

    move-object v2, v9

    goto :goto_0
.end method

.method private blockChildrenFocus()V
    .locals 2

    .prologue
    .line 1380
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDragLayer:Lcom/sec/android/app/twlauncher/DragLayer;

    const/high16 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/DragLayer;->setDescendantFocusability(I)V

    .line 1381
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDragLayer:Lcom/sec/android/app/twlauncher/DragLayer;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/DragLayer;->requestFocus()Z

    .line 1382
    return-void
.end method

.method private checkForLocaleChange()V
    .locals 9

    .prologue
    .line 588
    new-instance v2, Lcom/sec/android/app/twlauncher/Launcher$LocaleConfiguration;

    const/4 v8, 0x0

    invoke-direct {v2, v8}, Lcom/sec/android/app/twlauncher/Launcher$LocaleConfiguration;-><init>(Lcom/sec/android/app/twlauncher/Launcher$1;)V

    .line 589
    .local v2, localeConfiguration:Lcom/sec/android/app/twlauncher/Launcher$LocaleConfiguration;
    invoke-static {p0, v2}, Lcom/sec/android/app/twlauncher/Launcher;->readConfiguration(Landroid/content/Context;Lcom/sec/android/app/twlauncher/Launcher$LocaleConfiguration;)V

    .line 591
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 593
    .local v0, configuration:Landroid/content/res/Configuration;
    iget-object v5, v2, Lcom/sec/android/app/twlauncher/Launcher$LocaleConfiguration;->locale:Ljava/lang/String;

    .line 594
    .local v5, previousLocale:Ljava/lang/String;
    iget-object v8, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v8}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    .line 596
    .local v1, locale:Ljava/lang/String;
    iget v6, v2, Lcom/sec/android/app/twlauncher/Launcher$LocaleConfiguration;->mcc:I

    .line 597
    .local v6, previousMcc:I
    iget v3, v0, Landroid/content/res/Configuration;->mcc:I

    .line 599
    .local v3, mcc:I
    iget v7, v2, Lcom/sec/android/app/twlauncher/Launcher$LocaleConfiguration;->mnc:I

    .line 600
    .local v7, previousMnc:I
    iget v4, v0, Landroid/content/res/Configuration;->mnc:I

    .line 602
    .local v4, mnc:I
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    if-ne v3, v6, :cond_0

    if-eq v4, v7, :cond_2

    :cond_0
    const/4 v8, 0x1

    :goto_0
    iput-boolean v8, p0, Lcom/sec/android/app/twlauncher/Launcher;->mLocaleChanged:Z

    .line 604
    iget-boolean v8, p0, Lcom/sec/android/app/twlauncher/Launcher;->mLocaleChanged:Z

    if-eqz v8, :cond_1

    .line 605
    iput-object v1, v2, Lcom/sec/android/app/twlauncher/Launcher$LocaleConfiguration;->locale:Ljava/lang/String;

    .line 606
    iput v3, v2, Lcom/sec/android/app/twlauncher/Launcher$LocaleConfiguration;->mcc:I

    .line 607
    iput v4, v2, Lcom/sec/android/app/twlauncher/Launcher$LocaleConfiguration;->mnc:I

    .line 609
    invoke-static {p0, v2}, Lcom/sec/android/app/twlauncher/Launcher;->writeConfiguration(Landroid/content/Context;Lcom/sec/android/app/twlauncher/Launcher$LocaleConfiguration;)V

    .line 610
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIconCache:Lcom/sec/android/app/twlauncher/IconCache;

    invoke-virtual {v8}, Lcom/sec/android/app/twlauncher/IconCache;->flush()V

    .line 612
    :cond_1
    return-void

    .line 602
    :cond_2
    const/4 v8, 0x0

    goto :goto_0
.end method

.method private checkHwNaviKey()V
    .locals 4

    .prologue
    const-string v3, "Launcher"

    .line 1360
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->navigation:I

    .line 1361
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1362
    const-string v0, "Launcher"

    const-string v0, "No navigation h/w keys. block focus"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1363
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->blockChildrenFocus()V

    .line 1373
    :goto_0
    return-void

    .line 1365
    :cond_0
    const-string v1, "UNKNOWN"

    .line 1366
    packed-switch v0, :pswitch_data_0

    move-object v0, v1

    .line 1371
    :goto_1
    const-string v1, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "You have "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " navigation keys"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1367
    :pswitch_0
    const-string v0, "DPAD"

    goto :goto_1

    .line 1368
    :pswitch_1
    const-string v0, "TRACKBALL"

    goto :goto_1

    .line 1369
    :pswitch_2
    const-string v0, "WHEEL"

    goto :goto_1

    .line 1366
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private checkNetwork(Landroid/content/Intent;)V
    .locals 4
    .parameter

    .prologue
    .line 3206
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.vending"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.browser"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.android.gm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.android.talk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.android.apps.maps"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.layar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.sec.android.widgetapp.infoalarm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.android.googlequicksearchbox"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.sec.android.app.samsungapps"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.android.youtube"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.vodafone.vodafone360updates"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.ScanLife"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.gi.club2020.main"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.vodafone.android.app.music"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.tuenti.android.client"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3222
    :cond_0
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 3223
    const-string v1, "wifi"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    .line 3224
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 3225
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/Launcher;->startActivity(Landroid/content/Intent;)V

    .line 3235
    :goto_0
    return-void

    .line 3226
    :cond_1
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v0

    if-nez v0, :cond_2

    if-eqz v1, :cond_2

    .line 3227
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/Launcher;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 3229
    :cond_2
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/Launcher;->showPopUp(Landroid/content/Intent;)V

    goto :goto_0

    .line 3232
    :cond_3
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/Launcher;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private checkTopApp(Ljava/lang/String;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v4, 0x0

    const-string v5, "cdg"

    .line 3264
    .line 3265
    const-string v0, "cdg"

    const-string v0, "entering checkTopApp"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3266
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 3267
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3268
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 3269
    invoke-virtual {v0, v1, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 3271
    if-eqz v0, :cond_2

    .line 3272
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 3273
    const-string v2, "cdg"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Application List--size["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]----------------"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v4

    move v3, v4

    .line 3274
    :goto_0
    if-ge v2, v1, :cond_1

    .line 3275
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ResolveInfo;

    .line 3276
    iget-object v4, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 3278
    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3280
    const/4 v3, 0x1

    .line 3274
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v0, v3

    .line 3284
    :goto_1
    return v0

    :cond_2
    move v0, v4

    goto :goto_1
.end method

.method private clearTypedText()V
    .locals 2

    .prologue
    .line 1155
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 1156
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 1157
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 1158
    return-void
.end method

.method private closeDrawer()V
    .locals 1

    .prologue
    .line 2689
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->closeDrawer(Z)V

    .line 2690
    return-void
.end method

.method private closeDrawer(Z)V
    .locals 3
    .parameter "animated"

    .prologue
    .line 2693
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    .line 2695
    .local v0, mm:Lcom/sec/android/app/twlauncher/MenuManager;
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2696
    if-eqz p1, :cond_2

    .line 2697
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->animateClose()V

    .line 2701
    :goto_0
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2702
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 2706
    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->getMode()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 2707
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->menusave()V

    .line 2708
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->setMode(I)V

    .line 2710
    :cond_1
    return-void

    .line 2699
    :cond_2
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->close()V

    goto :goto_0
.end method

.method private closeFolder()V
    .locals 2

    .prologue
    .line 2713
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Workspace;->getOpenFolder()Lcom/sec/android/app/twlauncher/Folder;

    move-result-object v0

    .line 2714
    .local v0, folder:Lcom/sec/android/app/twlauncher/Folder;
    if-eqz v0, :cond_0

    .line 2715
    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->closeFolder(Lcom/sec/android/app/twlauncher/Folder;)V

    .line 2717
    :cond_0
    return-void
.end method

.method private completeAddAppWidget(Landroid/content/Intent;Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;)V
    .locals 1
    .parameter "data"
    .parameter "cellInfo"

    .prologue
    .line 1547
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 1548
    .local v0, extras:Landroid/os/Bundle;
    invoke-direct {p0, v0, p2}, Lcom/sec/android/app/twlauncher/Launcher;->completeAddAppWidget(Landroid/os/Bundle;Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;)V

    .line 1549
    return-void
.end method

.method private completeAddAppWidget(Landroid/os/Bundle;Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;)V
    .locals 12
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x2

    const/4 v3, -0x1

    const/4 v11, 0x1

    const/4 v7, 0x0

    .line 1474
    const-string v0, "appWidgetId"

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 1476
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "completeAddAppWidget(): dumping extras content="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1478
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v0, v8}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v9

    .line 1482
    iget v0, p2, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 1483
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v0

    iput v0, p2, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    .line 1486
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    iget v1, p2, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/CellLayout;

    .line 1487
    iget v1, v9, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    iget v2, v9, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/CellLayout;->rectToCell(II)[I

    move-result-object v0

    .line 1490
    iget-object v10, p0, Lcom/sec/android/app/twlauncher/Launcher;->mCellCoordinates:[I

    .line 1491
    aget v1, v0, v7

    aget v2, v0, v11

    invoke-direct {p0, p2, v10, v1, v2}, Lcom/sec/android/app/twlauncher/Launcher;->findSlot(Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;[III)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1492
    iput v8, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWidgetId:I

    .line 1493
    iput-object v9, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

    .line 1494
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSpans:[I

    aget v2, v0, v7

    aput v2, v1, v7

    .line 1495
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSpans:[I

    aget v0, v0, v11

    aput v0, v1, v11

    .line 1497
    iput v4, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddWidgetType:I

    .line 1498
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->isAllPageSlot(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1499
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->cancelAddWidget()V

    .line 1537
    :cond_1
    :goto_0
    return-void

    .line 1502
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v0

    .line 1503
    sget v1, Lcom/sec/android/app/twlauncher/Launcher;->SCREEN_COUNT:I

    if-ge v0, v1, :cond_4

    .line 1504
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->createBlankPage()I

    .line 1507
    :goto_1
    invoke-direct {p0, v4, v0}, Lcom/sec/android/app/twlauncher/Launcher;->prepareWidgetPreview(II)V

    goto :goto_0

    .line 1513
    :cond_3
    new-instance v1, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    invoke-direct {v1, v8}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;-><init>(I)V

    .line 1514
    aget v2, v0, v7

    iput v2, v1, Lcom/sec/android/app/twlauncher/ItemInfo;->spanX:I

    .line 1515
    aget v0, v0, v11

    iput v0, v1, Lcom/sec/android/app/twlauncher/ItemInfo;->spanY:I

    .line 1517
    const-wide/16 v2, -0x64

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v4

    aget v5, v10, v7

    aget v6, v10, v11

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/sec/android/app/twlauncher/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;JIIIZ)V

    .line 1521
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mRestoring:Z

    if-nez v0, :cond_1

    .line 1522
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDesktopItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1525
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetHost:Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;

    invoke-virtual {v0, p0, v8, v9}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;->createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v0

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    .line 1527
    iget-object v0, v1, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v0, v8, v9}, Landroid/appwidget/AppWidgetHostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    .line 1528
    iget-object v0, v1, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetHostView;->setTag(Ljava/lang/Object;)V

    .line 1530
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    iget-object v8, v1, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    aget v2, v10, v7

    aget v3, v10, v11

    iget v4, v1, Lcom/sec/android/app/twlauncher/ItemInfo;->spanX:I

    iget v5, v1, Lcom/sec/android/app/twlauncher/ItemInfo;->spanY:I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->isWorkspaceLocked()Z

    move-result v6

    move-object v1, v8

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/app/twlauncher/Workspace;->addInCurrentScreen(Landroid/view/View;IIIIZ)V

    goto :goto_0

    :cond_4
    move v0, v3

    goto :goto_1
.end method

.method private completeAddLiveFolder(Landroid/content/Intent;Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 2404
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v0

    iput v0, p2, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    .line 2405
    invoke-direct {p0, p2}, Lcom/sec/android/app/twlauncher/Launcher;->findSingleSlot(Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2418
    :cond_0
    :goto_0
    return-void

    .line 2407
    :cond_1
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/sec/android/app/twlauncher/Launcher;->addLiveFolder(Landroid/content/Context;Landroid/content/Intent;Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;Z)Lcom/sec/android/app/twlauncher/LiveFolderInfo;

    move-result-object v1

    .line 2409
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mRestoring:Z

    if-nez v0, :cond_0

    .line 2410
    const v2, 0x7f030010

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {v2, p0, v0, v1}, Lcom/sec/android/app/twlauncher/LiveFolderIcon;->fromXml(ILcom/sec/android/app/twlauncher/Launcher;Landroid/view/ViewGroup;Lcom/sec/android/app/twlauncher/LiveFolderInfo;)Lcom/sec/android/app/twlauncher/LiveFolderIcon;

    move-result-object v1

    .line 2412
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    iget v2, p2, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellX:I

    iget v3, p2, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellY:I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->isWorkspaceLocked()Z

    move-result v6

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/app/twlauncher/Workspace;->addInCurrentScreen(Landroid/view/View;IIIIZ)V

    goto :goto_0
.end method

.method private completeAddShortcut(Landroid/content/Intent;Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;)V
    .locals 3
    .parameter "data"
    .parameter "cellInfo"

    .prologue
    .line 1448
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v1

    iput v1, p2, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    .line 1449
    invoke-direct {p0, p2}, Lcom/sec/android/app/twlauncher/Launcher;->findSingleSlot(Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1464
    :cond_0
    :goto_0
    return-void

    .line 1451
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, p1, p2, v2}, Lcom/sec/android/app/twlauncher/LauncherModel;->addShortcut(Landroid/content/Context;Landroid/content/Intent;Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;Z)Lcom/sec/android/app/twlauncher/ShortcutInfo;

    move-result-object v0

    .line 1453
    .local v0, info:Lcom/sec/android/app/twlauncher/ShortcutInfo;
    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mRestoring:Z

    if-nez v1, :cond_0

    .line 1462
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->isWorkspaceLocked()Z

    move-result v2

    invoke-virtual {v1, v0, p2, v2}, Lcom/sec/android/app/twlauncher/Workspace;->addApplicationShortcut(Lcom/sec/android/app/twlauncher/ShortcutInfo;Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;Z)V

    goto :goto_0
.end method

.method private completePreviewAppWidget()V
    .locals 10

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1584
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    if-nez v0, :cond_0

    .line 1585
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->cancelAddWidget()V

    .line 1604
    :goto_0
    return-void

    .line 1588
    :cond_0
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/Launcher;->mCellCoordinates:[I

    .line 1590
    .local v9, xy:[I
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    .line 1592
    .local v1, launcherInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDesktopItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1594
    const-wide/16 v2, -0x64

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v4

    aget v5, v9, v7

    aget v6, v9, v8

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/sec/android/app/twlauncher/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;JIIIZ)V

    .line 1598
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    iget-object v3, v1, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    aget v4, v9, v7

    aget v5, v9, v8

    iget v6, v1, Lcom/sec/android/app/twlauncher/ItemInfo;->spanX:I

    iget v7, v1, Lcom/sec/android/app/twlauncher/ItemInfo;->spanY:I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->isWorkspaceLocked()Z

    move-result v8

    invoke-virtual/range {v2 .. v8}, Lcom/sec/android/app/twlauncher/Workspace;->addInCurrentScreen(Landroid/view/View;IIIIZ)V

    goto :goto_0
.end method

.method private createBlankPage()I
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 4950
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mBlankScreen:[I

    aget v0, v0, v4

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mBlankScreen:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    if-eq v0, v3, :cond_1

    :cond_0
    move v0, v3

    .line 4966
    :goto_0
    return v0

    .line 4951
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    .line 4952
    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v2

    .line 4953
    sget v0, Lcom/sec/android/app/twlauncher/Launcher;->SCREEN_COUNT:I

    if-ge v2, v0, :cond_2

    .line 4954
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x7f030016

    invoke-virtual {v0, v3, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/CellLayout;

    .line 4955
    invoke-virtual {v0, p0}, Lcom/sec/android/app/twlauncher/CellLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 4956
    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/Launcher;->getCellLayoutId(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/sec/android/app/twlauncher/CellLayout;->setId(I)V

    .line 4958
    invoke-virtual {v1, v0}, Lcom/sec/android/app/twlauncher/Workspace;->addView(Landroid/view/View;)V

    .line 4960
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mBlankScreen:[I

    aput v2, v0, v4

    .line 4962
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->saveScreenInfo()V

    move v0, v2

    .line 4964
    goto :goto_0

    :cond_2
    move v0, v3

    .line 4966
    goto :goto_0
.end method

.method private findSingleSlot(Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;)Z
    .locals 4
    .parameter "cellInfo"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 2464
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 2465
    .local v0, xy:[I
    invoke-direct {p0, p1, v0, v2, v2}, Lcom/sec/android/app/twlauncher/Launcher;->findSlot(Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;[III)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2466
    aget v1, v0, v3

    iput v1, p1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellX:I

    .line 2467
    aget v1, v0, v2

    iput v1, p1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellY:I

    move v1, v2

    .line 2470
    :goto_0
    return v1

    :cond_0
    move v1, v3

    goto :goto_0
.end method

.method private findSlot(Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;[III)Z
    .locals 6
    .parameter "cellInfo"
    .parameter "xy"
    .parameter "spanX"
    .parameter "spanY"

    .prologue
    .line 2474
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/twlauncher/Launcher;->findSlot(Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;[IIIZ)Z

    move-result v0

    return v0
.end method

.method private findSlot(Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;[IIIZ)Z
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2478
    invoke-virtual {p1, p2, p3, p4}, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->findCellForSpan([III)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2479
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSavedState:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSavedState:Landroid/os/Bundle;

    const-string v1, "launcher.add_occupied_cells"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v0

    .line 2481
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/twlauncher/Workspace;->findAllVacantCells([Z)Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    move-result-object v0

    .line 2482
    if-eqz v0, :cond_2

    invoke-virtual {v0, p2, p3, p4}, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->findCellForSpan([III)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2483
    if-nez p5, :cond_1

    move v0, v2

    .line 2488
    :goto_1
    return v0

    .line 2479
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2484
    :cond_1
    invoke-virtual {p0, v3}, Lcom/sec/android/app/twlauncher/Launcher;->showWidgetMessage(Z)V

    move v0, v2

    .line 2485
    goto :goto_1

    :cond_2
    move v0, v3

    .line 2488
    goto :goto_1
.end method

.method static getScreen()I
    .locals 2

    .prologue
    .line 667
    sget-object v0, Lcom/sec/android/app/twlauncher/Launcher;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 668
    :try_start_0
    sget v1, Lcom/sec/android/app/twlauncher/Launcher;->sScreen:I

    monitor-exit v0

    return v1

    .line 669
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getTypedText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1151
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleFolderClick(Lcom/sec/android/app/twlauncher/FolderInfo;)V
    .locals 3
    .parameter "folderInfo"

    .prologue
    .line 3287
    iget-boolean v2, p1, Lcom/sec/android/app/twlauncher/FolderInfo;->opened:Z

    if-nez v2, :cond_1

    .line 3289
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->closeFolder()V

    .line 3291
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/Launcher;->openFolder(Lcom/sec/android/app/twlauncher/FolderInfo;)V

    .line 3313
    :cond_0
    :goto_0
    return-void

    .line 3294
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v2, p1}, Lcom/sec/android/app/twlauncher/Workspace;->getFolderForTag(Ljava/lang/Object;)Lcom/sec/android/app/twlauncher/Folder;

    move-result-object v1

    .line 3296
    .local v1, openFolder:Lcom/sec/android/app/twlauncher/Folder;
    if-eqz v1, :cond_2

    .line 3297
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v2, v1}, Lcom/sec/android/app/twlauncher/Workspace;->getScreenForView(Landroid/view/View;)I

    move-result v0

    .line 3299
    .local v0, folderScreen:I
    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->closeFolder(Lcom/sec/android/app/twlauncher/Folder;)V

    .line 3300
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v2

    if-eq v0, v2, :cond_0

    .line 3302
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->closeFolder()V

    .line 3304
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/Launcher;->openFolder(Lcom/sec/android/app/twlauncher/FolderInfo;)V

    goto :goto_0

    .line 3308
    .end local v0           #folderScreen:I
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->closeFolder()V

    .line 3310
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/Launcher;->openFolder(Lcom/sec/android/app/twlauncher/FolderInfo;)V

    goto :goto_0
.end method

.method private launchMtpApp(Landroid/content/Context;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v2, "mtp_usb_connection_status"

    const-string v3, "media_player_mode"

    .line 1034
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1035
    const-string v1, "mtp_usb_connection_status"

    invoke-static {v0, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "media_player_mode"

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v6, :cond_2

    .line 1036
    :cond_0
    const-string v0, "Launcher"

    const-string v1, "MTP-LAUNCHER: media scanning not yet finished. "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1072
    :cond_1
    :goto_0
    return-void

    .line 1056
    :cond_2
    const-string v1, "mtp_usb_conditions_met"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v5, :cond_1

    .line 1060
    const-string v1, "mtp_usb_connection_status"

    invoke-static {v0, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v5, :cond_8

    move v1, v5

    .line 1061
    :goto_1
    const-string v2, "media_player_mode"

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v5, :cond_3

    const-string v2, "media_player_mode"

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v6, :cond_7

    :cond_3
    move v2, v5

    .line 1062
    :goto_2
    const-string v3, "usb_setting_mode"

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v5, :cond_4

    const-string v3, "usb_setting_mode"

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_6

    .line 1063
    :cond_4
    const-string v3, "adb_enabled"

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_6

    move v0, v5

    .line 1066
    :goto_3
    if-nez v2, :cond_5

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 1068
    :cond_5
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1069
    const-string v1, "com.android.MtpApplication"

    const-string v2, "com.android.MtpApplication.MtpApplication"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1070
    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_6
    move v0, v4

    goto :goto_3

    :cond_7
    move v2, v4

    goto :goto_2

    :cond_8
    move v1, v4

    goto :goto_1
.end method

.method private makeBitmapMenuWallpaper()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 5091
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWallpaperImageDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 5100
    sget-object v0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuWallpaperBitmap:Landroid/graphics/Bitmap;

    .line 5102
    .local v0, bmp:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 5103
    .local v1, canvas:Landroid/graphics/Canvas;
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWallpaperImageDrawable:Landroid/graphics/drawable/Drawable;

    sget-object v3, Lcom/sec/android/app/twlauncher/Launcher;->mMenuWallpaperBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sget-object v4, Lcom/sec/android/app/twlauncher/Launcher;->mMenuWallpaperBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 5104
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWallpaperImageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 5105
    const/16 v2, 0x99

    invoke-virtual {v1, v2, v5, v5, v5}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 5107
    new-instance v2, Lcom/sec/android/app/twlauncher/Launcher$WallpaperFastBitmapDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/sec/android/app/twlauncher/Launcher$WallpaperFastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;Lcom/sec/android/app/twlauncher/Launcher$1;)V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDimWallpaperImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 5109
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    .end local v1           #canvas:Landroid/graphics/Canvas;
    :cond_0
    return-void
.end method

.method private onAppWidgetReset()V
    .locals 2

    .prologue
    .line 2742
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDestroyed:Z

    if-nez v0, :cond_0

    .line 2743
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetHost:Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;->startListening()V

    .line 2747
    :goto_0
    return-void

    .line 2745
    :cond_0
    const-string v0, "Launcher"

    const-string v1, "onAppWidgetReset() : DISCARD widget reset. Launcher destroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private onBadgeChanged()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    const-string v0, "onBadgeChanged() "

    const-string v0, "Launcher"

    .line 2766
    .line 2769
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.sec.badge/apps"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 2778
    :goto_0
    if-nez v0, :cond_0

    .line 2823
    :goto_1
    return-void

    .line 2770
    :catch_0
    move-exception v0

    .line 2771
    :try_start_1
    const-string v1, "Launcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onBadgeChanged() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v7

    .line 2776
    goto :goto_0

    .line 2772
    :catch_1
    move-exception v0

    .line 2773
    const-string v1, "Launcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onBadgeChanged() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v7

    .line 2776
    goto :goto_0

    .line 2774
    :catchall_0
    move-exception v0

    throw v0

    .line 2780
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2782
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2784
    :cond_1
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2785
    const/4 v3, 0x2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2786
    const/4 v4, 0x3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 2787
    const/4 v5, 0x4

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v5

    .line 2789
    if-eqz v5, :cond_3

    array-length v6, v5

    if-lez v6, :cond_3

    .line 2790
    array-length v6, v5

    invoke-static {v5, v8, v6}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 2792
    :goto_2
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 2793
    invoke-virtual {v6, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2796
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mBadgeCache:Lcom/sec/android/app/twlauncher/BadgeCache;

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/android/app/twlauncher/BadgeCache;->setBadgeCount(Landroid/content/ComponentName;ILandroid/graphics/Bitmap;)V

    .line 2798
    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2809
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2812
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2814
    iput-boolean v8, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsChangedBadge:Z

    .line 2816
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->updateDrawingCacheForApplicationBadgeCountChange(Ljava/util/List;)V

    .line 2817
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2819
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppShortcutZone:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->updateBadgeCount(Ljava/util/List;)V

    .line 2821
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->updateWorkspaceBadge()V

    .line 2822
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->updateTopfourBadge()V

    goto/16 :goto_1

    :cond_3
    move-object v5, v7

    goto :goto_2
.end method

.method private onLauncherSettingsSelected()V
    .locals 3

    .prologue
    .line 2431
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2432
    const-string v1, "com.touchwiz.settings"

    const-string v2, "com.touchwiz.settings.MainActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2433
    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->startActivity(Landroid/content/Intent;)V

    .line 2434
    return-void
.end method

.method private onShareAppRequested()V
    .locals 3

    .prologue
    .line 2431
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2432
    const-string v1, "com.sec.android.app.shareapp"

    const-string v2, "com.sec.android.app.shareapp.ShareApp"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2433
    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->startActivity(Landroid/content/Intent;)V

    .line 2434
    return-void
.end method

.method private openFolder(Lcom/sec/android/app/twlauncher/FolderInfo;)V
    .locals 8
    .parameter "folderInfo"

    .prologue
    const/4 v3, 0x0

    .line 3325
    instance-of v0, p1, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    if-eqz v0, :cond_1

    .line 3326
    invoke-static {p0}, Lcom/sec/android/app/twlauncher/UserFolder;->fromXml(Landroid/content/Context;)Lcom/sec/android/app/twlauncher/UserFolder;

    move-result-object v1

    .line 3333
    .local v1, openFolder:Lcom/sec/android/app/twlauncher/Folder;
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDragLayer:Lcom/sec/android/app/twlauncher/DragLayer;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/twlauncher/Folder;->setDragger(Lcom/sec/android/app/twlauncher/DragController;)V

    .line 3334
    invoke-virtual {v1, p0}, Lcom/sec/android/app/twlauncher/Folder;->setLauncher(Lcom/sec/android/app/twlauncher/Launcher;)V

    .line 3336
    invoke-virtual {v1, p1}, Lcom/sec/android/app/twlauncher/Folder;->bind(Lcom/sec/android/app/twlauncher/FolderInfo;)V

    .line 3337
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/sec/android/app/twlauncher/FolderInfo;->opened:Z

    .line 3339
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    iget v2, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->screen:I

    invoke-virtual {v0, v2}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/sec/android/app/twlauncher/CellLayout;

    .line 3340
    .local v7, screen:Lcom/sec/android/app/twlauncher/CellLayout;
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    iget v2, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->screen:I

    invoke-virtual {v7}, Lcom/sec/android/app/twlauncher/CellLayout;->getShortAxisCells()I

    move-result v5

    invoke-virtual {v7}, Lcom/sec/android/app/twlauncher/CellLayout;->getLongAxisCells()I

    move-result v6

    move v4, v3

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/app/twlauncher/Workspace;->addInScreen(Landroid/view/View;IIIII)V

    .line 3341
    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Folder;->onOpen()V

    .line 3342
    .end local v1           #openFolder:Lcom/sec/android/app/twlauncher/Folder;
    .end local v7           #screen:Lcom/sec/android/app/twlauncher/CellLayout;
    :cond_0
    return-void

    .line 3327
    :cond_1
    instance-of v0, p1, Lcom/sec/android/app/twlauncher/LiveFolderInfo;

    if-eqz v0, :cond_0

    .line 3328
    invoke-static {p0, p1}, Lcom/sec/android/app/twlauncher/LiveFolder;->fromXml(Landroid/content/Context;Lcom/sec/android/app/twlauncher/FolderInfo;)Lcom/sec/android/app/twlauncher/LiveFolder;

    move-result-object v1

    .restart local v1       #openFolder:Lcom/sec/android/app/twlauncher/Folder;
    goto :goto_0
.end method

.method private pickShortcut(II)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 3596
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3598
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3599
    const v2, 0x7f0a0013

    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3600
    const-string v2, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 3602
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3603
    const v2, 0x7f02006c

    invoke-static {p0, v2}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3605
    const-string v2, "android.intent.extra.shortcut.ICON_RESOURCE"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 3607
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.PICK_ACTIVITY"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3608
    const-string v2, "android.intent.extra.INTENT"

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.CREATE_SHORTCUT"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3609
    const-string v2, "android.intent.extra.TITLE"

    invoke-virtual {p0, p2}, Lcom/sec/android/app/twlauncher/Launcher;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 3610
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 3612
    invoke-virtual {p0, v1, p1}, Lcom/sec/android/app/twlauncher/Launcher;->startActivityForResult(Landroid/content/Intent;I)V

    .line 3613
    return-void
.end method

.method private prepareWidgetPreview(II)V
    .locals 5
    .parameter "type"
    .parameter "screen"

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 4762
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/MenuManager;->lock()V

    .line 4765
    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWaitingForResult:Z

    .line 4768
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 4769
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->previewAppWidget()V

    .line 4777
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Workspace;->initAddWidget()V

    .line 4778
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWidgetPreview:Lcom/sec/android/app/twlauncher/WidgetPreview;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/WidgetPreview;->setVisibility(I)V

    .line 4780
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDragLayer:Lcom/sec/android/app/twlauncher/DragLayer;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/DragLayer;->invalidate()V

    .line 4782
    const/4 v0, -0x1

    .line 4783
    .local v0, blankscreen:I
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mBlankScreen:[I

    aget v1, v1, v2

    if-eq v1, v3, :cond_3

    .line 4784
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mBlankScreen:[I

    aget v0, v1, v2

    .line 4788
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/twlauncher/Workspace;->setAtuoScrollScreen(I)V

    .line 4789
    .end local v0           #blankscreen:I
    :goto_2
    return-void

    .line 4770
    :cond_1
    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    .line 4771
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->previewAddSamsungWidget()V

    goto :goto_0

    .line 4773
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->cancelAddWidget()V

    goto :goto_2

    .line 4785
    .restart local v0       #blankscreen:I
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mBlankScreen:[I

    aget v1, v1, v4

    if-eq v1, v3, :cond_0

    .line 4786
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mBlankScreen:[I

    aget v0, v1, v4

    goto :goto_1
.end method

.method private previewAppWidget()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1552
    iget v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWidgetId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

    if-nez v0, :cond_1

    .line 1553
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->cancelAddWidget()V

    .line 1581
    :goto_0
    return-void

    .line 1557
    :cond_1
    iget v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWidgetId:I

    .line 1558
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSpans:[I

    .line 1559
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

    .line 1562
    new-instance v3, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    invoke-direct {v3, v0}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;-><init>(I)V

    .line 1563
    aget v4, v1, v7

    iput v4, v3, Lcom/sec/android/app/twlauncher/ItemInfo;->spanX:I

    .line 1564
    const/4 v4, 0x1

    aget v1, v1, v4

    iput v1, v3, Lcom/sec/android/app/twlauncher/ItemInfo;->spanY:I

    .line 1567
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetHost:Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;

    invoke-virtual {v1, p0, v0, v2}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;->createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v1

    iput-object v1, v3, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    .line 1569
    iget-object v1, v3, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v1, v0, v2}, Landroid/appwidget/AppWidgetHostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    .line 1570
    iget-object v0, v3, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v0, v3}, Landroid/appwidget/AppWidgetHostView;->setTag(Ljava/lang/Object;)V

    .line 1572
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1573
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090004

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 1575
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWidgetPreview:Lcom/sec/android/app/twlauncher/WidgetPreview;

    iget-object v4, v3, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    iget v6, v3, Lcom/sec/android/app/twlauncher/ItemInfo;->spanX:I

    mul-int/2addr v0, v6

    iget v6, v3, Lcom/sec/android/app/twlauncher/ItemInfo;->spanY:I

    mul-int/2addr v1, v6

    invoke-direct {v5, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v4, v5}, Lcom/sec/android/app/twlauncher/WidgetPreview;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1578
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWidgetPreview:Lcom/sec/android/app/twlauncher/WidgetPreview;

    invoke-virtual {v0, v7}, Lcom/sec/android/app/twlauncher/WidgetPreview;->setVisibility(I)V

    .line 1580
    iput-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    goto :goto_0
.end method

.method private static readConfiguration(Landroid/content/Context;Lcom/sec/android/app/twlauncher/Launcher$LocaleConfiguration;)V
    .locals 4
    .parameter "context"
    .parameter "configuration"

    .prologue
    .line 621
    const/4 v0, 0x0

    .line 623
    .local v0, in:Ljava/io/DataInputStream;
    :try_start_0
    new-instance v1, Ljava/io/DataInputStream;

    const-string v2, "launcher.preferences"

    invoke-virtual {p0, v2}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 624
    .end local v0           #in:Ljava/io/DataInputStream;
    .local v1, in:Ljava/io/DataInputStream;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/sec/android/app/twlauncher/Launcher$LocaleConfiguration;->locale:Ljava/lang/String;

    .line 625
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    iput v2, p1, Lcom/sec/android/app/twlauncher/Launcher$LocaleConfiguration;->mcc:I

    .line 626
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    iput v2, p1, Lcom/sec/android/app/twlauncher/Launcher$LocaleConfiguration;->mnc:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    .line 632
    if-eqz v1, :cond_2

    .line 634
    :try_start_2
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v0, v1

    .line 640
    .end local v1           #in:Ljava/io/DataInputStream;
    .restart local v0       #in:Ljava/io/DataInputStream;
    :cond_0
    :goto_0
    return-void

    .line 635
    .end local v0           #in:Ljava/io/DataInputStream;
    .restart local v1       #in:Ljava/io/DataInputStream;
    :catch_0
    move-exception v2

    move-object v0, v1

    .line 637
    .end local v1           #in:Ljava/io/DataInputStream;
    .restart local v0       #in:Ljava/io/DataInputStream;
    goto :goto_0

    .line 627
    :catch_1
    move-exception v2

    .line 632
    :goto_1
    if-eqz v0, :cond_0

    .line 634
    :try_start_3
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 635
    :catch_2
    move-exception v2

    goto :goto_0

    .line 629
    :catch_3
    move-exception v2

    .line 632
    :goto_2
    if-eqz v0, :cond_0

    .line 634
    :try_start_4
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_0

    .line 635
    :catch_4
    move-exception v2

    goto :goto_0

    .line 632
    :catchall_0
    move-exception v2

    :goto_3
    if-eqz v0, :cond_1

    .line 634
    :try_start_5
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 637
    :cond_1
    :goto_4
    throw v2

    .line 635
    :catch_5
    move-exception v3

    goto :goto_4

    .line 632
    .end local v0           #in:Ljava/io/DataInputStream;
    .restart local v1       #in:Ljava/io/DataInputStream;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1           #in:Ljava/io/DataInputStream;
    .restart local v0       #in:Ljava/io/DataInputStream;
    goto :goto_3

    .line 629
    .end local v0           #in:Ljava/io/DataInputStream;
    .restart local v1       #in:Ljava/io/DataInputStream;
    :catch_6
    move-exception v2

    move-object v0, v1

    .end local v1           #in:Ljava/io/DataInputStream;
    .restart local v0       #in:Ljava/io/DataInputStream;
    goto :goto_2

    .line 627
    .end local v0           #in:Ljava/io/DataInputStream;
    .restart local v1       #in:Ljava/io/DataInputStream;
    :catch_7
    move-exception v2

    move-object v0, v1

    .end local v1           #in:Ljava/io/DataInputStream;
    .restart local v0       #in:Ljava/io/DataInputStream;
    goto :goto_1

    .end local v0           #in:Ljava/io/DataInputStream;
    .restart local v1       #in:Ljava/io/DataInputStream;
    :cond_2
    move-object v0, v1

    .end local v1           #in:Ljava/io/DataInputStream;
    .restart local v0       #in:Ljava/io/DataInputStream;
    goto :goto_0
.end method

.method private registerContentObservers()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 2544
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2546
    sget-object v1, Lcom/sec/android/app/twlauncher/LauncherProvider;->CONTENT_APPWIDGET_RESET_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWidgetObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2548
    const-string v1, "content://com.sec.badge/apps"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mBadgeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2550
    return-void
.end method

.method private registerIntentReceivers()V
    .locals 2

    .prologue
    .line 2521
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2522
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mCloseSystemDialogsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/twlauncher/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2524
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2525
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAirplaneModeChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/twlauncher/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2528
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 2529
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2530
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2531
    const-string v1, "android.intent.action.MULTI_CSC_CLEAR"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2532
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/twlauncher/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2534
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 2535
    const-string v1, "android.intent.action.WALLPAPER_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2536
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWallpaperChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/twlauncher/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2537
    return-void
.end method

.method private restoreState(Landroid/os/Bundle;)V
    .locals 8
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, -0x1

    const-string v7, "Launcher"

    .line 1166
    if-nez p1, :cond_1

    .line 1235
    :cond_0
    :goto_0
    return-void

    .line 1170
    :cond_1
    const-string v0, "launcher.delete_application"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/twlauncher/Launcher;->mUninstallPackageName:Ljava/lang/String;

    .line 1172
    const-string v0, "launcher.current_screen"

    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1173
    if-le v0, v4, :cond_2

    .line 1174
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/twlauncher/Workspace;->setCurrentScreen(I)V

    .line 1177
    :cond_2
    const-string v0, "launcher.menu_mode"

    invoke-virtual {p1, v0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1178
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 1179
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->setMode(I)V

    .line 1182
    :cond_3
    const-string v0, "launcher.menu_current_screen"

    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1183
    if-le v0, v4, :cond_4

    .line 1184
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->setCurrentScreen(I)V

    .line 1187
    :cond_4
    const-string v0, "launcher.add_screen"

    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1188
    if-le v0, v4, :cond_5

    .line 1189
    new-instance v1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    invoke-direct {v1}, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    .line 1190
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    .line 1191
    iput-boolean v5, v1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->valid:Z

    .line 1192
    iput v0, v1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    .line 1193
    const-string v0, "launcher.add_cellX"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellX:I

    .line 1194
    const-string v0, "launcher.add_cellY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellY:I

    .line 1195
    const-string v0, "launcher.add_spanX"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->spanX:I

    .line 1196
    const-string v0, "launcher.add_spanY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->spanY:I

    .line 1197
    const-string v0, "launcher.add_occupied_cells"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v0

    const-string v2, "launcher.add_countX"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "launcher.add_countY"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->findVacantCellsFromOccupied([ZII)V

    .line 1201
    iput-boolean v5, p0, Lcom/sec/android/app/twlauncher/Launcher;->mRestoring:Z

    .line 1204
    :cond_5
    const-string v0, "launcher.rename_folder"

    invoke-virtual {p1, v0, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1205
    if-eqz v0, :cond_6

    .line 1206
    const-string v0, "launcher.rename_folder_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 1207
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    sget-object v3, Lcom/sec/android/app/twlauncher/Launcher;->mFolders:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v3, v0, v1}, Lcom/sec/android/app/twlauncher/LauncherModel;->getFolderById(Landroid/content/Context;Ljava/util/HashMap;J)Lcom/sec/android/app/twlauncher/FolderInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mFolderInfo:Lcom/sec/android/app/twlauncher/FolderInfo;

    .line 1208
    iput-boolean v5, p0, Lcom/sec/android/app/twlauncher/Launcher;->mRestoring:Z

    .line 1211
    :cond_6
    const-string v0, "launcher.all_apps_folder"

    invoke-virtual {p1, v0, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1212
    if-eqz v0, :cond_7

    .line 1213
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->open()V

    .line 1216
    :cond_7
    const-string v0, "launcher.quick_navigation"

    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mStateQuickNavigation:I

    .line 1218
    iget v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mStateQuickNavigation:I

    if-ne v0, v5, :cond_9

    .line 1220
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMainMenuLoading:Z

    if-nez v0, :cond_8

    .line 1221
    const-string v0, "Launcher"

    const-string v0, "MainMenu loading is already finished. opening QuickViewMainMenu in restoreState()"

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1222
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->openQuickViewMainMenu()V

    .line 1223
    iput v4, p0, Lcom/sec/android/app/twlauncher/Launcher;->mStateQuickNavigation:I

    .line 1231
    :cond_8
    :goto_1
    const-string v0, "launcher.menu_screen_count"

    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuScreenCount:I

    .line 1233
    const-string v0, "launcher.delete_index"

    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDeleteIndex:I

    .line 1234
    iget v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDeleteIndex:I

    if-ltz v0, :cond_0

    iput-boolean v5, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsDeletePopup:Z

    goto/16 :goto_0

    .line 1225
    :cond_9
    iget v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mStateQuickNavigation:I

    if-nez v0, :cond_8

    .line 1226
    const-string v0, "Launcher"

    const-string v0, "opening QuickViewWorkspace in restoreState()"

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1227
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->openQuickViewWorkspace()V

    .line 1228
    iput v4, p0, Lcom/sec/android/app/twlauncher/Launcher;->mStateQuickNavigation:I

    goto :goto_1
.end method

.method static setScreen(I)V
    .locals 2
    .parameter "screen"

    .prologue
    .line 673
    sget-object v0, Lcom/sec/android/app/twlauncher/Launcher;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 674
    :try_start_0
    sput p0, Lcom/sec/android/app/twlauncher/Launcher;->sScreen:I

    .line 675
    monitor-exit v0

    .line 676
    return-void

    .line 675
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private setSomethingsInDefaultIMEI()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    const-string v7, "ro.build.PDA"

    const-string v6, "Not Available"

    .line 541
    const-string v3, "ro.build.PDA"

    const-string v3, "Not Available"

    invoke-static {v7, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 542
    .local v2, pdabootver:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "uartapcpmode"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 543
    .local v0, currentUart:I
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "usbapcpmode"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 545
    .local v1, currentUsb:I
    const/4 v3, 0x1

    sput-boolean v3, Lcom/sec/android/app/twlauncher/Launcher;->mIsDefaultIMEI:Z

    .line 546
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HW: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ril.hw_ver"

    const-string v5, "Not Available"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/sec/android/app/twlauncher/Launcher;->mHwVer:Ljava/lang/String;

    .line 547
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BOOT: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/sec/android/app/twlauncher/Launcher;->mBootVer:Ljava/lang/String;

    .line 548
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PDA: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ro.build.PDA"

    const-string v4, "Not Available"

    invoke-static {v7, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/sec/android/app/twlauncher/Launcher;->mPdaVer:Ljava/lang/String;

    .line 549
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Phone: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ril.sw_ver"

    const-string v5, "Not Available"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/sec/android/app/twlauncher/Launcher;->mPhoneVer:Ljava/lang/String;

    .line 550
    if-nez v0, :cond_0

    const-string v3, "UART: MODEM"

    :goto_0
    sput-object v3, Lcom/sec/android/app/twlauncher/Launcher;->mUART:Ljava/lang/String;

    .line 551
    if-nez v1, :cond_1

    const-string v3, "USB: MODEM"

    :goto_1
    sput-object v3, Lcom/sec/android/app/twlauncher/Launcher;->mUSB:Ljava/lang/String;

    .line 552
    return-void

    .line 550
    :cond_0
    const-string v3, "UART: PDA"

    goto :goto_0

    .line 551
    :cond_1
    const-string v3, "USB: PDA"

    goto :goto_1
.end method

.method private setWallpaperDimension()V
    .locals 9

    .prologue
    const-string v8, "Launcher"

    .line 701
    const-string v6, "Launcher"

    const-string v6, "setWallpaperDimension() called"

    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    const-string v6, "wallpaper"

    invoke-virtual {p0, v6}, Lcom/sec/android/app/twlauncher/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/WallpaperManager;

    .line 704
    .local v5, wpm:Landroid/app/WallpaperManager;
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 705
    .local v0, display:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v6

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v7

    if-ge v6, v7, :cond_1

    const/4 v6, 0x1

    move v3, v6

    .line 707
    .local v3, isPortrait:Z
    :goto_0
    if-eqz v3, :cond_2

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v6

    move v4, v6

    .line 708
    .local v4, width:I
    :goto_1
    if-eqz v3, :cond_3

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v6

    move v2, v6

    .line 711
    .local v2, height:I
    :goto_2
    const-string v6, "Launcher"

    const-string v6, "USE_NON_SCROLLABLE_IMAGE_WALLPAPER is true"

    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    invoke-virtual {v5}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v6

    if-nez v6, :cond_4

    .line 714
    const-string v6, "Launcher"

    const-string v6, "It\'s image wallpaper. suggestDesiredDimensions(-1,-1)"

    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    const/4 v6, -0x1

    const/4 v7, -0x1

    :try_start_0
    invoke-virtual {v5, v6, v7}, Landroid/app/WallpaperManager;->suggestDesiredDimensions(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 731
    :goto_3
    sget-object v6, Lcom/sec/android/app/twlauncher/Launcher;->mMenuWallpaperBitmap:Landroid/graphics/Bitmap;

    if-nez v6, :cond_0

    iget-boolean v6, p0, Lcom/sec/android/app/twlauncher/Launcher;->mForce16BitWindow:Z

    if-eqz v6, :cond_0

    .line 732
    mul-int/lit8 v6, v4, 0x2

    sget-object v7, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v2, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    sput-object v6, Lcom/sec/android/app/twlauncher/Launcher;->mMenuWallpaperBitmap:Landroid/graphics/Bitmap;

    .line 734
    :cond_0
    return-void

    .line 705
    .end local v2           #height:I
    .end local v3           #isPortrait:Z
    .end local v4           #width:I
    :cond_1
    const/4 v6, 0x0

    move v3, v6

    goto :goto_0

    .line 707
    .restart local v3       #isPortrait:Z
    :cond_2
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v6

    move v4, v6

    goto :goto_1

    .line 708
    .restart local v4       #width:I
    :cond_3
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v6

    move v2, v6

    goto :goto_2

    .line 717
    .restart local v2       #height:I
    :catch_0
    move-exception v1

    .line 718
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 722
    .end local v1           #e:Ljava/lang/Exception;
    :cond_4
    const-string v6, "Launcher"

    const-string v6, "It\'s live wallpaper. suggestDesiredDimensions() with SPAN 2"

    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    mul-int/lit8 v6, v4, 0x2

    invoke-virtual {v5, v6, v2}, Landroid/app/WallpaperManager;->suggestDesiredDimensions(II)V

    goto :goto_3
.end method

.method private setupViews()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 1249
    const v0, 0x7f060016

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/DragLayer;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDragLayer:Lcom/sec/android/app/twlauncher/DragLayer;

    .line 1250
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDragLayer:Lcom/sec/android/app/twlauncher/DragLayer;

    .line 1252
    const v0, 0x7f060017

    invoke-virtual {v1, v0}, Lcom/sec/android/app/twlauncher/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/Workspace;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    .line 1253
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    .line 1254
    sget-boolean v0, Lcom/sec/android/app/twlauncher/Launcher;->USE_MAINMENU_ICONMODE:Z

    if-eqz v0, :cond_0

    .line 1255
    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/DragLayer;->setWorkspace(Lcom/sec/android/app/twlauncher/Workspace;)V

    .line 1257
    :cond_0
    const v0, 0x7f060018

    invoke-virtual {v1, v0}, Lcom/sec/android/app/twlauncher/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/MenuDrawer;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuDrawer:Lcom/sec/android/app/twlauncher/MenuDrawer;

    .line 1258
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuDrawer:Lcom/sec/android/app/twlauncher/MenuDrawer;

    .line 1260
    const v0, 0x7f060019

    invoke-virtual {v1, v0}, Lcom/sec/android/app/twlauncher/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/MenuManager;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    .line 1261
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    .line 1262
    sget-boolean v0, Lcom/sec/android/app/twlauncher/Launcher;->USE_MAINMENU_ICONMODE:Z

    if-eqz v0, :cond_1

    .line 1263
    invoke-virtual {v1, v4}, Lcom/sec/android/app/twlauncher/DragLayer;->setMenuManager(Lcom/sec/android/app/twlauncher/MenuManager;)V

    .line 1265
    :cond_1
    const v0, 0x7f06001b

    invoke-virtual {v1, v0}, Lcom/sec/android/app/twlauncher/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/DeleteZone;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDeleteZone:Lcom/sec/android/app/twlauncher/DeleteZone;

    .line 1267
    const v0, 0x7f06001a

    invoke-virtual {v1, v0}, Lcom/sec/android/app/twlauncher/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/AppShortcutZone;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppShortcutZone:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    .line 1268
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppShortcutZone:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    .line 1269
    invoke-virtual {v0, p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->setLauncher(Lcom/sec/android/app/twlauncher/Launcher;)V

    .line 1270
    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->setDragger(Lcom/sec/android/app/twlauncher/DragController;)V

    .line 1272
    const v0, 0x7f060021

    invoke-virtual {v1, v0}, Lcom/sec/android/app/twlauncher/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/TopFourZone;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mTopFourZone:Lcom/sec/android/app/twlauncher/TopFourZone;

    .line 1273
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mTopFourZone:Lcom/sec/android/app/twlauncher/TopFourZone;

    if-eqz v0, :cond_2

    .line 1274
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mTopFourZone:Lcom/sec/android/app/twlauncher/TopFourZone;

    .line 1275
    invoke-virtual {v0, p0}, Lcom/sec/android/app/twlauncher/TopFourZone;->setLauncher(Lcom/sec/android/app/twlauncher/Launcher;)V

    .line 1279
    :cond_2
    invoke-virtual {v4, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->setDragger(Lcom/sec/android/app/twlauncher/DragController;)V

    .line 1280
    invoke-virtual {v4, p0}, Lcom/sec/android/app/twlauncher/MenuManager;->setLauncher(Lcom/sec/android/app/twlauncher/Launcher;)V

    .line 1281
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->loadMenuMode()I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->setMode(I)V

    .line 1283
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mPrefs:Landroid/content/SharedPreferences;

    const-string v5, "screencount"

    sget v6, Lcom/sec/android/app/twlauncher/Launcher;->DEFAULT_SCREEN_COUNT:I

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    move v6, v9

    .line 1285
    :goto_0
    if-ge v6, v5, :cond_4

    .line 1286
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v7, 0x7f030016

    invoke-virtual {v0, v7, v2, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/CellLayout;

    .line 1287
    invoke-virtual {p0, v6}, Lcom/sec/android/app/twlauncher/Launcher;->getCellLayoutId(I)I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/sec/android/app/twlauncher/CellLayout;->setId(I)V

    .line 1289
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/CellLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    .line 1290
    if-nez v7, :cond_3

    .line 1291
    new-instance v7, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v7, v8, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1293
    :cond_3
    invoke-virtual {v2, v0, v7}, Lcom/sec/android/app/twlauncher/Workspace;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1285
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 1312
    :cond_4
    const-string v0, "ro.csc.homescreen.defaultscreen"

    invoke-static {v0, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1315
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Launcher;->mPrefs:Landroid/content/SharedPreferences;

    const-string v7, "currentscreen"

    invoke-interface {v6, v7, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1316
    if-eq v0, v8, :cond_5

    if-lt v0, v5, :cond_6

    :cond_5
    move v0, v9

    .line 1328
    :cond_6
    sput v0, Lcom/sec/android/app/twlauncher/Launcher;->sScreen:I

    .line 1330
    invoke-virtual {v2, v0}, Lcom/sec/android/app/twlauncher/Workspace;->setCurrentScreen(I)V

    .line 1331
    invoke-virtual {v2, p0}, Lcom/sec/android/app/twlauncher/Workspace;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1332
    invoke-virtual {v2, v1}, Lcom/sec/android/app/twlauncher/Workspace;->setDragger(Lcom/sec/android/app/twlauncher/DragController;)V

    .line 1333
    invoke-virtual {v2, p0}, Lcom/sec/android/app/twlauncher/Workspace;->setLauncher(Lcom/sec/android/app/twlauncher/Launcher;)V

    .line 1335
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDeleteZone:Lcom/sec/android/app/twlauncher/DeleteZone;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/twlauncher/DeleteZone;->setLauncher(Lcom/sec/android/app/twlauncher/Launcher;)V

    .line 1336
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDeleteZone:Lcom/sec/android/app/twlauncher/DeleteZone;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/DeleteZone;->setDragController(Lcom/sec/android/app/twlauncher/DragLayer;)V

    .line 1337
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDeleteZone:Lcom/sec/android/app/twlauncher/DeleteZone;

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppShortcutZone:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    invoke-virtual {v0, v5}, Lcom/sec/android/app/twlauncher/DeleteZone;->setHandle(Landroid/view/View;)V

    .line 1339
    invoke-virtual {v1, v3}, Lcom/sec/android/app/twlauncher/DragLayer;->setIgnoredDropTarget(Landroid/view/View;)V

    .line 1340
    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/DragLayer;->setDragScoller(Lcom/sec/android/app/twlauncher/DragScroller;)V

    .line 1341
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDeleteZone:Lcom/sec/android/app/twlauncher/DeleteZone;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/twlauncher/DragLayer;->setDragListener(Lcom/sec/android/app/twlauncher/DragController$DragListener;)V

    .line 1342
    invoke-virtual {v1, v4}, Lcom/sec/android/app/twlauncher/DragLayer;->setDragMenuScoller(Lcom/sec/android/app/twlauncher/DragScroller;)V

    .line 1345
    const v0, 0x7f06001f

    invoke-virtual {v1, v0}, Lcom/sec/android/app/twlauncher/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    .line 1346
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->setLauncher(Lcom/sec/android/app/twlauncher/Launcher;)V

    .line 1348
    const v0, 0x7f060020

    invoke-virtual {v1, v0}, Lcom/sec/android/app/twlauncher/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewMainMenu:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    .line 1349
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewMainMenu:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->setLauncher(Lcom/sec/android/app/twlauncher/Launcher;)V

    .line 1351
    const v0, 0x7f06001d

    invoke-virtual {v1, v0}, Lcom/sec/android/app/twlauncher/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/WidgetPreview;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWidgetPreview:Lcom/sec/android/app/twlauncher/WidgetPreview;

    .line 1354
    const-string v0, "ro.product.model"

    const-string v1, "Not Available"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "GT-B7510"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1355
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->checkHwNaviKey()V

    .line 1356
    :cond_7
    return-void
.end method

.method private showAddDialog(Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;)V
    .locals 1
    .parameter "cellInfo"

    .prologue
    const/4 v0, 0x1

    .line 3590
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    .line 3591
    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWaitingForResult:Z

    .line 3592
    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->showDialog(I)V

    .line 3593
    return-void
.end method

.method private showNotifications()V
    .locals 1

    .prologue
    .line 2492
    const-string v0, "statusbar"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/StatusBarManager;

    .line 2493
    if-eqz p0, :cond_0

    .line 2494
    invoke-virtual {p0}, Landroid/app/StatusBarManager;->expand()V

    .line 2496
    :cond_0
    return-void
.end method

.method private startWallpaper()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 2499
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SET_WALLPAPER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2500
    const v1, 0x7f0a0003

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    .line 2502
    const-string v0, "wallpaper"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/WallpaperManager;

    .line 2504
    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v0

    .line 2505
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/WallpaperInfo;->getSettingsActivity()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2506
    new-instance v2, Landroid/content/pm/LabeledIntent;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0a0007

    invoke-direct {v2, v3, v4, v5}, Landroid/content/pm/LabeledIntent;-><init>(Ljava/lang/String;II)V

    .line 2508
    invoke-virtual {v0}, Landroid/app/WallpaperInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Landroid/app/WallpaperInfo;->getSettingsActivity()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/pm/LabeledIntent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2509
    const-string v0, "android.intent.extra.INITIAL_INTENTS"

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/content/Intent;

    aput-object v2, v3, v5

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2511
    :cond_0
    const/16 v0, 0xa

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/twlauncher/Launcher;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2512
    return-void
.end method

.method private unbindDesktopItems()V
    .locals 3

    .prologue
    .line 2754
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDesktopItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/ItemInfo;

    .line 2755
    .local v1, item:Lcom/sec/android/app/twlauncher/ItemInfo;
    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/ItemInfo;->unbind()V

    goto :goto_0

    .line 2757
    .end local v1           #item:Lcom/sec/android/app/twlauncher/ItemInfo;
    :cond_0
    return-void
.end method

.method private static writeConfiguration(Landroid/content/Context;Lcom/sec/android/app/twlauncher/Launcher$LocaleConfiguration;)V
    .locals 5
    .parameter "context"
    .parameter "configuration"

    .prologue
    const-string v3, "launcher.preferences"

    .line 643
    const/4 v1, 0x0

    .line 645
    .local v1, out:Ljava/io/DataOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/DataOutputStream;

    const-string v3, "launcher.preferences"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 646
    .end local v1           #out:Ljava/io/DataOutputStream;
    .local v2, out:Ljava/io/DataOutputStream;
    :try_start_1
    iget-object v3, p1, Lcom/sec/android/app/twlauncher/Launcher$LocaleConfiguration;->locale:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 647
    iget v3, p1, Lcom/sec/android/app/twlauncher/Launcher$LocaleConfiguration;->mcc:I

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 648
    iget v3, p1, Lcom/sec/android/app/twlauncher/Launcher$LocaleConfiguration;->mnc:I

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 649
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    .line 656
    if-eqz v2, :cond_2

    .line 658
    :try_start_2
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v1, v2

    .line 664
    .end local v2           #out:Ljava/io/DataOutputStream;
    .restart local v1       #out:Ljava/io/DataOutputStream;
    :cond_0
    :goto_0
    return-void

    .line 659
    .end local v1           #out:Ljava/io/DataOutputStream;
    .restart local v2       #out:Ljava/io/DataOutputStream;
    :catch_0
    move-exception v3

    move-object v1, v2

    .line 661
    .end local v2           #out:Ljava/io/DataOutputStream;
    .restart local v1       #out:Ljava/io/DataOutputStream;
    goto :goto_0

    .line 650
    :catch_1
    move-exception v3

    .line 656
    :goto_1
    if-eqz v1, :cond_0

    .line 658
    :try_start_3
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 659
    :catch_2
    move-exception v3

    goto :goto_0

    .line 652
    :catch_3
    move-exception v3

    move-object v0, v3

    .line 654
    .local v0, e:Ljava/io/IOException;
    :goto_2
    :try_start_4
    const-string v3, "launcher.preferences"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 656
    if-eqz v1, :cond_0

    .line 658
    :try_start_5
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_0

    .line 659
    :catch_4
    move-exception v3

    goto :goto_0

    .line 656
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v3

    :goto_3
    if-eqz v1, :cond_1

    .line 658
    :try_start_6
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 661
    :cond_1
    :goto_4
    throw v3

    .line 659
    :catch_5
    move-exception v4

    goto :goto_4

    .line 656
    .end local v1           #out:Ljava/io/DataOutputStream;
    .restart local v2       #out:Ljava/io/DataOutputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2           #out:Ljava/io/DataOutputStream;
    .restart local v1       #out:Ljava/io/DataOutputStream;
    goto :goto_3

    .line 652
    .end local v1           #out:Ljava/io/DataOutputStream;
    .restart local v2       #out:Ljava/io/DataOutputStream;
    :catch_6
    move-exception v3

    move-object v0, v3

    move-object v1, v2

    .end local v2           #out:Ljava/io/DataOutputStream;
    .restart local v1       #out:Ljava/io/DataOutputStream;
    goto :goto_2

    .line 650
    .end local v1           #out:Ljava/io/DataOutputStream;
    .restart local v2       #out:Ljava/io/DataOutputStream;
    :catch_7
    move-exception v3

    move-object v1, v2

    .end local v2           #out:Ljava/io/DataOutputStream;
    .restart local v1       #out:Ljava/io/DataOutputStream;
    goto :goto_1

    .end local v1           #out:Ljava/io/DataOutputStream;
    .restart local v2       #out:Ljava/io/DataOutputStream;
    :cond_2
    move-object v1, v2

    .end local v2           #out:Ljava/io/DataOutputStream;
    .restart local v1       #out:Ljava/io/DataOutputStream;
    goto :goto_0
.end method


# virtual methods
.method addAppWidget(Landroid/content/Intent;)V
    .locals 9
    .parameter

    .prologue
    const/4 v7, 0x5

    const/4 v6, -0x1

    const-string v8, "appWidgetId"

    .line 2207
    const-string v0, "appWidgetId"

    invoke-virtual {p1, v8, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 2209
    const-string v0, "custom_widget"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2211
    if-eqz v2, :cond_1

    .line 2212
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSamsungWidgetPackageManager:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->getWidgetItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 2213
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;

    .line 2215
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mClassName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2218
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetHost:Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;

    invoke-virtual {v2, v1}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    .line 2220
    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->addSamsungWidget(Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;)V

    .line 2239
    :goto_0
    return-void

    .line 2226
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    .line 2228
    iget-object v2, v0, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    if-eqz v2, :cond_2

    .line 2230
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.appwidget.action.APPWIDGET_CONFIGURE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2231
    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2232
    const-string v0, "appWidgetId"

    invoke-virtual {v2, v8, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2234
    invoke-virtual {p0, v2, v7}, Lcom/sec/android/app/twlauncher/Launcher;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 2237
    :cond_2
    invoke-virtual {p0, v7, v6, p1}, Lcom/sec/android/app/twlauncher/Launcher;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method addFolder()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 2373
    new-instance v1, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    invoke-direct {v1}, Lcom/sec/android/app/twlauncher/UserFolderInfo;-><init>()V

    .line 2374
    const v0, 0x7f0a0002

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/FolderInfo;->title:Ljava/lang/CharSequence;

    .line 2376
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    .line 2377
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v0

    iput v0, v8, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    .line 2378
    invoke-direct {p0, v8}, Lcom/sec/android/app/twlauncher/Launcher;->findSingleSlot(Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2394
    :goto_0
    return-void

    .line 2381
    :cond_0
    const-wide/16 v2, -0x64

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v4

    iget v5, v8, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellX:I

    iget v6, v8, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellY:I

    const/4 v7, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/sec/android/app/twlauncher/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;JIIIZ)V

    .line 2383
    sget-object v0, Lcom/sec/android/app/twlauncher/Launcher;->mFolders:Ljava/util/HashMap;

    iget-wide v2, v1, Lcom/sec/android/app/twlauncher/ItemInfo;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2386
    const v2, 0x7f03000a

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {v2, p0, v0, v1}, Lcom/sec/android/app/twlauncher/FolderIcon;->fromXml(ILcom/sec/android/app/twlauncher/Launcher;Landroid/view/ViewGroup;Lcom/sec/android/app/twlauncher/UserFolderInfo;)Lcom/sec/android/app/twlauncher/FolderIcon;

    move-result-object v1

    .line 2388
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    iget v2, v8, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellX:I

    iget v3, v8, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellY:I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->isWorkspaceLocked()Z

    move-result v6

    move v4, v9

    move v5, v9

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/app/twlauncher/Workspace;->addInCurrentScreen(Landroid/view/View;IIIIZ)V

    goto :goto_0
.end method

.method addLiveFolder(Landroid/content/Intent;)V
    .locals 2
    .parameter

    .prologue
    .line 2362
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0016

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2363
    const-string v1, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2365
    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2366
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->addFolder()V

    .line 2370
    :goto_0
    return-void

    .line 2368
    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/twlauncher/Launcher;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method addSamsungWidget(Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;I)V
    .locals 12
    .parameter
    .parameter

    .prologue
    const/4 v11, 0x1

    const/4 v7, 0x0

    .line 4676
    if-nez p1, :cond_1

    .line 4677
    const-string v0, "Launcher"

    const-string v1, "addSamsungWidget(..) : SamsungWidget is a null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4678
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->cancelAddWidget()V

    .line 4701
    :cond_0
    :goto_0
    return-void

    .line 4682
    :cond_1
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/Launcher;->mCellCoordinates:[I

    .line 4683
    iget v9, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->spanX:I

    .line 4684
    iget v10, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->spanY:I

    .line 4686
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDesktopItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4687
    const-wide/16 v2, -0x64

    aget v5, v8, v7

    aget v6, v8, v11

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    invoke-static/range {v0 .. v7}, Lcom/sec/android/app/twlauncher/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;JIIIZ)V

    .line 4690
    iget-object v1, p1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->widgetView:Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;

    .line 4691
    invoke-virtual {v1, p1}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;->setTag(Ljava/lang/Object;)V

    .line 4693
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    aget v3, v8, v7

    aget v4, v8, v11

    move v2, p2

    move v5, v9

    move v6, v10

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/app/twlauncher/Workspace;->addInScreen(Landroid/view/View;IIIII)V

    .line 4694
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v0

    if-ne v0, p2, :cond_0

    .line 4695
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v0, p2}, Lcom/sec/android/app/twlauncher/Workspace;->resumeScreen(I)V

    goto :goto_0
.end method

.method addSamsungWidget(Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;)V
    .locals 11
    .parameter

    .prologue
    const/4 v6, 0x3

    const v4, 0x7f0a0038

    const/4 v10, 0x1

    const/4 v7, 0x0

    const-string v5, "Launcher"

    .line 2242
    if-nez p1, :cond_1

    .line 2325
    :cond_0
    :goto_0
    return-void

    .line 2243
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSamsungWidgetPackageManager:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    invoke-virtual {v0, p0, p1}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->createWidget(Landroid/content/Context;Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;)Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    move-result-object v1

    .line 2245
    if-nez v1, :cond_2

    .line 2246
    const-string v0, "Launcher"

    const-string v0, "addSamsungWidget() : SamsungWidget is a null"

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2250
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    iget v0, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v2

    if-eq v0, v2, :cond_4

    .line 2251
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/twlauncher/Workspace;->findAllVacantCells([Z)Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    .line 2254
    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    .line 2256
    if-nez v2, :cond_6

    .line 2257
    const-string v0, "Launcher"

    const-string v0, "addSamsungWidget() : cellInfo is a null"

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2258
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->cancelAddWidget()V

    .line 2259
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_5

    .line 2260
    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mToast:Landroid/widget/Toast;

    .line 2264
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 2262
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mToast:Landroid/widget/Toast;

    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 2268
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    iget v3, v2, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    invoke-virtual {v0, v3}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/CellLayout;

    .line 2269
    if-nez v0, :cond_8

    .line 2270
    const-string v0, "Launcher"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addSamsungWidget() : CellLayout is a null("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v2, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2271
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->cancelAddWidget()V

    .line 2272
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_7

    .line 2273
    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mToast:Landroid/widget/Toast;

    .line 2277
    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 2275
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mToast:Landroid/widget/Toast;

    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 2281
    :cond_8
    iget v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mResOrientation:I

    invoke-virtual {p1, v3}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->getWidth(I)I

    move-result v3

    iget v4, p0, Lcom/sec/android/app/twlauncher/Launcher;->mResOrientation:I

    invoke-virtual {p1, v4}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->getHeight(I)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/app/twlauncher/CellLayout;->rectToCell2(II)[I

    move-result-object v8

    .line 2283
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/Launcher;->mCellCoordinates:[I

    .line 2285
    aget v0, v8, v7

    iput v0, v1, Lcom/sec/android/app/twlauncher/ItemInfo;->spanX:I

    .line 2286
    aget v0, v8, v10

    iput v0, v1, Lcom/sec/android/app/twlauncher/ItemInfo;->spanY:I

    .line 2288
    aget v0, v8, v7

    aget v3, v8, v10

    invoke-direct {p0, v2, v9, v0, v3}, Lcom/sec/android/app/twlauncher/Launcher;->findSlot(Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;[III)Z

    move-result v0

    if-nez v0, :cond_b

    .line 2289
    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSamsungWidgetInfo:Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    .line 2290
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSpans:[I

    aget v1, v8, v7

    aput v1, v0, v7

    .line 2291
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSpans:[I

    aget v1, v8, v10

    aput v1, v0, v10

    .line 2293
    iput v6, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddWidgetType:I

    .line 2294
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->isAllPageSlot(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2295
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->cancelAddWidget()V

    goto/16 :goto_0

    .line 2297
    :cond_9
    const/4 v0, -0x1

    .line 2298
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v1

    .line 2299
    sget v2, Lcom/sec/android/app/twlauncher/Launcher;->SCREEN_COUNT:I

    if-ge v1, v2, :cond_a

    .line 2300
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->createBlankPage()I

    move v0, v1

    .line 2303
    :cond_a
    invoke-direct {p0, v6, v0}, Lcom/sec/android/app/twlauncher/Launcher;->prepareWidgetPreview(II)V

    goto/16 :goto_0

    .line 2308
    :cond_b
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDesktopItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2309
    const-wide/16 v2, -0x64

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v4

    aget v5, v9, v7

    aget v6, v9, v10

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/sec/android/app/twlauncher/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;JIIIZ)V

    .line 2312
    iget-object v3, v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->widgetView:Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;

    .line 2313
    invoke-virtual {v3, v1}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;->setTag(Ljava/lang/Object;)V

    .line 2315
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    aget v4, v9, v7

    aget v5, v9, v10

    aget v6, v8, v7

    aget v7, v8, v10

    invoke-virtual/range {v2 .. v7}, Lcom/sec/android/app/twlauncher/Workspace;->addInCurrentScreen(Landroid/view/View;IIII)V

    .line 2322
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsActive:Z

    if-eqz v0, :cond_0

    .line 2323
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSamsungWidgetPackageManager:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    invoke-virtual {v0, p0, v1}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->resumeWidget(Landroid/app/ActivityGroup;Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;)V

    goto/16 :goto_0
.end method

.method public addShortcut(Lcom/sec/android/app/twlauncher/ShortcutInfo;)V
    .locals 1
    .parameter "itemInfo"

    .prologue
    .line 1633
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDesktopItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1637
    return-void
.end method

.method public bindAllApplications(Ljava/util/ArrayList;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/ApplicationInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    const-string v2, "Launcher"

    .line 5530
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/twlauncher/MenuManager;->setApps(Ljava/util/ArrayList;)V

    .line 5531
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMainMenuLoading:Z

    .line 5533
    const-string v0, "Launcher"

    const-string v0, "Main menu binding finished"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5535
    iget v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mStateQuickNavigation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 5536
    const-string v0, "Launcher"

    const-string v0, "opening QuickViewMainMenu in bindAllApplications()"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5537
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->openQuickViewMainMenu()V

    .line 5538
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mStateQuickNavigation:I

    .line 5543
    :cond_0
    return-void
.end method

.method public bindAppWidget(Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;)V
    .locals 11
    .parameter

    .prologue
    const/4 v7, 0x0

    const-string v10, "Launcher"

    .line 5310
    .line 5312
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 5313
    const-string v0, "Launcher"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bindAppWidget: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5315
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    .line 5317
    iget v1, p1, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->appWidgetId:I

    .line 5318
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v2, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v2

    .line 5320
    if-nez v2, :cond_1

    .line 5322
    const-string v2, "Launcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bindAppWidget(). appWidget id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not available"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5324
    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mConfigChange:Z

    if-eqz v1, :cond_0

    .line 5326
    iget-object v1, p1, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    if-eqz v1, :cond_0

    .line 5327
    iget-object v1, p1, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    iget v2, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->screen:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/Workspace;->removeInScreen(Landroid/view/View;I)V

    .line 5398
    :cond_0
    :goto_0
    return-void

    .line 5337
    :cond_1
    iget-boolean v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mConfigChange:Z

    if-eqz v3, :cond_4

    .line 5339
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 5341
    const-string v4, "Launcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bindAppWidget start no destroy hostView:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  screen:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->screen:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5343
    iget-object v4, p1, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    if-eqz v4, :cond_2

    .line 5346
    iget-object v4, p1, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    iget v5, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->screen:I

    invoke-virtual {v0, v4, v5}, Lcom/sec/android/app/twlauncher/Workspace;->removeInScreen(Landroid/view/View;I)V

    .line 5349
    :cond_2
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5350
    const-string v5, "appWidgetIds"

    const/4 v6, 0x1

    new-array v6, v6, [I

    aput v1, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 5352
    invoke-virtual {v3, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 5354
    const/4 v5, 0x0

    invoke-virtual {v3, v1, v5}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 5356
    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/Launcher;->sendBroadcast(Landroid/content/Intent;)V

    .line 5359
    iget-object v3, p1, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    if-nez v3, :cond_3

    .line 5360
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetHost:Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;

    invoke-virtual {v3, p0, v1, v2}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;->createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v3

    iput-object v3, p1, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    .line 5362
    iget-object v3, p1, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v3, v1, v2}, Landroid/appwidget/AppWidgetHostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    .line 5363
    iget-object v1, p1, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v1, p1}, Landroid/appwidget/AppWidgetHostView;->setTag(Ljava/lang/Object;)V

    .line 5365
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDesktopItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    .line 5366
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDesktopItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5370
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/sec/android/app/twlauncher/Launcher$10;

    invoke-direct {v2, p0, v0, p1}, Lcom/sec/android/app/twlauncher/Launcher$10;-><init>(Lcom/sec/android/app/twlauncher/Launcher;Lcom/sec/android/app/twlauncher/Workspace;Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;)V

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 5381
    :cond_4
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetHost:Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;

    invoke-virtual {v3, p0, v1, v2}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;->createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v3

    iput-object v3, p1, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    .line 5383
    iget-object v3, p1, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v3, v1, v2}, Landroid/appwidget/AppWidgetHostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    .line 5384
    iget-object v1, p1, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v1, p1}, Landroid/appwidget/AppWidgetHostView;->setTag(Ljava/lang/Object;)V

    .line 5386
    iget-object v1, p1, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    iget v2, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->screen:I

    iget v3, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->cellX:I

    iget v4, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->cellY:I

    iget v5, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->spanX:I

    iget v6, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->spanY:I

    invoke-virtual/range {v0 .. v7}, Lcom/sec/android/app/twlauncher/Workspace;->addInScreen(Landroid/view/View;IIIIIZ)V

    .line 5389
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Workspace;->requestLayout()V

    .line 5391
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDesktopItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5394
    const-string v0, "Launcher"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bound widget id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, v8

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public bindAppsAdded(Ljava/util/ArrayList;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/ApplicationInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5546
    .local p1, apps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/ApplicationInfo;>;"
    iget-boolean v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDestroyed:Z

    if-eqz v3, :cond_0

    .line 5561
    :goto_0
    return-void

    .line 5549
    :cond_0
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/sec/android/app/twlauncher/Launcher;->removeDialog(I)V

    .line 5551
    if-eqz p1, :cond_1

    .line 5552
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 5553
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_1

    .line 5554
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 5555
    .local v1, appInfo:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    invoke-static {p0, v1}, Lcom/sec/android/app/twlauncher/LauncherModel;->addAppToDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ApplicationInfo;)V

    .line 5553
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 5559
    .end local v0           #N:I
    .end local v1           #appInfo:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .end local v2           #i:I
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v3, p1}, Lcom/sec/android/app/twlauncher/MenuManager;->addApps(Ljava/util/ArrayList;)V

    .line 5560
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMainMenuLoading:Z

    goto :goto_0
.end method

.method public bindAppsRemoved(Ljava/util/ArrayList;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/ApplicationInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5564
    .local p1, apps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/ApplicationInfo;>;"
    iget-boolean v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDestroyed:Z

    if-eqz v3, :cond_0

    .line 5582
    :goto_0
    return-void

    .line 5567
    :cond_0
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/sec/android/app/twlauncher/Launcher;->removeDialog(I)V

    .line 5569
    if-eqz p1, :cond_1

    .line 5570
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 5571
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_1

    .line 5572
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 5573
    .local v1, appInfo:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    invoke-static {p0, v1}, Lcom/sec/android/app/twlauncher/LauncherModel;->removeAppToDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ApplicationInfo;)V

    .line 5571
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 5577
    .end local v0           #N:I
    .end local v1           #appInfo:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .end local v2           #i:I
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mTopFourZone:Lcom/sec/android/app/twlauncher/TopFourZone;

    if-eqz v3, :cond_2

    .line 5578
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mTopFourZone:Lcom/sec/android/app/twlauncher/TopFourZone;

    invoke-virtual {v3, p1}, Lcom/sec/android/app/twlauncher/TopFourZone;->removeItems(Ljava/util/ArrayList;)V

    .line 5580
    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v3, p1}, Lcom/sec/android/app/twlauncher/Workspace;->removeItems(Ljava/util/ArrayList;)V

    .line 5581
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v3, p1}, Lcom/sec/android/app/twlauncher/MenuManager;->removeApps(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public bindAppsUpdated(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/ApplicationInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5585
    .local p1, apps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/ApplicationInfo;>;"
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDestroyed:Z

    if-eqz v0, :cond_0

    .line 5594
    :goto_0
    return-void

    .line 5588
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->removeDialog(I)V

    .line 5589
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mTopFourZone:Lcom/sec/android/app/twlauncher/TopFourZone;

    if-eqz v0, :cond_1

    .line 5590
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mTopFourZone:Lcom/sec/android/app/twlauncher/TopFourZone;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/twlauncher/TopFourZone;->updateShortcuts(Ljava/util/ArrayList;)V

    .line 5592
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/twlauncher/Workspace;->updateShortcuts(Ljava/util/ArrayList;)V

    .line 5593
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/twlauncher/MenuManager;->updateApps(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public bindFolders(Ljava/util/HashMap;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/sec/android/app/twlauncher/FolderInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5300
    .local p1, folders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/sec/android/app/twlauncher/FolderInfo;>;"
    sget-object v0, Lcom/sec/android/app/twlauncher/Launcher;->mFolders:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 5301
    sget-object v0, Lcom/sec/android/app/twlauncher/Launcher;->mFolders:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 5302
    return-void
.end method

.method public bindItems(Ljava/util/ArrayList;II)V
    .locals 10
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/ItemInfo;",
            ">;II)V"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v6, 0x1

    .line 5256
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    move v9, p2

    .line 5258
    :goto_0
    if-ge v9, p3, :cond_2

    .line 5259
    invoke-virtual {p1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/sec/android/app/twlauncher/ItemInfo;

    move-object v5, v0

    .line 5260
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDesktopItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5261
    iget v2, v5, Lcom/sec/android/app/twlauncher/ItemInfo;->itemType:I

    packed-switch v2, :pswitch_data_0

    .line 5258
    :cond_0
    :goto_1
    add-int/lit8 v2, v9, 0x1

    move v9, v2

    goto :goto_0

    .line 5264
    :pswitch_0
    iget v2, v5, Lcom/sec/android/app/twlauncher/ItemInfo;->screen:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 5266
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getTopFourZone()Lcom/sec/android/app/twlauncher/TopFourZone;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5267
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getTopFourZone()Lcom/sec/android/app/twlauncher/TopFourZone;

    move-result-object v2

    check-cast v5, Lcom/sec/android/app/twlauncher/ShortcutInfo;

    invoke-virtual {v2, v5}, Lcom/sec/android/app/twlauncher/TopFourZone;->loadApplication(Lcom/sec/android/app/twlauncher/ShortcutInfo;)V

    goto :goto_1

    .line 5270
    :cond_1
    move-object v0, v5

    check-cast v0, Lcom/sec/android/app/twlauncher/ShortcutInfo;

    move-object v7, v0

    invoke-virtual {p0, v7}, Lcom/sec/android/app/twlauncher/Launcher;->createShortcut(Lcom/sec/android/app/twlauncher/ShortcutInfo;)Landroid/view/View;

    move-result-object v2

    .line 5271
    iget v3, v5, Lcom/sec/android/app/twlauncher/ItemInfo;->screen:I

    iget v4, v5, Lcom/sec/android/app/twlauncher/ItemInfo;->cellX:I

    iget v5, v5, Lcom/sec/android/app/twlauncher/ItemInfo;->cellY:I

    move v7, v6

    invoke-virtual/range {v1 .. v8}, Lcom/sec/android/app/twlauncher/Workspace;->addInScreen(Landroid/view/View;IIIIIZ)V

    goto :goto_1

    .line 5276
    :pswitch_1
    const v3, 0x7f03000a

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    move-object v0, v5

    check-cast v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    move-object v7, v0

    invoke-static {v3, p0, v2, v7}, Lcom/sec/android/app/twlauncher/FolderIcon;->fromXml(ILcom/sec/android/app/twlauncher/Launcher;Landroid/view/ViewGroup;Lcom/sec/android/app/twlauncher/UserFolderInfo;)Lcom/sec/android/app/twlauncher/FolderIcon;

    move-result-object v2

    .line 5279
    iget v3, v5, Lcom/sec/android/app/twlauncher/ItemInfo;->screen:I

    iget v4, v5, Lcom/sec/android/app/twlauncher/ItemInfo;->cellX:I

    iget v5, v5, Lcom/sec/android/app/twlauncher/ItemInfo;->cellY:I

    move v7, v6

    invoke-virtual/range {v1 .. v8}, Lcom/sec/android/app/twlauncher/Workspace;->addInScreen(Landroid/view/View;IIIIIZ)V

    goto :goto_1

    .line 5283
    :pswitch_2
    const v3, 0x7f030010

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    move-object v0, v5

    check-cast v0, Lcom/sec/android/app/twlauncher/LiveFolderInfo;

    move-object v7, v0

    invoke-static {v3, p0, v2, v7}, Lcom/sec/android/app/twlauncher/LiveFolderIcon;->fromXml(ILcom/sec/android/app/twlauncher/Launcher;Landroid/view/ViewGroup;Lcom/sec/android/app/twlauncher/LiveFolderInfo;)Lcom/sec/android/app/twlauncher/LiveFolderIcon;

    move-result-object v2

    .line 5287
    iget v3, v5, Lcom/sec/android/app/twlauncher/ItemInfo;->screen:I

    iget v4, v5, Lcom/sec/android/app/twlauncher/ItemInfo;->cellX:I

    iget v5, v5, Lcom/sec/android/app/twlauncher/ItemInfo;->cellY:I

    move v7, v6

    invoke-virtual/range {v1 .. v8}, Lcom/sec/android/app/twlauncher/Workspace;->addInScreen(Landroid/view/View;IIIIIZ)V

    goto :goto_1

    .line 5293
    :cond_2
    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Workspace;->requestLayout()V

    .line 5294
    return-void

    .line 5261
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public bindSamsungAppWidget(Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;)V
    .locals 12
    .parameter "info"

    .prologue
    const/4 v5, -0x2

    const/4 v7, 0x0

    .line 5410
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    .line 5412
    .local v0, workspace:Lcom/sec/android/app/twlauncher/Workspace;
    iget-object v9, p1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->intent:Landroid/content/Intent;

    .line 5413
    .local v9, intent:Landroid/content/Intent;
    invoke-virtual {v9}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    .line 5415
    .local v8, cn:Landroid/content/ComponentName;
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSamsungWidgetPackageManager:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->findWidget(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;

    move-result-object v10

    .line 5416
    .local v10, item:Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;
    if-eqz v10, :cond_2

    .line 5417
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSamsungWidgetPackageManager:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    invoke-virtual {v2, p0, v10, p1}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->createWidget(Landroid/content/Context;Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;)Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    .line 5419
    iget-object v1, p1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->widgetView:Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;

    .line 5420
    .local v1, view:Landroid/view/View;
    invoke-virtual {v1, p1}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;->setTag(Ljava/lang/Object;)V

    .line 5422
    iget v2, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->screen:I

    iget v3, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->cellX:I

    iget v4, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->cellY:I

    iget v5, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->spanX:I

    iget v6, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->spanY:I

    invoke-virtual/range {v0 .. v7}, Lcom/sec/android/app/twlauncher/Workspace;->addInScreen(Landroid/view/View;IIIIIZ)V

    .line 5425
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Workspace;->requestLayout()V

    .line 5427
    invoke-static {}, Lcom/sec/android/app/twlauncher/Launcher;->getScreen()I

    move-result v2

    iget v3, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->screen:I

    if-ne v2, v3, :cond_0

    .line 5429
    iget-boolean v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsActive:Z

    if-eqz v2, :cond_0

    .line 5430
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSamsungWidgetPackageManager:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    invoke-virtual {v2, p0, p1}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->resumeWidget(Landroid/app/ActivityGroup;Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;)V

    .line 5448
    .end local v1           #view:Landroid/view/View;
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDesktopItems:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5451
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->isOpened()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5452
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->invalidate()V

    .line 5455
    :cond_1
    iput-boolean v7, p0, Lcom/sec/android/app/twlauncher/Launcher;->mConfigChange:Z

    .line 5456
    return-void

    .line 5434
    :cond_2
    new-instance v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;

    invoke-direct {v1, p0}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;-><init>(Landroid/content/Context;)V

    .line 5435
    .local v1, view:Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;
    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v11, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 5437
    .local v11, lp:Landroid/widget/FrameLayout$LayoutParams;
    const/16 v2, 0x11

    iput v2, v11, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 5438
    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;->getErrorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2, v11}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 5439
    invoke-virtual {v1, p1}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;->setTag(Ljava/lang/Object;)V

    .line 5440
    iput-object v1, p1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->widgetView:Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;

    .line 5442
    iget v2, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->screen:I

    iget v3, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->cellX:I

    iget v4, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->cellY:I

    iget v5, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->spanX:I

    iget v6, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->spanY:I

    invoke-virtual/range {v0 .. v7}, Lcom/sec/android/app/twlauncher/Workspace;->addInScreen(Landroid/view/View;IIIIIZ)V

    .line 5445
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Workspace;->requestLayout()V

    goto :goto_0
.end method

.method cancelAddWidget()V
    .locals 5

    .prologue
    const/4 v3, -0x1

    const/4 v4, 0x0

    .line 4836
    iget v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddWidgetType:I

    .line 4837
    .local v0, type:I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 4838
    iget v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWidgetId:I

    if-eq v1, v3, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetHost:Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;

    iget v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWidgetId:I

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    .line 4839
    :cond_0
    iput v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWidgetId:I

    .line 4840
    iput-object v4, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

    .line 4841
    iput-object v4, p0, Lcom/sec/android/app/twlauncher/Launcher;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    .line 4849
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWidgetPreview:Lcom/sec/android/app/twlauncher/WidgetPreview;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/WidgetPreview;->removeAllViews()V

    .line 4850
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWidgetPreview:Lcom/sec/android/app/twlauncher/WidgetPreview;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/WidgetPreview;->setVisibility(I)V

    .line 4852
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Workspace;->stopAutoScrollRunnable()V

    .line 4853
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mToast:Landroid/widget/Toast;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->cancel()V

    .line 4854
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->clearAddWidget()V

    .line 4855
    return-void

    .line 4842
    :cond_3
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 4843
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSamsungWidgetInfo:Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    if-eqz v1, :cond_4

    .line 4844
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSamsungWidgetInfo:Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    iget v2, v2, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->widgetId:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/app/LocalActivityManager;->destroyActivity(Ljava/lang/String;Z)Landroid/view/Window;

    .line 4846
    :cond_4
    iput-object v4, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSamsungWidgetInfo:Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    goto :goto_0
.end method

.method cancelRemovePage()V
    .locals 1

    .prologue
    .line 4361
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsDeletePopup:Z

    .line 4362
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->cancelDeleteView()V

    .line 4364
    return-void
.end method

.method checkWidgetSpace(I)Z
    .locals 9
    .parameter "screen"

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 4792
    iget v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddWidgetType:I

    .line 4793
    .local v3, type:I
    if-eq v3, v8, :cond_0

    const/4 v5, 0x2

    if-eq v3, v5, :cond_0

    const/4 v5, 0x3

    if-ne v3, v5, :cond_2

    .line 4795
    :cond_0
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v5, p1}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/CellLayout;

    .line 4796
    .local v1, layout:Lcom/sec/android/app/twlauncher/CellLayout;
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSpans:[I

    .line 4798
    .local v2, spans:[I
    invoke-virtual {v1, v6, v6}, Lcom/sec/android/app/twlauncher/CellLayout;->findAllVacantCells([ZLandroid/view/View;)Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    move-result-object v0

    .line 4801
    .local v0, cellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Launcher;->mCellCoordinates:[I

    .line 4802
    .local v4, xy:[I
    if-eqz v0, :cond_1

    aget v5, v2, v7

    aget v6, v2, v8

    invoke-direct {p0, v0, v4, v5, v6}, Lcom/sec/android/app/twlauncher/Launcher;->findSlot(Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;[III)Z

    move-result v5

    if-nez v5, :cond_1

    move v5, v7

    .line 4810
    .end local v0           #cellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;
    .end local v1           #layout:Lcom/sec/android/app/twlauncher/CellLayout;
    .end local v2           #spans:[I
    .end local v4           #xy:[I
    :goto_0
    return v5

    .line 4806
    .restart local v0       #cellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;
    .restart local v1       #layout:Lcom/sec/android/app/twlauncher/CellLayout;
    .restart local v2       #spans:[I
    .restart local v4       #xy:[I
    :cond_1
    invoke-virtual {p0, v7}, Lcom/sec/android/app/twlauncher/Launcher;->showWidgetMessage(Z)V

    move v5, v8

    .line 4807
    goto :goto_0

    .end local v0           #cellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;
    .end local v1           #layout:Lcom/sec/android/app/twlauncher/CellLayout;
    .end local v2           #spans:[I
    .end local v4           #xy:[I
    :cond_2
    move v5, v7

    .line 4810
    goto :goto_0
.end method

.method clearAddWidget()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 4858
    iput v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddWidgetType:I

    .line 4860
    iput v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWidgetId:I

    .line 4861
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mBlankScreen:[I

    aput v2, v0, v1

    .line 4862
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mBlankScreen:[I

    const/4 v1, 0x1

    aput v2, v0, v1

    .line 4864
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->unlock()V

    .line 4865
    return-void
.end method

.method closeAllApplications()V
    .locals 1

    .prologue
    .line 3386
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->close()V

    .line 3387
    return-void
.end method

.method closeFolder(Lcom/sec/android/app/twlauncher/Folder;)V
    .locals 3
    .parameter "folder"

    .prologue
    .line 2720
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/Folder;->getInfo()Lcom/sec/android/app/twlauncher/FolderInfo;

    move-result-object v1

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sec/android/app/twlauncher/FolderInfo;->opened:Z

    .line 2721
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/Folder;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 2722
    .local v0, parent:Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 2723
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2725
    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/Folder;->onClose()V

    .line 2726
    return-void
.end method

.method closeQuickViewMainMenu()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 3481
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewMainMenu:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->isOpened()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3502
    :goto_0
    return-void

    .line 3483
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 3484
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewMainMenu:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->close()V

    .line 3486
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewMainMenu:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->getCurrentPage()I

    move-result v0

    .line 3487
    .local v0, newMenuPage:I
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v1

    if-lt v0, v1, :cond_4

    .line 3488
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/MenuManager;->getCurrentScreen()I

    move-result v0

    .line 3494
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/twlauncher/MenuManager;->setVisibility(I)V

    .line 3495
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppShortcutZone:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->setVisibility(I)V

    .line 3496
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mTopFourZone:Lcom/sec/android/app/twlauncher/TopFourZone;

    if-eqz v1, :cond_3

    .line 3497
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mTopFourZone:Lcom/sec/android/app/twlauncher/TopFourZone;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/twlauncher/TopFourZone;->setVisibility(I)V

    .line 3499
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/MenuManager;->getCurrentScreen()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 3500
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/MenuManager;->computeScroll()V

    .line 3501
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/MenuManager;->getCurrentScreen()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/MenuManager;->getWidth()I

    move-result v3

    mul-int/2addr v2, v3

    invoke-virtual {v1, v2, v4}, Lcom/sec/android/app/twlauncher/MenuManager;->scrollTo(II)V

    goto :goto_0

    .line 3489
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/MenuManager;->getCurrentScreen()I

    move-result v1

    if-eq v1, v0, :cond_2

    .line 3490
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->setCurrentScreen(I)V

    goto :goto_1
.end method

.method closeQuickViewWorkspace()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 3414
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->isOpened()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3450
    :goto_0
    return-void

    .line 3416
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x400

    invoke-virtual {v2, v3}, Landroid/view/Window;->clearFlags(I)V

    .line 3417
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->close()V

    .line 3419
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getCurrentPage()I

    move-result v1

    .line 3420
    .local v1, newWorkspace:I
    if-ltz v1, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v2

    if-lt v1, v2, :cond_4

    .line 3421
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v1

    .line 3436
    :cond_2
    :goto_1
    invoke-static {v1}, Lcom/sec/android/app/twlauncher/Launcher;->setScreen(I)V

    .line 3437
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Workspace;->updateWallpaperOffset()V

    .line 3439
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/twlauncher/Workspace;->setVisibility(I)V

    .line 3440
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppShortcutZone:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->setVisibility(I)V

    .line 3441
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mTopFourZone:Lcom/sec/android/app/twlauncher/TopFourZone;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mTopFourZone:Lcom/sec/android/app/twlauncher/TopFourZone;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/twlauncher/TopFourZone;->setVisibility(I)V

    .line 3442
    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 3444
    move v0, v1

    .line 3445
    .local v0, newScreen:I
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/sec/android/app/twlauncher/Launcher$6;

    invoke-direct {v3, p0, v0}, Lcom/sec/android/app/twlauncher/Launcher$6;-><init>(Lcom/sec/android/app/twlauncher/Launcher;I)V

    const-wide/16 v4, 0x15e

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 3422
    .end local v0           #newScreen:I
    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v2

    if-eq v2, v1, :cond_2

    .line 3423
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v2, v1}, Lcom/sec/android/app/twlauncher/Workspace;->setCurrentScreen(I)V

    goto :goto_1
.end method

.method closeSystemDialogs()V
    .locals 1

    .prologue
    .line 1695
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->closeAllPanels()V

    .line 1698
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->dismissDialog(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1705
    :goto_0
    const/4 v0, 0x2

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->dismissDialog(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1712
    :goto_1
    const/4 v0, 0x0

    :try_start_2
    sput-object v0, Lcom/sec/android/app/twlauncher/Launcher;->mUninstallPackageName:Ljava/lang/String;

    .line 1713
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->dismissDialog(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 1719
    :goto_2
    const/4 v0, 0x5

    :try_start_3
    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->dismissDialog(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 1725
    :goto_3
    const/4 v0, 0x6

    :try_start_4
    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->dismissDialog(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 1730
    :goto_4
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWaitingForResult:Z

    .line 1731
    return-void

    .line 1700
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1707
    :catch_1
    move-exception v0

    goto :goto_1

    .line 1720
    :catch_2
    move-exception v0

    goto :goto_3

    .line 1726
    :catch_3
    move-exception v0

    goto :goto_4

    .line 1714
    :catch_4
    move-exception v0

    goto :goto_2
.end method

.method completeAddApplication(Landroid/content/Context;Landroid/content/Intent;Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1425
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v0

    iput v0, p3, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    .line 1426
    invoke-direct {p0, p3}, Lcom/sec/android/app/twlauncher/Launcher;->findSingleSlot(Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1439
    :goto_0
    return-void

    .line 1428
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p1}, Lcom/sec/android/app/twlauncher/LauncherModel;->getShortcutInfo(Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/content/Context;)Lcom/sec/android/app/twlauncher/ShortcutInfo;

    move-result-object v0

    .line 1431
    if-eqz v0, :cond_1

    .line 1432
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    const/high16 v2, 0x1020

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/ShortcutInfo;->setActivity(Landroid/content/ComponentName;I)V

    .line 1434
    const-wide/16 v1, -0x1

    iput-wide v1, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->container:J

    .line 1435
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->isWorkspaceLocked()Z

    move-result v2

    invoke-virtual {v1, v0, p3, v2}, Lcom/sec/android/app/twlauncher/Workspace;->addApplicationShortcut(Lcom/sec/android/app/twlauncher/ShortcutInfo;Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;Z)V

    goto :goto_0

    .line 1437
    :cond_1
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t find ActivityInfo for selected application: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method completeAddWidget(I)V
    .locals 5
    .parameter "screen"

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 4814
    iget v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddWidgetType:I

    .line 4816
    .local v0, type:I
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mCellCoordinates:[I

    aget v1, v1, v2

    if-eq v1, v3, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mCellCoordinates:[I

    aget v1, v1, v4

    if-ne v1, v3, :cond_1

    .line 4817
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mCellCoordinates:[I

    aput v2, v1, v2

    .line 4818
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mCellCoordinates:[I

    aput v2, v1, v4

    .line 4821
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWidgetPreview:Lcom/sec/android/app/twlauncher/WidgetPreview;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/WidgetPreview;->removeAllViews()V

    .line 4823
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 4824
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->completePreviewAppWidget()V

    .line 4829
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWidgetPreview:Lcom/sec/android/app/twlauncher/WidgetPreview;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/WidgetPreview;->setVisibility(I)V

    .line 4831
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->clearAddWidget()V

    .line 4832
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDragLayer:Lcom/sec/android/app/twlauncher/DragLayer;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/DragLayer;->invalidate()V

    .line 4833
    return-void

    .line 4825
    :cond_3
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 4826
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSamsungWidgetInfo:Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    invoke-virtual {p0, v1, p1}, Lcom/sec/android/app/twlauncher/Launcher;->addSamsungWidget(Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;I)V

    goto :goto_0
.end method

.method createShortcut(ILandroid/view/ViewGroup;Lcom/sec/android/app/twlauncher/ShortcutInfo;)Landroid/view/View;
    .locals 4
    .parameter "layoutResId"
    .parameter "parent"
    .parameter "info"

    .prologue
    const/4 v3, 0x0

    .line 1406
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mInflater:Landroid/view/LayoutInflater;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1408
    .local v0, favorite:Landroid/widget/TextView;
    new-instance v1, Lcom/sec/android/app/twlauncher/FastBitmapDrawable;

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIconCache:Lcom/sec/android/app/twlauncher/IconCache;

    invoke-virtual {p3, v2}, Lcom/sec/android/app/twlauncher/ShortcutInfo;->getIcon(Lcom/sec/android/app/twlauncher/IconCache;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sec/android/app/twlauncher/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1411
    iget-object v1, p3, Lcom/sec/android/app/twlauncher/ShortcutInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1412
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 1413
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1415
    return-object v0
.end method

.method createShortcut(Lcom/sec/android/app/twlauncher/ShortcutInfo;)Landroid/view/View;
    .locals 3
    .parameter

    .prologue
    .line 1392
    const v1, 0x7f030001

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0, v1, v0, p1}, Lcom/sec/android/app/twlauncher/Launcher;->createShortcut(ILandroid/view/ViewGroup;Lcom/sec/android/app/twlauncher/ShortcutInfo;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 2559
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x16

    if-ne v0, v1, :cond_0

    .line 2560
    sput-boolean v2, Lcom/sec/android/app/twlauncher/Workspace;->isScrollAble:Z

    .line 2564
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_5

    .line 2587
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2685
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_1
    return v0

    .line 2590
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2591
    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->MenuManagerBackKeyDownInfo:Z

    .line 2592
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v0

    if-eqz v0, :cond_2

    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->MenuManagerBackKeyDownInfo:Z

    :cond_2
    move v0, v2

    .line 2610
    goto :goto_1

    .line 2612
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->getMode()I

    move-result v0

    if-ne v0, v4, :cond_3

    .line 2613
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->menusave()V

    .line 2614
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/twlauncher/MenuManager;->setMode(I)V

    move v0, v2

    .line 2615
    goto :goto_1

    .line 2617
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2618
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->closeDrawer()V

    :cond_4
    move v0, v2

    .line 2620
    goto :goto_1

    .line 2622
    :cond_5
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 2624
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->isAddWidgetState()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2626
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    move v0, v2

    .line 2634
    goto :goto_1

    .line 2630
    :pswitch_2
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->cancelAddWidget()V

    .line 2631
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDragLayer:Lcom/sec/android/app/twlauncher/DragLayer;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/DragLayer;->invalidate()V

    move v0, v2

    .line 2632
    goto :goto_1

    .line 2637
    :cond_6
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    packed-switch v0, :pswitch_data_2

    goto :goto_0

    :pswitch_3
    move v0, v2

    .line 2681
    goto :goto_1

    .line 2640
    :pswitch_4
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->getMode()I

    move-result v0

    if-ne v0, v4, :cond_7

    .line 2641
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDragLayer:Lcom/sec/android/app/twlauncher/DragLayer;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/DragLayer;->cancelDrag()V

    .line 2642
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->menusave()V

    .line 2643
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/twlauncher/MenuManager;->setMode(I)V

    move v0, v2

    .line 2644
    goto :goto_1

    .line 2647
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->isOpened()Z

    move-result v0

    if-nez v0, :cond_8

    iget v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mStateQuickNavigation:I

    if-nez v0, :cond_a

    .line 2648
    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v2

    goto/16 :goto_1

    .line 2649
    :cond_9
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->cancelRemovePage()V

    .line 2650
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->cancelDrag()V

    .line 2651
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->drawCloseAnimation()V

    .line 2652
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->invalidate()V

    move v0, v2

    .line 2654
    goto/16 :goto_1

    .line 2657
    :cond_a
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewMainMenu:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->isOpened()Z

    move-result v0

    if-nez v0, :cond_b

    iget v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mStateQuickNavigation:I

    if-ne v0, v2, :cond_c

    .line 2658
    :cond_b
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewMainMenu:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->cancelDrag()V

    .line 2659
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewMainMenu:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->drawCloseAnimation()V

    .line 2660
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewMainMenu:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->invalidate()V

    move v0, v2

    .line 2662
    goto/16 :goto_1

    .line 2666
    :cond_c
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->MenuManagerBackKeyDownInfo:Z

    if-eqz v0, :cond_e

    .line 2667
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->closeDrawer()V

    .line 2668
    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->MenuManagerBackKeyDownInfo:Z

    .line 2675
    :goto_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_d

    .line 2676
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/twlauncher/Workspace;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    :cond_d
    move v0, v2

    .line 2678
    goto/16 :goto_1

    .line 2671
    :cond_e
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->closeFolder()V

    goto :goto_2

    .line 2587
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 2626
    :pswitch_data_1
    .packed-switch 0x4
        :pswitch_2
    .end packed-switch

    .line 2637
    :pswitch_data_2
    .packed-switch 0x3
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public finishBindingAllWorkspaceItems()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 5491
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSavedState:Landroid/os/Bundle;

    if-eqz v0, :cond_4

    .line 5492
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Workspace;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5493
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 5496
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSavedState:Landroid/os/Bundle;

    const-string v1, "launcher.user_folder"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v1

    .line 5497
    if-eqz v1, :cond_3

    .line 5498
    array-length v2, v1

    move v3, v6

    :goto_0
    if-ge v3, v2, :cond_2

    aget-wide v4, v1, v3

    .line 5499
    sget-object v0, Lcom/sec/android/app/twlauncher/Launcher;->mFolders:Ljava/util/HashMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/FolderInfo;

    .line 5500
    if-eqz v0, :cond_1

    .line 5501
    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->openFolder(Lcom/sec/android/app/twlauncher/FolderInfo;)V

    .line 5498
    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 5504
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Workspace;->getOpenFolder()Lcom/sec/android/app/twlauncher/Folder;

    move-result-object v0

    .line 5505
    if-eqz v0, :cond_3

    .line 5506
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Folder;->requestFocus()Z

    .line 5510
    :cond_3
    iput-object v7, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSavedState:Landroid/os/Bundle;

    .line 5513
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSavedInstanceState:Landroid/os/Bundle;

    if-eqz v0, :cond_5

    .line 5514
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-super {p0, v0}, Landroid/app/ActivityGroup;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 5515
    iput-object v7, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSavedInstanceState:Landroid/os/Bundle;

    .line 5518
    :cond_5
    iput-boolean v6, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspaceLoading:Z

    .line 5520
    const-string v0, "Launcher"

    const-string v1, "Workspace binding finished"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5523
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mRunBadgeChanged:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5524
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mRunBadgeChanged:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5526
    return-void
.end method

.method public finishBindingAppWidgets()V
    .locals 2

    .prologue
    .line 5479
    const-string v0, "Launcher"

    const-string v1, "App widget binding finished"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5480
    return-void
.end method

.method public finishBindingSamsungWidgets()V
    .locals 2

    .prologue
    .line 5482
    const-string v0, "Launcher"

    const-string v1, "Samung widget binding finished"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5483
    return-void
.end method

.method public finishBindingShortcuts()V
    .locals 2

    .prologue
    .line 5459
    const-string v0, "Launcher"

    const-string v1, "Workspace shortcut binding finished"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5477
    return-void
.end method

.method getAdjacentBlankScreen(I)I
    .locals 12
    .parameter "screen"

    .prologue
    .line 4914
    iget v7, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddWidgetType:I

    .line 4915
    .local v7, type:I
    const/4 v4, -0x1

    .line 4916
    .local v4, ret:I
    const/4 v10, 0x1

    if-eq v7, v10, :cond_0

    const/4 v10, 0x2

    if-eq v7, v10, :cond_0

    const/4 v10, 0x3

    if-ne v7, v10, :cond_6

    .line 4917
    :cond_0
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/Launcher;->mCellCoordinates:[I

    .line 4918
    .local v9, xy:[I
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSpans:[I

    .line 4920
    .local v6, spans:[I
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    .line 4921
    .local v8, w:Lcom/sec/android/app/twlauncher/Workspace;
    invoke-virtual {v8}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v1

    .line 4923
    .local v1, count:I
    move v2, p1

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 4924
    iget-object v10, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v10, v2}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/twlauncher/CellLayout;

    .line 4925
    .local v3, layout:Lcom/sec/android/app/twlauncher/CellLayout;
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v3, v10, v11}, Lcom/sec/android/app/twlauncher/CellLayout;->findAllVacantCells([ZLandroid/view/View;)Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    move-result-object v0

    .line 4926
    .local v0, cellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;
    if-eqz v0, :cond_2

    const/4 v10, 0x0

    aget v10, v6, v10

    const/4 v11, 0x1

    aget v11, v6, v11

    invoke-virtual {v0, v9, v10, v11}, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->findCellForSpan([III)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 4927
    iget-object v10, p0, Lcom/sec/android/app/twlauncher/Launcher;->mBlankScreen:[I

    const/4 v11, 0x0

    aput v2, v10, v11

    .line 4928
    move v4, v2

    .line 4933
    .end local v0           #cellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;
    .end local v3           #layout:Lcom/sec/android/app/twlauncher/CellLayout;
    :cond_1
    if-nez p1, :cond_3

    move v5, v4

    .line 4946
    .end local v1           #count:I
    .end local v2           #i:I
    .end local v4           #ret:I
    .end local v6           #spans:[I
    .end local v8           #w:Lcom/sec/android/app/twlauncher/Workspace;
    .end local v9           #xy:[I
    .local v5, ret:I
    :goto_1
    return v5

    .line 4923
    .end local v5           #ret:I
    .restart local v0       #cellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;
    .restart local v1       #count:I
    .restart local v2       #i:I
    .restart local v3       #layout:Lcom/sec/android/app/twlauncher/CellLayout;
    .restart local v4       #ret:I
    .restart local v6       #spans:[I
    .restart local v8       #w:Lcom/sec/android/app/twlauncher/Workspace;
    .restart local v9       #xy:[I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4935
    .end local v0           #cellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;
    .end local v3           #layout:Lcom/sec/android/app/twlauncher/CellLayout;
    :cond_3
    const/4 v10, 0x1

    sub-int v2, p1, v10

    :goto_2
    if-ltz v2, :cond_6

    .line 4936
    iget-object v10, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v10, v2}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/twlauncher/CellLayout;

    .line 4937
    .restart local v3       #layout:Lcom/sec/android/app/twlauncher/CellLayout;
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v3, v10, v11}, Lcom/sec/android/app/twlauncher/CellLayout;->findAllVacantCells([ZLandroid/view/View;)Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    move-result-object v0

    .line 4938
    .restart local v0       #cellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;
    if-eqz v0, :cond_5

    const/4 v10, 0x0

    aget v10, v6, v10

    const/4 v11, 0x1

    aget v11, v6, v11

    invoke-virtual {v0, v9, v10, v11}, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->findCellForSpan([III)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 4939
    iget-object v10, p0, Lcom/sec/android/app/twlauncher/Launcher;->mBlankScreen:[I

    const/4 v11, 0x1

    aput v2, v10, v11

    .line 4940
    const/4 v10, -0x1

    if-ne v4, v10, :cond_4

    move v4, v2

    :cond_4
    move v5, v4

    .line 4941
    .end local v4           #ret:I
    .restart local v5       #ret:I
    goto :goto_1

    .line 4935
    .end local v5           #ret:I
    .restart local v4       #ret:I
    :cond_5
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .end local v0           #cellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;
    .end local v1           #count:I
    .end local v2           #i:I
    .end local v3           #layout:Lcom/sec/android/app/twlauncher/CellLayout;
    .end local v6           #spans:[I
    .end local v8           #w:Lcom/sec/android/app/twlauncher/Workspace;
    .end local v9           #xy:[I
    :cond_6
    move v5, v4

    .line 4946
    .end local v4           #ret:I
    .restart local v5       #ret:I
    goto :goto_1
.end method

.method getAppShortcutZone()Lcom/sec/android/app/twlauncher/AppShortcutZone;
    .locals 1

    .prologue
    .line 3521
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppShortcutZone:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    return-object v0
.end method

.method public getAppWidgetHost()Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;
    .locals 1

    .prologue
    .line 1615
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetHost:Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;

    return-object v0
.end method

.method getCellLayoutId(I)I
    .locals 1
    .parameter

    .prologue
    .line 4449
    packed-switch p1, :pswitch_data_0

    .line 4466
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 4451
    :pswitch_0
    const v0, 0x7f060002

    goto :goto_0

    .line 4453
    :pswitch_1
    const v0, 0x7f060003

    goto :goto_0

    .line 4455
    :pswitch_2
    const v0, 0x7f060004

    goto :goto_0

    .line 4457
    :pswitch_3
    const v0, 0x7f060005

    goto :goto_0

    .line 4459
    :pswitch_4
    const v0, 0x7f060006

    goto :goto_0

    .line 4461
    :pswitch_5
    const v0, 0x7f060007

    goto :goto_0

    .line 4463
    :pswitch_6
    const v0, 0x7f060008

    goto :goto_0

    .line 4449
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method getCurrentImageWallpaperDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 5112
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWallpaperImageDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getCurrentWorkspaceScreen()I
    .locals 1

    .prologue
    .line 5597
    invoke-static {}, Lcom/sec/android/app/twlauncher/Launcher;->getScreen()I

    move-result v0

    return v0
.end method

.method getDeleteZone()Lcom/sec/android/app/twlauncher/DeleteZone;
    .locals 1

    .prologue
    .line 3541
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDeleteZone:Lcom/sec/android/app/twlauncher/DeleteZone;

    return-object v0
.end method

.method getDragLayer()Lcom/sec/android/app/twlauncher/DragLayer;
    .locals 1

    .prologue
    .line 3537
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDragLayer:Lcom/sec/android/app/twlauncher/DragLayer;

    return-object v0
.end method

.method getMenuDrawer()Lcom/sec/android/app/twlauncher/MenuDrawer;
    .locals 1

    .prologue
    .line 3533
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuDrawer:Lcom/sec/android/app/twlauncher/MenuDrawer;

    return-object v0
.end method

.method getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;
    .locals 1

    .prologue
    .line 3529
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    return-object v0
.end method

.method getQuickViewMainMenu()Lcom/sec/android/app/twlauncher/QuickViewMainMenu;
    .locals 1

    .prologue
    .line 3505
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewMainMenu:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    return-object v0
.end method

.method getQuickViewWorkspace()Lcom/sec/android/app/twlauncher/QuickViewWorkspace;
    .locals 1

    .prologue
    .line 3453
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    return-object v0
.end method

.method getResOrientation()I
    .locals 1

    .prologue
    .line 4989
    iget v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mResOrientation:I

    return v0
.end method

.method getSamsungWidgetPackageManager()Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;
    .locals 1

    .prologue
    .line 3517
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSamsungWidgetPackageManager:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    return-object v0
.end method

.method public getStateQuickNavigation()I
    .locals 1

    .prologue
    .line 4999
    iget v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mStateQuickNavigation:I

    return v0
.end method

.method getTopFourZone()Lcom/sec/android/app/twlauncher/TopFourZone;
    .locals 1

    .prologue
    .line 3525
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mTopFourZone:Lcom/sec/android/app/twlauncher/TopFourZone;

    return-object v0
.end method

.method getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;
    .locals 1

    .prologue
    .line 3513
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    return-object v0
.end method

.method isAddWidgetState()Z
    .locals 1

    .prologue
    .line 3545
    iget v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddWidgetType:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAllAppsVisible()Z
    .locals 1

    .prologue
    .line 5601
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->isOpened()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isAllPageSlot(I)Z
    .locals 4
    .parameter "screen"

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 4898
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mBlankScreen:[I

    aput v2, v0, v3

    .line 4899
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mBlankScreen:[I

    const/4 v1, 0x1

    aput v2, v0, v1

    .line 4900
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/Launcher;->getAdjacentBlankScreen(I)I

    .line 4910
    return v3
.end method

.method public isDefaultIMEI()Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 522
    const-string v3, "phone"

    invoke-virtual {p0, v3}, Lcom/sec/android/app/twlauncher/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 524
    .local v2, telephonyManager:Landroid/telephony/TelephonyManager;
    const-string v1, "357858010034783"

    .line 525
    .local v1, defaultIMEI:Ljava/lang/String;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 527
    .local v0, currentIMEI:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 528
    const/4 v3, 0x1

    .line 535
    :goto_0
    return v3

    .line 530
    :cond_0
    if-nez v0, :cond_1

    .line 531
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    const-wide/16 v5, 0x3e8

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    move v3, v7

    .line 532
    goto :goto_0

    :cond_1
    move v3, v7

    .line 535
    goto :goto_0
.end method

.method isWindowOpaque()Z
    .locals 1

    .prologue
    .line 5026
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsOpaqueWindow:Z

    return v0
.end method

.method public isWorkspaceLocked()Z
    .locals 1

    .prologue
    .line 2186
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspaceLoading:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWaitingForResult:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method loadMenuMode()I
    .locals 3

    .prologue
    .line 4725
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "menu"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method lockAllApps()V
    .locals 1

    .prologue
    .line 3703
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->lock()V

    .line 3704
    return-void
.end method

.method menudiscard()V
    .locals 2

    .prologue
    .line 4338
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->discardMenuEdit()Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    .line 4339
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->setMode(I)V

    .line 4340
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppShortcutZone:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->updateApplications()V

    .line 4341
    return-void
.end method

.method menusave()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const v9, 0xffff

    .line 4271
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppShortcutZone:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    .line 4272
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    .line 4274
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->stopUpdateDB()V

    .line 4276
    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getChildCount()I

    move-result v3

    move v4, v10

    .line 4277
    :goto_0
    if-ge v4, v3, :cond_2

    .line 4278
    invoke-virtual {v1, v4}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4279
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 4280
    instance-of v5, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    if-eqz v5, :cond_1

    .line 4281
    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 4282
    iget v5, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->topNum:I

    if-ne v5, v4, :cond_0

    iget v5, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->pageNum:I

    if-ne v5, v9, :cond_0

    iget v5, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->cellNum:I

    if-eq v5, v9, :cond_1

    .line 4285
    :cond_0
    iput v4, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->topNum:I

    .line 4286
    iput v9, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->pageNum:I

    .line 4287
    iput v9, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->cellNum:I

    .line 4288
    iput-boolean v10, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->isUpdated:Z

    .line 4289
    iput v4, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editTopNum:I

    .line 4290
    iput v9, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editPageNum:I

    .line 4291
    iput v9, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editCellNum:I

    .line 4292
    invoke-static {p0, v0}, Lcom/sec/android/app/twlauncher/LauncherModel;->updateAppToDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ApplicationInfo;)I

    .line 4277
    :cond_1
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    .line 4297
    :cond_2
    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v3

    move v4, v10

    move v5, v10

    .line 4299
    :goto_1
    if-ge v4, v3, :cond_7

    .line 4300
    invoke-virtual {v2, v4}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/AppMenu;

    .line 4301
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildCount()I

    move-result v6

    move v7, v10

    .line 4302
    :goto_2
    if-ge v7, v6, :cond_6

    .line 4303
    invoke-virtual {v0, v7}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 4304
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 4305
    instance-of v8, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    if-eqz v8, :cond_4

    .line 4306
    check-cast v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 4307
    iget v8, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->topNum:I

    if-ne v8, v9, :cond_3

    iget v8, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->pageNum:I

    if-ne v8, v5, :cond_3

    iget v8, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->cellNum:I

    if-eq v8, v7, :cond_5

    .line 4311
    :cond_3
    iget v8, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->topNum:I

    if-eq v8, v9, :cond_9

    .line 4312
    const/4 v8, 0x1

    .line 4314
    :goto_3
    iput v9, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->topNum:I

    .line 4315
    iput v5, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->pageNum:I

    .line 4316
    iput v7, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->cellNum:I

    .line 4317
    iput-boolean v10, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->isUpdated:Z

    .line 4318
    iput v9, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editTopNum:I

    .line 4319
    iput v5, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editPageNum:I

    .line 4320
    iput v7, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editCellNum:I

    .line 4321
    if-eqz v8, :cond_4

    .line 4322
    invoke-static {p0, v1}, Lcom/sec/android/app/twlauncher/LauncherModel;->updateAppToDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ApplicationInfo;)I

    .line 4302
    :cond_4
    :goto_4
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    goto :goto_2

    .line 4325
    :cond_5
    iget v8, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->topNum:I

    iput v8, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editTopNum:I

    .line 4326
    iget v8, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->pageNum:I

    iput v8, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editPageNum:I

    .line 4327
    iget v8, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->cellNum:I

    iput v8, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editCellNum:I

    goto :goto_4

    .line 4331
    :cond_6
    if-lez v6, :cond_8

    .line 4332
    add-int/lit8 v0, v5, 0x1

    .line 4299
    :goto_5
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    move v5, v0

    goto :goto_1

    .line 4335
    :cond_7
    return-void

    :cond_8
    move v0, v5

    goto :goto_5

    :cond_9
    move v8, v10

    goto :goto_3
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 889
    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWaitingForResult:Z

    .line 900
    if-ne p2, v1, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    if-eqz v0, :cond_2

    .line 901
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    iget v0, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 902
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->findAllVacantCells([Z)Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    .line 903
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v1

    iput v1, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    .line 905
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 946
    :cond_1
    :goto_0
    :pswitch_0
    return-void

    .line 907
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    invoke-virtual {p0, p0, p3, v0}, Lcom/sec/android/app/twlauncher/Launcher;->completeAddApplication(Landroid/content/Context;Landroid/content/Intent;Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;)V

    goto :goto_0

    .line 910
    :pswitch_2
    const/4 v0, 0x6

    const/4 v1, 0x1

    invoke-virtual {p0, p3, v0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->processShortcut(Landroid/content/Intent;II)V

    goto :goto_0

    .line 913
    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    invoke-direct {p0, p3, v0}, Lcom/sec/android/app/twlauncher/Launcher;->completeAddShortcut(Landroid/content/Intent;Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;)V

    .line 914
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/LauncherModel;->isBusy()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 915
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-virtual {v0, p0, v2}, Lcom/sec/android/app/twlauncher/LauncherModel;->startLoader(Landroid/content/Context;Z)V

    goto :goto_0

    .line 918
    :pswitch_4
    invoke-virtual {p0, p3}, Lcom/sec/android/app/twlauncher/Launcher;->addLiveFolder(Landroid/content/Intent;)V

    goto :goto_0

    .line 921
    :pswitch_5
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    invoke-direct {p0, p3, v0}, Lcom/sec/android/app/twlauncher/Launcher;->completeAddLiveFolder(Landroid/content/Intent;Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;)V

    .line 922
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/LauncherModel;->isBusy()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 923
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-virtual {v0, p0, v2}, Lcom/sec/android/app/twlauncher/LauncherModel;->startLoader(Landroid/content/Context;Z)V

    goto :goto_0

    .line 926
    :pswitch_6
    invoke-virtual {p0, p3}, Lcom/sec/android/app/twlauncher/Launcher;->addAppWidget(Landroid/content/Intent;)V

    goto :goto_0

    .line 929
    :pswitch_7
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    invoke-direct {p0, p3, v0}, Lcom/sec/android/app/twlauncher/Launcher;->completeAddAppWidget(Landroid/content/Intent;Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;)V

    .line 930
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/LauncherModel;->isBusy()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 931
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-virtual {v0, p0, v2}, Lcom/sec/android/app/twlauncher/LauncherModel;->startLoader(Landroid/content/Context;Z)V

    goto :goto_0

    .line 937
    :cond_2
    const/16 v0, 0x9

    if-eq p1, v0, :cond_3

    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    :cond_3
    if-nez p2, :cond_1

    if-eqz p3, :cond_1

    .line 941
    const-string v0, "appWidgetId"

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 942
    if-eq v0, v1, :cond_1

    .line 943
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetHost:Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    goto :goto_0

    .line 905
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_7
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_6
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter "v"

    .prologue
    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 3119
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .line 3120
    .local v2, tag:Ljava/lang/Object;
    instance-of v3, v2, Lcom/sec/android/app/twlauncher/ShortcutInfo;

    if-eqz v3, :cond_1

    .line 3122
    check-cast v2, Lcom/sec/android/app/twlauncher/ShortcutInfo;

    .end local v2           #tag:Ljava/lang/Object;
    iget-object v0, v2, Lcom/sec/android/app/twlauncher/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 3123
    .local v0, intent:Landroid/content/Intent;
    const/4 v3, 0x2

    new-array v1, v3, [I

    .line 3124
    .local v1, pos:[I
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 3125
    new-instance v3, Landroid/graphics/Rect;

    aget v4, v1, v6

    aget v5, v1, v8

    aget v6, v1, v6

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int/2addr v6, v7

    aget v7, v1, v8

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 3127
    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/twlauncher/Launcher;->startActivitySafely(Landroid/content/Intent;Ljava/lang/Object;)V

    .line 3131
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #pos:[I
    :cond_0
    :goto_0
    return-void

    .line 3128
    .restart local v2       #tag:Ljava/lang/Object;
    :cond_1
    instance-of v3, v2, Lcom/sec/android/app/twlauncher/FolderInfo;

    if-eqz v3, :cond_0

    .line 3129
    check-cast v2, Lcom/sec/android/app/twlauncher/FolderInfo;

    .end local v2           #tag:Ljava/lang/Object;
    invoke-direct {p0, v2}, Lcom/sec/android/app/twlauncher/Launcher;->handleFolderClick(Lcom/sec/android/app/twlauncher/FolderInfo;)V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 739
    const-string v0, "Launcher"

    const-string v1, "onConfigurationChanged()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 743
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, -0x1

    const-string v9, "Launcher"

    .line 397
    iget-boolean v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsOpaqueWindow:Z

    .line 398
    .local v3, tmpB:Z
    iput-boolean v8, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsOpaqueWindow:Z

    .line 399
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->overridePendingTransitionForOpaqueWindowExit()V

    .line 400
    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsOpaqueWindow:Z

    .line 403
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onCreate(Landroid/os/Bundle;)V

    .line 405
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/LauncherApplication;

    .line 406
    .local v0, app:Lcom/sec/android/app/twlauncher/LauncherApplication;
    invoke-virtual {v0, p0}, Lcom/sec/android/app/twlauncher/LauncherApplication;->setLauncher(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/LauncherModel;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/twlauncher/Launcher;->mModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    .line 407
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/LauncherApplication;->getIconCache()Lcom/sec/android/app/twlauncher/IconCache;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIconCache:Lcom/sec/android/app/twlauncher/IconCache;

    .line 408
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/LauncherApplication;->getBadgeCache()Lcom/sec/android/app/twlauncher/BadgeCache;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/twlauncher/Launcher;->mBadgeCache:Lcom/sec/android/app/twlauncher/BadgeCache;

    .line 410
    invoke-static {p0}, Lcom/sec/android/app/twlauncher/LauncherConfig;->getProductModelFamily(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/twlauncher/Launcher;->mProductModelFamilyName:Ljava/lang/String;

    .line 411
    invoke-static {p0}, Lcom/sec/android/app/twlauncher/LauncherConfig;->getProductModel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/twlauncher/Launcher;->mProductModelName:Ljava/lang/String;

    .line 412
    const-string v4, "Launcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCreate():  product model family:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Launcher;->mProductModelFamilyName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " product model : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Launcher;->mProductModelName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    invoke-static {p0}, Lcom/sec/android/app/twlauncher/LauncherConfig;->getUse16BitWindow(Landroid/content/Context;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/sec/android/app/twlauncher/Launcher;->mForce16BitWindow:Z

    .line 415
    invoke-static {p0}, Lcom/sec/android/app/twlauncher/LauncherConfig;->getScreenCount(Landroid/content/Context;)I

    move-result v4

    sput v4, Lcom/sec/android/app/twlauncher/Launcher;->SCREEN_COUNT:I

    .line 416
    invoke-static {p0}, Lcom/sec/android/app/twlauncher/LauncherConfig;->getDefaultScreenCount(Landroid/content/Context;)I

    move-result v4

    sput v4, Lcom/sec/android/app/twlauncher/Launcher;->DEFAULT_SCREEN_COUNT:I

    .line 417
    invoke-static {p0}, Lcom/sec/android/app/twlauncher/LauncherConfig;->getUseMainMenuConcentrationEffect(Landroid/content/Context;)Z

    move-result v4

    sput-boolean v4, Lcom/sec/android/app/twlauncher/Launcher;->USE_MAINMENU_CONCENTRATION_EFFECT:Z

    .line 418
    invoke-static {p0}, Lcom/sec/android/app/twlauncher/LauncherConfig;->getUseMainMenuListMode(Landroid/content/Context;)Z

    move-result v4

    sput-boolean v4, Lcom/sec/android/app/twlauncher/Launcher;->USE_MAINMENU_LISTMODE:Z

    .line 419
    invoke-static {p0}, Lcom/sec/android/app/twlauncher/LauncherConfig;->getUseIconMenu(Landroid/content/Context;)Z

    move-result v4

    sput-boolean v4, Lcom/sec/android/app/twlauncher/Launcher;->USE_MAINMENU_ICONMODE:Z

    .line 420
    invoke-static {p0}, Lcom/sec/android/app/twlauncher/LauncherConfig;->getWorkspaceCellsX(Landroid/content/Context;)I

    move-result v4

    sput v4, Lcom/sec/android/app/twlauncher/Launcher;->NUMBER_CELLS_X:I

    .line 421
    invoke-static {p0}, Lcom/sec/android/app/twlauncher/LauncherConfig;->getWorkspaceCellsY(Landroid/content/Context;)I

    move-result v4

    sput v4, Lcom/sec/android/app/twlauncher/Launcher;->NUMBER_CELLS_Y:I

    .line 424
    const-string v4, "ro.csc.homescreen.screencount"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 425
    .local v1, cscDefaultScreensNr:I
    if-lez v1, :cond_0

    sget v4, Lcom/sec/android/app/twlauncher/Launcher;->SCREEN_COUNT:I

    if-gt v1, v4, :cond_0

    .line 426
    sput v1, Lcom/sec/android/app/twlauncher/Launcher;->DEFAULT_SCREEN_COUNT:I

    .line 430
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/twlauncher/Launcher;->mInflater:Landroid/view/LayoutInflater;

    .line 432
    const-string v4, "launcher"

    invoke-virtual {p0, v4, v7}, Lcom/sec/android/app/twlauncher/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/twlauncher/Launcher;->mPrefs:Landroid/content/SharedPreferences;

    .line 444
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 445
    new-instance v4, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;

    const/16 v5, 0x400

    invoke-direct {v4, p0, v5}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;-><init>(Landroid/content/Context;I)V

    iput-object v4, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetHost:Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;

    .line 446
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetHost:Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;->startListening()V

    .line 448
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    iput v4, p0, Lcom/sec/android/app/twlauncher/Launcher;->mResOrientation:I

    .line 454
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->checkForLocaleChange()V

    .line 456
    invoke-static {}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->getInstance()Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSamsungWidgetPackageManager:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    .line 457
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSamsungWidgetPackageManager:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    iget-boolean v5, p0, Lcom/sec/android/app/twlauncher/Launcher;->mLocaleChanged:Z

    invoke-virtual {v4, p0, v5}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->start(Landroid/content/Context;Z)V

    .line 461
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->setWallpaperDimension()V

    .line 462
    sget-boolean v4, Lcom/sec/android/app/twlauncher/Launcher;->USE_MAINMENU_ICONMODE:Z

    if-eqz v4, :cond_3

    .line 463
    const v4, 0x7f03000c

    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/Launcher;->setContentView(I)V

    .line 478
    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->setupViews()V

    .line 480
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->registerIntentReceivers()V

    .line 481
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->registerContentObservers()V

    .line 483
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSavedState:Landroid/os/Bundle;

    .line 484
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSavedState:Landroid/os/Bundle;

    invoke-direct {p0, v4}, Lcom/sec/android/app/twlauncher/Launcher;->restoreState(Landroid/os/Bundle;)V

    .line 490
    iget-boolean v4, p0, Lcom/sec/android/app/twlauncher/Launcher;->mRestoring:Z

    if-nez v4, :cond_1

    .line 491
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppShortcutZone:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->loadApplications()V

    .line 492
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Launcher;->mModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-virtual {v4, p0, v8}, Lcom/sec/android/app/twlauncher/LauncherModel;->startLoader(Landroid/content/Context;Z)V

    .line 497
    :cond_1
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v4, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    .line 498
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-static {v4, v7}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 500
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->saveScreenInfo()V

    .line 504
    new-instance v4, Lcom/sec/android/app/twlauncher/WallpaperCanvasView;

    invoke-direct {v4, p0}, Lcom/sec/android/app/twlauncher/WallpaperCanvasView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWallpaperCanvasView:Lcom/sec/android/app/twlauncher/WallpaperCanvasView;

    .line 505
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWallpaperCanvasView:Lcom/sec/android/app/twlauncher/WallpaperCanvasView;

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v4, v5}, Lcom/sec/android/app/twlauncher/WallpaperCanvasView;->setWorkspace(Lcom/sec/android/app/twlauncher/Workspace;)V

    .line 506
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWallpaperCanvasView:Lcom/sec/android/app/twlauncher/WallpaperCanvasView;

    const v5, 0x7f060009

    invoke-virtual {v4, v5}, Lcom/sec/android/app/twlauncher/WallpaperCanvasView;->setId(I)V

    .line 507
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 509
    .local v2, lp:Landroid/view/ViewGroup$LayoutParams;
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWallpaperCanvasView:Lcom/sec/android/app/twlauncher/WallpaperCanvasView;

    invoke-virtual {p0, v4, v2}, Lcom/sec/android/app/twlauncher/Launcher;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 510
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDragLayer:Lcom/sec/android/app/twlauncher/DragLayer;

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/DragLayer;->bringToFront()V

    .line 513
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->isDefaultIMEI()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 514
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->setSomethingsInDefaultIMEI()V

    .line 517
    :cond_2
    const-string v4, "Launcher"

    const-string v4, "onCreate() ended"

    invoke-static {v9, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    return-void

    .line 465
    .end local v2           #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_3
    const v4, 0x7f03000b

    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/Launcher;->setContentView(I)V

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 2
    .parameter "id"

    .prologue
    const/4 v1, 0x0

    .line 3551
    packed-switch p1, :pswitch_data_0

    .line 3564
    :pswitch_0
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 3553
    :pswitch_1
    new-instance v0, Lcom/sec/android/app/twlauncher/Launcher$CreateShortcut;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/twlauncher/Launcher$CreateShortcut;-><init>(Lcom/sec/android/app/twlauncher/Launcher;Lcom/sec/android/app/twlauncher/Launcher$1;)V

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher$CreateShortcut;->createDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 3555
    :pswitch_2
    new-instance v0, Lcom/sec/android/app/twlauncher/Launcher$RenameFolder;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/twlauncher/Launcher$RenameFolder;-><init>(Lcom/sec/android/app/twlauncher/Launcher;Lcom/sec/android/app/twlauncher/Launcher$1;)V

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher$RenameFolder;->createDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 3557
    :pswitch_3
    new-instance v0, Lcom/sec/android/app/twlauncher/Launcher$TextDialog;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/twlauncher/Launcher$TextDialog;-><init>(Lcom/sec/android/app/twlauncher/Launcher;Lcom/sec/android/app/twlauncher/Launcher$1;)V

    invoke-virtual {v0, p1}, Lcom/sec/android/app/twlauncher/Launcher$TextDialog;->createDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 3559
    :pswitch_4
    new-instance v0, Lcom/sec/android/app/twlauncher/Launcher$TextDialog;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/twlauncher/Launcher$TextDialog;-><init>(Lcom/sec/android/app/twlauncher/Launcher;Lcom/sec/android/app/twlauncher/Launcher$1;)V

    invoke-virtual {v0, p1}, Lcom/sec/android/app/twlauncher/Launcher$TextDialog;->createDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 3561
    :pswitch_5
    new-instance v0, Lcom/sec/android/app/twlauncher/Launcher$TextDialog;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/twlauncher/Launcher$TextDialog;-><init>(Lcom/sec/android/app/twlauncher/Launcher;Lcom/sec/android/app/twlauncher/Launcher$1;)V

    invoke-virtual {v0, p1}, Lcom/sec/android/app/twlauncher/Launcher$TextDialog;->createDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 3551
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 2025
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->isWorkspaceLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSavedInstanceState:Landroid/os/Bundle;

    if-nez v0, :cond_0

    move v0, v3

    .line 2070
    :goto_0
    return v0

    .line 2027
    :cond_0
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 2029
    const v0, 0x7f0a0024

    invoke-interface {p1, v6, v4, v3, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020076

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x41

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 2032
    const v0, 0x7f0a0025

    invoke-interface {p1, v3, v7, v3, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020084

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x57

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 2035
    const v0, 0x7f0a0026

    invoke-interface {p1, v3, v5, v3, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020081

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x73

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 2038
    const/4 v0, 0x5

    const v1, 0x7f0a0027

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020078

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x4e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 2041
    const/16 v0, 0xd

    const v1, 0x7f0a002a

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02007a

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x45

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 2045
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2046
    const/high16 v1, 0x1020

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2049
    const/4 v1, 0x7

    const v2, 0x7f0a0029

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f020082

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    const/16 v2, 0x50

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 2053
    const/16 v0, 0x8

    const v1, 0x7f0a002a

    invoke-interface {p1, v4, v0, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02007a

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2056
    sget-boolean v0, Lcom/sec/android/app/twlauncher/Launcher;->USE_MAINMENU_LISTMODE:Z

    if-eqz v0, :cond_1

    .line 2057
    const/16 v0, 0x9

    const v1, 0x7f0a002b

    invoke-interface {p1, v4, v0, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02007d

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2063
    :cond_1
    const/16 v0, 0xa

    const v1, 0x7f0a002c

    invoke-interface {p1, v7, v0, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02007c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2066
    const/16 v0, 0xb

    const v1, 0x7f0a002d

    invoke-interface {p1, v5, v0, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020080

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2068
    const/16 v0, 0xc

    const v1, 0x7f0a002e

    invoke-interface {p1, v5, v0, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020077

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/16 v0, 0xf

    const v1, 0x7f0a004f

    invoke-interface {p1, v4, v0, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020138

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/16 v0, 0xf

    const v1, 0x7f0a004f

    invoke-interface {p1, v7, v0, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020138

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/16 v0, 0xf

    const v1, 0x7f0a004f

    invoke-interface {p1, v5, v0, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020138

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/16 v0, 0x10

    const v1, 0x7f0a0051

    invoke-interface {p1, v4, v0, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020082

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/16 v0, 0x10

    const v1, 0x7f0a0051

    invoke-interface {p1, v7, v0, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020082

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/16 v0, 0x10

    const v1, 0x7f0a0051

    invoke-interface {p1, v5, v0, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020082

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move v0, v6

    .line 2070
    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const-string v2, "Launcher"

    .line 1948
    const-string v0, "Launcher"

    const-string v0, "onDestroy()"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1950
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDestroyed:Z

    .line 1952
    invoke-super {p0}, Landroid/app/ActivityGroup;->onDestroy()V

    .line 1954
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->cancelAddWidget()V

    .line 1957
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetHost:Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;->stopListening()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1962
    :goto_0
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/method/TextKeyListener;->release()V

    .line 1964
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/LauncherModel;->stopLoader()V

    .line 1966
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->unbindDesktopItems()V

    .line 1968
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->setAdapter(Lcom/sec/android/app/twlauncher/ApplicationsAdapter;)V

    .line 1970
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSamsungWidgetPackageManager:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->unbind()V

    .line 1973
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWidgetObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1974
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mBadgeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1976
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mCloseSystemDialogsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1977
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1978
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWallpaperChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1981
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAirplaneModeChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1983
    return-void

    .line 1958
    :catch_0
    move-exception v0

    .line 1959
    const-string v1, "Launcher"

    const-string v1, "problem while stopping AppWidgetHost during Launcher destruction"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1132
    invoke-super {p0, p1, p2}, Landroid/app/ActivityGroup;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 1133
    .local v1, handled:Z
    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->acceptFilter()Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x42

    if-eq p1, v2, :cond_0

    .line 1134
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2, v3, v4, p1, p2}, Landroid/text/method/TextKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 1136
    .local v0, gotKey:Z
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 1143
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->onSearchRequested()Z

    move-result v2

    .line 1147
    .end local v0           #gotKey:Z
    :goto_0
    return v2

    :cond_0
    move v2, v1

    goto :goto_0
.end method

.method public onLoadingStart()V
    .locals 1

    .prologue
    .line 5202
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    if-eqz v0, :cond_0

    .line 5203
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->stopUpdateDB()V

    .line 5213
    :cond_0
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3345
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->isWorkspaceLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    .line 3382
    :goto_0
    return v1

    .line 3354
    :cond_0
    instance-of v1, p1, Lcom/sec/android/app/twlauncher/CellLayout;

    if-nez v1, :cond_1

    .line 3355
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/view/View;

    .line 3358
    .restart local p1
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    .line 3361
    .local v0, cellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;
    if-nez v0, :cond_2

    move v1, v3

    .line 3363
    goto :goto_0

    .line 3368
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Workspace;->allowLongPress()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3369
    iget-object v1, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cell:Landroid/view/View;

    if-nez v1, :cond_4

    .line 3370
    iget-boolean v1, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->valid:Z

    if-eqz v1, :cond_3

    .line 3372
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/Workspace;->setAllowLongPress(Z)V

    .line 3373
    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->showAddDialog(Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;)V

    :cond_3
    :goto_1
    move v1, v3

    .line 3382
    goto :goto_0

    .line 3376
    :cond_4
    iget-object v1, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cell:Landroid/view/View;

    instance-of v1, v1, Lcom/sec/android/app/twlauncher/Folder;

    if-nez v1, :cond_3

    .line 3378
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/twlauncher/Workspace;->startDrag(Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;)V

    goto :goto_1
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 7
    .parameter

    .prologue
    const/high16 v3, 0x40

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v6, "className"

    const-string v2, "widgetInstall"

    .line 1735
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onNewIntent(Landroid/content/Intent;)V

    .line 1738
    iput-boolean v5, p0, Lcom/sec/android/app/twlauncher/Launcher;->isHomeKeyToDefaultPage:Z

    .line 1741
    const-string v0, "android.intent.action.MAIN"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1742
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->closeSystemDialogs()V

    .line 1747
    iput-boolean v5, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsNewIntent:Z

    .line 1750
    const-string v0, "widgetInstall"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1751
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1752
    const-string v1, "widgetInstall"

    const-string v1, "widgetInstall"

    invoke-virtual {p1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1753
    const-string v1, "packageName"

    const-string v2, "packageName"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1754
    const-string v1, "className"

    const-string v1, "className"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move v0, v5

    .line 1758
    :goto_0
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    and-int/2addr v1, v3

    if-eq v1, v3, :cond_6

    .line 1761
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    .line 1762
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    .line 1765
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->isOpened()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1766
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->closeQuickViewWorkspace()V

    .line 1769
    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewMainMenu:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->isOpened()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1770
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->closeQuickViewMainMenu()V

    .line 1771
    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/MenuManager;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1772
    invoke-direct {p0, v4}, Lcom/sec/android/app/twlauncher/Launcher;->closeDrawer(Z)V

    .line 1795
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v0

    .line 1796
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1797
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/inputmethod/InputMethodManager;

    .line 1799
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p0, v0, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1808
    :cond_2
    :goto_2
    return-void

    .line 1774
    :cond_3
    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/MenuManager;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1775
    invoke-direct {p0, v4}, Lcom/sec/android/app/twlauncher/Launcher;->closeDrawer(Z)V

    goto :goto_1

    .line 1777
    :cond_4
    if-nez v0, :cond_1

    .line 1778
    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Workspace;->moveToDefaultScreen()V

    .line 1785
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "screencount"

    sget v2, Lcom/sec/android/app/twlauncher/Launcher;->DEFAULT_SCREEN_COUNT:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1786
    const-string v1, "ro.csc.homescreen.defaultscreen"

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/sec/android/app/twlauncher/Launcher;->sScreen:I

    .line 1787
    sget v1, Lcom/sec/android/app/twlauncher/Launcher;->sScreen:I

    if-lt v1, v0, :cond_5

    .line 1788
    sput v4, Lcom/sec/android/app/twlauncher/Launcher;->sScreen:I

    .line 1791
    :cond_5
    iput-boolean v5, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsMoveDefaultScreen:Z

    goto :goto_1

    .line 1802
    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->closeQuickViewWorkspace()V

    .line 1803
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->closeQuickViewMainMenu()V

    .line 1804
    invoke-direct {p0, v4}, Lcom/sec/android/app/twlauncher/Launcher;->closeDrawer(Z)V

    .line 1805
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mStateQuickNavigation:I

    goto :goto_2

    :cond_7
    move v0, v4

    goto/16 :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 2126
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2171
    :pswitch_0
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 2128
    :pswitch_1
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->addItems()V

    move v0, v2

    .line 2129
    goto :goto_0

    .line 2131
    :pswitch_2
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->startWallpaper()V

    move v0, v2

    .line 2132
    goto :goto_0

    .line 2134
    :pswitch_3
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->onSearchRequested()Z

    move v0, v2

    .line 2135
    goto :goto_0

    .line 2137
    :pswitch_4
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->showNotifications()V

    move v0, v2

    .line 2138
    goto :goto_0

    :pswitch_5
    move v0, v2

    .line 2140
    goto :goto_0

    .line 2142
    :pswitch_6
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->setMode(I)V

    move v0, v2

    .line 2143
    goto :goto_0

    .line 2145
    :pswitch_7
    sget-boolean v0, Lcom/sec/android/app/twlauncher/Launcher;->USE_MAINMENU_LISTMODE:Z

    if-eqz v0, :cond_0

    .line 2146
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->setMode(I)V

    :goto_1
    move v0, v2

    .line 2150
    goto :goto_0

    .line 2148
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->setMode(I)V

    goto :goto_1

    .line 2152
    :pswitch_8
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->setMode(I)V

    move v0, v2

    .line 2153
    goto :goto_0

    .line 2155
    :pswitch_9
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->menusave()V

    .line 2156
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->setMode(I)V

    move v0, v2

    .line 2157
    goto :goto_0

    .line 2159
    :pswitch_a
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->showDiscardMenuEdit()V

    move v0, v2

    .line 2160
    goto :goto_0

    .line 2162
    :pswitch_b
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getQuickViewWorkspace()Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->drawOpenAnimation()V

    .line 2163
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->openQuickViewWorkspace()V

    move v0, v2

    .line 2164
    goto :goto_0

    .line 2166
    :pswitch_c
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getQuickViewMainMenu()Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->drawOpenAnimation()V

    .line 2167
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->openQuickViewMainMenu()V

    move v0, v2

    :pswitch_d
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->onShareAppRequested()V

    move v0, v2

    .line 2168
    goto :goto_0

    .line 2156
    :pswitch_e
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->onLauncherSettingsSelected()V

    move v0, v2

    .line 2407
    goto :goto_0

    .line 2126
    nop

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method protected onPause()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1076
    const-string v0, "Launcher"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    invoke-super {p0}, Landroid/app/ActivityGroup;->onPause()V

    .line 1081
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mExec:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mExec:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 1082
    :cond_0
    iput-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mExec:Ljava/util/concurrent/ExecutorService;

    .line 1085
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    sget v1, Lcom/sec/android/app/twlauncher/Launcher;->sScreen:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->pauseScreen(I)V

    .line 1087
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDragLayer:Lcom/sec/android/app/twlauncher/DragLayer;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/DragLayer;->cancelDrag()V

    .line 1089
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->saveScreenInfo()V

    .line 1091
    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsActive:Z

    .line 1093
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->cancelAddWidget()V

    .line 1095
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->isOpened()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mStateQuickNavigation:I

    if-nez v0, :cond_2

    .line 1096
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->cancelRemovePage()V

    .line 1097
    sput-object v3, Lcom/sec/android/app/twlauncher/Launcher;->mUninstallPackageName:Ljava/lang/String;

    .line 1098
    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWaitingForResult:Z

    .line 1102
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->cancelDrag()V

    .line 1103
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewMainMenu:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->cancelDrag()V

    .line 1105
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->setWallpaperVisiblity(Z)V

    .line 1106
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 3569
    packed-switch p1, :pswitch_data_0

    .line 3581
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 3573
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mFolderInfo:Lcom/sec/android/app/twlauncher/FolderInfo;

    if-eqz v0, :cond_0

    .line 3574
    const v0, 0x7f06002a

    invoke-virtual {p2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 3575
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mFolderInfo:Lcom/sec/android/app/twlauncher/FolderInfo;

    iget-object v1, v1, Lcom/sec/android/app/twlauncher/FolderInfo;->title:Ljava/lang/CharSequence;

    .line 3576
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 3577
    invoke-virtual {v0}, Landroid/widget/EditText;->selectAll()V

    goto :goto_0

    .line 3569
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 7
    .parameter "menu"

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2075
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 2077
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWidgetPreview:Lcom/sec/android/app/twlauncher/WidgetPreview;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/WidgetPreview;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    .line 2121
    :goto_0
    return v0

    .line 2079
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewMainMenu:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->isOpened()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v0, v2

    goto :goto_0

    .line 2081
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->getAnimateStatus()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v2

    goto :goto_0

    .line 2083
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2084
    invoke-interface {p1, v2, v2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 2085
    invoke-interface {p1, v3, v2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 2086
    const/4 v0, 0x5

    invoke-interface {p1, v0, v2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 2088
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->getMode()I

    move-result v0

    if-nez v0, :cond_5

    .line 2089
    invoke-interface {p1, v4, v3}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 2090
    invoke-interface {p1, v5, v2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 2091
    invoke-interface {p1, v6, v2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 2102
    :cond_4
    :goto_1
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMainMenuLoading:Z

    if-nez v0, :cond_7

    .line 2103
    const/16 v0, 0x8

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :goto_2
    move v0, v3

    .line 2121
    goto :goto_0

    .line 2092
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->getMode()I

    move-result v0

    if-ne v0, v3, :cond_6

    .line 2093
    invoke-interface {p1, v4, v2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 2094
    invoke-interface {p1, v5, v3}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 2095
    invoke-interface {p1, v6, v2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    goto :goto_1

    .line 2096
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->getMode()I

    move-result v0

    if-ne v0, v4, :cond_4

    .line 2097
    invoke-interface {p1, v4, v2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 2098
    invoke-interface {p1, v5, v2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 2099
    invoke-interface {p1, v6, v3}, Landroid/view/Menu;->setGroupVisible(IZ)V

    goto :goto_1

    .line 2105
    :cond_7
    const/16 v0, 0x8

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_2

    .line 2110
    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->findAllVacantCells([Z)Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuAddInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    .line 2111
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuAddInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuAddInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->valid:Z

    if-eqz v0, :cond_9

    move v0, v3

    :goto_3
    invoke-interface {p1, v3, v0}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 2113
    invoke-interface {p1, v2, v3}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 2114
    invoke-interface {p1, v3, v3}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 2115
    invoke-interface {p1, v4, v2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 2116
    invoke-interface {p1, v5, v2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 2117
    invoke-interface {p1, v6, v2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 2118
    const/4 v0, 0x5

    invoke-interface {p1, v0, v2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    goto :goto_2

    :cond_9
    move v0, v2

    .line 2111
    goto :goto_3
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 7
    .parameter

    .prologue
    const/4 v3, -0x1

    const-string v5, "android:views"

    const-string v4, "android:focusedViewId"

    .line 1843
    const-string v0, "android:viewHierarchyState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 1844
    const/4 v1, 0x0

    .line 1847
    if-eqz v0, :cond_1

    .line 1848
    const-string v1, "android:views"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v1

    .line 1849
    const-string v2, "android:views"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1850
    const-string v2, "android:focusedViewId"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 1851
    const-string v3, "android:focusedViewId"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    move v6, v2

    move-object v2, v1

    move v1, v6

    .line 1854
    :goto_0
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1856
    if-eqz v0, :cond_0

    .line 1857
    const-string v3, "android:views"

    invoke-virtual {v0, v5, v2}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 1858
    const-string v2, "android:focusedViewId"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1859
    const-string v1, "android:Panels"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1862
    :cond_0
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSavedInstanceState:Landroid/os/Bundle;

    .line 1863
    return-void

    :cond_1
    move-object v2, v1

    move v1, v3

    goto :goto_0
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v4, "Launcher"

    .line 950
    const-string v0, "Launcher"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onResume(). mIsNewIntent : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsNewIntent:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->overridePendingTransitionForOpaqueWindowEnter()V

    .line 953
    invoke-super {p0}, Landroid/app/ActivityGroup;->onResume()V

    .line 955
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.controlpanel.RUNNING_PROGRAM_REQ"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 956
    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->sendBroadcast(Landroid/content/Intent;)V

    .line 959
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->updateWindowTransparency()V

    .line 961
    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsActive:Z

    .line 963
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mExec:Ljava/util/concurrent/ExecutorService;

    .line 965
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mRestoring:Z

    if-eqz v0, :cond_4

    .line 967
    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspaceLoading:Z

    .line 968
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppShortcutZone:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->loadApplications()V

    .line 969
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-virtual {v0, p0, v3}, Lcom/sec/android/app/twlauncher/LauncherModel;->startLoader(Landroid/content/Context;Z)V

    .line 970
    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mRestoring:Z

    .line 979
    :cond_0
    :goto_0
    invoke-static {p0}, Lcom/sec/android/app/twlauncher/SamsungUtils;->broadcastStkIntent(Landroid/content/Context;)V

    .line 982
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDragLayer:Lcom/sec/android/app/twlauncher/DragLayer;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/DragLayer;->cancelDrag()V

    .line 984
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->resume()V

    .line 986
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsNewIntent:Z

    if-eqz v0, :cond_5

    .line 987
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsMoveDefaultScreen:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    sget v1, Lcom/sec/android/app/twlauncher/Launcher;->sScreen:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->resumeScreen(I)V

    .line 993
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewMainMenu:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 994
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewMainMenu:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->cancelDrag()V

    .line 996
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 997
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->cancelDrag()V

    .line 1000
    :cond_3
    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsNewIntent:Z

    .line 1001
    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsMoveDefaultScreen:Z

    .line 1003
    invoke-direct {p0, p0}, Lcom/sec/android/app/twlauncher/Launcher;->launchMtpApp(Landroid/content/Context;)V

    .line 1007
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsScreenOff:Z

    if-eqz v0, :cond_6

    .line 1008
    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsScreenOff:Z

    .line 1017
    :goto_2
    const-string v0, "Launcher"

    const-string v0, "onResume() ended"

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    return-void

    .line 972
    :cond_4
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsChangedBadge:Z

    if-eqz v0, :cond_0

    .line 973
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mRunBadgeChanged:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 974
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mRunBadgeChanged:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 989
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    sget v1, Lcom/sec/android/app/twlauncher/Launcher;->sScreen:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->resume(I)V

    .line 990
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    sget v1, Lcom/sec/android/app/twlauncher/Launcher;->sScreen:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->resumeScreen(I)V

    goto :goto_1

    .line 1010
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/app/twlauncher/Launcher$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/twlauncher/Launcher$3;-><init>(Lcom/sec/android/app/twlauncher/Launcher;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1111
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/LauncherModel;->stopLoader()V

    .line 1121
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v3, -0x1

    const-string v5, "launcher.quick_navigation"

    const-string v4, "launcher.delete_index"

    .line 1867
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1869
    const-string v0, "launcher.current_screen"

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1871
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->getCurrentScreen()I

    move-result v0

    .line 1873
    const-string v1, "launcher.delete_application"

    sget-object v2, Lcom/sec/android/app/twlauncher/Launcher;->mUninstallPackageName:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1875
    const-string v1, "launcher.menu_mode"

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/MenuManager;->getMode()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1877
    const-string v1, "launcher.menu_current_screen"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1879
    const-string v0, "launcher.menu_screen_count"

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1882
    iget v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mStateQuickNavigation:I

    if-le v0, v3, :cond_1

    .line 1883
    const-string v0, "launcher.quick_navigation"

    iget v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mStateQuickNavigation:I

    invoke-virtual {p1, v5, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1884
    iget v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDeleteIndex:I

    if-le v0, v3, :cond_0

    .line 1885
    const-string v0, "launcher.delete_index"

    iget v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDeleteIndex:I

    invoke-virtual {p1, v4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1902
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Workspace;->getOpenFolders()Ljava/util/ArrayList;

    move-result-object v1

    .line 1903
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 1904
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1905
    new-array v3, v2, [J

    move v4, v7

    .line 1906
    :goto_1
    if-ge v4, v2, :cond_5

    .line 1907
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/Folder;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Folder;->getInfo()Lcom/sec/android/app/twlauncher/FolderInfo;

    move-result-object v0

    .line 1908
    iget-wide v5, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->id:J

    aput-wide v5, v3, v4

    .line 1906
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    .line 1887
    :cond_0
    const-string v0, "launcher.delete_index"

    invoke-virtual {p1, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 1889
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1890
    const-string v0, "launcher.quick_navigation"

    invoke-virtual {p1, v5, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1891
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsDeletePopup:Z

    if-eqz v0, :cond_2

    .line 1892
    const-string v0, "launcher.delete_index"

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getDeleteIndex()I

    move-result v0

    invoke-virtual {p1, v4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 1894
    :cond_2
    const-string v0, "launcher.delete_index"

    invoke-virtual {p1, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 1896
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewMainMenu:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1897
    const-string v0, "launcher.quick_navigation"

    invoke-virtual {p1, v5, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 1899
    :cond_4
    const-string v0, "launcher.quick_navigation"

    invoke-virtual {p1, v5, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 1910
    :cond_5
    const-string v0, "launcher.user_folder"

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 1917
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1918
    const-string v0, "launcher.all_apps_folder"

    invoke-virtual {p1, v0, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1921
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->valid:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWaitingForResult:Z

    if-eqz v0, :cond_8

    .line 1922
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    .line 1923
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    iget v2, v1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    invoke-virtual {v0, v2}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/CellLayout;

    .line 1925
    if-nez v0, :cond_a

    .line 1926
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    iput-boolean v7, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->valid:Z

    .line 1940
    :cond_8
    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mFolderInfo:Lcom/sec/android/app/twlauncher/FolderInfo;

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWaitingForResult:Z

    if-eqz v0, :cond_9

    .line 1941
    const-string v0, "launcher.rename_folder"

    invoke-virtual {p1, v0, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1942
    const-string v0, "launcher.rename_folder_id"

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mFolderInfo:Lcom/sec/android/app/twlauncher/FolderInfo;

    iget-wide v1, v1, Lcom/sec/android/app/twlauncher/ItemInfo;->id:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1944
    :cond_9
    return-void

    .line 1928
    :cond_a
    const-string v2, "launcher.add_screen"

    iget v3, v1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1929
    const-string v2, "launcher.add_cellX"

    iget v3, v1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellX:I

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1930
    const-string v2, "launcher.add_cellY"

    iget v3, v1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellY:I

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1931
    const-string v2, "launcher.add_spanX"

    iget v3, v1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->spanX:I

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1932
    const-string v2, "launcher.add_spanY"

    iget v1, v1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->spanY:I

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1933
    const-string v1, "launcher.add_countX"

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/CellLayout;->getCountX()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1934
    const-string v1, "launcher.add_countY"

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/CellLayout;->getCountY()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1935
    const-string v1, "launcher.add_occupied_cells"

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/CellLayout;->getOccupiedCells()[Z

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    goto :goto_2
.end method

.method public onSearchRequested()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2181
    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0, v2, v1}, Lcom/sec/android/app/twlauncher/Launcher;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    .line 2182
    return v1
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 5005
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowFocusChanged("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5006
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onWindowFocusChanged(Z)V

    .line 5008
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->setWallpaperDimension()V

    .line 5010
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Workspace;->updateWallpaperOffset()V

    .line 5012
    if-eqz p1, :cond_1

    .line 5013
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->updateWindowTransparency()V

    .line 5014
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 5015
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v3, v0, v3, v1}, Lcom/sec/android/app/twlauncher/Launcher;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    .line 5021
    :cond_0
    :goto_0
    return-void

    .line 5018
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->cancelDrag()V

    .line 5019
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewMainMenu:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->cancelDrag()V

    goto :goto_0
.end method

.method openQuickViewMainMenu()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 3457
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->isOpened()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3478
    :goto_0
    return-void

    .line 3459
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-static {p0}, Lcom/sec/android/app/twlauncher/LauncherConfig;->landscapeScreen_isUseFullScreenQuickView(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3461
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 3464
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mTopFourZone:Lcom/sec/android/app/twlauncher/TopFourZone;

    if-eqz v0, :cond_2

    .line 3465
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mTopFourZone:Lcom/sec/android/app/twlauncher/TopFourZone;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/twlauncher/TopFourZone;->setVisibility(I)V

    .line 3467
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppShortcutZone:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->setVisibility(I)V

    .line 3468
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->setBackgroundNotification(I)V

    .line 3469
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->invalidate()V

    .line 3470
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_3

    iget v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuScreenCount:I

    if-lez v0, :cond_3

    .line 3471
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewMainMenu:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    iget v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuScreenCount:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->initScreen(I)V

    .line 3476
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->closeOptionsMenu()V

    .line 3477
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewMainMenu:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->open()V

    goto :goto_0

    .line 3473
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewMainMenu:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->initScreen(I)V

    goto :goto_1
.end method

.method openQuickViewWorkspace()V
    .locals 5

    .prologue
    const/16 v3, 0x8

    .line 3390
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    invoke-static {p0}, Lcom/sec/android/app/twlauncher/LauncherConfig;->landscapeScreen_isUseFullScreenQuickView(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3392
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 3395
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppShortcutZone:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->setVisibility(I)V

    .line 3396
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mTopFourZone:Lcom/sec/android/app/twlauncher/TopFourZone;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mTopFourZone:Lcom/sec/android/app/twlauncher/TopFourZone;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/twlauncher/TopFourZone;->setVisibility(I)V

    .line 3398
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/Workspace;->setVisibility(I)V

    .line 3399
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Workspace;->invalidate()V

    .line 3400
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->initScreen(I)V

    .line 3402
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->closeOptionsMenu()V

    .line 3403
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->open()V

    .line 3405
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v0

    .line 3406
    .local v0, curScreen:I
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/sec/android/app/twlauncher/Launcher$5;

    invoke-direct {v2, p0, v0}, Lcom/sec/android/app/twlauncher/Launcher$5;-><init>(Lcom/sec/android/app/twlauncher/Launcher;I)V

    const-wide/16 v3, 0x1c2

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3411
    return-void
.end method

.method overridePendingTransitionForOpaqueWindowEnter()V
    .locals 2

    .prologue
    .line 5079
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsOpaqueWindow:Z

    if-eqz v0, :cond_0

    .line 5080
    const v0, 0x7f040004

    const v1, 0x7f040005

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->overridePendingTransition(II)V

    .line 5082
    :cond_0
    return-void
.end method

.method overridePendingTransitionForOpaqueWindowExit()V
    .locals 2

    .prologue
    .line 5085
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsOpaqueWindow:Z

    if-eqz v0, :cond_0

    .line 5086
    const v0, 0x7f040002

    const v1, 0x7f040003

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->overridePendingTransition(II)V

    .line 5088
    :cond_0
    return-void
.end method

.method previewAddSamsungWidget()V
    .locals 7

    .prologue
    .line 2328
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSamsungWidgetInfo:Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    if-nez v0, :cond_0

    .line 2329
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->cancelAddWidget()V

    .line 2341
    :goto_0
    return-void

    .line 2333
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSamsungWidgetInfo:Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    .line 2335
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090003

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 2336
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090004

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 2338
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWidgetPreview:Lcom/sec/android/app/twlauncher/WidgetPreview;

    iget-object v4, v0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->widgetView:Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    iget v6, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->spanX:I

    mul-int/2addr v1, v6

    iget v0, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->spanY:I

    mul-int/2addr v0, v2

    invoke-direct {v5, v1, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/twlauncher/WidgetPreview;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method processShortcut(Landroid/content/Intent;II)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2345
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2346
    const-string v1, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2348
    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2349
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2350
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2352
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.PICK_ACTIVITY"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2353
    const-string v2, "android.intent.extra.INTENT"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2354
    invoke-virtual {p0, v1, p2}, Lcom/sec/android/app/twlauncher/Launcher;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2358
    :goto_0
    return-void

    .line 2356
    :cond_0
    invoke-virtual {p0, p1, p3}, Lcom/sec/android/app/twlauncher/Launcher;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public removeAppWidget(Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;)V
    .locals 1
    .parameter "itemInfo"

    .prologue
    .line 1607
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDesktopItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1608
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    .line 1612
    return-void
.end method

.method removeFolder(Lcom/sec/android/app/twlauncher/FolderInfo;)V
    .locals 3
    .parameter "folder"

    .prologue
    .line 2397
    sget-object v0, Lcom/sec/android/app/twlauncher/Launcher;->mFolders:Ljava/util/HashMap;

    iget-wide v1, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2401
    return-void
.end method

.method removePage()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 4354
    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsDeletePopup:Z

    .line 4355
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->removeScreen()V

    .line 4356
    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWaitingForResult:Z

    .line 4358
    return-void
.end method

.method public removeSamsungAppWidget(Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;)V
    .locals 1
    .parameter "itemInfo"

    .prologue
    .line 1626
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDesktopItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1630
    return-void
.end method

.method public removeShortcut(Lcom/sec/android/app/twlauncher/ShortcutInfo;)V
    .locals 1
    .parameter "itemInfo"

    .prologue
    .line 1619
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDesktopItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1623
    return-void
.end method

.method saveMenuMode(I)V
    .locals 2
    .parameter

    .prologue
    .line 4719
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 4720
    const-string v1, "menu"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 4721
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 4722
    return-void
.end method

.method public saveScreenInfo()V
    .locals 3

    .prologue
    .line 4470
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 4471
    const-string v1, "screencount"

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 4472
    const-string v1, "currentscreen"

    sget v2, Lcom/sec/android/app/twlauncher/Launcher;->sScreen:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 4473
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 4474
    return-void
.end method

.method public setBackgroundNotification(I)V
    .locals 1
    .parameter

    .prologue
    .line 4994
    const v0, 0x1020002

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 4995
    return-void
.end method

.method setWallpaperVisiblity(Z)V
    .locals 2
    .parameter "visiblity"

    .prologue
    .line 4976
    const-string v1, "wallpaper"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/WallpaperManager;

    .line 4977
    .local v0, wpm:Landroid/app/WallpaperManager;
    invoke-static {v0, p1}, Lcom/sec/android/app/twlauncher/SamsungUtils;->setWallpaperVisibility(Landroid/app/WallpaperManager;Z)V

    .line 4978
    return-void
.end method

.method setWindowOpaque()V
    .locals 2

    .prologue
    .line 5070
    const-string v0, "Launcher"

    const-string v1, "setWindowOpaque()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5071
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 5072
    const/high16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 5073
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setFormat(I)V

    .line 5074
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 5075
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsOpaqueWindow:Z

    .line 5076
    return-void
.end method

.method setWindowTranslucent()V
    .locals 2

    .prologue
    .line 5062
    const-string v0, "Launcher"

    const-string v1, "setWindowTranslucent()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5063
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 5064
    const/high16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 5065
    const/4 v1, -0x3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setFormat(I)V

    .line 5066
    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 5067
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsOpaqueWindow:Z

    .line 5068
    return-void
.end method

.method showDeleteApplication(Ljava/lang/String;)V
    .locals 1
    .parameter "packageName"

    .prologue
    .line 4348
    sput-object p1, Lcom/sec/android/app/twlauncher/Launcher;->mUninstallPackageName:Ljava/lang/String;

    .line 4349
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->showDialog(I)V

    .line 4350
    return-void
.end method

.method showDeleteWorkScreen()V
    .locals 1

    .prologue
    .line 4367
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsDeletePopup:Z

    .line 4368
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->showDialog(I)V

    .line 4369
    return-void
.end method

.method showDiscardMenuEdit()V
    .locals 1

    .prologue
    .line 4344
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->showDialog(I)V

    .line 4345
    return-void
.end method

.method public showPopUp(Landroid/content/Intent;)V
    .locals 3
    .parameter

    .prologue
    .line 3238
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a0043

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a0044

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a0045

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/twlauncher/Launcher$LaunchThreadListener;

    invoke-direct {v2, p0, p1}, Lcom/sec/android/app/twlauncher/Launcher$LaunchThreadListener;-><init>(Lcom/sec/android/app/twlauncher/Launcher;Landroid/content/Intent;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a0046

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 3245
    return-void
.end method

.method showRenameDialog(Lcom/sec/android/app/twlauncher/FolderInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 3584
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mFolderInfo:Lcom/sec/android/app/twlauncher/FolderInfo;

    .line 3585
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWaitingForResult:Z

    .line 3586
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->showDialog(I)V

    .line 3587
    return-void
.end method

.method showWidgetMessage(Z)V
    .locals 4
    .parameter

    .prologue
    const v3, 0x7f0a001e

    const v2, 0x7f0a000e

    const/4 v1, 0x0

    .line 4729
    if-eqz p1, :cond_1

    .line 4730
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 4731
    invoke-virtual {p0, v3}, Lcom/sec/android/app/twlauncher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mToast:Landroid/widget/Toast;

    .line 4742
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 4743
    return-void

    .line 4733
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mToast:Landroid/widget/Toast;

    invoke-virtual {p0, v3}, Lcom/sec/android/app/twlauncher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 4736
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_2

    .line 4737
    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mToast:Landroid/widget/Toast;

    goto :goto_0

    .line 4739
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, v2}, Landroid/widget/Toast;->setText(I)V

    goto :goto_0
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1
    .parameter "intent"
    .parameter "requestCode"

    .prologue
    .line 1987
    if-ltz p2, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWaitingForResult:Z

    .line 1988
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/ActivityGroup;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1989
    return-void
.end method

.method startActivitySafely(Landroid/content/Intent;Ljava/lang/Object;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const v3, 0x7f0a0006

    const/4 v2, 0x0

    const-string v5, "Launcher"

    const-string v4, " intent="

    const-string v0, "ro.csc.sales_code"

    .line 3134
    const/high16 v0, 0x1000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3135
    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->MenuManagerBackKeyDownInfo:Z

    .line 3138
    const/4 v0, 0x0

    const/16 v1, 0x3e8

    :try_start_0
    invoke-static {v0, v1}, Lcom/sec/android/app/twlauncher/SamsungUtils;->acquireDVFSlock(II)V

    .line 3140
    const-string v0, "WIN"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3141
    const-string v1, "com.android.stk"

    .line 3142
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3143
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 3145
    invoke-direct {p0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->checkTopApp(Ljava/lang/String;)Z

    move-result v1

    .line 3146
    if-nez v1, :cond_0

    .line 3149
    const v0, 0x7f0a0006

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 3203
    :goto_0
    return-void

    .line 3153
    :cond_0
    const-string v1, "gsm.STK_SETUP_MENU"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 3156
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/Launcher;->startActivity(Landroid/content/Intent;)V

    .line 3191
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->overridePendingTransitionForOpaqueWindowExit()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 3193
    :catch_0
    move-exception v0

    .line 3194
    invoke-static {p0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 3195
    const-string v1, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to launch. tag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " intent="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 3160
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    .line 3163
    const v0, 0x7f0a0006

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 3196
    :catch_1
    move-exception v0

    .line 3197
    invoke-static {p0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 3198
    const-string v1, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Launcher does not have the permission to launch "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Make sure to create a MAIN intent-filter for the corresponding activity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "or use the exported attribute for this activity. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "tag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " intent="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 3168
    :cond_2
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/Launcher;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 3172
    :cond_3
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/Launcher;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 3174
    :cond_4
    const-string v0, "OPP"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "OPS"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3176
    :cond_5
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.sec.android.app.dialertab.DialerTabActivity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3178
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 3181
    :cond_6
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/Launcher;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 3185
    :cond_7
    const-string v0, "XEC"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3186
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/Launcher;->checkNetwork(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 3188
    :cond_8
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/Launcher;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1
.end method

.method public startBinding()V
    .locals 3

    .prologue
    .line 5221
    const-string v0, "Launcher"

    const-string v1, "Launcher binding started"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5224
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/LocalActivityManager;->removeAllActivities()V

    .line 5227
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDesktopItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 5229
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    .line 5230
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v1

    .line 5231
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 5233
    invoke-virtual {v0, v2}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    .line 5231
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5247
    :cond_0
    return-void
.end method

.method public startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1995
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/app/twlauncher/Launcher$4;

    invoke-direct {v1, p0}, Lcom/sec/android/app/twlauncher/Launcher$4;-><init>(Lcom/sec/android/app/twlauncher/Launcher;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2007
    if-nez p1, :cond_0

    .line 2009
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getTypedText()Ljava/lang/String;

    move-result-object v0

    .line 2010
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->clearTypedText()V

    move-object v1, v0

    .line 2017
    :goto_0
    const-string v0, "search"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    .line 2019
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    move v2, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/app/SearchManager;->startSearch(Ljava/lang/String;ZLandroid/content/ComponentName;Landroid/os/Bundle;Z)V

    .line 2021
    return-void

    :cond_0
    move-object v1, p1

    goto :goto_0
.end method

.method uninstallPackage()V
    .locals 4

    .prologue
    .line 4384
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->lock()V

    .line 4386
    new-instance v0, Lcom/sec/android/app/twlauncher/Launcher$PackageDeleteObserver;

    invoke-direct {v0, p0}, Lcom/sec/android/app/twlauncher/Launcher$PackageDeleteObserver;-><init>(Lcom/sec/android/app/twlauncher/Launcher;)V

    .line 4388
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/twlauncher/Launcher;->mUninstallPackageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/pm/PackageManager;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4393
    :goto_0
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/twlauncher/Launcher;->mUninstallPackageName:Ljava/lang/String;

    .line 4394
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDragLayer:Lcom/sec/android/app/twlauncher/DragLayer;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/DragLayer;->invalidate()V

    .line 4395
    return-void

    .line 4389
    :catch_0
    move-exception v0

    .line 4390
    const-string v1, "Launcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "uninstallPackage() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4391
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->unlock()V

    goto :goto_0
.end method

.method updateTopfourBadge()V
    .locals 1

    .prologue
    .line 2852
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mTopFourZone:Lcom/sec/android/app/twlauncher/TopFourZone;

    if-nez v0, :cond_0

    .line 2854
    :goto_0
    return-void

    .line 2853
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mTopFourZone:Lcom/sec/android/app/twlauncher/TopFourZone;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/TopFourZone;->updateBadges()V

    goto :goto_0
.end method

.method updateWallpaperVisiblity()V
    .locals 2

    .prologue
    .line 4981
    const-string v1, "wallpaper"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/WallpaperManager;

    .line 4982
    .local v0, wpm:Landroid/app/WallpaperManager;
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/MenuManager;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4983
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/android/app/twlauncher/SamsungUtils;->setWallpaperVisibility(Landroid/app/WallpaperManager;Z)V

    .line 4986
    :goto_0
    return-void

    .line 4985
    :cond_0
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sec/android/app/twlauncher/SamsungUtils;->setWallpaperVisibility(Landroid/app/WallpaperManager;Z)V

    goto :goto_0
.end method

.method updateWindowTransparency()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 5032
    iget-boolean v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mForce16BitWindow:Z

    if-nez v3, :cond_0

    .line 5059
    :goto_0
    return-void

    .line 5039
    :cond_0
    const-string v3, "wallpaper"

    invoke-virtual {p0, v3}, Lcom/sec/android/app/twlauncher/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/WallpaperManager;

    .line 5040
    .local v2, wp:Landroid/app/WallpaperManager;
    invoke-virtual {v2}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v1

    .line 5042
    .local v1, wi:Landroid/app/WallpaperInfo;
    if-eqz v1, :cond_1

    const/4 v3, 0x1

    move v0, v3

    .line 5044
    .local v0, usingLiveWallpaper:Z
    :goto_1
    if-eqz v0, :cond_2

    .line 5045
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->setWindowTranslucent()V

    .line 5046
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWallpaperCanvasView:Lcom/sec/android/app/twlauncher/WallpaperCanvasView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/twlauncher/WallpaperCanvasView;->setVisibility(I)V

    .line 5047
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWallpaperImageDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .end local v0           #usingLiveWallpaper:Z
    :cond_1
    move v0, v4

    .line 5042
    goto :goto_1

    .line 5051
    .restart local v0       #usingLiveWallpaper:Z
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->setWindowOpaque()V

    .line 5052
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWallpaperCanvasView:Lcom/sec/android/app/twlauncher/WallpaperCanvasView;

    invoke-virtual {v3, v4}, Lcom/sec/android/app/twlauncher/WallpaperCanvasView;->setVisibility(I)V

    .line 5055
    invoke-virtual {v2}, Landroid/app/WallpaperManager;->getFastDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWallpaperImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 5056
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->makeBitmapMenuWallpaper()V

    goto :goto_0
.end method

.method updateWorkspaceBadge()V
    .locals 12

    .prologue
    .line 2826
    iget-object v10, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v10}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v9

    .line 2827
    .local v9, wcount:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v9, :cond_3

    .line 2828
    iget-object v10, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v10, v4}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/twlauncher/CellLayout;

    .line 2829
    .local v3, child:Lcom/sec/android/app/twlauncher/CellLayout;
    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildCount()I

    move-result v2

    .line 2830
    .local v2, cellCount:I
    const/4 v5, 0x0

    .local v5, j:I
    :goto_1
    if-ge v5, v2, :cond_2

    .line 2831
    invoke-virtual {v3, v5}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2832
    .local v1, cell:Landroid/view/View;
    instance-of v10, v1, Lcom/sec/android/app/twlauncher/UserFolder;

    if-eqz v10, :cond_1

    .line 2833
    move-object v0, v1

    check-cast v0, Lcom/sec/android/app/twlauncher/UserFolder;

    move-object v8, v0

    .line 2834
    .local v8, uf:Lcom/sec/android/app/twlauncher/UserFolder;
    invoke-virtual {v8}, Lcom/sec/android/app/twlauncher/UserFolder;->notifyDataSetChanged()V

    .line 2830
    .end local v8           #uf:Lcom/sec/android/app/twlauncher/UserFolder;
    :cond_0
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 2838
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    .line 2839
    .local v7, tag:Ljava/lang/Object;
    if-eqz v7, :cond_0

    instance-of v10, v7, Lcom/sec/android/app/twlauncher/ShortcutInfo;

    if-eqz v10, :cond_0

    .line 2841
    move-object v0, v7

    check-cast v0, Lcom/sec/android/app/twlauncher/ShortcutInfo;

    move-object v6, v0

    .line 2842
    .local v6, si:Lcom/sec/android/app/twlauncher/ShortcutInfo;
    iget-object v10, p0, Lcom/sec/android/app/twlauncher/Launcher;->mBadgeCache:Lcom/sec/android/app/twlauncher/BadgeCache;

    iget-object v11, v6, Lcom/sec/android/app/twlauncher/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v10, v11}, Lcom/sec/android/app/twlauncher/BadgeCache;->getBadgeCount(Landroid/content/Intent;)I

    move-result v10

    iput v10, v6, Lcom/sec/android/app/twlauncher/ShortcutInfo;->badgeCount:I

    .line 2843
    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    goto :goto_2

    .line 2847
    .end local v1           #cell:Landroid/view/View;
    .end local v6           #si:Lcom/sec/android/app/twlauncher/ShortcutInfo;
    .end local v7           #tag:Ljava/lang/Object;
    :cond_2
    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/CellLayout;->invalidate()V

    .line 2827
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2849
    .end local v2           #cellCount:I
    .end local v3           #child:Lcom/sec/android/app/twlauncher/CellLayout;
    .end local v5           #j:I
    :cond_3
    return-void
.end method
