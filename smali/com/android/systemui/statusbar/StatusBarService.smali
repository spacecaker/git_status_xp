.class public Lcom/android/systemui/statusbar/StatusBarService;
.super Landroid/app/Service;
.source "StatusBarService.java"

# interfaces
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/StatusBarService$ExpandedDialog;,
        Lcom/android/systemui/statusbar/StatusBarService$H;,
        Lcom/android/systemui/statusbar/StatusBarService$Launcher;,
        Lcom/android/systemui/statusbar/StatusBarService$MyTicker;
    }
.end annotation


# static fields
.field public static final ACTION_STATUSBAR_START:Ljava/lang/String; = "com.android.internal.policy.statusbar.START"

.field static final ANIM_FRAME_DURATION:I = 0x10

.field static final EXPANDED_FULL_OPEN:I = -0x2711

.field static final EXPANDED_LEAVE_ALONE:I = -0x2710

.field private static final MSG_ANIMATE:I = 0x3e8

.field private static final MSG_ANIMATE_REVEAL:I = 0x3e9

.field static final SPEW:Z = false

.field static final SPEW_ICONS:Z = false

.field static final TAG:Ljava/lang/String; = "StatusBarService"


# instance fields
.field mAbsPos:[I

.field mAnimAccel:F

.field mAnimLastTime:J

.field mAnimVel:F

.field mAnimY:F

.field mAnimating:Z

.field mAnimatingReveal:Z

.field mBarService:LIStatusBarService;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field mClearButton:Landroid/widget/TextView;

.field private mClearButtonListener:Landroid/view/View$OnClickListener;

.field mCloseView:Lcom/android/systemui/statusbar/CloseDragHandle;

.field mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field mCurAnimationTime:J

.field mDateView:Lcom/android/systemui/statusbar/DateView;

.field mDisabled:I

.field mDisplay:Landroid/view/Display;

.field mDisplayHeight:F

.field mEdgeBorder:I

.field mExpanded:Z

.field mExpandedContents:Landroid/view/View;

.field mExpandedDialog:Landroid/app/Dialog;

.field mExpandedParams:Landroid/view/WindowManager$LayoutParams;

.field mExpandedView:Lcom/android/systemui/statusbar/ExpandedView;

.field mExpandedVisible:Z

.field mFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field mHandler:Lcom/android/systemui/statusbar/StatusBarService$H;

.field mIconPolicy:Lcom/android/systemui/statusbar/StatusBarPolicy;

.field mIconSize:I

.field mIcons:Landroid/widget/LinearLayout;

.field mLatest:Lcom/android/systemui/statusbar/NotificationData;

.field mLatestItems:Landroid/widget/LinearLayout;

.field mLatestTitle:Landroid/widget/TextView;

.field mNoNotificationsTitle:Landroid/widget/TextView;

.field mNotificationIcons:Lcom/android/systemui/statusbar/IconMerger;

.field mNotificationLinearLayout:Landroid/view/View;

.field mOngoing:Lcom/android/systemui/statusbar/NotificationData;

.field mOngoingItems:Landroid/widget/LinearLayout;

.field mOngoingTitle:Landroid/widget/TextView;

.field private mPanelSlightlyVisible:Z

.field mPixelFormat:I

.field mPositionTmp:[I

.field mQueueLock:Ljava/lang/Object;

.field mScrollView:Landroid/widget/ScrollView;

.field mStartTracing:Ljava/lang/Runnable;

.field mStatusBarView:Lcom/android/systemui/statusbar/StatusBarView;

.field mStatusIcons:Landroid/widget/LinearLayout;

.field mStopTracing:Ljava/lang/Runnable;

.field private mTicker:Lcom/android/systemui/statusbar/Ticker;

.field private mTickerView:Landroid/view/View;

.field private mTicking:Z

.field mTracking:Z

.field mTrackingParams:Landroid/view/WindowManager$LayoutParams;

.field mTrackingPosition:I

.field mTrackingView:Lcom/android/systemui/statusbar/TrackingView;

.field mVelocityTracker:Landroid/view/VelocityTracker;

.field mViewDelta:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 20
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unresolved compilation problems: \n\tThe import com.android.internal.statusbar cannot be resolved\n\tThe import com.android.internal.statusbar cannot be resolved\n\tThe import com.android.internal.statusbar cannot be resolved\n\tThe import com.android.internal.statusbar cannot be resolved\n\tThe import com.android.internal.statusbar cannot be resolved\n\tThe import android.app.ActivityManagerNative cannot be resolved\n\tThe import android.app.StatusBarManager cannot be resolved\n\tThe import android.os.ServiceManager cannot be resolved\n\tThe import android.util.Slog cannot be resolved\n\tThe import android.view.WindowManagerImpl cannot be resolved\n\tThe hierarchy of the type StatusBarService is inconsistent\n\tThe type StatusBarService must implement the inherited abstract method CommandQueue.Callbacks.updateIcon(String, int, int, StatusBarIcon, StatusBarIcon)\n\tThe type StatusBarService must implement the inherited abstract method CommandQueue.Callbacks.addIcon(String, int, int, StatusBarIcon)\n\tThe type StatusBarService must implement the inherited abstract method CommandQueue.Callbacks.addNotification(IBinder, StatusBarNotification)\n\tThe type StatusBarService must implement the inherited abstract method CommandQueue.Callbacks.updateNotification(IBinder, StatusBarNotification)\n\tIStatusBarService cannot be resolved to a type\n\tcom.android.internal.R cannot be resolved to a variable\n\tStatusBarIconList cannot be resolved to a type\n\tStatusBarIconList cannot be resolved to a type\n\tStatusBarNotification cannot be resolved to a type\n\tStatusBarNotification cannot be resolved to a type\n\tIStatusBarService cannot be resolved to a type\n\tIStatusBarService cannot be resolved\n\tServiceManager cannot be resolved\n\tSTATUS_BAR_SERVICE cannot be resolved or is not a field\n\tIStatusBarService cannot be resolved to a type\n\tStatusBarIcon cannot be resolved to a type\n\tcom.android.internal.R cannot be resolved to a variable\n\tcom.android.internal.R cannot be resolved to a variable\n\tcom.android.internal.R cannot be resolved to a variable\n\tWindowManagerImpl cannot be resolved\n\tStatusBarIcon cannot be resolved to a type\n\tSlog cannot be resolved\n\tStatusBarIcon cannot be resolved to a type\n\tStatusBarIcon cannot be resolved to a type\n\tSlog cannot be resolved\n\tSlog cannot be resolved\n\tStatusBarNotification cannot be resolved to a type\n\tSlog cannot be resolved\n\tStatusBarNotification cannot be resolved to a type\n\tSlog cannot be resolved\n\tStatusBarNotification cannot be resolved to a type\n\tStatusBarNotification cannot be resolved to a type\n\tSlog cannot be resolved\n\tSlog cannot be resolved\n\tSlog cannot be resolved\n\tStatusBarNotification cannot be resolved to a type\n\tStatusBarIcon cannot be resolved to a type\n\tStatusBarIcon cannot be resolved to a type\n\tSlog cannot be resolved\n\tThe method removeNotificationViews(IBinder) from the type StatusBarService refers to the missing type StatusBarNotification\n\tSlog cannot be resolved\n\tThe method removeNotificationViews(IBinder) from the type StatusBarService refers to the missing type StatusBarNotification\n\tStatusBarNotification cannot be resolved to a type\n\tSlog cannot be resolved\n\tStatusBarNotification cannot be resolved to a type\n\tThe method removeNotificationViews(IBinder) from the type StatusBarService refers to the missing type StatusBarNotification\n\tStatusBarNotification cannot be resolved to a type\n\tSlog cannot be resolved\n\tStatusBarNotification cannot be resolved to a type\n\tStatusBarIcon cannot be resolved to a type\n\tStatusBarIcon cannot be resolved to a type\n\tStatusBarNotification cannot be resolved to a type\n\tSlog cannot be resolved\n\tStatusBarNotification cannot be resolved to a type\n\tStatusBarManager cannot be resolved to a variable\n\tStatusBarManager cannot be resolved to a variable\n\tSlog cannot be resolved\n\tStatusBarManager cannot be resolved to a variable\n\tStatusBarManager cannot be resolved to a variable\n\tSlog cannot be resolved\n\tcom.android.internal.R cannot be resolved to a variable\n\tSlog cannot be resolved\n\tcom.android.internal.R cannot be resolved to a variable\n\tStatusBarManager cannot be resolved to a variable\n\tStatusBarManager cannot be resolved to a variable\n\tSlog cannot be resolved\n\tSlog cannot be resolved\n\tcom.android.internal.R cannot be resolved to a variable\n\tSlog cannot be resolved\n\tSlog cannot be resolved\n\tSlog cannot be resolved\n\tSlog cannot be resolved\n\tSlog cannot be resolved\n\tSlog cannot be resolved\n\tActivityManagerNative cannot be resolved\n\tStatusBarNotification cannot be resolved to a type\n\tStatusBarNotification cannot be resolved to a type\n\tSlog cannot be resolved\n\tSlog cannot be resolved\n\tSlog cannot be resolved\n\tSlog cannot be resolved\n\tWindowManagerImpl cannot be resolved\n\tSlog cannot be resolved\n\tIStatusBarService cannot be resolved to a type\n\tStatusBarManager cannot be resolved to a variable\n\tIStatusBarService cannot be resolved to a type\n\tSlog cannot be resolved\n\tSlog cannot be resolved\n\tSlog cannot be resolved\n"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private chooseIconIndex(ZI)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 491
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unresolved compilation problem: \n"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private loadAnim(ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1126
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unresolved compilation problem: \n"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private makeExpandedVisible()V
    .locals 2

    .prologue
    .line 680
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unresolved compilation problems: \n\tSlog cannot be resolved\n\tcom.android.internal.R cannot be resolved to a variable\n"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private makeStatusBarView(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 261
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unresolved compilation problem: \n\tcom.android.internal.R cannot be resolved to a variable\n"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setAreThereNotifications()V
    .locals 2

    .prologue
    .line 597
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unresolved compilation problem: \n"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addIcon(Ljava/lang/String;IILStatusBarIcon;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 344
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unresolved compilation problems: \n\tStatusBarIcon cannot be resolved to a type\n\tSlog cannot be resolved\n"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addNotification(Landroid/os/IBinder;LStatusBarNotification;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 371
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unresolved compilation problems: \n\tStatusBarNotification cannot be resolved to a type\n\tSlog cannot be resolved\n"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method addNotificationViews(Landroid/os/IBinder;LStatusBarNotification;)Lcom/android/systemui/statusbar/StatusBarIconView;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 541
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unresolved compilation problems: \n\tStatusBarNotification cannot be resolved to a type\n\tStatusBarIcon cannot be resolved to a type\n\tStatusBarIcon cannot be resolved to a type\n"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected addStatusBarView()V
    .locals 2

    .prologue
    .line 327
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unresolved compilation problems: \n\tcom.android.internal.R cannot be resolved to a variable\n\tcom.android.internal.R cannot be resolved to a variable\n\tWindowManagerImpl cannot be resolved\n"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public animateCollapse()V
    .locals 2

    .prologue
    .line 715
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unresolved compilation problem: \n\tSlog cannot be resolved\n"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public animateExpand()V
    .locals 2

    .prologue
    .line 701
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unresolved compilation problem: \n\tSlog cannot be resolved\n"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public disable(I)V
    .locals 2
    .parameter

    .prologue
    .line 627
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unresolved compilation problems: \n\tStatusBarManager cannot be resolved to a variable\n\tStatusBarManager cannot be resolved to a variable\n\tSlog cannot be resolved\n\tStatusBarManager cannot be resolved to a variable\n\tStatusBarManager cannot be resolved to a variable\n\tSlog cannot be resolved\n\tcom.android.internal.R cannot be resolved to a variable\n\tSlog cannot be resolved\n\tcom.android.internal.R cannot be resolved to a variable\n\tStatusBarManager cannot be resolved to a variable\n\tStatusBarManager cannot be resolved to a variable\n\tSlog cannot be resolved\n"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method doAnimation()V
    .locals 2

    .prologue
    .line 787
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unresolved compilation problem: \n\tSlog cannot be resolved\n"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method doRevealAnimation()V
    .locals 2

    .prologue
    .line 830
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unresolved compilation problem: \n"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1184
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unresolved compilation problem: \n\tSlog cannot be resolved\n"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getExpandedHeight()I
    .locals 2

    .prologue
    .line 1361
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unresolved compilation problem: \n"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method handleNotificationError(Landroid/os/IBinder;LStatusBarNotification;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1073
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unresolved compilation problem: \n\tStatusBarNotification cannot be resolved to a type\n"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method incrementAnim()V
    .locals 2

    .prologue
    .line 817
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unresolved compilation problem: \n"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method interceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter

    .prologue
    .line 937
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unresolved compilation problem: \n\tSlog cannot be resolved\n"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method makeNotificationView(LStatusBarNotification;Landroid/view/ViewGroup;)[Landroid/view/View;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 500
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unresolved compilation problems: \n\tStatusBarNotification cannot be resolved to a type\n\tSlog cannot be resolved\n"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method onBarViewAttached()V
    .locals 2

    .prologue
    .line 1218
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unresolved compilation problem: \n\tWindowManagerImpl cannot be resolved\n"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .parameter

    .prologue
    .line 251
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unresolved compilation problem: \n"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 201
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unresolved compilation problems: \n\tStatusBarIconList cannot be resolved to a type\n\tStatusBarIconList cannot be resolved to a type\n\tStatusBarNotification cannot be resolved to a type\n\tStatusBarNotification cannot be resolved to a type\n\tIStatusBarService cannot be resolved to a type\n\tIStatusBarService cannot be resolved\n\tServiceManager cannot be resolved\n\tSTATUS_BAR_SERVICE cannot be resolved or is not a field\n\tIStatusBarService cannot be resolved to a type\n\tStatusBarIcon cannot be resolved to a type\n"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 243
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unresolved compilation problem: \n"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method onTrackingViewAttached()V
    .locals 2

    .prologue
    .line 1221
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unresolved compilation problem: \n"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method performCollapse()V
    .locals 2

    .prologue
    .line 757
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unresolved compilation problem: \n\tSlog cannot be resolved\n"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method performDisableActions(I)V
    .locals 2
    .parameter

    .prologue
    .line 1396
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unresolved compilation problem: \n\tStatusBarManager cannot be resolved to a variable\n"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method performExpand()V
    .locals 2

    .prologue
    .line 741
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unresolved compilation problem: \n\tSlog cannot be resolved\n"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method performFling(IFZ)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 875
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unresolved compilation problem: \n"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method postStartTracing()V
    .locals 2

    .prologue
    .line 1475
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unresolved compilation problem: \n"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method prepareTracking(IZ)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 846
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unresolved compilation problem: \n"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeIcon(Ljava/lang/String;II)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 366
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unresolved compilation problem: \n\tSlog cannot be resolved\n"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeNotification(Landroid/os/IBinder;)V
    .locals 2
    .parameter

    .prologue
    .line 478
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unresolved compilation problems: \n\tSlog cannot be resolved\n\tStatusBarNotification cannot be resolved to a type\n\tThe method removeNotificationViews(IBinder) from the type StatusBarService refers to the missing type StatusBarNotification\n"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method removeNotificationViews(Landroid/os/IBinder;)LStatusBarNotification;
    .locals 2
    .parameter

    .prologue
    .line 580
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unresolved compilation problems: \n\tStatusBarNotification cannot be resolved to a type\n\tSlog cannot be resolved\n\tStatusBarNotification cannot be resolved to a type\n"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setDateViewVisibility(ZI)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1257
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unresolved compilation problem: \n"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setNotificationIconVisibility(ZI)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1263
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unresolved compilation problem: \n"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method stopTracking()V
    .locals 2

    .prologue
    .line 811
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unresolved compilation problem: \n"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method tick(LStatusBarNotification;)V
    .locals 2
    .parameter

    .prologue
    .line 1054
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unresolved compilation problem: \n\tStatusBarNotification cannot be resolved to a type\n"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method updateExpandedHeight()V
    .locals 2

    .prologue
    .line 1365
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unresolved compilation problem: \n"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method updateExpandedViewPos(I)V
    .locals 2
    .parameter

    .prologue
    .line 1274
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unresolved compilation problem: \n\tSlog cannot be resolved\n"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateIcon(Ljava/lang/String;IILStatusBarIcon;LStatusBarIcon;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 355
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unresolved compilation problems: \n\tStatusBarIcon cannot be resolved to a type\n\tStatusBarIcon cannot be resolved to a type\n\tSlog cannot be resolved\n"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateNotification(Landroid/os/IBinder;LStatusBarNotification;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 394
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unresolved compilation problems: \n\tStatusBarNotification cannot be resolved to a type\n\tSlog cannot be resolved\n\tStatusBarNotification cannot be resolved to a type\n\tStatusBarNotification cannot be resolved to a type\n\tSlog cannot be resolved\n\tSlog cannot be resolved\n\tSlog cannot be resolved\n\tStatusBarNotification cannot be resolved to a type\n\tStatusBarIcon cannot be resolved to a type\n\tStatusBarIcon cannot be resolved to a type\n\tSlog cannot be resolved\n\tThe method removeNotificationViews(IBinder) from the type StatusBarService refers to the missing type StatusBarNotification\n\tSlog cannot be resolved\n\tThe method removeNotificationViews(IBinder) from the type StatusBarService refers to the missing type StatusBarNotification\n\tStatusBarNotification cannot be resolved to a type\n"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method updateResources()V
    .locals 2

    .prologue
    .line 1468
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unresolved compilation problem: \n\tSlog cannot be resolved\n"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method vibrate()V
    .locals 2

    .prologue
    .line 1479
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unresolved compilation problem: \n"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public viewInfo(Landroid/view/View;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 1134
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unresolved compilation problem: \n"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method visibilityChanged(Z)V
    .locals 2
    .parameter

    .prologue
    .line 1383
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unresolved compilation problem: \n\tIStatusBarService cannot be resolved to a type\n"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method
