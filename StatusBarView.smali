.class public Lcom/android/systemui/statusbar/StatusBarView;
.super Landroid/widget/FrameLayout;
.source "StatusBarView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/StatusBarView$KeyEventInjector;,
        Lcom/android/systemui/statusbar/StatusBarView$SettingsObserver;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field static final DIM_ANIM_TIME:I = 0x190

#the value of this static final field might be set in the static constructor
.field public static final KEYCODE_VIRTUAL_BACK_LONG:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final KEYCODE_VIRTUAL_HOME_LONG:I = 0x0

.field private static final TAG:Ljava/lang/String; = "StatusBarView"


# instance fields
.field mBackButton:Landroid/widget/ImageButton;

.field mBackground:Lcom/android/systemui/statusbar/FixedSizeDrawable;

.field mDate:Landroid/view/View;

.field mHandler:Landroid/os/Handler;

.field mHasSoftButtons:Z

.field mHomeButton:Landroid/widget/ImageButton;

.field mIsBottom:Z

.field mIsLeft:Z

.field mMenuButton:Landroid/widget/ImageButton;

.field mNotificationIcons:Landroid/view/ViewGroup;

.field mSBBackground:Landroid/view/ViewGroup;

.field private mSBColor:I

.field private mSBTrans:I

.field mService:Lcom/android/systemui/statusbar/StatusBarService;

.field mShowBack:Z

.field mShowHome:Z

.field mShowMenu:Z

.field mStartX:I

.field mStartY:I

.field mStatusBackground:Lcom/android/systemui/statusbar/FixedSizeDrawable;

.field mStatusIcons:Landroid/view/ViewGroup;

.field mTickerBackground:Landroid/view/ViewGroup;

.field mTracking:Z

.field mVNotificationIcons:Landroid/view/View;

.field mVSBBackground:Landroid/view/View;

.field mVStatusIcons:Landroid/view/View;

.field mVTickerBackground:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    invoke-static {}, Landroid/view/KeyEvent;->getMaxKeyCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/systemui/statusbar/StatusBarView;->KEYCODE_VIRTUAL_HOME_LONG:I

    .line 52
    invoke-static {}, Landroid/view/KeyEvent;->getMaxKeyCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    sput v0, Lcom/android/systemui/statusbar/StatusBarView;->KEYCODE_VIRTUAL_BACK_LONG:I

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 133
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 134
    return-void
.end method

