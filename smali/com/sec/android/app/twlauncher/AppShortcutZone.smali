.class public Lcom/sec/android/app/twlauncher/AppShortcutZone;
.super Landroid/widget/LinearLayout;
.source "AppShortcutZone.java"

# interfaces
.implements Lcom/sec/android/app/twlauncher/DragSource;
.implements Lcom/sec/android/app/twlauncher/MenuItemView$UninstallableMarkerDrawParent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/twlauncher/AppShortcutZone$LateStartLinearInterpolator;,
        Lcom/sec/android/app/twlauncher/AppShortcutZone$PrematureLinearInterpolator;,
        Lcom/sec/android/app/twlauncher/AppShortcutZone$Animate;
    }
.end annotation


# instance fields
.field private mAnimationDuration:I

.field private mAnimationFrom:F

.field private mAnimationStartTime:J

.field private mAnimationState:I

.field private mAnimationTo:F

.field private mApplicationsDrawableEdit:Landroid/graphics/drawable/Drawable;

.field private mApplicationsDrawableMenu:Landroid/graphics/drawable/Drawable;

.field private mApplicationsDrawableNormal:Landroid/graphics/drawable/Drawable;

.field private mApplicationsView:Landroid/view/View;

.field private mBgDrawable:Landroid/graphics/drawable/Drawable;

.field private mBgDrawable2:Landroid/graphics/drawable/Drawable;

