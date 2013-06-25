.class public Lcom/android/internal/policy/impl/CircleLockScreen;
.super Landroid/widget/FrameLayout;
.source "CircleLockScreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardScreen;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/CircleLockScreen$WallpaperWidget;
    }
.end annotation


# static fields
.field private static final LOCK_KEY:Ljava/lang/String; = "ril.pin_mode"


# instance fields
.field private final BATTERY_INFO_NOT_DISPLAY:I

.field private DBG:Z

.field private TAG:Ljava/lang/String;

.field private mBackgroudLayout:Landroid/widget/RelativeLayout;

.field private mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mCircleLockScreenTTS:Lcom/android/internal/policy/impl/CircleLockScreenTTS;

.field private mCircleUnlockView:Lcom/android/internal/policy/impl/CircleUnlockView;

.field private mClockWidget:Lcom/android/internal/policy/impl/ClockWidget;

.field private mComponentBox:Landroid/widget/LinearLayout;

.field private mContext:Landroid/content/Context;

.field private mCreationOrientation:I

.field private mHelpText:Landroid/widget/TextView;

.field private mImageView:Landroid/widget/ImageView;

.field private mIsLiveWallpaper:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mMissedEventWidget:Lcom/android/internal/policy/impl/CircleMissedEventWidget;

.field private mMusicWidget:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

.field private mPlmnText:Landroid/widget/TextView;

.field private mRootLayout:Landroid/widget/RelativeLayout;

.field private mShadowImage:Landroid/widget/ImageView;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