.method static synthetic access$0(Lcom/android/systemui/statusbar/StatusBarView;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1(Lcom/android/systemui/statusbar/StatusBarView;)V
    .locals 0
    .parameter

    .prologue
    .line 351
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarView;->updateSoftButtons()V

    return-void
.end method

.method static synthetic access$2(Lcom/android/systemui/statusbar/StatusBarView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 411
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/StatusBarView;->simulateKeypress(I)V

    return-void
.end method

.method private getDateSize(Landroid/view/ViewGroup;II)I
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 294
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 295
    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    .line 303
    const/4 v0, -0x1

    :goto_1
    return v0

    .line 296
    :cond_0
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 297
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    add-int/2addr v3, p3

    .line 298
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    add-int/2addr v2, p3

    .line 299
    if-lt p2, v3, :cond_1

    if-gt p2, v2, :cond_1

    move v0, v2

    .line 300
    goto :goto_1

    .line 295
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getViewOffset(Landroid/view/View;)I
    .locals 4
    .parameter

    .prologue
    .line 280
    const/4 v0, 0x0

    move-object v1, p1

    .line 281
    :goto_0
    if-ne v1, p0, :cond_0

    .line 290
    return v0

    .line 282
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    add-int/2addr v2, v0

    .line 283
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 284
    instance-of v3, v1, Landroid/view/View;

    if-eqz v3, :cond_1

    .line 285
    check-cast v0, Landroid/view/View;

    move-object v1, v0

    move v0, v2

    goto :goto_0

    .line 287
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a child of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private isEventInButton(Landroid/widget/ImageButton;Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 318
    invoke-virtual {p1}, Landroid/widget/ImageButton;->getLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 319
    invoke-virtual {p1}, Landroid/widget/ImageButton;->getRight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 320
    invoke-virtual {p1}, Landroid/widget/ImageButton;->getTop()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 321
    invoke-virtual {p1}, Landroid/widget/ImageButton;->getBottom()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 318
    goto :goto_0
.end method

.method private simulateKeypress(I)V
    .locals 2
    .parameter

    .prologue
    .line 412
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/systemui/statusbar/StatusBarView$KeyEventInjector;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/StatusBarView$KeyEventInjector;-><init>(Lcom/android/systemui/statusbar/StatusBarView;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 413
    return-void
.end method

.method private updateSoftButtons()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 352
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarView;->mHasSoftButtons:Z

    if-nez v0, :cond_1

    .line 405
    :cond_0
    :goto_0
    return-void

    .line 359
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarView;->mHomeButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 360
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarView;->mMenuButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 361
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarView;->mBackButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 364
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarView;->mShowHome:Z

    if-nez v0, :cond_2

    .line 365
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarView;->mHomeButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 367
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarView;->mShowMenu:Z

    if-nez v0, :cond_3

    .line 368
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarView;->mMenuButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 370
    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarView;->mShowBack:Z

    if-nez v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarView;->mBackButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 235
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 236
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarView;->mService:Lcom/android/systemui/statusbar/StatusBarService;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/StatusBarService;->onBarViewAttached()V

    .line 237
    return-void
.end method

.method protected onFinishInflate()V
    .locals 5

    .prologue
    const v2, 0x7f090015

    const v1, 0x7f090014

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 138
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 139
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/StatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarView;->mNotificationIcons:Landroid/view/ViewGroup;

    .line 140
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/StatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarView;->mStatusIcons:Landroid/view/ViewGroup;

    .line 141
    const v0, 0x7f090019

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarView;->mDate:Landroid/view/View;

    .line 142
    const v0, 0x7f09002a

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarView;->mVSBBackground:Landroid/view/View;

    .line 143
    const v0, 0x7f090016

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarView;->mVTickerBackground:Landroid/view/View;

    .line 145
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/StatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarView;->mNotificationIcons:Landroid/view/ViewGroup;

    .line 146
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/StatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarView;->mStatusIcons:Landroid/view/ViewGroup;

    .line 147
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/StatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarView;->mVStatusIcons:Landroid/view/View;

    .line 148
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/StatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarView;->mVNotificationIcons:Landroid/view/View;

    .line 150
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 152
    const-string v1, "transparent_status_bar"

    .line 151
    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/StatusBarView;->mSBTrans:I

    .line 153
    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarView;->mSBTrans:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 155
    const-string v1, "status_bar_color"

    .line 154
    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarView;->mSBColor:I

    .line 157
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarView;->mVSBBackground:Landroid/view/View;

    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarView;->mSBColor:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarView;->mVNotificationIcons:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 161
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarView;->mVStatusIcons:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 162
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarView;->mVTickerBackground:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 164
    new-instance v0, Lcom/android/systemui/statusbar/FixedSizeDrawable;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarView;->mDate:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/FixedSizeDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarView;->mBackground:Lcom/android/systemui/statusbar/FixedSizeDrawable;

    .line 165
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarView;->mBackground:Lcom/android/systemui/statusbar/FixedSizeDrawable;

    invoke-virtual {v0, v3, v3, v3, v3}, Lcom/android/systemui/statusbar/FixedSizeDrawable;->setFixedBounds(IIII)V

    .line 166
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarView;->mDate:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 169
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarView;->mContext:Landroid/content/Context;

    invoke-static {v0, v4}, Landroid/provider/CmSystem;->getDefaultBool(Landroid/content/Context;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarView;->mHasSoftButtons:Z

    .line 170
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarView;->mHandler:Landroid/os/Handler;

    .line 176
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarView;->mHasSoftButtons:Z

    if-eqz v0, :cond_1

    .line 177
    const v0, 0x7f09002d

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarView;->mHomeButton:Landroid/widget/ImageButton;

    .line 178
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarView;->mHomeButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 179
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarView;->mHomeButton:Landroid/widget/ImageButton;

    .line 180
    new-instance v1, Lcom/android/systemui/statusbar/StatusBarView$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/StatusBarView$1;-><init>(Lcom/android/systemui/statusbar/StatusBarView;)V

    .line 179
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarView;->mHomeButton:Landroid/widget/ImageButton;

    .line 191
    new-instance v1, Lcom/android/systemui/statusbar/StatusBarView$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/StatusBarView$2;-><init>(Lcom/android/systemui/statusbar/StatusBarView;)V

    .line 190
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 198
    const v0, 0x7f09002e

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarView;->mMenuButton:Landroid/widget/ImageButton;

    .line 199
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarView;->mMenuButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 200
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarView;->mMenuButton:Landroid/widget/ImageButton;

    .line 201
    new-instance v1, Lcom/android/systemui/statusbar/StatusBarView$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/StatusBarView$3;-><init>(Lcom/android/systemui/statusbar/StatusBarView;)V

    .line 200
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    const v0, 0x7f09002f

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarView;->mBackButton:Landroid/widget/ImageButton;

    .line 209
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarView;->mBackButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 210
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarView;->mBackButton:Landroid/widget/ImageButton;

    .line 211
    new-instance v1, Lcom/android/systemui/statusbar/StatusBarView$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/StatusBarView$4;-><init>(Lcom/android/systemui/statusbar/StatusBarView;)V

    .line 210
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarView;->mBackButton:Landroid/widget/ImageButton;

    .line 219
    new-instance v1, Lcom/android/systemui/statusbar/StatusBarView$5;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/StatusBarView$5;-><init>(Lcom/android/systemui/statusbar/StatusBarView;)V

    .line 218
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 228
    new-instance v0, Lcom/android/systemui/statusbar/StatusBarView$SettingsObserver;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarView;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/StatusBarView$SettingsObserver;-><init>(Lcom/android/systemui/statusbar/StatusBarView;Landroid/os/Handler;)V

    .line 229
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/StatusBarView$SettingsObserver;->observe()V

    .line 231
    :cond_1
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 308
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarView;->mHomeButton:Landroid/widget/ImageButton;

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/StatusBarView;->isEventInButton(Landroid/widget/ImageButton;Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarView;->mBackButton:Landroid/widget/ImageButton;

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/StatusBarView;->isEventInButton(Landroid/widget/ImageButton;Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarView;->mMenuButton:Landroid/widget/ImageButton;

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/StatusBarView;->isEventInButton(Landroid/widget/ImageButton;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 311
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 313
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarView;->mService:Lcom/android/systemui/statusbar/StatusBarService;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/StatusBarService;->interceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 314
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 247
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 250
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarView;->mDate:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    .line 253
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarView;->mNotificationIcons:Landroid/view/ViewGroup;

    .line 254
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarView;->mNotificationIcons:Landroid/view/ViewGroup;

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/StatusBarView;->getViewOffset(Landroid/view/View;)I

    move-result v2

    .line 253
    invoke-direct {p0, v1, v0, v2}, Lcom/android/systemui/statusbar/StatusBarView;->getDateSize(Landroid/view/ViewGroup;II)I

    move-result v1

    .line 255
    if-gez v1, :cond_3

    .line 256
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarView;->mStatusIcons:Landroid/view/ViewGroup;

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/StatusBarView;->getViewOffset(Landroid/view/View;)I

    move-result v1

    .line 257
    if-ge v0, v1, :cond_2

    .line 266
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarView;->getPaddingRight()I

    move-result v1

    sub-int v1, p4, v1

    .line 267
    if-le v0, v1, :cond_1

    move v0, v1

    .line 271
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarView;->mDate:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarView;->mDate:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarView;->mDate:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarView;->mDate:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/view/View;->layout(IIII)V

    .line 272
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarView;->mBackground:Lcom/android/systemui/statusbar/FixedSizeDrawable;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarView;->mDate:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    neg-int v1, v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarView;->mDate:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    neg-int v2, v2

    sub-int v3, p4, p2

    sub-int v4, p5, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/systemui/statusbar/FixedSizeDrawable;->setFixedBounds(IIII)V

    .line 273
    return-void

    .line 260
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarView;->mStatusIcons:Landroid/view/ViewGroup;

    invoke-direct {p0, v2, v0, v1}, Lcom/android/systemui/statusbar/StatusBarView;->getDateSize(Landroid/view/ViewGroup;II)I

    move-result v0

    .line 261
    if-gez v0, :cond_0

    move v0, p4

    .line 262
    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 241
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 242
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarView;->mService:Lcom/android/systemui/statusbar/StatusBarService;

    const/16 v1, -0x2710

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/StatusBarService;->updateExpandedViewPos(I)V

    .line 243
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 330
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarView;->mHasSoftButtons:Z

    if-nez v0, :cond_0

    move v0, v1

    .line 348
    :goto_0
    return v0

    .line 333
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarView;->mHomeButton:Landroid/widget/ImageButton;

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/StatusBarView;->isEventInButton(Landroid/widget/ImageButton;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 334
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarView;->mHomeButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move v0, v1

    .line 335
    goto :goto_0

    .line 337
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarView;->mMenuButton:Landroid/widget/ImageButton;

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/StatusBarView;->isEventInButton(Landroid/widget/ImageButton;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 338
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarView;->mMenuButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move v0, v1

    .line 339
    goto :goto_0

    .line 341
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarView;->mBackButton:Landroid/widget/ImageButton;

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/StatusBarView;->isEventInButton(Landroid/widget/ImageButton;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 342
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarView;->mBackButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move v0, v1

    .line 343
    goto :goto_0

    .line 345
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_4

    .line 346
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarView;->mService:Lcom/android/systemui/statusbar/StatusBarService;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/StatusBarService;->interceptTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_4
    move v0, v1

    .line 348
    goto :goto_0
.end method
