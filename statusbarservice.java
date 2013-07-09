package com.android.systemui.statusbar;

import android.app.ActivityManagerNative;
import android.app.Dialog;
import android.app.IActivityManager;
import android.app.Notification;
import android.app.PendingIntent;
import android.app.PendingIntent.CanceledException;
import android.app.Service;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Binder;
import android.os.Debug;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.os.SystemClock;
import android.os.Vibrator;
import android.text.TextUtils;
import android.util.Log;
import android.util.Slog;
import android.view.Display;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnFocusChangeListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.Window;
import android.view.WindowManager;
import android.view.WindowManager.LayoutParams;
import android.view.WindowManagerImpl;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.view.animation.AnimationUtils;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.RemoteViews;
import android.widget.ScrollView;
import android.widget.TextView;
import com.android.internal.statusbar.IStatusBarService;
import com.android.internal.statusbar.IStatusBarService.Stub;
import com.android.internal.statusbar.StatusBarIcon;
import com.android.internal.statusbar.StatusBarIconList;
import com.android.internal.statusbar.StatusBarNotification;
import com.android.systemui.statusbar.policy.StatusBarPolicy;
import com.lidroid.systemui.quickpanel.PowerWidget;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;

public class StatusBarService extends Service
  implements CommandQueue.Callbacks
{
  LinearLayout l1;
  int[] mAbsPos = new int[2];
  float mAnimAccel;
  long mAnimLastTime;
  float mAnimVel;
  float mAnimY;
  boolean mAnimating;
  boolean mAnimatingReveal = false;
  IStatusBarService mBarService;
  View mBatteryBut;
  private View.OnClickListener mBatteryButListener = new View.OnClickListener()
  {
    public void onClick(View paramView)
    {
      paramView.getContext().startActivity(new Intent("android.intent.action.POWER_USAGE_SUMMARY").setFlags(268435456));
      StatusBarService.this.animateCollapse();
    }
  };
  View mBrightnessBut;
  private View.OnClickListener mBrightnessButListener = new View.OnClickListener()
  {
    public void onClick(View paramView)
    {
      paramView.getContext().startActivity(new Intent("com.android.settings.DISPLAY_SETTINGS").setFlags(268435456));
      StatusBarService.this.animateCollapse();
    }
  };
  private BroadcastReceiver mBroadcastReceiver = new BroadcastReceiver()
  {
    public void onReceive(Context paramContext, Intent paramIntent)
    {
      String str = paramIntent.getAction();
      if (("android.intent.action.CLOSE_SYSTEM_DIALOGS".equals(str)) || ("android.intent.action.SCREEN_OFF".equals(str)))
        StatusBarService.this.animateCollapse();
      while (true)
      {
        return;
        if ("android.intent.action.CONFIGURATION_CHANGED".equals(str))
        {
          StatusBarService.this.updateResources();
          continue;
        }
      }
    }
  };
  private CallOnGoingView mCallOnGoingView;
  LinearLayout mCenterClock;
  TextView mClearButton;
  private View.OnClickListener mClearButtonListener = new View.OnClickListener()
  {
    public void onClick(View paramView)
    {
      try
      {
        StatusBarService.this.mBarService.onClearAllNotifications();
        label12: StatusBarService.this.animateCollapse();
        return;
      }
      catch (RemoteException localRemoteException)
      {
        break label12;
      }
    }
  };
  CloseDragHandle mCloseView;
  CommandQueue mCommandQueue;
  long mCurAnimationTime;
  DateView mDateView;
  int mDisabled = 0;
  Display mDisplay;
  float mDisplayHeight;
  int mEdgeBorder;
  boolean mExpanded;
  View mExpandedContents;
  Dialog mExpandedDialog;
  WindowManager.LayoutParams mExpandedParams;
  ExpandedView mExpandedView;
  boolean mExpandedVisible;
  boolean mFocusBlocked = false;
  View.OnFocusChangeListener mFocusChangeListener = new View.OnFocusChangeListener()
  {
    public void onFocusChange(View paramView, boolean paramBoolean)
    {
      paramView.setSelected(paramBoolean);
    }
  };
  H mHandler = new H(null);
  StatusBarPolicy mIconPolicy;
  int mIconSize;
  LinearLayout mIcons;
  NotificationData mLatest = new NotificationData();
  LinearLayout mLatestItems;
  TextView mLatestTitle;
  LinearLayout mMiniCon;
  NotificationData mMiniConData = new NotificationData();
  TextView mNoNotificationsTitle;
  IconMerger mNotificationIcons;
  View mNotificationLinearLayout;
  NotificationData mOngoing = new NotificationData();
  LinearLayout mOngoingItems;
  TextView mOngoingTitle;
  private boolean mPanelSlightlyVisible;
  int mPixelFormat;
  View mPlaneBut;
  private View.OnClickListener mPlaneButListener = new View.OnClickListener()
  {
    public void onClick(View paramView)
    {
      paramView.getContext().startActivity(new Intent("android.intent.action.MUSIC_PLAYER").setFlags(268435456));
      StatusBarService.this.animateCollapse();
    }
  };
  int[] mPositionTmp = new int[2];
  int mPreviousFocusValue;
  View mProfBut;
  private View.OnClickListener mProfButListener = new View.OnClickListener()
  {
    public void onClick(View paramView)
    {
      paramView.getContext().startActivity(new Intent("com.android.contacts.action.LIST_DEFAULT").setFlags(268435456));
      StatusBarService.this.animateCollapse();
    }
  };
  Object mQueueLock = new Object();
  View mRunBut;
  private View.OnClickListener mRunButListener = new View.OnClickListener()
  {
    public void onClick(View paramView)
    {
      paramView.getContext().startActivity(new Intent("com.sec.android.app.controlpanel.MAIN").setFlags(268435456));
      StatusBarService.this.animateCollapse();
    }
  };
  View mSaveBut;
  private View.OnClickListener mSaveButListener = new View.OnClickListener()
  {
    public void onClick(View paramView)
    {
      paramView.getContext().startActivity(new Intent("android.settings.APPLICATION_SETTINGS").setFlags(268435456));
      StatusBarService.this.animateCollapse();
    }
  };
  ScrollView mScrollView;
  View mSettingsBut;
  private View.OnClickListener mSettingsButListener = new View.OnClickListener()
  {
    public void onClick(View paramView)
    {
      paramView.getContext().startActivity(new Intent("android.settings.SETTINGS").setFlags(268435456));
      StatusBarService.this.animateCollapse();
    }
  };
  Runnable mStartTracing = new Runnable()
  {
    public void run()
    {
      StatusBarService.this.vibrate();
      SystemClock.sleep(250L);
      Slog.d("StatusBarService", "startTracing");
      Debug.startMethodTracing("/data/statusbar-traces/trace");
      StatusBarService.this.mHandler.postDelayed(StatusBarService.this.mStopTracing, 10000L);
    }
  };
  View mStatBut;
  private View.OnClickListener mStatButListener = new View.OnClickListener()
  {
    public void onClick(View paramView)
    {
      paramView.getContext().startActivity(new Intent("android.settings.WIRELESS_SETTINGS").setFlags(268435456));
      StatusBarService.this.animateCollapse();
    }
  };
  StatusBarView mStatusBarView;
  LinearLayout mStatusIcons;
  Runnable mStopTracing = new Runnable()
  {
    public void run()
    {
      Debug.stopMethodTracing();
      Slog.d("StatusBarService", "stopTracing");
      StatusBarService.this.vibrate();
    }
  };
  private Ticker mTicker;
  private View mTickerView;
  private boolean mTicking;
  View mTorchBut;
  private View.OnClickListener mTorchButListener = new View.OnClickListener()
  {
    public void onClick(View paramView)
    {
      paramView.getContext().startActivity(new Intent("com.devuni.FLASHLIGHT").setFlags(268435456));
      StatusBarService.this.animateCollapse();
    }
  };
  ItemTouchDispatcher mTouchDispatcher;
  boolean mTracking;
  WindowManager.LayoutParams mTrackingParams;
  int mTrackingPosition;
  TrackingView mTrackingView;
  VelocityTracker mVelocityTracker;
  int mViewDelta;

  private int chooseIconIndex(boolean paramBoolean1, boolean paramBoolean2, int paramInt)
  {
    int i = this.mLatest.size();
    int j = this.mOngoing.size();
    int k;
    if (paramBoolean1)
      k = i + j + (this.mMiniConData.size() - paramInt);
    while (true)
    {
      return k;
      if (paramBoolean2)
      {
        k = i + (j - paramInt);
        continue;
      }
      k = i - paramInt;
    }
  }

  private Animation loadAnim(int paramInt, Animation.AnimationListener paramAnimationListener)
  {
    Animation localAnimation = AnimationUtils.loadAnimation(this, paramInt);
    if (paramAnimationListener != null)
      localAnimation.setAnimationListener(paramAnimationListener);
    return localAnimation;
  }

  private void makeExpandedVisible()
  {
    if (this.mExpandedVisible);
    while (true)
    {
      return;
      this.mExpandedVisible = true;
      visibilityChanged(true);
      updateExpandedViewPos(-10000);
      WindowManager.LayoutParams localLayoutParams1 = this.mExpandedParams;
      localLayoutParams1.flags = (0xFFFFFFF7 & localLayoutParams1.flags);
      WindowManager.LayoutParams localLayoutParams2 = this.mExpandedParams;
      localLayoutParams2.flags = (0x20000 | localLayoutParams2.flags);
      this.mExpandedDialog.getWindow().setAttributes(this.mExpandedParams);
      this.mExpandedView.requestFocus(2);
      this.mTrackingView.setVisibility(0);
      this.mExpandedView.setVisibility(0);
      this.mStatusBarView.setVisibility(8);
      if (this.mTicking)
        continue;
    }
  }

  private void makeStatusBarView(Context paramContext)
  {
    Resources localResources = paramContext.getResources();
    this.mTouchDispatcher = new ItemTouchDispatcher(this);
    this.mIconSize = localResources.getDimensionPixelSize(17104901);
    ExpandedView localExpandedView = (ExpandedView)View.inflate(paramContext, 2130903046, null);
    localExpandedView.mService = this;
    localExpandedView.mTouchDispatcher = this.mTouchDispatcher;
    StatusBarView localStatusBarView = (StatusBarView)View.inflate(paramContext, 2130903044, null);
    localStatusBarView.mService = this;
    this.mPixelFormat = -3;
    Drawable localDrawable = localStatusBarView.getBackground();
    if (localDrawable != null)
      this.mPixelFormat = localDrawable.getOpacity();
    this.mStatusBarView = localStatusBarView;
    this.mStatusIcons = ((LinearLayout)localStatusBarView.findViewById(2131296277));
    this.mNotificationIcons = ((IconMerger)localStatusBarView.findViewById(2131296276));
    this.mIcons = ((LinearLayout)localStatusBarView.findViewById(2131296275));
    this.mTickerView = localStatusBarView.findViewById(2131296278);
    this.mDateView = ((DateView)localStatusBarView.findViewById(2131296281));
    this.mExpandedDialog = new ExpandedDialog(paramContext);
    this.mExpandedView = localExpandedView;
    this.mExpandedContents = localExpandedView.findViewById(2131296284);
    this.mOngoingTitle = ((TextView)localExpandedView.findViewById(2131296287));
    this.mOngoingItems = ((LinearLayout)localExpandedView.findViewById(2131296288));
    this.mLatestTitle = ((TextView)localExpandedView.findViewById(2131296289));
    this.mLatestItems = ((LinearLayout)localExpandedView.findViewById(2131296290));
    this.mNoNotificationsTitle = ((TextView)localExpandedView.findViewById(2131296286));
    this.mClearButton = ((TextView)localExpandedView.findViewById(2131296285));
    this.mClearButton.setOnClickListener(this.mClearButtonListener);
    this.mScrollView = ((ScrollView)localExpandedView.findViewById(2131296257));
    this.mNotificationLinearLayout = localExpandedView.findViewById(2131296284);
    this.mExpandedView.setVisibility(8);
    this.mOngoingTitle.setVisibility(8);
    this.mLatestTitle.setVisibility(8);
    this.mTicker = new MyTicker(paramContext, localStatusBarView);
    ((TickerView)localStatusBarView.findViewById(2131296280)).mTicker = this.mTicker;
    this.mTrackingView = ((TrackingView)View.inflate(paramContext, 2130903049, null));
    this.mTrackingView.mService = this;
    this.mCloseView = ((CloseDragHandle)this.mTrackingView.findViewById(2131296293));
    this.mCloseView.mService = this;
    this.mEdgeBorder = localResources.getDimensionPixelSize(2131099648);
    this.mSettingsBut = localExpandedView.findViewById(2131296306);
    this.mSettingsBut.setOnClickListener(this.mSettingsButListener);
    this.mBrightnessBut = localExpandedView.findViewById(2131296313);
    this.mBrightnessBut.setOnClickListener(this.mBrightnessButListener);
    this.mBatteryBut = localExpandedView.findViewById(2131296314);
    this.mBatteryBut.setOnClickListener(this.mBatteryButListener);
    this.mProfBut = localExpandedView.findViewById(2131296315);
    this.mProfBut.setOnClickListener(this.mProfButListener);
    this.mRunBut = localExpandedView.findViewById(2131296316);
    this.mRunBut.setOnClickListener(this.mRunButListener);
    this.mPlaneBut = localExpandedView.findViewById(2131296317);
    this.mPlaneBut.setOnClickListener(this.mPlaneButListener);
    this.mStatBut = localExpandedView.findViewById(2131296318);
    this.mStatBut.setOnClickListener(this.mStatButListener);
    this.mSaveBut = localExpandedView.findViewById(2131296320);
    this.mSaveBut.setOnClickListener(this.mSaveButListener);
    this.mTorchBut = localExpandedView.findViewById(2131296321);
    this.mTorchBut.setOnClickListener(this.mTorchButListener);
    setAreThereNotifications();
    this.mDateView.setVisibility(4);
    IntentFilter localIntentFilter = new IntentFilter();
    localIntentFilter.addAction("android.intent.action.CONFIGURATION_CHANGED");
    localIntentFilter.addAction("android.intent.action.CLOSE_SYSTEM_DIALOGS");
    localIntentFilter.addAction("android.intent.action.SCREEN_OFF");
    paramContext.registerReceiver(this.mBroadcastReceiver, localIntentFilter);
    PowerWidget localPowerWidget = (PowerWidget)View.inflate(paramContext, 50528259, null);
    localPowerWidget.setupWidget();
    this.mExpandedView.addView(localPowerWidget, 1);
    this.mMiniCon = new LinearLayout(paramContext);
    this.mMiniCon.setOrientation(1);
    ((LinearLayout)this.mExpandedView.findViewById(2131296284)).addView(this.mMiniCon, 0);
    this.mCallOnGoingView = ((CallOnGoingView)View.inflate(paramContext, 2130903045, null));
    this.mCallOnGoingView.mService = this;
  }

  private void setAreThereNotifications()
  {
    boolean bool1 = this.mOngoing.hasVisibleItems();
    boolean bool2 = this.mLatest.hasVisibleItems();
    int i;
    label46: int j;
    if (this.mLatest.hasClearableItems())
    {
      this.mClearButton.setVisibility(0);
      TextView localTextView1 = this.mOngoingTitle;
      if (!bool1)
        break label101;
      i = 0;
      localTextView1.setVisibility(i);
      TextView localTextView2 = this.mLatestTitle;
      if (!bool2)
        break label108;
      j = 0;
      label65: localTextView2.setVisibility(j);
      if ((!bool1) && (!bool2))
        break label115;
      this.mNoNotificationsTitle.setVisibility(8);
    }
    while (true)
    {
      return;
      this.mClearButton.setVisibility(4);
      break;
      label101: i = 8;
      break label46;
      label108: j = 8;
      break label65;
      label115: this.mNoNotificationsTitle.setVisibility(0);
    }
  }

  private void tick(StatusBarNotification paramStatusBarNotification)
  {
    if ((paramStatusBarNotification.notification.tickerText != null) && (this.mStatusBarView.getWindowToken() != null) && ((0xA & this.mDisabled) == 0))
      this.mTicker.addEntry(paramStatusBarNotification);
  }

  public void addIcon(String paramString, int paramInt1, int paramInt2, StatusBarIcon paramStatusBarIcon)
  {
    StatusBarIconView localStatusBarIconView = new StatusBarIconView(this, paramString);
    localStatusBarIconView.set(paramStatusBarIcon);
    this.mStatusIcons.addView(localStatusBarIconView, paramInt2, new LinearLayout.LayoutParams(this.mIconSize, this.mIconSize));
  }

  public void addNotification(IBinder paramIBinder, StatusBarNotification paramStatusBarNotification)
  {
    int i = 1;
    if (paramStatusBarNotification.notification.fullScreenIntent != null)
    {
      i = 0;
      Slog.d("StatusBarService", "Notification has fullScreenIntent; sending fullScreenIntent");
    }
    try
    {
      paramStatusBarNotification.notification.fullScreenIntent.send();
      label34: if (addNotificationViews(paramIBinder, paramStatusBarNotification) == null);
      while (true)
      {
        return;
        if (i != 0)
          tick(paramStatusBarNotification);
        setAreThereNotifications();
        updateExpandedViewPos(-10000);
      }
    }
    catch (PendingIntent.CanceledException localCanceledException)
    {
      break label34;
    }
  }

  StatusBarIconView addNotificationViews(IBinder paramIBinder, StatusBarNotification paramStatusBarNotification)
  {
    boolean bool1 = paramStatusBarNotification.isOngoing();
    boolean bool2 = paramStatusBarNotification.isMiniCon();
    NotificationData localNotificationData;
    LinearLayout localLinearLayout;
    View[] arrayOfView;
    if (bool2)
    {
      localNotificationData = this.mMiniConData;
      localLinearLayout = this.mMiniCon;
      arrayOfView = makeNotificationView(paramStatusBarNotification, localLinearLayout);
      if (arrayOfView != null)
        break label108;
      handleNotificationError(paramIBinder, paramStatusBarNotification, "Couldn't expand RemoteViews for: " + paramStatusBarNotification);
    }
    label108: View localView1;
    View localView2;
    View localView3;
    StatusBarIconView localStatusBarIconView;
    for (Object localObject = null; ; localObject = null)
    {
      return localObject;
      if (bool1)
      {
        localNotificationData = this.mOngoing;
        localLinearLayout = this.mOngoingItems;
        break;
      }
      localNotificationData = this.mLatest;
      localLinearLayout = this.mLatestItems;
      break;
      localView1 = arrayOfView[0];
      localView2 = arrayOfView[1];
      localView3 = arrayOfView[2];
      localStatusBarIconView = new StatusBarIconView(this, paramStatusBarNotification.pkg + "/0x" + Integer.toHexString(paramStatusBarNotification.id));
      StatusBarIcon localStatusBarIcon = new StatusBarIcon(paramStatusBarNotification.pkg, paramStatusBarNotification.notification.icon, paramStatusBarNotification.notification.iconLevel, paramStatusBarNotification.notification.number);
      if (localStatusBarIconView.set(localStatusBarIcon))
        break label246;
      handleNotificationError(paramIBinder, paramStatusBarNotification, "Coulding create icon: " + localStatusBarIcon);
    }
    label246: int i = localNotificationData.add(paramIBinder, paramStatusBarNotification, localView1, localView2, localView3, localStatusBarIconView);
    if (bool2)
    {
      ((ViewGroup)localView2).removeView(localView3);
      localLinearLayout.addView(localView3, i);
      Slog.i("StatusBarService", "ADD:MiniCon-" + paramStatusBarNotification.notification.twQuickPanelEvent);
    }
    while (true)
    {
      int j = chooseIconIndex(bool2, bool1, i);
      this.mNotificationIcons.addView(localStatusBarIconView, j);
      localObject = localStatusBarIconView;
      break;
      localLinearLayout.addView(localView1, i);
    }
  }

  protected void addStatusBarView()
  {
    int i = getResources().getDimensionPixelSize(17104900);
    StatusBarView localStatusBarView = this.mStatusBarView;
    WindowManager.LayoutParams localLayoutParams = new WindowManager.LayoutParams(-1, i, 2000, 72, 2);
    localLayoutParams.gravity = 55;
    localLayoutParams.setTitle("StatusBar");
    localLayoutParams.windowAnimations = 16973933;
    this.mStatusBarView.setVisibility(8);
    WindowManagerImpl.getDefault().addView(localStatusBarView, localLayoutParams);
  }

  public void animateCollapse()
  {
    if (!this.mExpandedVisible)
      return;
    if (this.mAnimating);
    for (int i = (int)this.mAnimY; ; i = this.mDisplay.getHeight() - 1)
    {
      this.mExpanded = true;
      prepareTracking(i, false);
      performFling(i, -2000.0F, true);
      break;
    }
  }

  public void animateExpand()
  {
    if ((0x1 & this.mDisabled) != 0);
    while (true)
    {
      return;
      if (!this.mExpanded)
      {
        prepareTracking(0, true);
        performFling(0, 2000.0F, true);
        continue;
      }
    }
  }

  public void disable(int paramInt)
  {
    int i = paramInt ^ this.mDisabled;
    this.mDisabled = paramInt;
    if (((i & 0x1) != 0) && ((paramInt & 0x1) != 0))
      animateCollapse();
    if ((i & 0x2) != 0)
      if ((paramInt & 0x2) != 0)
        if (this.mTicking)
          this.mTicker.halt();
    while (true)
    {
      return;
      setNotificationIconVisibility(false, 17432577);
      continue;
      if (this.mExpandedVisible)
        continue;
      setNotificationIconVisibility(true, 17432576);
      continue;
      if (((i & 0x8) == 0) || (!this.mTicking) || ((paramInt & 0x8) == 0))
        continue;
      this.mTicker.halt();
    }
  }

  void doAnimation()
  {
    if (this.mAnimating)
    {
      incrementAnim();
      if (this.mAnimY < this.mDisplay.getHeight() - 1)
        break label46;
      this.mAnimating = false;
      updateExpandedViewPos(-10001);
      performExpand();
    }
    while (true)
    {
      return;
      label46: float f = this.mAnimY;
      this.mStatusBarView.getHeight();
      if (f < 0)
      {
        this.mAnimating = false;
        updateExpandedViewPos(0);
        performCollapse();
        continue;
      }
      updateExpandedViewPos((int)this.mAnimY);
      this.mCurAnimationTime = (16L + this.mCurAnimationTime);
      this.mHandler.sendMessageAtTime(this.mHandler.obtainMessage(1000), this.mCurAnimationTime);
    }
  }

  void doRevealAnimation()
  {
    int i = this.mCloseView.getHeight();
    this.mStatusBarView.getHeight();
    int j = i + 0;
    if ((this.mAnimatingReveal) && (this.mAnimating) && (this.mAnimY < j))
    {
      incrementAnim();
      if (this.mAnimY < j)
        break label74;
      this.mAnimY = j;
      updateExpandedViewPos((int)this.mAnimY);
    }
    while (true)
    {
      return;
      label74: updateExpandedViewPos((int)this.mAnimY);
      this.mCurAnimationTime = (16L + this.mCurAnimationTime);
      this.mHandler.sendMessageAtTime(this.mHandler.obtainMessage(1001), this.mCurAnimationTime);
    }
  }

  protected void dump(FileDescriptor paramFileDescriptor, PrintWriter paramPrintWriter, String[] paramArrayOfString)
  {
    if (checkCallingOrSelfPermission("android.permission.DUMP") != 0)
      paramPrintWriter.println("Permission Denial: can't dump StatusBar from from pid=" + Binder.getCallingPid() + ", uid=" + Binder.getCallingUid());
    while (true)
    {
      return;
      synchronized (this.mQueueLock)
      {
        paramPrintWriter.println("Current Status Bar state:");
        paramPrintWriter.println("  mExpanded=" + this.mExpanded + ", mExpandedVisible=" + this.mExpandedVisible);
        paramPrintWriter.println("  mTicking=" + this.mTicking);
        paramPrintWriter.println("  mTracking=" + this.mTracking);
        paramPrintWriter.println("  mAnimating=" + this.mAnimating + ", mAnimY=" + this.mAnimY + ", mAnimVel=" + this.mAnimVel + ", mAnimAccel=" + this.mAnimAccel);
        paramPrintWriter.println("  mCurAnimationTime=" + this.mCurAnimationTime + " mAnimLastTime=" + this.mAnimLastTime);
        paramPrintWriter.println("  mDisplayHeight=" + this.mDisplayHeight + " mAnimatingReveal=" + this.mAnimatingReveal + " mViewDelta=" + this.mViewDelta);
        paramPrintWriter.println("  mDisplayHeight=" + this.mDisplayHeight);
        paramPrintWriter.println("  mExpandedParams: " + this.mExpandedParams);
        paramPrintWriter.println("  mExpandedView: " + viewInfo(this.mExpandedView));
        paramPrintWriter.println("  mExpandedDialog: " + this.mExpandedDialog);
        paramPrintWriter.println("  mTrackingParams: " + this.mTrackingParams);
        paramPrintWriter.println("  mTrackingView: " + viewInfo(this.mTrackingView));
        paramPrintWriter.println("  mOngoingTitle: " + viewInfo(this.mOngoingTitle));
        paramPrintWriter.println("  mOngoingItems: " + viewInfo(this.mOngoingItems));
        paramPrintWriter.println("  mLatestTitle: " + viewInfo(this.mLatestTitle));
        paramPrintWriter.println("  mLatestItems: " + viewInfo(this.mLatestItems));
        paramPrintWriter.println("  mNoNotificationsTitle: " + viewInfo(this.mNoNotificationsTitle));
        paramPrintWriter.println("  mCloseView: " + viewInfo(this.mCloseView));
        paramPrintWriter.println("  mTickerView: " + viewInfo(this.mTickerView));
        paramPrintWriter.println("  mScrollView: " + viewInfo(this.mScrollView) + " scroll " + this.mScrollView.getScrollX() + "," + this.mScrollView.getScrollY());
        paramPrintWriter.println("mNotificationLinearLayout: " + viewInfo(this.mNotificationLinearLayout));
        this.mHandler.post(new Runnable()
        {
          public void run()
          {
            Slog.d("StatusBarService", "mStatusIcons:");
            StatusBarService.this.mStatusIcons.debug();
          }
        });
      }
    }
  }

  int getExpandedHeight()
  {
    int i = this.mDisplay.getHeight();
    this.mStatusBarView.getHeight();
    return i - 0 - this.mCloseView.getHeight();
  }

  void handleNotificationError(IBinder paramIBinder, StatusBarNotification paramStatusBarNotification, String paramString)
  {
    removeNotification(paramIBinder);
    try
    {
      this.mBarService.onNotificationError(paramStatusBarNotification.pkg, paramStatusBarNotification.tag, paramStatusBarNotification.id, paramStatusBarNotification.uid, paramStatusBarNotification.initialPid, paramString);
      label35: return;
    }
    catch (RemoteException localRemoteException)
    {
      break label35;
    }
  }

  public void hideCallOnGoingView()
  {
    this.mStatusBarView.removeView(this.mCallOnGoingView);
  }

  void incrementAnim()
  {
    long l = SystemClock.uptimeMillis();
    float f1 = (float)(l - this.mAnimLastTime) / 1000.0F;
    float f2 = this.mAnimY;
    float f3 = this.mAnimVel;
    float f4 = this.mAnimAccel;
    this.mAnimY = (f2 + f3 * f1 + f1 * (f1 * (0.5F * f4)));
    this.mAnimVel = (f3 + f1 * f4);
    this.mAnimLastTime = l;
  }

  boolean interceptTouchEvent(MotionEvent paramMotionEvent)
  {
    if ((0x1 & this.mDisabled) != 0)
      return false;
    int i = this.mStatusBarView.getHeight();
    int j = i * 2;
    int i1;
    label52: boolean bool;
    if (paramMotionEvent.getAction() == 0)
    {
      i1 = (int)paramMotionEvent.getRawY();
      if (!this.mExpanded)
      {
        this.mViewDelta = (i - i1);
        if (((!this.mExpanded) && (i1 < j)) || ((this.mExpanded) && (i1 > this.mDisplay.getHeight() - j)))
        {
          int i2 = (int)paramMotionEvent.getRawX();
          int i3 = this.mEdgeBorder;
          if ((i2 >= i3) && (i2 < this.mDisplay.getWidth() - i3))
          {
            if (this.mExpanded)
              break label185;
            bool = true;
            label131: prepareTracking(i1, bool);
            this.mVelocityTracker.addMovement(paramMotionEvent);
          }
        }
      }
    }
    label185: 
    do
      while (true)
      {
        break;
        this.mTrackingView.getLocationOnScreen(this.mAbsPos);
        this.mViewDelta = (this.mAbsPos[1] + this.mTrackingView.getHeight() - i1);
        break label52;
        bool = false;
        break label131;
        if (!this.mTracking)
          continue;
        this.mVelocityTracker.addMovement(paramMotionEvent);
        int k = i + this.mCloseView.getHeight();
        if (paramMotionEvent.getAction() != 2)
          break label265;
        int n = (int)paramMotionEvent.getRawY();
        if ((this.mAnimatingReveal) && (n < k))
          continue;
        this.mAnimatingReveal = false;
        updateExpandedViewPos(n + this.mViewDelta);
      }
    while (paramMotionEvent.getAction() != 1);
    label265: this.mVelocityTracker.computeCurrentVelocity(1000);
    float f1 = this.mVelocityTracker.getYVelocity();
    if (f1 < 0.0F);
    for (int m = 1; ; m = 0)
    {
      float f2 = this.mVelocityTracker.getXVelocity();
      if (f2 < 0.0F)
        f2 = -f2;
      if (f2 > 150.0F)
        f2 = 150.0F;
      float f3 = (float)Math.hypot(f1, f2);
      if (m != 0)
        f3 = -f3;
      performFling((int)paramMotionEvent.getRawY(), f3, false);
      break;
    }
  }

  View[] makeNotificationView(StatusBarNotification paramStatusBarNotification, ViewGroup paramViewGroup)
  {
    View[] arrayOfView = null;
    Notification localNotification = paramStatusBarNotification.notification;
    RemoteViews localRemoteViews = localNotification.contentView;
    if (localRemoteViews == null);
    while (true)
    {
      return arrayOfView;
      LatestItemContainer localLatestItemContainer = (LatestItemContainer)((LayoutInflater)getSystemService("layout_inflater")).inflate(2130903048, paramViewGroup, false);
      if (((0x2 & localNotification.flags) == 0) && ((0x20 & localNotification.flags) == 0))
      {
        ItemTouchDispatcher localItemTouchDispatcher = this.mTouchDispatcher;
        7 local7 = new Runnable(paramStatusBarNotification)
        {
          public void run()
          {
            try
            {
              StatusBarService.this.mBarService.onNotificationClear(this.val$notification.pkg, this.val$notification.tag, this.val$notification.id);
              label33: return;
            }
            catch (RemoteException localRemoteException)
            {
              break label33;
            }
          }
        };
        localLatestItemContainer.setOnSwipeCallback(localItemTouchDispatcher, local7);
      }
      ViewGroup localViewGroup = (ViewGroup)localLatestItemContainer.findViewById(2131296292);
      localViewGroup.setDescendantFocusability(393216);
      localViewGroup.setOnFocusChangeListener(this.mFocusChangeListener);
      PendingIntent localPendingIntent = localNotification.contentIntent;
      if (localPendingIntent != null)
        localViewGroup.setOnClickListener(new Launcher(localPendingIntent, paramStatusBarNotification.pkg, paramStatusBarNotification.tag, paramStatusBarNotification.id));
      Object localObject1 = null;
      Object localObject2 = null;
      try
      {
        View localView = localRemoteViews.apply(this, localViewGroup);
        localObject1 = localView;
        if (localObject1 == null)
        {
          String str = paramStatusBarNotification.pkg + "/0x" + Integer.toHexString(paramStatusBarNotification.id);
          Slog.e("StatusBarService", "couldn't inflate view for notification " + str, (Throwable)localObject2);
          arrayOfView = null;
        }
      }
      catch (RuntimeException localRuntimeException)
      {
        while (true)
          localObject2 = localRuntimeException;
        localViewGroup.addView(localObject1);
        localLatestItemContainer.setDrawingCacheEnabled(true);
        arrayOfView = new View[3];
        arrayOfView[0] = localLatestItemContainer;
        arrayOfView[1] = localViewGroup;
        arrayOfView[2] = localObject1;
      }
    }
  }

  void onBarViewAttached()
  {
    Drawable localDrawable = this.mTrackingView.getBackground();
    if (localDrawable != null);
    for (int i = localDrawable.getOpacity(); ; i = -3)
    {
      WindowManager.LayoutParams localLayoutParams = new WindowManager.LayoutParams(-1, -1, 2014, 131840, i);
      localLayoutParams.gravity = 55;
      localLayoutParams.setTitle("TrackingView");
      localLayoutParams.y = this.mTrackingPosition;
      this.mTrackingParams = localLayoutParams;
      WindowManagerImpl.getDefault().addView(this.mTrackingView, localLayoutParams);
      return;
    }
  }

  public IBinder onBind(Intent paramIntent)
  {
    return null;
  }

  public void onCreate()
  {
    this.mDisplay = ((WindowManager)getSystemService("window")).getDefaultDisplay();
    makeStatusBarView(this);
    StatusBarIconList localStatusBarIconList = new StatusBarIconList();
    ArrayList localArrayList1 = new ArrayList();
    ArrayList localArrayList2 = new ArrayList();
    this.mCommandQueue = new CommandQueue(this, localStatusBarIconList);
    this.mBarService = IStatusBarService.Stub.asInterface(ServiceManager.getService("statusbar"));
    try
    {
      this.mBarService.registerStatusBar(this.mCommandQueue, localStatusBarIconList, localArrayList1, localArrayList2);
      label90: int i = localStatusBarIconList.size();
      int j = 0;
      for (int k = 0; k < i; k++)
      {
        StatusBarIcon localStatusBarIcon = localStatusBarIconList.getIcon(k);
        if (localStatusBarIcon == null)
          continue;
        addIcon(localStatusBarIconList.getSlot(k), k, j, localStatusBarIcon);
        j++;
      }
      int m = localArrayList1.size();
      if (m == localArrayList2.size())
        for (int n = 0; n < m; n++)
          addNotification((IBinder)localArrayList1.get(n), (StatusBarNotification)localArrayList2.get(n));
      Log.wtf("StatusBarService", "Notification list length mismatch: keys=" + m + " notifications=" + localArrayList2.size());
      addStatusBarView();
      this.mIconPolicy = new StatusBarPolicy(this);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      break label90;
    }
  }

  public void onDestroy()
  {
  }

  void onTrackingViewAttached()
  {
    int i = this.mDisplay.getHeight();
    WindowManager.LayoutParams localLayoutParams = this.mExpandedDialog.getWindow().getAttributes();
    localLayoutParams.width = -1;
    localLayoutParams.height = getExpandedHeight();
    localLayoutParams.x = 0;
    int j = -i;
    localLayoutParams.y = j;
    this.mTrackingPosition = j;
    localLayoutParams.type = 2014;
    localLayoutParams.flags = 4904;
    localLayoutParams.format = -3;
    localLayoutParams.gravity = 55;
    localLayoutParams.setTitle("StatusBarExpanded");
    this.mExpandedDialog.getWindow().setAttributes(localLayoutParams);
    this.mExpandedDialog.getWindow().setFormat(-3);
    this.mExpandedParams = localLayoutParams;
    this.mExpandedDialog.getWindow().requestFeature(1);
    this.mExpandedDialog.setContentView(this.mExpandedView, new ViewGroup.LayoutParams(-1, -1));
    this.mExpandedDialog.getWindow().setBackgroundDrawable(null);
    this.mExpandedDialog.show();
    ((FrameLayout)this.mExpandedView.getParent());
    this.mStatusBarView.setVisibility(0);
  }

  void performCollapse()
  {
    if (!this.mExpandedVisible);
    while (true)
    {
      return;
      this.mExpandedVisible = false;
      visibilityChanged(false);
      WindowManager.LayoutParams localLayoutParams1 = this.mExpandedParams;
      localLayoutParams1.flags = (0x8 | localLayoutParams1.flags);
      WindowManager.LayoutParams localLayoutParams2 = this.mExpandedParams;
      localLayoutParams2.flags = (0xFFFDFFFF & localLayoutParams2.flags);
      this.mExpandedDialog.getWindow().setAttributes(this.mExpandedParams);
      this.mTrackingView.setVisibility(8);
      this.mExpandedView.setVisibility(8);
      this.mStatusBarView.setVisibility(0);
      if ((0x2 & this.mDisabled) == 0)
        setNotificationIconVisibility(true, 17432576);
      if (this.mDateView.getVisibility() == 0)
        setDateViewVisibility(false, 17432577);
      if (!this.mExpanded)
        continue;
      this.mExpanded = false;
    }
  }

  void performExpand()
  {
    if ((0x1 & this.mDisabled) != 0);
    while (true)
    {
      return;
      if (!this.mExpanded)
      {
        this.mExpanded = true;
        makeExpandedVisible();
        updateExpandedViewPos(-10001);
        continue;
      }
    }
  }

  void performFling(int paramInt, float paramFloat, boolean paramBoolean)
  {
    this.mAnimatingReveal = false;
    this.mDisplayHeight = this.mDisplay.getHeight();
    this.mAnimY = paramInt;
    this.mAnimVel = paramFloat;
    if (this.mExpanded)
      if ((!paramBoolean) && ((paramFloat > 200.0F) || ((paramInt > this.mDisplayHeight - 25.0F) && (paramFloat > -200.0F))))
      {
        this.mAnimAccel = 2000.0F;
        if (paramFloat < 0.0F)
          this.mAnimVel = 0.0F;
      }
    while (true)
    {
      long l = SystemClock.uptimeMillis();
      this.mAnimLastTime = l;
      this.mCurAnimationTime = (l + 16L);
      this.mAnimating = true;
      this.mHandler.removeMessages(1000);
      this.mHandler.removeMessages(1001);
      this.mHandler.sendMessageAtTime(this.mHandler.obtainMessage(1000), this.mCurAnimationTime);
      stopTracking();
      return;
      this.mAnimAccel = -2000.0F;
      if (paramFloat <= 0.0F)
        continue;
      this.mAnimVel = 0.0F;
      continue;
      if ((paramBoolean) || (paramFloat > 200.0F) || ((paramInt > this.mDisplayHeight / 2.0F) && (paramFloat > -200.0F)))
      {
        this.mAnimAccel = 2000.0F;
        if (paramFloat >= 0.0F)
          continue;
        this.mAnimVel = 0.0F;
        continue;
      }
      this.mAnimAccel = -2000.0F;
      if (paramFloat <= 0.0F)
        continue;
      this.mAnimVel = 0.0F;
    }
  }

  void prepareTracking(int paramInt, boolean paramBoolean)
  {
    this.mTracking = true;
    this.mVelocityTracker = VelocityTracker.obtain();
    if (paramBoolean)
    {
      this.mAnimAccel = 2000.0F;
      this.mAnimVel = 200.0F;
      this.mStatusBarView.getHeight();
      this.mAnimY = 0;
      updateExpandedViewPos((int)this.mAnimY);
      this.mAnimating = true;
      this.mAnimatingReveal = true;
      this.mHandler.removeMessages(1000);
      this.mHandler.removeMessages(1001);
      long l = SystemClock.uptimeMillis();
      this.mAnimLastTime = l;
      this.mCurAnimationTime = (l + 16L);
      this.mAnimating = true;
      this.mHandler.sendMessageAtTime(this.mHandler.obtainMessage(1001), this.mCurAnimationTime);
      makeExpandedVisible();
    }
    while (true)
    {
      return;
      if (this.mAnimating)
      {
        this.mAnimating = false;
        this.mHandler.removeMessages(1000);
      }
      updateExpandedViewPos(paramInt + this.mViewDelta);
    }
  }

  public void removeIcon(String paramString, int paramInt1, int paramInt2)
  {
    this.mStatusIcons.removeViewAt(paramInt2);
  }

  public void removeNotification(IBinder paramIBinder)
  {
    if (removeNotificationViews(paramIBinder) != null)
    {
      setAreThereNotifications();
      updateExpandedViewPos(-10000);
    }
  }

  StatusBarNotification removeNotificationViews(IBinder paramIBinder)
  {
    NotificationData.Entry localEntry = this.mOngoing.remove(paramIBinder);
    StatusBarNotification localStatusBarNotification;
    if (localEntry == null)
    {
      localEntry = this.mLatest.remove(paramIBinder);
      if (localEntry == null)
      {
        localEntry = this.mMiniConData.remove(paramIBinder);
        if (localEntry == null)
        {
          Slog.w("StatusBarService", "removeNotification for unknown key: " + paramIBinder);
          localStatusBarNotification = null;
          return localStatusBarNotification;
        }
      }
    }
    if (!localEntry.notification.isMiniCon())
      ((ViewGroup)localEntry.row.getParent()).removeView(localEntry.row);
    while (true)
    {
      ((ViewGroup)localEntry.icon.getParent()).removeView(localEntry.icon);
      localStatusBarNotification = localEntry.notification;
      break;
      ((ViewGroup)localEntry.expanded.getParent()).removeView(localEntry.expanded);
      Slog.i("StatusBarService", "REMOVE:MiniCon-" + localEntry.notification.notification.twQuickPanelEvent);
    }
  }

  void setDateViewVisibility(boolean paramBoolean, int paramInt)
  {
    this.mDateView.setUpdates(paramBoolean);
    DateView localDateView = this.mDateView;
    if (paramBoolean);
    for (int i = 0; ; i = 4)
    {
      localDateView.setVisibility(i);
      this.mDateView.startAnimation(loadAnim(paramInt, null));
      return;
    }
  }

  void setNotificationIconVisibility(boolean paramBoolean, int paramInt)
  {
    int i = this.mNotificationIcons.getVisibility();
    if (paramBoolean);
    for (int j = 0; ; j = 4)
    {
      if (i != j)
      {
        this.mNotificationIcons.setVisibility(j);
        this.mNotificationIcons.startAnimation(loadAnim(paramInt, null));
      }
      return;
    }
  }

  public void showCallOnGoingView()
  {
    if (this.mStatusBarView.indexOfChild(this.mCallOnGoingView) == -1)
      this.mStatusBarView.addView(this.mCallOnGoingView);
  }

  void stopTracking()
  {
    this.mTracking = false;
    this.mVelocityTracker.recycle();
    this.mVelocityTracker = null;
  }

  void updateExpandedHeight()
  {
    if (this.mExpandedView != null)
    {
      this.mExpandedParams.height = getExpandedHeight();
      this.mExpandedDialog.getWindow().setAttributes(this.mExpandedParams);
    }
  }

  void updateExpandedViewPos(int paramInt)
  {
    int i = this.mStatusBarView.getHeight();
    int j = this.mDisplay.getHeight();
    if (!this.mExpandedVisible)
    {
      if (this.mTrackingView != null)
      {
        this.mTrackingPosition = (-j);
        if (this.mTrackingParams != null)
        {
          this.mTrackingParams.y = this.mTrackingPosition;
          WindowManagerImpl.getDefault().updateViewLayout(this.mTrackingView, this.mTrackingParams);
        }
      }
      if (this.mExpandedParams != null)
      {
        this.mExpandedParams.y = (-j);
        this.mExpandedDialog.getWindow().setAttributes(this.mExpandedParams);
      }
    }
    int m;
    while (true)
    {
      return;
      if (paramInt != -10001)
        break;
      m = i;
      label109: this.mTrackingParams.y = m;
      this.mTrackingPosition = m;
      this.mTrackingParams.height = (j - i);
      WindowManagerImpl.getDefault().updateViewLayout(this.mTrackingView, this.mTrackingParams);
      if (this.mExpandedParams == null)
        continue;
      this.mCloseView.getLocationInWindow(this.mPositionTmp);
      int n = this.mPositionTmp[1];
      this.mExpandedContents.getLocationInWindow(this.mPositionTmp);
      int i1 = this.mPositionTmp[1] + this.mExpandedContents.getHeight();
      if (paramInt == -10000)
        continue;
      this.mExpandedParams.y = (m + this.mTrackingView.getHeight() - (this.mTrackingParams.height - n) - i1);
      if (this.mExpandedParams.y > i)
        this.mExpandedParams.y = i;
      int i2 = this.mTrackingPosition;
      if (this.mExpandedParams.y < i2)
        this.mExpandedParams.y = i2;
      if (this.mTrackingPosition + this.mTrackingView.getHeight() <= i)
        break label382;
    }
    label382: for (boolean bool = true; ; bool = false)
    {
      if (!bool)
        this.mExpandedParams.y = (-j);
      this.mExpandedDialog.getWindow().setAttributes(this.mExpandedParams);
      visibilityChanged(bool);
      break;
      if (paramInt == -10000)
      {
        m = this.mTrackingPosition;
        break label109;
      }
      if (paramInt <= j);
      for (int k = paramInt; ; k = j)
      {
        m = k - (j - i);
        break;
      }
    }
  }

  public void updateIcon(String paramString, int paramInt1, int paramInt2, StatusBarIcon paramStatusBarIcon1, StatusBarIcon paramStatusBarIcon2)
  {
    ((StatusBarIconView)this.mStatusIcons.getChildAt(paramInt2)).set(paramStatusBarIcon2);
  }

  public void updateNotification(IBinder paramIBinder, StatusBarNotification paramStatusBarNotification)
  {
    int i = this.mOngoing.findEntry(paramIBinder);
    NotificationData localNotificationData;
    if (i >= 0)
      localNotificationData = this.mOngoing;
    NotificationData.Entry localEntry;
    while (true)
    {
      localEntry = localNotificationData.getEntryAt(i);
      StatusBarNotification localStatusBarNotification = localEntry.notification;
      RemoteViews localRemoteViews1 = localStatusBarNotification.notification.contentView;
      RemoteViews localRemoteViews2 = paramStatusBarNotification.notification.contentView;
      if ((paramStatusBarNotification.notification.when == localStatusBarNotification.notification.when) && (paramStatusBarNotification.isOngoing() == localStatusBarNotification.isOngoing()) && (localEntry.expanded != null) && (localRemoteViews2 != null) && (localRemoteViews1 != null) && (localRemoteViews2.getPackage() != null) && (localRemoteViews1.getPackage() != null) && (localRemoteViews1.getPackage().equals(localRemoteViews2.getPackage())) && (localRemoteViews1.getLayoutId() == localRemoteViews2.getLayoutId()))
      {
        localEntry.notification = paramStatusBarNotification;
        try
        {
          if (!paramStatusBarNotification.isMiniCon())
            localRemoteViews2.reapply(this, localEntry.content);
          while (true)
          {
            PendingIntent localPendingIntent = paramStatusBarNotification.notification.contentIntent;
            if (localPendingIntent != null)
              localEntry.content.setOnClickListener(new Launcher(localPendingIntent, paramStatusBarNotification.pkg, paramStatusBarNotification.tag, paramStatusBarNotification.id));
            StatusBarIcon localStatusBarIcon = new StatusBarIcon(paramStatusBarNotification.pkg, paramStatusBarNotification.notification.icon, paramStatusBarNotification.notification.iconLevel, paramStatusBarNotification.notification.number);
            if (localEntry.icon.set(localStatusBarIcon))
              break label459;
            handleNotificationError(paramIBinder, paramStatusBarNotification, "Couldn't update icon: " + localStatusBarIcon);
            while (true)
            {
              return;
              i = this.mLatest.findEntry(paramIBinder);
              if (i >= 0)
              {
                localNotificationData = this.mLatest;
                break;
              }
              i = this.mMiniConData.findEntry(paramIBinder);
              if (i >= 0)
                break label355;
              Slog.w("StatusBarService", "updateNotification for unknown key: " + paramIBinder);
            }
            label355: localNotificationData = this.mMiniConData;
            break;
            localRemoteViews2.reapply(this, localEntry.expanded);
            Slog.i("StatusBarService", "UPDATE:MiniCon-" + paramStatusBarNotification.notification.twQuickPanelEvent);
          }
        }
        catch (RuntimeException localRuntimeException)
        {
          Slog.w("StatusBarService", "Couldn't reapply views for package " + localRemoteViews2.getPackage(), localRuntimeException);
          removeNotificationViews(paramIBinder);
          addNotificationViews(paramIBinder, paramStatusBarNotification);
        }
      }
    }
    while (true)
    {
      label459: if ((paramStatusBarNotification.notification.tickerText != null) && (!TextUtils.equals(paramStatusBarNotification.notification.tickerText, localEntry.notification.notification.tickerText)))
        tick(paramStatusBarNotification);
      setAreThereNotifications();
      updateExpandedViewPos(-10000);
      break;
      removeNotificationViews(paramIBinder);
      addNotificationViews(paramIBinder, paramStatusBarNotification);
    }
  }

  void updateResources()
  {
    Resources localResources = getResources();
    this.mClearButton.setText(getText(2131165185));
    this.mOngoingTitle.setText(getText(2131165187));
    this.mLatestTitle.setText(getText(2131165188));
    this.mNoNotificationsTitle.setText(getText(2131165186));
    this.mEdgeBorder = localResources.getDimensionPixelSize(2131099648);
  }

  void vibrate()
  {
    ((Vibrator)getSystemService("vibrator")).vibrate(250L);
  }

  public String viewInfo(View paramView)
  {
    return "(" + paramView.getLeft() + "," + paramView.getTop() + ")(" + paramView.getRight() + "," + paramView.getBottom() + " " + paramView.getWidth() + "x" + paramView.getHeight() + ")";
  }

  void visibilityChanged(boolean paramBoolean)
  {
    if (this.mPanelSlightlyVisible != paramBoolean)
      this.mPanelSlightlyVisible = paramBoolean;
    try
    {
      this.mBarService.onPanelRevealed();
      label22: return;
    }
    catch (RemoteException localRemoteException)
    {
      break label22;
    }
  }

  private class ExpandedDialog extends Dialog
  {
    ExpandedDialog(Context arg2)
    {
      super(16973837);
    }

    public boolean dispatchKeyEvent(KeyEvent paramKeyEvent)
    {
      int i;
      if (paramKeyEvent.getAction() == 0)
      {
        i = 1;
        switch (paramKeyEvent.getKeyCode())
        {
        default:
        case 4:
        }
      }
      for (boolean bool = super.dispatchKeyEvent(paramKeyEvent); ; bool = true)
      {
        return bool;
        i = 0;
        break;
        if (i != 0)
          continue;
        StatusBarService.this.animateCollapse();
      }
    }
  }

  private class H extends Handler
  {
    private H()
    {
    }

    public void handleMessage(Message paramMessage)
    {
      switch (paramMessage.what)
      {
      default:
      case 1000:
      case 1001:
      }
      while (true)
      {
        return;
        StatusBarService.this.doAnimation();
        continue;
        StatusBarService.this.doRevealAnimation();
      }
    }
  }

  private class Launcher
    implements View.OnClickListener
  {
    private int mId;
    private PendingIntent mIntent;
    private String mPkg;
    private String mTag;

    Launcher(PendingIntent paramString1, String paramString2, String paramInt, int arg5)
    {
      this.mIntent = paramString1;
      this.mPkg = paramString2;
      this.mTag = paramInt;
      int i;
      this.mId = i;
    }

    public void onClick(View paramView)
    {
      try
      {
        ActivityManagerNative.getDefault().resumeAppSwitches();
        label8: Intent localIntent;
        if (this.mIntent != null)
        {
          int[] arrayOfInt = new int[2];
          paramView.getLocationOnScreen(arrayOfInt);
          localIntent = new Intent();
          localIntent.setSourceBounds(new Rect(arrayOfInt[0], arrayOfInt[1], arrayOfInt[0] + paramView.getWidth(), arrayOfInt[1] + paramView.getHeight()));
        }
        try
        {
          this.mIntent.send(StatusBarService.this, 0, localIntent);
        }
        catch (PendingIntent.CanceledException localCanceledException)
        {
          try
          {
            while (true)
            {
              StatusBarService.this.mBarService.onNotificationClick(this.mPkg, this.mTag, this.mId);
              label111: StatusBarService.this.animateCollapse();
              return;
              localCanceledException = localCanceledException;
              Slog.w("StatusBarService", "Sending contentIntent failed: " + localCanceledException);
            }
          }
          catch (RemoteException localRemoteException2)
          {
            break label111;
          }
        }
      }
      catch (RemoteException localRemoteException1)
      {
        break label8;
      }
    }
  }

  private class MyTicker extends Ticker
  {
    MyTicker(Context paramStatusBarView, StatusBarView arg3)
    {
      super(localStatusBarView);
    }

    void tickerDone()
    {
      StatusBarService.access$102(StatusBarService.this, false);
      StatusBarService.this.mIcons.setVisibility(0);
      StatusBarService.this.mTickerView.setVisibility(8);
      StatusBarService.this.mIcons.startAnimation(StatusBarService.this.loadAnim(17432612, null));
      StatusBarService.this.mTickerView.startAnimation(StatusBarService.this.loadAnim(17432613, null));
      if (StatusBarService.this.mExpandedVisible)
        StatusBarService.this.setDateViewVisibility(true, 17432612);
    }

    void tickerHalting()
    {
      StatusBarService.access$102(StatusBarService.this, false);
      StatusBarService.this.mIcons.setVisibility(0);
      StatusBarService.this.mTickerView.setVisibility(8);
      StatusBarService.this.mIcons.startAnimation(StatusBarService.this.loadAnim(17432576, null));
      StatusBarService.this.mTickerView.startAnimation(StatusBarService.this.loadAnim(17432577, null));
      if (StatusBarService.this.mExpandedVisible)
        StatusBarService.this.setDateViewVisibility(true, 17432576);
    }

    void tickerStarting()
    {
      StatusBarService.access$102(StatusBarService.this, true);
      StatusBarService.this.mIcons.setVisibility(8);
      StatusBarService.this.mTickerView.setVisibility(0);
      StatusBarService.this.mTickerView.startAnimation(StatusBarService.this.loadAnim(17432614, null));
      StatusBarService.this.mIcons.startAnimation(StatusBarService.this.loadAnim(17432615, null));
      if (StatusBarService.this.mExpandedVisible)
        StatusBarService.this.setDateViewVisibility(false, 17432615);
    }
  }
}