.field private mWallpaper:Lcom/android/internal/policy/impl/CircleLockScreen$WallpaperWidget;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
    .locals 8
    .parameter "context"
    .parameter "configuration"
    .parameter "lockPatternUtils"
    .parameter "updateMonitor"
    .parameter "callback"

    .prologue
    const/high16 v7, 0x4160

    const/high16 v6, 0x3f80

    const/4 v5, 0x0

    const/4 v3, 0x1

    const/4 v4, -0x1

    .line 89
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 55
    const-string v1, "CircleLockScreen"

    iput-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->TAG:Ljava/lang/String;

    .line 56
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->DBG:Z

    .line 84
    iput v5, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->BATTERY_INFO_NOT_DISPLAY:I

    .line 91
    iput-object p1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mContext:Landroid/content/Context;

    .line 92
    iput-object p4, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 93
    iput-object p5, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 94
    iput-object p3, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 95
    iget v1, p2, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCreationOrientation:I

    .line 97
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/CircleLockScreen;->setFocusable(Z)V

    .line 98
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/CircleLockScreen;->setFocusableInTouchMode(Z)V

    .line 99
    const/high16 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/CircleLockScreen;->setDescendantFocusability(I)V

    .line 101
    new-instance v1, Lcom/android/internal/policy/impl/CircleLockScreenTTS;

    invoke-direct {v1, p1}, Lcom/android/internal/policy/impl/CircleLockScreenTTS;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCircleLockScreenTTS:Lcom/android/internal/policy/impl/CircleLockScreenTTS;

    .line 104
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lockscreen_wallpaper"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_2

    move v1, v5

    :goto_0
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mIsLiveWallpaper:Z

    .line 110
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mRootLayout:Landroid/widget/RelativeLayout;

    .line 113
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mIsLiveWallpaper:Z

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/internal/policy/impl/CircleLockScreen$WallpaperWidget;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/policy/impl/CircleLockScreen$WallpaperWidget;-><init>(Lcom/android/internal/policy/impl/CircleLockScreen;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mWallpaper:Lcom/android/internal/policy/impl/CircleLockScreen$WallpaperWidget;

    .line 116
    :cond_0
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mComponentBox:Landroid/widget/LinearLayout;

    .line 117
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mComponentBox:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 120
    new-instance v1, Lcom/android/internal/policy/impl/CircleUnlockView;

    invoke-direct {v1, p1, p5}, Lcom/android/internal/policy/impl/CircleUnlockView;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCircleUnlockView:Lcom/android/internal/policy/impl/CircleUnlockView;

    .line 121
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCircleUnlockView:Lcom/android/internal/policy/impl/CircleUnlockView;

    new-instance v2, Lcom/android/internal/policy/impl/CircleLockScreen$1;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/CircleLockScreen$1;-><init>(Lcom/android/internal/policy/impl/CircleLockScreen;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/CircleUnlockView;->setOnCircleTouchListener(Lcom/android/internal/policy/impl/CircleUnlockView$OnCircleTouchListener;)V

    .line 142
    new-instance v1, Lcom/android/internal/policy/impl/ClockWidget;

    invoke-direct {v1, p1, p4, p2}, Lcom/android/internal/policy/impl/ClockWidget;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Landroid/content/res/Configuration;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/ClockWidget;

    .line 145
    new-instance v1, Lcom/android/internal/policy/impl/CircleMissedEventWidget;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/CircleLockScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCircleUnlockView:Lcom/android/internal/policy/impl/CircleUnlockView;

    invoke-direct {v1, v2, v3, p5}, Lcom/android/internal/policy/impl/CircleMissedEventWidget;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/CircleUnlockView;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mMissedEventWidget:Lcom/android/internal/policy/impl/CircleMissedEventWidget;

    .line 148
    new-instance v1, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/CircleLockScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p5, p4}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mMusicWidget:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    .line 149
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mMusicWidget:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->setTopLayout()V

    .line 153
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mShadowImage:Landroid/widget/ImageView;

    .line 154
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mShadowImage:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 155
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mShadowImage:Landroid/widget/ImageView;

    const v2, 0x10803ae

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 158
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mImageView:Landroid/widget/ImageView;

    .line 159
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mImageView:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 162
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mHelpText:Landroid/widget/TextView;

    .line 163
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mHelpText:Landroid/widget/TextView;

    const v2, 0x1040466

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 164
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mHelpText:Landroid/widget/TextView;

    const/high16 v2, -0x100

    invoke-virtual {v1, v6, v6, v6, v2}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 165
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mHelpText:Landroid/widget/TextView;

    const v2, -0x141415

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 166
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mHelpText:Landroid/widget/TextView;

    const/4 v2, 0x2

    const/high16 v3, 0x41a8

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 167
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/CircleLockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 168
    .local v0, scale:F
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mHelpText:Landroid/widget/TextView;

    mul-float v2, v7, v0

    float-to-int v2, v2

    mul-float v3, v7, v0

    float-to-int v3, v3

    invoke-virtual {v1, v5, v2, v5, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 169
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mHelpText:Landroid/widget/TextView;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 170
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mHelpText:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setCursorVisible(Z)V

    .line 172
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mBackgroudLayout:Landroid/widget/RelativeLayout;

    .line 173
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mIsLiveWallpaper:Z

    if-nez v1, :cond_1

    .line 174
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mBackgroudLayout:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mWallpaper:Lcom/android/internal/policy/impl/CircleLockScreen$WallpaperWidget;

    invoke-virtual {v1, v2, v4, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    .line 175
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mBackgroudLayout:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mShadowImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v4, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    .line 176
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mBackgroudLayout:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v4, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    .line 179
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/CircleLockScreen;->setComponentLayout(Landroid/content/Context;)V

    .line 181
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mRootLayout:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mBackgroudLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2, v4, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    .line 182
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mRootLayout:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mComponentBox:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2, v4, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    .line 183
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mRootLayout:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCircleUnlockView:Lcom/android/internal/policy/impl/CircleUnlockView;

    invoke-virtual {v1, v2, v4, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    .line 184
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mRootLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/CircleLockScreen;->addView(Landroid/view/View;)V

    .line 187
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerInfoCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;)V

    .line 188
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerSimStateCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;)V

    .line 189
    return-void

    .end local v0           #scale:F
    :cond_2
    move v1, v3

    .line 104
    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/CircleLockScreen;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/CircleLockScreen;->bedimBackground(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/CircleLockScreen;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    return-object v0
.end method

.method private bedimBackground(Z)V
    .locals 4
    .parameter "on"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x4

    .line 308
    if-eqz p1, :cond_2

    .line 312
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mMusicWidget:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mMusicWidget:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->setVisibility(I)V

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCircleUnlockView:Lcom/android/internal/policy/impl/CircleUnlockView;

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/CircleUnlockView;->setVisibility(I)V

    .line 317
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mRootLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->buildDrawingCache()V

    .line 319
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mRootLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 320
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCircleUnlockView:Lcom/android/internal/policy/impl/CircleUnlockView;

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/CircleUnlockView;->setVisibility(I)V

    .line 322
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mImageView:Landroid/widget/ImageView;

    const/16 v1, 0x4c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 324
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mIsLiveWallpaper:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mWallpaper:Lcom/android/internal/policy/impl/CircleLockScreen$WallpaperWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/CircleLockScreen$WallpaperWidget;->setLockScreenBlack()V

    .line 326
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mComponentBox:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 328
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 343
    :goto_0
    return-void

    .line 333
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mMusicWidget:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 334
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mMusicWidget:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->setVisibility(I)V

    .line 338
    :cond_3
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mIsLiveWallpaper:Z

    if-nez v0, :cond_4

    .line 339
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mWallpaper:Lcom/android/internal/policy/impl/CircleLockScreen$WallpaperWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/CircleLockScreen$WallpaperWidget;->setLockScreenWallpaper()V

    .line 340
    :cond_4
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mComponentBox:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 341
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method static getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2
    .parameter "telephonyPlmn"
    .parameter "telephonySpn"

    .prologue
    .line 635
    if-eqz p0, :cond_0

    if-nez p1, :cond_0

    move-object v0, p0

    .line 645
    :goto_0
    return-object v0

    .line 637
    :cond_0
    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    .line 638
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    move-object v0, p0

    .line 639
    goto :goto_0

    .line 641
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

    .line 642
    :cond_2
    if-nez p0, :cond_3

    if-eqz p1, :cond_3

    move-object v0, p1

    .line 643
    goto :goto_0

    .line 645
    :cond_3
    const-string v0, ""

    goto :goto_0
.end method

.method private getPermanentBlockString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 650
    const-string v1, "ril.pin_mode"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 651
    .local v0, lock_key:Ljava/lang/String;
    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 652
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPermanentBlockString :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v0

    .line 655
    :goto_0
    return-object v1

    :cond_1
    const-string v1, "0"

    goto :goto_0
.end method

.method private setComponentLayout(Landroid/content/Context;)V
    .locals 11
    .parameter "context"

    .prologue
    const/16 v10, 0x10

    const/4 v6, 0x2

    const/high16 v9, 0x3f80

    const/4 v8, -0x2

    const/4 v7, -0x1

    .line 208
    iget v4, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCreationOrientation:I

    if-eq v4, v6, :cond_1

    .line 213
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "clock_position"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 214
    .local v1, layoutPosition:I
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->DBG:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Clock position from setting = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :cond_0
    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 218
    .local v3, mBlankLayout:Landroid/widget/FrameLayout;
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 219
    .local v0, blankLayoutParams:Landroid/widget/LinearLayout$LayoutParams;
    iput v9, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 221
    packed-switch v1, :pswitch_data_0

    .line 304
    .end local v0           #blankLayoutParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v1           #layoutPosition:I
    .end local v3           #mBlankLayout:Landroid/widget/FrameLayout;
    :goto_0
    return-void

    .line 225
    .restart local v0       #blankLayoutParams:Landroid/widget/LinearLayout$LayoutParams;
    .restart local v1       #layoutPosition:I
    .restart local v3       #mBlankLayout:Landroid/widget/FrameLayout;
    :pswitch_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mShadowImage:Landroid/widget/ImageView;

    const v5, 0x10803ae

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 229
    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/ClockWidget;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/ClockWidget;->getRootLayout()Landroid/widget/LinearLayout;

    move-result-object v4

    const/16 v5, 0x30

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 231
    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/ClockWidget;

    const/16 v5, 0x30

    invoke-virtual {v4, v5}, Lcom/android/internal/policy/impl/ClockWidget;->setGravity(I)V

    .line 232
    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mComponentBox:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/ClockWidget;

    invoke-virtual {v4, v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 235
    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mComponentBox:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mMissedEventWidget:Lcom/android/internal/policy/impl/CircleMissedEventWidget;

    invoke-virtual {v4, v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 238
    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mComponentBox:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mHelpText:Landroid/widget/TextView;

    invoke-virtual {v4, v5, v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 242
    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mMusicWidget:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->setBottomLayout()V

    .line 245
    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mComponentBox:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mMusicWidget:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-virtual {v4, v5, v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    goto :goto_0

    .line 251
    :pswitch_1
    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mShadowImage:Landroid/widget/ImageView;

    const v5, 0x10803af

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 255
    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mMusicWidget:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->setTopLayout()V

    .line 257
    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mComponentBox:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mMusicWidget:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-virtual {v4, v5, v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 261
    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/ClockWidget;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/ClockWidget;->getRootLayout()Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 262
    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/ClockWidget;

    invoke-virtual {v4, v10}, Lcom/android/internal/policy/impl/ClockWidget;->setGravity(I)V

    .line 263
    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mComponentBox:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/ClockWidget;

    invoke-virtual {v4, v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 266
    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mComponentBox:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mMissedEventWidget:Lcom/android/internal/policy/impl/CircleMissedEventWidget;

    invoke-virtual {v4, v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 269
    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mComponentBox:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mHelpText:Landroid/widget/TextView;

    invoke-virtual {v4, v5, v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    goto :goto_0

    .line 274
    :pswitch_2
    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mShadowImage:Landroid/widget/ImageView;

    const v5, 0x10803ad

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 278
    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mMusicWidget:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->setTopLayout()V

    .line 279
    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mComponentBox:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mMusicWidget:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-virtual {v4, v5, v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 282
    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mComponentBox:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mHelpText:Landroid/widget/TextView;

    invoke-virtual {v4, v5, v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 285
    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mComponentBox:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mMissedEventWidget:Lcom/android/internal/policy/impl/CircleMissedEventWidget;

    invoke-virtual {v4, v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 289
    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/ClockWidget;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/ClockWidget;->getRootLayout()Landroid/widget/LinearLayout;

    move-result-object v4

    const/16 v5, 0x50

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 291
    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/ClockWidget;

    const/16 v5, 0x50

    invoke-virtual {v4, v5}, Lcom/android/internal/policy/impl/ClockWidget;->setGravity(I)V

    .line 292
    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mComponentBox:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/ClockWidget;

    invoke-virtual {v4, v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 298
    .end local v0           #blankLayoutParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v1           #layoutPosition:I
    .end local v3           #mBlankLayout:Landroid/widget/FrameLayout;
    :cond_1
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 299
    .local v2, lp:Landroid/widget/LinearLayout$LayoutParams;
    iput v9, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 300
    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mComponentBox:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mMusicWidget:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-virtual {v4, v5, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 301
    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mComponentBox:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mMissedEventWidget:Lcom/android/internal/policy/impl/CircleMissedEventWidget;

    invoke-virtual {v4, v5, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 302
    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mComponentBox:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/ClockWidget;

    invoke-virtual {v4, v5, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 221
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public cleanUp()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 384
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->DBG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->TAG:Ljava/lang/String;

    const-string v1, "cleanUp()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 387
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mIsLiveWallpaper:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mWallpaper:Lcom/android/internal/policy/impl/CircleLockScreen$WallpaperWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/CircleLockScreen$WallpaperWidget;->cleanUp()V

    .line 388
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mMusicWidget:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->cleanUp()V

    .line 389
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/ClockWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/ClockWidget;->cleanUp()V

    .line 390
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mMissedEventWidget:Lcom/android/internal/policy/impl/CircleMissedEventWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->cleanUp()V

    .line 392
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCircleUnlockView:Lcom/android/internal/policy/impl/CircleUnlockView;

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/CircleUnlockView;->setOnCircleTouchListener(Lcom/android/internal/policy/impl/CircleUnlockView$OnCircleTouchListener;)V

    .line 393
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCircleUnlockView:Lcom/android/internal/policy/impl/CircleUnlockView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/CircleUnlockView;->cleanUp()V

    .line 398
    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 399
    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 400
    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 401
    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mContext:Landroid/content/Context;

    .line 402
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/16 v4, 0x1f4

    const/4 v3, 0x0

    .line 193
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 194
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/CircleLockScreen;->isShown()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v3

    .line 202
    :goto_0
    return v1

    .line 197
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/ClockWidget;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/ClockWidget;->getTTSMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mMissedEventWidget:Lcom/android/internal/policy/impl/CircleMissedEventWidget;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->getTTSMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 198
    .local v0, text:Ljava/lang/CharSequence;
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-le v1, v4, :cond_1

    .line 199
    invoke-interface {v0, v3, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 201
    :cond_1
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 446
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 579
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 580
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 368
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->DBG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->TAG:Ljava/lang/String;

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mMusicWidget:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->onPause()V

    .line 370
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/ClockWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/ClockWidget;->onPause()V

    .line 371
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mMissedEventWidget:Lcom/android/internal/policy/impl/CircleMissedEventWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->onPause()V

    .line 372
    return-void
.end method

.method public onPhoneStateChanged(Ljava/lang/String;)V
    .locals 0
    .parameter "newState"

    .prologue
    .line 441
    return-void
.end method

.method public onRefreshBatteryInfo(ZZI)V
    .locals 1
    .parameter "showBatteryInfo"
    .parameter "pluggedIn"
    .parameter "batteryLevel"

    .prologue
    .line 417
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/ClockWidget;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/policy/impl/ClockWidget;->refreshBatteryInfo(ZZI)V

    .line 418
    return-void
.end method

.method public onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "plmn"
    .parameter "spn"

    .prologue
    .line 428
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/ClockWidget;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/policy/impl/ClockWidget;->onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 429
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 376
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->DBG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->TAG:Ljava/lang/String;

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mMusicWidget:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->onResume()V

    .line 378
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/ClockWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/ClockWidget;->onResume()V

    .line 379
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mMissedEventWidget:Lcom/android/internal/policy/impl/CircleMissedEventWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->onResume()V

    .line 380
    return-void
.end method

.method public onRingerModeChanged(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 435
    return-void
.end method

.method public onSimStateChanged(Lcom/android/internal/telephony/IccCard$State;)V
    .locals 1
    .parameter "simState"

    .prologue
    .line 574
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/ClockWidget;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/ClockWidget;->onSimStateChanged(Lcom/android/internal/telephony/IccCard$State;)V

    .line 575
    return-void
.end method

.method public onTimeChanged()V
    .locals 0

    .prologue
    .line 424
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 363
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCircleUnlockView:Lcom/android/internal/policy/impl/CircleUnlockView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/policy/impl/CircleUnlockView;->handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onUpdateBatteryInfo(II)V
    .locals 3
    .parameter "batteryInfoStatus"
    .parameter "batteryLevel"

    .prologue
    .line 661
    const/4 v0, 0x0

    .line 662
    .local v0, mPlugedState:Z
    if-nez p1, :cond_0

    .line 663
    const/4 v0, 0x0

    .line 668
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/ClockWidget;

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->shouldShowBatteryInfo()Z

    move-result v2

    invoke-virtual {v1, v2, v0, p2}, Lcom/android/internal/policy/impl/ClockWidget;->refreshBatteryInfo(ZZI)V

    .line 669
    return-void

    .line 666
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setScreenOff()V
    .locals 0

    .prologue
    .line 410
    return-void
.end method

.method public setScreenOn()V
    .locals 0

    .prologue
    .line 406
    return-void
.end method

.method public updateText()V
    .locals 9

    .prologue
    const v8, 0x104031e

    const/4 v5, 0x1

    const/4 v4, 0x0

    const v6, 0x104031b

    const-string v7, ". "

    .line 584
    iget-object v3, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mContext:Landroid/content/Context;

    if-nez v3, :cond_1

    .line 631
    :cond_0
    :goto_0
    return-void

    .line 586
    :cond_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    .line 589
    .local v1, simState:I
    iget-object v3, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mPlmnText:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 591
    const-string v0, "0"

    .line 594
    .local v0, lock_key:Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/internal/policy/impl/CircleLockScreen;->getPermanentBlockString()Ljava/lang/String;

    move-result-object v0

    .line 595
    iget-object v3, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mPlmnText:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 598
    if-ne v1, v5, :cond_2

    iget-object v3, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v3

    if-nez v3, :cond_2

    .line 599
    iget-object v3, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mPlmnText:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonyPlmn()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/CircleLockScreen;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/policy/impl/CircleLockScreen;->getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 601
    :cond_2
    const-string v3, "0"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 602
    const-string v3, "2"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 603
    iget-object v3, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mPlmnText:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mContext:Landroid/content/Context;

    const v6, 0x1040477

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mContext:Landroid/content/Context;

    const v6, 0x1040478

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 604
    :cond_3
    const-string v3, "3"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 605
    iget-object v3, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mPlmnText:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mContext:Landroid/content/Context;

    const v6, 0x1040477

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mContext:Landroid/content/Context;

    const v6, 0x1040479

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 608
    :cond_4
    if-ne v1, v5, :cond_5

    .line 609
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 610
    .local v2, str:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mPlmnText:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 612
    .end local v2           #str:Ljava/lang/String;
    :cond_5
    const/4 v3, 0x4

    if-ne v1, v3, :cond_6

    .line 613
    iget-object v3, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mPlmnText:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonyPlmn()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/CircleLockScreen;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/policy/impl/CircleLockScreen;->getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 615
    :cond_6
    const/4 v3, 0x2

    if-ne v1, v3, :cond_7

    .line 616
    iget-object v3, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mPlmnText:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonyPlmn()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/CircleLockScreen;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x1040329

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/policy/impl/CircleLockScreen;->getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 618
    :cond_7
    const/4 v3, 0x3

    if-ne v1, v3, :cond_8

    .line 619
    iget-object v3, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mPlmnText:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonyPlmn()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/CircleLockScreen;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x1040327

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/policy/impl/CircleLockScreen;->getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 621
    :cond_8
    const/4 v3, 0x5

    if-ne v1, v3, :cond_9

    .line 622
    iget-object v3, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mPlmnText:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonyPlmn()Ljava/lang/CharSequence;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonySpn()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/policy/impl/CircleLockScreen;->getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 624
    :cond_9
    if-nez v1, :cond_a

    .line 625
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 626
    .restart local v2       #str:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mPlmnText:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 629
    .end local v2           #str:Ljava/lang/String;
    :cond_a
    iget-object v3, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mPlmnText:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0
.end method