.field private mChildAnimate:[Lcom/sec/android/app/twlauncher/AppShortcutZone$Animate;

.field private mChildHeight:I

.field private mChildWidth:I

.field private mCloseInterpolator:Landroid/view/animation/Interpolator;

.field private final mColumnCount:I

.field private mDeleteIcon:Landroid/graphics/Bitmap;

.field private mDeleteIconRightOffset:I

.field private mDeleteIconTopOffset:I

.field private mDragger:Lcom/sec/android/app/twlauncher/DragController;

.field private mEditBg:Landroid/graphics/Bitmap;

.field private mEditIndex:I

.field private mEditLeftOffset:I

.field private mEditLeftOffset2:I

.field private mEditTopOffset:I

.field private mEnabledChildAnimation:Z

.field private mEnabledDrawing:Z

.field private mIconCache:Lcom/sec/android/app/twlauncher/IconCache;

.field private mIconWidth:I

.field private mInflater:Landroid/view/LayoutInflater;

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mIsDrawBg:Z

.field private mItemGap1:I

.field private mItemGap2:I

.field private mLRPadding:I

.field private mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

.field private mOldOrientation:I

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mOnLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mOpenInterpolator:Landroid/view/animation/Interpolator;

.field private mOrientation:I

.field private mPaint:Landroid/graphics/Paint;

.field private mTmpRect:Landroid/graphics/Rect;

.field private mTopOffset:I

.field private mVirtualView:[Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 117
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    const/4 v1, 0x3

    iput v1, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mAnimationState:I

    .line 85
    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mEnabledDrawing:Z

    .line 98
    iput v3, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mOrientation:I

    .line 99
    iput v2, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mOldOrientation:I

    .line 108
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mTmpRect:Landroid/graphics/Rect;

    .line 110
    iput v2, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mEditIndex:I

    .line 112
    new-instance v1, Lcom/sec/android/app/twlauncher/AppShortcutZone$PrematureLinearInterpolator;

    const/high16 v2, 0x3f40

    invoke-direct {v1, v2}, Lcom/sec/android/app/twlauncher/AppShortcutZone$PrematureLinearInterpolator;-><init>(F)V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mOpenInterpolator:Landroid/view/animation/Interpolator;

    .line 113
    new-instance v1, Lcom/sec/android/app/twlauncher/AppShortcutZone$LateStartLinearInterpolator;

    const/high16 v2, 0x3f00

    invoke-direct {v1, v2}, Lcom/sec/android/app/twlauncher/AppShortcutZone$LateStartLinearInterpolator;-><init>(F)V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mCloseInterpolator:Landroid/view/animation/Interpolator;

    .line 114
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mOpenInterpolator:Landroid/view/animation/Interpolator;

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 571
    new-instance v1, Lcom/sec/android/app/twlauncher/AppShortcutZone$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone$2;-><init>(Lcom/sec/android/app/twlauncher/AppShortcutZone;)V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 587
    new-instance v1, Lcom/sec/android/app/twlauncher/AppShortcutZone$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone$3;-><init>(Lcom/sec/android/app/twlauncher/AppShortcutZone;)V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 119
    sget-object v1, Lcom/sec/android/app/twlauncher/R$styleable;->AppShortcutZone:[I

    invoke-virtual {p1, p2, v1, v4, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 120
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v1, 0x4

    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mColumnCount:I

    .line 121
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 123
    iget v1, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mColumnCount:I

    if-ge v1, v3, :cond_0

    .line 124
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "AppShortcutZone_iconColumnCount should be at least 1"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 127
    :cond_0
    iget v1, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mColumnCount:I

    sub-int/2addr v1, v3

    new-array v1, v1, [Landroid/view/View;

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mVirtualView:[Landroid/view/View;

    .line 128
    iget v1, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mColumnCount:I

    new-array v1, v1, [Lcom/sec/android/app/twlauncher/AppShortcutZone$Animate;

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mChildAnimate:[Lcom/sec/android/app/twlauncher/AppShortcutZone$Animate;

    .line 130
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->init(Landroid/content/Context;)V

    .line 131
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/twlauncher/AppShortcutZone;)Lcom/sec/android/app/twlauncher/Launcher;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/twlauncher/AppShortcutZone;)Lcom/sec/android/app/twlauncher/DragController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mDragger:Lcom/sec/android/app/twlauncher/DragController;

    return-object v0
.end method

.method private getApplicationInfo(Landroid/content/Context;Landroid/content/ComponentName;)Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .locals 7
    .parameter "context"
    .parameter "componentName"

    .prologue
    const/4 v6, 0x0

    .line 469
    const/4 v2, 0x0

    .line 471
    .local v2, info:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 472
    .local v3, mainIntent:Landroid/content/Intent;
    const-string v4, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 473
    invoke-virtual {v3, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 475
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v3, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 476
    .local v1, apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v1, :cond_0

    .line 477
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 478
    .local v0, N:I
    if-lez v0, :cond_0

    .line 479
    new-instance v2, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .end local v2           #info:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mIconCache:Lcom/sec/android/app/twlauncher/IconCache;

    invoke-direct {v2, v4, v5}, Lcom/sec/android/app/twlauncher/ApplicationInfo;-><init>(Landroid/content/pm/ResolveInfo;Lcom/sec/android/app/twlauncher/IconCache;)V

    .line 487
    .end local v0           #N:I
    .restart local v2       #info:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    :cond_0
    return-object v2
.end method

.method private getItemGap(I)I
    .locals 1
    .parameter "childCount"

    .prologue
    .line 974
    const/4 v0, 0x0

    .line 975
    .local v0, gap:I
    packed-switch p1, :pswitch_data_0

    .line 984
    :goto_0
    return v0

    .line 977
    :pswitch_0
    iget v0, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mItemGap1:I

    .line 978
    goto :goto_0

    .line 980
    :pswitch_1
    iget v0, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mItemGap2:I

    goto :goto_0

    .line 975
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private init(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x1

    .line 134
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mInflater:Landroid/view/LayoutInflater;

    .line 135
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mPaint:Landroid/graphics/Paint;

    .line 137
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/LauncherApplication;

    .line 138
    .local v0, app:Lcom/sec/android/app/twlauncher/LauncherApplication;
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/LauncherApplication;->getIconCache()Lcom/sec/android/app/twlauncher/IconCache;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mIconCache:Lcom/sec/android/app/twlauncher/IconCache;

    .line 140
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 141
    .local v2, res:Landroid/content/res/Resources;
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    iput v3, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mOrientation:I

    .line 143
    sget-boolean v3, Lcom/sec/android/app/twlauncher/Launcher;->USE_MAINMENU_ICONMODE:Z

    if-eqz v3, :cond_0

    .line 144
    const v3, 0x7f090030

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mChildHeight:I

    .line 145
    const/4 v3, 0x0

    iput v3, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mTopOffset:I

    .line 150
    :goto_0
    const v3, 0x7f09000d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mChildWidth:I

    .line 151
    const v3, 0x7f090011

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mEditLeftOffset:I

    .line 152
    const v3, 0x7f090010

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mEditLeftOffset2:I

    .line 153
    const v3, 0x7f090012

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mEditTopOffset:I

    .line 154
    const v3, 0x7f090016

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mDeleteIconTopOffset:I

    .line 155
    const v3, 0x7f090017

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mDeleteIconRightOffset:I

    .line 156
    const v3, 0x7f090013

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mIconWidth:I

    .line 157
    const v3, 0x7f090018

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mLRPadding:I

    .line 158
    const v3, 0x7f09000e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mItemGap1:I

    .line 159
    const v3, 0x7f09000f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mItemGap2:I

    .line 161
    invoke-virtual {p0, v5}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->setClickable(Z)V

    .line 163
    sget-boolean v3, Lcom/sec/android/app/twlauncher/Launcher;->USE_MAINMENU_ICONMODE:Z

    if-eqz v3, :cond_1

    .line 164
    const v3, 0x7f020095

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mApplicationsDrawableNormal:Landroid/graphics/drawable/Drawable;

    .line 165
    const v3, 0x7f0200ca

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mApplicationsDrawableMenu:Landroid/graphics/drawable/Drawable;

    .line 171
    :goto_1
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mApplicationsDrawableMenu:Landroid/graphics/drawable/Drawable;

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mApplicationsDrawableEdit:Landroid/graphics/drawable/Drawable;

    .line 173
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    iget v3, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mColumnCount:I

    sub-int/2addr v3, v5

    if-ge v1, v3, :cond_2

    .line 174
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mVirtualView:[Landroid/view/View;

    new-instance v4, Landroid/view/View;

    invoke-direct {v4, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    aput-object v4, v3, v1

    .line 175
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mVirtualView:[Landroid/view/View;

    aget-object v3, v3, v1

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 173
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 147
    .end local v1           #i:I
    :cond_0
    const v3, 0x7f09000c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mChildHeight:I

    .line 148
    const v3, 0x7f09000b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mTopOffset:I

    goto/16 :goto_0

    .line 167
    :cond_1
    const v3, 0x7f020094

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mApplicationsDrawableNormal:Landroid/graphics/drawable/Drawable;

    .line 168
    const v3, 0x7f0200c9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mApplicationsDrawableMenu:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 178
    .restart local v1       #i:I
    :cond_2
    sget-boolean v3, Lcom/sec/android/app/twlauncher/Launcher;->USE_MAINMENU_ICONMODE:Z

    if-eqz v3, :cond_3

    .line 179
    const v3, 0x7f020048

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 180
    const v3, 0x7f020029

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mBgDrawable2:Landroid/graphics/drawable/Drawable;

    .line 186
    :goto_3
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->initApplicationsView()V

    .line 188
    invoke-virtual {p0, v5}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->setDrawingCacheEnabled(Z)V

    .line 189
    invoke-virtual {p0, v5}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->buildDrawingCache(Z)V

    .line 191
    const/4 v1, 0x0

    :goto_4
    iget v3, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mColumnCount:I

    if-ge v1, v3, :cond_4

    .line 192
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mChildAnimate:[Lcom/sec/android/app/twlauncher/AppShortcutZone$Animate;

    new-instance v4, Lcom/sec/android/app/twlauncher/AppShortcutZone$Animate;

    invoke-direct {v4, p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone$Animate;-><init>(Lcom/sec/android/app/twlauncher/AppShortcutZone;)V

    aput-object v4, v3, v1

    .line 191
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 182
    :cond_3
    const v3, 0x7f020045

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 183
    const v3, 0x7f020028

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mBgDrawable2:Landroid/graphics/drawable/Drawable;

    goto :goto_3

    .line 194
    :cond_4
    return-void
.end method

.method private initApplicationsView()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 197
    const/4 v2, 0x0

    .line 199
    .local v2, itemView:Landroid/view/View;
    sget-boolean v8, Lcom/sec/android/app/twlauncher/Launcher;->USE_MAINMENU_ICONMODE:Z

    if-eqz v8, :cond_0

    .line 200
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mInflater:Landroid/view/LayoutInflater;

    const v9, 0x7f030005

    invoke-virtual {v8, v9, p0, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 204
    :goto_0
    move-object v0, v2

    check-cast v0, Lcom/sec/android/app/twlauncher/MenuItemView;

    move-object v7, v0

    .line 206
    .local v7, view:Lcom/sec/android/app/twlauncher/MenuItemView;
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mApplicationsDrawableNormal:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v8}, Lcom/sec/android/app/twlauncher/MenuItemView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 210
    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    .line 211
    .local v6, paddingTop:I
    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    .line 212
    .local v4, paddingLeft:I
    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    .line 213
    .local v3, paddingBottom:I
    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    .line 215
    .local v5, paddingRight:I
    sget-boolean v8, Lcom/sec/android/app/twlauncher/Launcher;->USE_MAINMENU_ICONMODE:Z

    if-eqz v8, :cond_1

    .line 216
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/sec/android/app/twlauncher/MenuItemView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 219
    :goto_1
    invoke-virtual {v7, v4, v6, v5, v3}, Lcom/sec/android/app/twlauncher/MenuItemView;->setPadding(IIII)V

    .line 221
    invoke-virtual {v7, v11}, Lcom/sec/android/app/twlauncher/MenuItemView;->setFocusable(Z)V

    .line 222
    new-instance v8, Lcom/sec/android/app/twlauncher/AppShortcutZone$1;

    invoke-direct {v8, p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone$1;-><init>(Lcom/sec/android/app/twlauncher/AppShortcutZone;)V

    invoke-virtual {v7, v8}, Lcom/sec/android/app/twlauncher/MenuItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 239
    iput-object v7, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mApplicationsView:Landroid/view/View;

    .line 241
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    iget v8, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mColumnCount:I

    sub-int/2addr v8, v11

    if-ge v1, v8, :cond_2

    .line 242
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mVirtualView:[Landroid/view/View;

    aget-object v8, v8, v1

    invoke-virtual {p0, v8}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->addView(Landroid/view/View;)V

    .line 241
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 202
    .end local v1           #i:I
    .end local v3           #paddingBottom:I
    .end local v4           #paddingLeft:I
    .end local v5           #paddingRight:I
    .end local v6           #paddingTop:I
    .end local v7           #view:Lcom/sec/android/app/twlauncher/MenuItemView;
    :cond_0
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mInflater:Landroid/view/LayoutInflater;

    const v9, 0x7f030004

    invoke-virtual {v8, v9, p0, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    goto :goto_0

    .line 218
    .restart local v3       #paddingBottom:I
    .restart local v4       #paddingLeft:I
    .restart local v5       #paddingRight:I
    .restart local v6       #paddingTop:I
    .restart local v7       #view:Lcom/sec/android/app/twlauncher/MenuItemView;
    :cond_1
    const v8, 0x7f020010

    invoke-virtual {v7, v8}, Lcom/sec/android/app/twlauncher/MenuItemView;->setBackgroundResource(I)V

    goto :goto_1

    .line 244
    .restart local v1       #i:I
    :cond_2
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mApplicationsView:Landroid/view/View;

    invoke-virtual {p0, v8}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->addView(Landroid/view/View;)V

    .line 245
    return-void
.end method


# virtual methods
.method addItem(Landroid/view/View;I)Landroid/view/View;
    .locals 5
    .parameter "v"
    .parameter "index"

    .prologue
    const v4, 0xffff

    .line 707
    invoke-virtual {p0, p2}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 708
    .local v2, child:Landroid/view/View;
    invoke-virtual {p0, p2}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->removeViewAt(I)V

    .line 709
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->addView(Landroid/view/View;I)V

    .line 711
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    .line 712
    .local v3, tag:Ljava/lang/Object;
    if-eqz v3, :cond_0

    .line 713
    move-object v0, v3

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    move-object v1, v0

    .line 714
    .local v1, app:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    iput p2, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editTopNum:I

    .line 715
    iput v4, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editPageNum:I

    .line 716
    iput v4, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editCellNum:I

    .line 719
    .end local v1           #app:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    :cond_0
    return-object v2
.end method

.method arrangeItem(I)V
    .locals 11
    .parameter "index"

    .prologue
    const/4 v10, -0x1

    .line 915
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 916
    .local v8, view:Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_1

    .line 951
    :cond_0
    return-void

    .line 918
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getChildCount()I

    move-result v4

    .line 919
    .local v4, count:I
    const/4 v6, -0x1

    .line 920
    .local v6, moveIndex:I
    add-int/lit8 v5, p1, 0x1

    .local v5, i:I
    :goto_0
    if-ge v5, v4, :cond_2

    .line 921
    invoke-virtual {p0, v5}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 922
    .local v3, child:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-eqz v9, :cond_5

    .line 923
    move v6, v5

    .line 928
    .end local v3           #child:Landroid/view/View;
    :cond_2
    if-ne v6, v10, :cond_3

    .line 929
    const/4 v9, 0x1

    sub-int v5, p1, v9

    :goto_1
    if-ltz v5, :cond_3

    .line 930
    invoke-virtual {p0, v5}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 931
    .restart local v3       #child:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-eqz v9, :cond_6

    .line 932
    move v6, v5

    .line 938
    .end local v3           #child:Landroid/view/View;
    :cond_3
    if-eq v6, v10, :cond_0

    .line 939
    invoke-virtual {p0, v6}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->removeViewAt(I)V

    .line 940
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mVirtualView:[Landroid/view/View;

    aget-object v9, v9, p1

    invoke-virtual {p0, v9, p1}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->addView(Landroid/view/View;I)V

    .line 942
    const/4 v5, 0x0

    :goto_2
    if-ge v5, v4, :cond_0

    .line 943
    invoke-virtual {p0, v5}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 944
    .local v2, appView:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    .line 945
    .local v7, tag:Ljava/lang/Object;
    if-eqz v7, :cond_4

    instance-of v9, v7, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    if-eqz v9, :cond_4

    .line 946
    move-object v0, v7

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    move-object v1, v0

    .line 947
    .local v1, appInfo:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    iput v5, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editTopNum:I

    .line 942
    .end local v1           #appInfo:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 920
    .end local v2           #appView:Landroid/view/View;
    .end local v7           #tag:Ljava/lang/Object;
    .restart local v3       #child:Landroid/view/View;
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 929
    :cond_6
    add-int/lit8 v5, v5, -0x1

    goto :goto_1
.end method

.method public changeApplicationsIcon()V
    .locals 4

    .prologue
    .line 787
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v0

    .line 788
    .local v0, mm:Lcom/sec/android/app/twlauncher/MenuManager;
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mApplicationsView:Landroid/view/View;

    check-cast v1, Lcom/sec/android/app/twlauncher/MenuItemView;

    .line 789
    .local v1, view:Lcom/sec/android/app/twlauncher/MenuItemView;
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->isOpened()Z

    move-result v2

    if-nez v2, :cond_0

    .line 790
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mApplicationsDrawableNormal:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/MenuItemView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 799
    :goto_0
    return-void

    .line 792
    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->getMode()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    .line 793
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mApplicationsDrawableMenu:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/MenuItemView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 796
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mApplicationsDrawableEdit:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/MenuItemView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method changeItem(Landroid/view/View;I)V
    .locals 3
    .parameter "v"
    .parameter "index"

    .prologue
    .line 690
    invoke-virtual {p0, p2}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 692
    .local v0, child:Landroid/view/View;
    if-nez v0, :cond_0

    .line 704
    :goto_0
    return-void

    .line 694
    :cond_0
    const/4 v1, -0x1

    .line 695
    .local v1, oldIndex:I
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 696
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->removeItem(Landroid/view/View;)I

    move-result v1

    .line 697
    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->removeItem(Landroid/view/View;)I

    .line 698
    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->addItem(Landroid/view/View;I)Landroid/view/View;

    .line 699
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->addItem(Landroid/view/View;I)Landroid/view/View;

    goto :goto_0

    .line 701
    :cond_1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->removeItem(Landroid/view/View;)I

    .line 702
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->addItem(Landroid/view/View;I)Landroid/view/View;

    goto :goto_0
.end method

.method public clearApplications()V
    .locals 3

    .prologue
    .line 496
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->removeAllViews()V

    .line 498
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mColumnCount:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    .line 499
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mVirtualView:[Landroid/view/View;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->addView(Landroid/view/View;)V

    .line 498
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 501
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mApplicationsView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->addView(Landroid/view/View;)V

    .line 502
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .parameter "canvas"

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x3

    const/4 v8, 0x2

    const/high16 v10, 0x3f80

    const/4 v9, 0x0

    .line 376
    iget-boolean v5, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mEnabledDrawing:Z

    if-nez v5, :cond_1

    .line 437
    :cond_0
    :goto_0
    return-void

    .line 378
    :cond_1
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mBgDrawable2:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getHeight()I

    move-result v7

    invoke-virtual {v5, v9, v9, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 380
    iget v5, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mAnimationState:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    .line 382
    iput v8, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mAnimationState:I

    .line 385
    :cond_2
    iget v5, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mAnimationState:I

    if-ne v5, v8, :cond_9

    .line 386
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mAnimationStartTime:J

    sub-long/2addr v5, v7

    long-to-float v5, v5

    iget v6, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mAnimationDuration:I

    int-to-float v6, v6

    div-float v1, v5, v6

    .line 388
    .local v1, normalized:F
    cmpl-float v5, v1, v10

    if-ltz v5, :cond_3

    .line 389
    iput v11, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mAnimationState:I

    .line 390
    iget-boolean v5, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mIsDrawBg:Z

    if-eqz v5, :cond_7

    .line 391
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v5

    iget-object v5, v5, Lcom/sec/android/app/twlauncher/MenuManager;->mMenuOpenAnimationListener:Lcom/sec/android/app/twlauncher/MenuManager$InterruptableAnimationListener;

    invoke-interface {v5, v12}, Lcom/sec/android/app/twlauncher/MenuManager$InterruptableAnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    .line 396
    :cond_3
    :goto_1
    invoke-static {v1, v10}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 397
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v5, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    .line 398
    iget v5, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mAnimationFrom:F

    iget v6, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mAnimationTo:F

    iget v7, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mAnimationFrom:F

    sub-float/2addr v6, v7

    mul-float/2addr v6, v1

    add-float v4, v5, v6

    .line 400
    .local v4, value:F
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    const/high16 v6, 0x437f

    mul-float/2addr v6, v4

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 401
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getOrientation()I

    move-result v5

    if-nez v5, :cond_8

    .line 402
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getHeight()I

    move-result v5

    int-to-float v5, v5

    sub-float v6, v10, v4

    mul-float/2addr v5, v6

    float-to-int v3, v5

    .line 403
    .local v3, offsetY:I
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getHeight()I

    move-result v7

    add-int/2addr v7, v3

    invoke-virtual {v5, v9, v3, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 408
    .end local v3           #offsetY:I
    :goto_2
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/MenuManager;->isOpened()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 409
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 411
    :cond_4
    iget v5, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mAnimationState:I

    if-eq v5, v11, :cond_5

    .line 412
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->invalidate()V

    .line 423
    .end local v1           #normalized:F
    .end local v4           #value:F
    :cond_5
    :goto_3
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/MenuManager;->isOpened()Z

    move-result v5

    if-nez v5, :cond_6

    .line 424
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mBgDrawable2:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 426
    :cond_6
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 428
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mEditBg:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_0

    iget v5, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mEditIndex:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    .line 429
    iget v5, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mEditIndex:I

    invoke-virtual {p0, v5}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 430
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_0

    .line 431
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getOrientation()I

    move-result v5

    if-eqz v5, :cond_a

    .line 432
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mEditBg:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v6

    iget v7, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mEditLeftOffset2:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v7

    iget v8, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mEditTopOffset:I

    add-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x1

    int-to-float v7, v7

    iget-object v8, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 393
    .end local v0           #child:Landroid/view/View;
    .restart local v1       #normalized:F
    :cond_7
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v5

    iget-object v5, v5, Lcom/sec/android/app/twlauncher/MenuManager;->mMenuCloseAnimationListener:Lcom/sec/android/app/twlauncher/MenuManager$InterruptableAnimationListener;

    invoke-interface {v5, v12}, Lcom/sec/android/app/twlauncher/MenuManager$InterruptableAnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    goto/16 :goto_1

    .line 405
    .restart local v4       #value:F
    :cond_8
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getWidth()I

    move-result v5

    int-to-float v5, v5

    sub-float v6, v10, v4

    mul-float/2addr v5, v6

    float-to-int v2, v5

    .line 406
    .local v2, offsetX:I
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getWidth()I

    move-result v6

    add-int/2addr v6, v2

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getHeight()I

    move-result v7

    invoke-virtual {v5, v2, v9, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto/16 :goto_2

    .line 415
    .end local v1           #normalized:F
    .end local v2           #offsetX:I
    .end local v4           #value:F
    :cond_9
    iget-boolean v5, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mIsDrawBg:Z

    if-eqz v5, :cond_5

    .line 416
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    const/16 v6, 0xff

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 417
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getHeight()I

    move-result v7

    invoke-virtual {v5, v9, v9, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 418
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/MenuManager;->isOpened()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 419
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_3

    .line 434
    .restart local v0       #child:Landroid/view/View;
    :cond_a
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mEditBg:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v6

    iget v7, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mEditLeftOffset:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v7

    iget v8, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mTopOffset:I

    sub-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x1

    int-to-float v7, v7

    iget-object v8, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 7
    .parameter "focused"
    .parameter "direction"

    .prologue
    const/16 v6, 0x42

    const/16 v4, 0x11

    const/4 v5, 0x1

    .line 803
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    if-eqz v3, :cond_6

    .line 804
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v1

    .line 805
    .local v1, mm:Lcom/sec/android/app/twlauncher/MenuManager;
    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/MenuManager;->isOpened()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 806
    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v0

    .line 807
    .local v0, childCount:I
    if-le v0, v5, :cond_6

    .line 808
    if-ne p2, v4, :cond_1

    .line 809
    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/MenuManager;->getWhichScreen()I

    move-result v3

    if-nez v3, :cond_0

    .line 810
    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Lcom/sec/android/app/twlauncher/MenuManager;->snapToScreen(I)V

    :cond_0
    move v3, v5

    .line 842
    .end local v0           #childCount:I
    .end local v1           #mm:Lcom/sec/android/app/twlauncher/MenuManager;
    .end local p0
    :goto_0
    return v3

    .line 813
    .restart local v0       #childCount:I
    .restart local v1       #mm:Lcom/sec/android/app/twlauncher/MenuManager;
    .restart local p0
    :cond_1
    if-ne p2, v6, :cond_6

    .line 814
    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/MenuManager;->getWhichScreen()I

    move-result v3

    sub-int v4, v0, v5

    if-ne v3, v4, :cond_2

    .line 815
    invoke-virtual {v1, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->snapToScreen(I)V

    :cond_2
    move v3, v5

    .line 817
    goto :goto_0

    .line 820
    .end local v0           #childCount:I
    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Launcher;->isWorkspaceLocked()Z

    move-result v3

    if-nez v3, :cond_6

    .line 821
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v2

    .line 822
    .local v2, w:Lcom/sec/android/app/twlauncher/Workspace;
    if-ne p2, v4, :cond_5

    .line 823
    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v3

    if-lez v3, :cond_6

    .line 826
    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/sec/android/app/twlauncher/CellLayout;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildCount()I

    move-result v3

    if-gtz v3, :cond_4

    .line 827
    sput-boolean v5, Lcom/sec/android/app/twlauncher/Workspace;->isScrollAble:Z

    .line 831
    :cond_4
    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v3

    sub-int/2addr v3, v5

    invoke-virtual {v2, v3}, Lcom/sec/android/app/twlauncher/Workspace;->snapToScreen(I)V

    move v3, v5

    .line 832
    goto :goto_0

    .line 834
    .restart local p0
    :cond_5
    if-ne p2, v6, :cond_6

    .line 835
    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v3

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v4

    sub-int/2addr v4, v5

    if-ge v3, v4, :cond_6

    .line 836
    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/twlauncher/Workspace;->snapToScreen(I)V

    move v3, v5

    .line 837
    goto :goto_0

    .line 842
    .end local v1           #mm:Lcom/sec/android/app/twlauncher/MenuManager;
    .end local v2           #w:Lcom/sec/android/app/twlauncher/Workspace;
    :cond_6
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v3

    goto :goto_0
.end method

.method public drawBg(ZZ)V
    .locals 5
    .parameter "draw"
    .parameter "animation"

    .prologue
    const/4 v4, 0x1

    const/high16 v3, 0x3f80

    const/4 v2, 0x0

    .line 765
    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mIsDrawBg:Z

    .line 766
    if-eqz p2, :cond_1

    .line 767
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mAnimationDuration:I

    .line 768
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mAnimationStartTime:J

    .line 769
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mIsDrawBg:Z

    if-eqz v0, :cond_0

    .line 770
    iput v4, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mAnimationState:I

    .line 771
    iput v2, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mAnimationFrom:F

    .line 772
    iput v3, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mAnimationTo:F

    .line 773
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mOpenInterpolator:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 783
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->invalidate()V

    .line 784
    return-void

    .line 775
    :cond_0
    iput v4, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mAnimationState:I

    .line 776
    iput v3, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mAnimationFrom:F

    .line 777
    iput v2, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mAnimationTo:F

    .line 778
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mCloseInterpolator:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_0

    .line 781
    :cond_1
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mAnimationState:I

    goto :goto_0
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 5
    .parameter "canvas"
    .parameter "view"
    .parameter "drawingTime"

    .prologue
    .line 337
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mDeleteIcon:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    .line 338
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mEditBg:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 339
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getOrientation()I

    move-result v1

    if-eqz v1, :cond_1

    .line 340
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mEditBg:Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v2

    iget v3, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mEditLeftOffset2:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v3

    iget v4, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mEditTopOffset:I

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    int-to-float v3, v3

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 345
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    .local v0, ret:Z
    move v1, v0

    .line 351
    .end local v0           #ret:Z
    :goto_1
    return v1

    .line 342
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mEditBg:Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v2

    iget v3, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mEditLeftOffset:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v3

    iget v4, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mTopOffset:I

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    int-to-float v3, v3

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 351
    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v1

    goto :goto_1
.end method

.method public drawChildUninstallableMarker(Landroid/graphics/Canvas;Landroid/view/View;)V
    .locals 8
    .parameter "canvas"
    .parameter "child"

    .prologue
    .line 358
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mDeleteIcon:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_1

    .line 360
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    .line 361
    .local v3, tag:Ljava/lang/Object;
    if-eqz v3, :cond_1

    instance-of v4, v3, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    if-eqz v4, :cond_1

    .line 362
    move-object v0, v3

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    move-object v1, v0

    .line 363
    .local v1, app:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    iget-boolean v4, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->systemApp:Z

    if-nez v4, :cond_1

    .line 364
    const/4 v2, 0x0

    .line 365
    .local v2, childTopMargin:I
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getOrientation()I

    move-result v4

    if-eqz v4, :cond_0

    iget v2, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mTopOffset:I

    .line 366
    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mDeleteIcon:Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mDeleteIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v6

    iget v7, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mIconWidth:I

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    iget v7, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mDeleteIconRightOffset:I

    add-int/2addr v6, v7

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mDeleteIconTopOffset:I

    add-int/lit8 v6, v6, 0x0

    sub-int/2addr v6, v2

    int-to-float v6, v6

    iget-object v7, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 372
    .end local v1           #app:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .end local v2           #childTopMargin:I
    .end local v3           #tag:Ljava/lang/Object;
    :cond_1
    return-void
.end method

.method public getColumnCount()I
    .locals 1

    .prologue
    .line 248
    iget v0, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mColumnCount:I

    return v0
.end method

.method public getEnabledChildCount()I
    .locals 6

    .prologue
    .line 894
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getChildCount()I

    move-result v1

    .line 895
    .local v1, count:I
    const/4 v3, 0x0

    .line 896
    .local v3, ret:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 897
    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 898
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_0

    add-int/lit8 v3, v3, 0x1

    .line 896
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 901
    .end local v0           #child:Landroid/view/View;
    :cond_1
    return v3
.end method

.method getIndexOfCell(II)I
    .locals 18
    .parameter "x"
    .parameter "y"

    .prologue
    .line 633
    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    .line 634
    .local v14, r:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    move-object v1, v14

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getHitRect(Landroid/graphics/Rect;)V

    .line 636
    move-object v0, v14

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v15

    if-eqz v15, :cond_b

    .line 637
    iget v15, v14, Landroid/graphics/Rect;->left:I

    sub-int p1, p1, v15

    .line 638
    iget v15, v14, Landroid/graphics/Rect;->top:I

    sub-int p2, p2, v15

    .line 640
    const/4 v3, -0x1

    .line 641
    .local v3, cell:I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getEnabledChildCount()I

    move-result v11

    .line 642
    .local v11, enabledChildCount:I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getChildCount()I

    move-result v10

    .line 643
    .local v10, count:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mChildWidth:I

    move v9, v0

    .line 644
    .local v9, childWidth:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mChildHeight:I

    move v6, v0

    .line 646
    .local v6, childHeight:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mColumnCount:I

    move v15, v0

    if-lt v11, v15, :cond_5

    .line 647
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getOrientation()I

    move-result v15

    if-nez v15, :cond_4

    .line 648
    if-gez p1, :cond_3

    const/16 p1, 0x0

    move/from16 v3, p1

    .line 680
    :cond_0
    :goto_0
    if-ltz v3, :cond_1

    const/4 v15, 0x1

    sub-int v15, v10, v15

    if-lt v3, v15, :cond_2

    .line 681
    :cond_1
    const/4 v3, -0x1

    :cond_2
    move v15, v3

    .line 686
    .end local v3           #cell:I
    .end local v6           #childHeight:I
    .end local v9           #childWidth:I
    .end local v10           #count:I
    .end local v11           #enabledChildCount:I
    :goto_1
    return v15

    .line 648
    .restart local v3       #cell:I
    .restart local v6       #childHeight:I
    .restart local v9       #childWidth:I
    .restart local v10       #count:I
    .restart local v11       #enabledChildCount:I
    :cond_3
    div-int v15, p1, v9

    move v3, v15

    goto :goto_0

    .line 650
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mTopOffset:I

    move v15, v0

    add-int/2addr v15, v6

    div-int v3, p2, v15

    .line 651
    const/4 v15, 0x1

    sub-int v15, v10, v15

    sub-int v3, v15, v3

    goto :goto_0

    .line 654
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getOrientation()I

    move-result v15

    if-nez v15, :cond_8

    .line 655
    move-object/from16 v0, p0

    move v1, v11

    invoke-direct {v0, v1}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getItemGap(I)I

    move-result v5

    .line 656
    .local v5, childGap:I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getMeasuredWidth()I

    move-result v15

    mul-int v16, v11, v9

    sub-int v15, v15, v16

    const/16 v16, 0x1

    sub-int v16, v11, v16

    mul-int v16, v16, v5

    sub-int v15, v15, v16

    div-int/lit8 v7, v15, 0x2

    .line 658
    .local v7, childLeft:I
    const/4 v12, 0x0

    .local v12, i:I
    :goto_2
    if-ge v12, v10, :cond_0

    .line 659
    move-object/from16 v0, p0

    move v1, v12

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 660
    .local v4, child:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v15

    const/16 v16, 0x8

    move v0, v15

    move/from16 v1, v16

    if-ne v0, v1, :cond_7

    .line 658
    :cond_6
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 661
    :cond_7
    add-int/lit8 v3, v3, 0x1

    .line 662
    add-int v15, v9, v5

    mul-int/2addr v15, v3

    add-int/2addr v15, v7

    div-int/lit8 v16, v9, 0x2

    add-int v15, v15, v16

    move/from16 v0, p1

    move v1, v15

    if-ge v0, v1, :cond_6

    goto :goto_0

    .line 665
    .end local v4           #child:Landroid/view/View;
    .end local v5           #childGap:I
    .end local v7           #childLeft:I
    .end local v12           #i:I
    :cond_8
    move-object/from16 v0, p0

    move v1, v11

    invoke-direct {v0, v1}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getItemGap(I)I

    move-result v5

    .line 666
    .restart local v5       #childGap:I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getMeasuredHeight()I

    move-result v15

    mul-int v16, v11, v6

    sub-int v15, v15, v16

    const/16 v16, 0x1

    sub-int v16, v11, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mTopOffset:I

    move/from16 v17, v0

    add-int v17, v17, v5

    mul-int v16, v16, v17

    sub-int v15, v15, v16

    div-int/lit8 v8, v15, 0x2

    .line 668
    .local v8, childTop:I
    const/4 v15, 0x1

    sub-int v3, v10, v15

    .line 669
    const/4 v13, 0x0

    .line 670
    .local v13, index:I
    const/4 v12, 0x0

    .restart local v12       #i:I
    :goto_3
    if-ge v12, v10, :cond_0

    .line 671
    move-object/from16 v0, p0

    move v1, v12

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 672
    .restart local v4       #child:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v15

    const/16 v16, 0x8

    move v0, v15

    move/from16 v1, v16

    if-ne v0, v1, :cond_a

    .line 670
    :cond_9
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 673
    :cond_a
    add-int/lit8 v3, v3, -0x1

    .line 674
    add-int/lit8 v13, v13, 0x1

    .line 675
    add-int v15, v6, v5

    mul-int/2addr v15, v13

    add-int/2addr v15, v8

    div-int/lit8 v16, v6, 0x2

    add-int v15, v15, v16

    move/from16 v0, p2

    move v1, v15

    if-ge v0, v1, :cond_9

    goto/16 :goto_0

    .line 686
    .end local v3           #cell:I
    .end local v4           #child:Landroid/view/View;
    .end local v5           #childGap:I
    .end local v6           #childHeight:I
    .end local v8           #childTop:I
    .end local v9           #childWidth:I
    .end local v10           #count:I
    .end local v11           #enabledChildCount:I
    .end local v12           #i:I
    .end local v13           #index:I
    :cond_b
    const/4 v15, -0x1

    goto/16 :goto_1
.end method

.method public getVisibleChildCount()I
    .locals 5

    .prologue
    .line 905
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getChildCount()I

    move-result v1

    .line 906
    .local v1, count:I
    const/4 v3, 0x0

    .line 907
    .local v3, ret:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 908
    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 909
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    .line 907
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 911
    .end local v0           #child:Landroid/view/View;
    :cond_1
    return v3
.end method

.method public loadApplications()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 440
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/sec/android/app/twlauncher/LauncherModel;->loadTopAppToDatabase(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v0

    .line 441
    .local v0, c:Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 466
    :goto_0
    return-void

    .line 443
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v8

    iget v9, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mColumnCount:I

    sub-int/2addr v9, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 444
    .local v1, count:I
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 448
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v1, :cond_3

    .line 449
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 450
    .local v6, strCName:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v6}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v9

    invoke-direct {p0, v8, v9}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getApplicationInfo(Landroid/content/Context;Landroid/content/ComponentName;)Lcom/sec/android/app/twlauncher/ApplicationInfo;

    move-result-object v4

    .line 451
    .local v4, info:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    if-eqz v4, :cond_2

    .line 452
    const/4 v8, 0x2

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 453
    .local v7, topnum:I
    iput v7, v4, Lcom/sec/android/app/twlauncher/ApplicationInfo;->topNum:I

    .line 454
    iput v7, v4, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editTopNum:I

    .line 455
    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->makeItemView(Lcom/sec/android/app/twlauncher/ApplicationInfo;)Landroid/view/View;

    move-result-object v5

    .line 456
    .local v5, item:Landroid/view/View;
    move v3, v2

    .line 457
    .local v3, index:I
    if-ltz v7, :cond_1

    const/4 v8, 0x3

    if-ge v7, v8, :cond_1

    iget v8, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mColumnCount:I

    sub-int/2addr v8, v10

    if-ge v7, v8, :cond_1

    .line 458
    move v3, v7

    .line 460
    :cond_1
    invoke-virtual {p0, v3}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->removeViewAt(I)V

    .line 461
    invoke-virtual {p0, v5, v3}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->addView(Landroid/view/View;I)V

    .line 463
    .end local v3           #index:I
    .end local v5           #item:Landroid/view/View;
    .end local v7           #topnum:I
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 448
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 465
    .end local v4           #info:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .end local v6           #strCName:Ljava/lang/String;
    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public makeItemView(Lcom/sec/android/app/twlauncher/ApplicationInfo;)Landroid/view/View;
    .locals 10
    .parameter "info"

    .prologue
    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 533
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 534
    .local v4, res:Landroid/content/res/Resources;
    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 536
    .local v1, config:Landroid/content/res/Configuration;
    iget v6, v1, Landroid/content/res/Configuration;->orientation:I

    iget v7, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mOrientation:I

    if-eq v6, v7, :cond_0

    .line 537
    iget v6, v1, Landroid/content/res/Configuration;->orientation:I

    iput v6, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mOldOrientation:I

    .line 538
    iget v6, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mOrientation:I

    iput v6, v1, Landroid/content/res/Configuration;->orientation:I

    .line 540
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 541
    .local v3, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {v4, v1, v3}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 544
    .end local v3           #metrics:Landroid/util/DisplayMetrics;
    :cond_0
    const/4 v2, 0x0

    .line 545
    .local v2, itemView:Landroid/view/View;
    sget-boolean v6, Lcom/sec/android/app/twlauncher/Launcher;->USE_MAINMENU_ICONMODE:Z

    if-eqz v6, :cond_3

    .line 546
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f030005

    invoke-virtual {v6, v7, p0, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 550
    :goto_0
    move-object v0, v2

    check-cast v0, Lcom/sec/android/app/twlauncher/MenuItemView;

    move-object v5, v0

    .line 551
    .local v5, view:Lcom/sec/android/app/twlauncher/MenuItemView;
    new-instance v6, Lcom/sec/android/app/twlauncher/FastBitmapDrawable;

    iget-object v7, p1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->iconBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v6, v7}, Lcom/sec/android/app/twlauncher/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v5, v6}, Lcom/sec/android/app/twlauncher/MenuItemView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 552
    sget-boolean v6, Lcom/sec/android/app/twlauncher/Launcher;->USE_MAINMENU_ICONMODE:Z

    if-nez v6, :cond_1

    .line 555
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/sec/android/app/twlauncher/MenuItemView;->setFocusable(Z)V

    .line 556
    :cond_1
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Lcom/sec/android/app/twlauncher/MenuItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 557
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v5, v6}, Lcom/sec/android/app/twlauncher/MenuItemView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 559
    invoke-virtual {v5, p1}, Lcom/sec/android/app/twlauncher/MenuItemView;->setTag(Ljava/lang/Object;)V

    .line 561
    iget v6, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mOldOrientation:I

    if-eq v6, v8, :cond_2

    .line 562
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 563
    .restart local v3       #metrics:Landroid/util/DisplayMetrics;
    iget v6, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mOldOrientation:I

    iput v6, v1, Landroid/content/res/Configuration;->orientation:I

    .line 564
    invoke-virtual {v4, v1, v3}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 565
    iput v8, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mOldOrientation:I

    .line 568
    .end local v3           #metrics:Landroid/util/DisplayMetrics;
    :cond_2
    return-object v5

    .line 548
    .end local v5           #view:Lcom/sec/android/app/twlauncher/MenuItemView;
    :cond_3
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f030004

    invoke-virtual {v6, v7, p0, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    goto :goto_0
.end method

.method public onDropCompleted(Landroid/view/View;ZLjava/lang/Object;)V
    .locals 1
    .parameter "target"
    .parameter "success"
    .parameter "dragInfo"

    .prologue
    .line 625
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/android/app/twlauncher/MenuManager;->onDropCompleted(Landroid/view/View;ZLjava/lang/Object;)V

    .line 626
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 614
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->isAddWidgetState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 615
    const/4 v0, 0x1

    .line 617
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 15
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 276
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getOrientation()I

    move-result v10

    .line 277
    .local v10, orientation:I
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getChildCount()I

    move-result v7

    .line 278
    .local v7, count:I
    iget v3, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mLRPadding:I

    .line 279
    .local v3, childLeft:I
    iget v4, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mTopOffset:I

    .line 280
    .local v4, childTop:I
    const/4 v5, 0x0

    .line 281
    .local v5, childTopMargin:I
    const/4 v1, 0x0

    .line 283
    .local v1, childGap:I
    if-eqz v10, :cond_0

    .line 284
    const/4 v3, 0x0

    .line 285
    iget v4, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mTopOffset:I

    .line 286
    iget v5, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mTopOffset:I

    .line 289
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getEnabledChildCount()I

    move-result v8

    .line 291
    .local v8, enabledChildCount:I
    iget-object v11, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mTmpRect:Landroid/graphics/Rect;

    .line 292
    .local v11, r:Landroid/graphics/Rect;
    if-nez v10, :cond_4

    .line 293
    if-lez v8, :cond_1

    iget v12, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mColumnCount:I

    if-ge v8, v12, :cond_1

    .line 294
    invoke-direct {p0, v8}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getItemGap(I)I

    move-result v1

    .line 295
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getMeasuredWidth()I

    move-result v12

    iget v13, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mChildWidth:I

    mul-int/2addr v13, v8

    sub-int/2addr v12, v13

    const/4 v13, 0x1

    sub-int v13, v8, v13

    mul-int/2addr v13, v1

    sub-int/2addr v12, v13

    div-int/lit8 v3, v12, 0x2

    .line 297
    :cond_1
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    if-ge v9, v7, :cond_8

    .line 298
    invoke-virtual {p0, v9}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 299
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v12

    const/16 v13, 0x8

    if-ne v12, v13, :cond_2

    .line 297
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 300
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    .line 301
    .local v6, childWidth:I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 302
    .local v2, childHeight:I
    invoke-virtual {v0, v11}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 303
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v12

    if-nez v12, :cond_3

    invoke-virtual {v11}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_3

    iget-boolean v12, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mEnabledChildAnimation:Z

    if-eqz v12, :cond_3

    .line 305
    add-int v12, v3, v6

    add-int v13, v4, v2

    invoke-virtual {v11, v3, v4, v12, v13}, Landroid/graphics/Rect;->set(IIII)V

    .line 306
    iget-object v12, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mChildAnimate:[Lcom/sec/android/app/twlauncher/AppShortcutZone$Animate;

    aget-object v12, v12, v9

    invoke-virtual {v12, v0, v11}, Lcom/sec/android/app/twlauncher/AppShortcutZone$Animate;->start(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 310
    :goto_2
    add-int v12, v6, v1

    add-int/2addr v3, v12

    goto :goto_1

    .line 308
    :cond_3
    add-int v12, v3, v6

    add-int v13, v4, v2

    invoke-virtual {v0, v3, v4, v12, v13}, Landroid/view/View;->layout(IIII)V

    goto :goto_2

    .line 313
    .end local v0           #child:Landroid/view/View;
    .end local v2           #childHeight:I
    .end local v6           #childWidth:I
    .end local v9           #i:I
    :cond_4
    if-lez v8, :cond_5

    iget v12, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mColumnCount:I

    if-ge v8, v12, :cond_5

    .line 314
    invoke-direct {p0, v8}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getItemGap(I)I

    move-result v1

    .line 315
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getMeasuredHeight()I

    move-result v12

    iget v13, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mChildHeight:I

    mul-int/2addr v13, v8

    sub-int/2addr v12, v13

    const/4 v13, 0x1

    sub-int v13, v8, v13

    iget v14, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mTopOffset:I

    add-int/2addr v14, v1

    mul-int/2addr v13, v14

    sub-int/2addr v12, v13

    div-int/lit8 v4, v12, 0x2

    .line 317
    :cond_5
    const/4 v12, 0x1

    sub-int v9, v7, v12

    .restart local v9       #i:I
    :goto_3
    if-ltz v9, :cond_8

    .line 318
    invoke-virtual {p0, v9}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 319
    .restart local v0       #child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v12

    const/16 v13, 0x8

    if-ne v12, v13, :cond_6

    .line 317
    :goto_4
    add-int/lit8 v9, v9, -0x1

    goto :goto_3

    .line 320
    :cond_6
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    .line 321
    .restart local v6       #childWidth:I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 322
    .restart local v2       #childHeight:I
    invoke-virtual {v0, v11}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 323
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v12

    if-nez v12, :cond_7

    invoke-virtual {v11}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_7

    iget-boolean v12, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mEnabledChildAnimation:Z

    if-eqz v12, :cond_7

    .line 325
    add-int v12, v3, v6

    add-int v13, v4, v2

    invoke-virtual {v11, v3, v4, v12, v13}, Landroid/graphics/Rect;->set(IIII)V

    .line 326
    iget-object v12, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mChildAnimate:[Lcom/sec/android/app/twlauncher/AppShortcutZone$Animate;

    aget-object v12, v12, v9

    invoke-virtual {v12, v0, v11}, Lcom/sec/android/app/twlauncher/AppShortcutZone$Animate;->start(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 330
    :goto_5
    add-int v12, v2, v5

    add-int/2addr v12, v1

    add-int/2addr v4, v12

    goto :goto_4

    .line 328
    :cond_7
    add-int v12, v3, v6

    add-int v13, v4, v2

    invoke-virtual {v0, v3, v4, v12, v13}, Landroid/view/View;->layout(IIII)V

    goto :goto_5

    .line 333
    .end local v0           #child:Landroid/view/View;
    .end local v2           #childHeight:I
    .end local v6           #childWidth:I
    :cond_8
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v7, 0x4000

    .line 253
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 255
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 256
    .local v4, width:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 258
    .local v1, height:I
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getChildCount()I

    move-result v0

    .line 259
    .local v0, count:I
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getOrientation()I

    move-result v3

    .line 260
    .local v3, orientation:I
    if-nez v3, :cond_0

    .line 261
    iget v5, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mLRPadding:I

    mul-int/lit8 v5, v5, 0x2

    sub-int v5, v4, v5

    iget v6, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mColumnCount:I

    div-int/2addr v5, v6

    iput v5, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mChildWidth:I

    .line 267
    :goto_0
    iget v5, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mChildWidth:I

    invoke-static {v5, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 268
    iget v5, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mChildHeight:I

    invoke-static {v5, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 269
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_1

    .line 270
    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Landroid/view/View;->measure(II)V

    .line 269
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 264
    .end local v2           #i:I
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09000c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mChildHeight:I

    goto :goto_0

    .line 272
    .restart local v2       #i:I
    :cond_1
    return-void
.end method

.method removeItem(Landroid/view/View;)I
    .locals 5
    .parameter "v"

    .prologue
    .line 723
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getChildCount()I

    move-result v1

    .line 724
    .local v1, count:I
    const/4 v3, -0x1

    .line 725
    .local v3, index:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 726
    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 727
    .local v0, child:Landroid/view/View;
    if-ne v0, p1, :cond_2

    .line 728
    move v3, v2

    .line 733
    .end local v0           #child:Landroid/view/View;
    :cond_0
    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 734
    invoke-virtual {p0, v3}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->removeViewAt(I)V

    .line 735
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mVirtualView:[Landroid/view/View;

    aget-object v4, v4, v3

    invoke-virtual {p0, v4, v3}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->addView(Landroid/view/View;I)V

    .line 737
    :cond_1
    return v3

    .line 725
    .restart local v0       #child:Landroid/view/View;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "img"

    .prologue
    .line 749
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mDeleteIcon:Landroid/graphics/Bitmap;

    .line 750
    return-void
.end method

.method public setDragger(Lcom/sec/android/app/twlauncher/DragController;)V
    .locals 0
    .parameter "dragger"

    .prologue
    .line 629
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mDragger:Lcom/sec/android/app/twlauncher/DragController;

    .line 630
    return-void
.end method

.method public setEditBg(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "bmp"

    .prologue
    .line 753
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mEditBg:Landroid/graphics/Bitmap;

    .line 754
    return-void
.end method

.method public setEditIndex(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 741
    iput p1, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mEditIndex:I

    .line 742
    return-void
.end method

.method public setEnabledChildAnimation(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 745
    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mEnabledChildAnimation:Z

    .line 746
    return-void
.end method

.method setLauncher(Lcom/sec/android/app/twlauncher/Launcher;)V
    .locals 0
    .parameter "launcher"

    .prologue
    .line 621
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    .line 622
    return-void
.end method

.method public updateApplication(Lcom/sec/android/app/twlauncher/ApplicationInfo;I)V
    .locals 8
    .parameter "info"
    .parameter "num"

    .prologue
    .line 505
    if-nez p1, :cond_1

    .line 530
    :cond_0
    :goto_0
    return-void

    .line 506
    :cond_1
    invoke-virtual {p0, p2}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 507
    .local v2, child:Landroid/view/View;
    if-eqz v2, :cond_0

    const/4 v6, 0x3

    if-ge p2, v6, :cond_0

    iget v6, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mColumnCount:I

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    if-ge p2, v6, :cond_0

    .line 512
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    .line 513
    .local v4, tag:Ljava/lang/Object;
    const/4 v5, 0x1

    .line 514
    .local v5, update:Z
    if-eqz v4, :cond_2

    .line 515
    move-object v0, v4

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    move-object v3, v0

    .line 516
    .local v3, orgInfo:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    if-ne v3, p1, :cond_2

    .line 517
    const/4 v5, 0x0

    .line 521
    .end local v3           #orgInfo:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    :cond_2
    if-eqz v5, :cond_0

    .line 523
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/twlauncher/LauncherApplication;

    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/LauncherApplication;->getBadgeCache()Lcom/sec/android/app/twlauncher/BadgeCache;

    move-result-object v1

    .line 524
    .local v1, badgeCache:Lcom/sec/android/app/twlauncher/BadgeCache;
    if-eqz v1, :cond_3

    .line 525
    iget-object v6, p1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v6}, Lcom/sec/android/app/twlauncher/BadgeCache;->getBadgeCount(Landroid/content/ComponentName;)I

    move-result v6

    iput v6, p1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->badgeCount:I

    .line 528
    :cond_3
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->makeItemView(Lcom/sec/android/app/twlauncher/ApplicationInfo;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {p0, v6, p2}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->addItem(Landroid/view/View;I)Landroid/view/View;

    goto :goto_0
.end method

.method public updateApplications()V
    .locals 0

    .prologue
    .line 491
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->clearApplications()V

    .line 492
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->loadApplications()V

    .line 493
    return-void
.end method

.method updateBadgeCount(Ljava/util/List;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 954
    .local p1, updatedApps:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/twlauncher/LauncherApplication;

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/LauncherApplication;->getBadgeCache()Lcom/sec/android/app/twlauncher/BadgeCache;

    move-result-object v1

    .line 955
    .local v1, badgeCache:Lcom/sec/android/app/twlauncher/BadgeCache;
    if-eqz v1, :cond_1

    .line 956
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 957
    invoke-virtual {p0, v3}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 959
    .local v2, child:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 960
    .local v0, ai:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    if-eqz v0, :cond_0

    .line 961
    iget-object v4, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/twlauncher/BadgeCache;->getBadgeCount(Landroid/content/Intent;)I

    move-result v4

    iput v4, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->badgeCount:I

    .line 963
    invoke-virtual {v2}, Landroid/view/View;->destroyDrawingCache()V

    .line 964
    invoke-virtual {v2}, Landroid/view/View;->buildDrawingCache()V

    .line 965
    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    .line 956
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 970
    .end local v0           #ai:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .end local v2           #child:Landroid/view/View;
    .end local v3           #i:I
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->invalidate()V

    .line 971
    return-void
.end method
