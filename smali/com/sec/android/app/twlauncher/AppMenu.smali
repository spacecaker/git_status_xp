.class public Lcom/sec/android/app/twlauncher/AppMenu;
.super Landroid/widget/FrameLayout;
.source "AppMenu.java"

# interfaces
.implements Lcom/sec/android/app/twlauncher/MenuItemView$UninstallableMarkerDrawParent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/twlauncher/AppMenu$Animate;
    }
.end annotation


# instance fields
.field private mAppHeight:I

.field private mAppWidth:I

.field private mChildAnimate:[Lcom/sec/android/app/twlauncher/AppMenu$Animate;

.field private mColumnNum:I

.field private mDeleteIconRightOffset:I

.field private mDeleteIconTopOffset:I

.field private mEditBg:Landroid/graphics/Bitmap;

.field private mEditFoldBg1:Landroid/graphics/Bitmap;

.field private mEditFoldBg2:Landroid/graphics/Bitmap;

.field private mEditFoldBg3:Landroid/graphics/Bitmap;

.field private mEditFoldBgDelete1:Landroid/graphics/Bitmap;

.field private mEditFoldBgDelete2:Landroid/graphics/Bitmap;

.field private mEditFoldBgDelete3:Landroid/graphics/Bitmap;

.field private mEditIndex:I

.field private mEditLeftOffset:I

.field private mEditTopOffset:I

.field private mEnabledChildAnimation:Z

.field private mIconWidth:I

.field private mImage:Landroid/graphics/Bitmap;

.field private mItemNumOfPage:I

.field private mLRPadding:I

.field private mLeftOffset:I

.field private mLeftStartOffset:I

.field private mOrientation:I

.field private mPaint:Landroid/graphics/Paint;

.field private mRightOffset:I

.field private mTmpRect:Landroid/graphics/Rect;

.field private mTopOffset:I

.field private mVerticalSpace:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/twlauncher/AppMenu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "orientation"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 49
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mOrientation:I

    .line 56
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mTmpRect:Landroid/graphics/Rect;

    .line 58
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mEditIndex:I

    .line 66
    iput p2, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mOrientation:I

    .line 71
    iget v0, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mItemNumOfPage:I

    new-array v0, v0, [Lcom/sec/android/app/twlauncher/AppMenu$Animate;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mChildAnimate:[Lcom/sec/android/app/twlauncher/AppMenu$Animate;

    .line 73
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/AppMenu;->init()V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 77
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/app/twlauncher/AppMenu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 81
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mOrientation:I

    .line 56
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mTmpRect:Landroid/graphics/Rect;

    .line 58
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mEditIndex:I

    .line 83
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/AppMenu;->init()V

    .line 84
    return-void
.end method

.method private init()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 87
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/sec/android/app/twlauncher/AppMenu;->setClickable(Z)V

    .line 88
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    iput-object v8, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mPaint:Landroid/graphics/Paint;

    .line 90
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 91
    .local v7, res:Landroid/content/res/Resources;
    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 92
    .local v1, config:Landroid/content/res/Configuration;
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppMenu;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 94
    .local v2, context:Landroid/content/Context;
    const/4 v6, -0x1

    .line 96
    .local v6, oldOrientation:I
    iget v8, v1, Landroid/content/res/Configuration;->orientation:I

    iget v9, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mOrientation:I

    if-eq v8, v9, :cond_0

    .line 97
    iget v6, v1, Landroid/content/res/Configuration;->orientation:I

    .line 98
    iget v8, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mOrientation:I

    iput v8, v1, Landroid/content/res/Configuration;->orientation:I

    .line 99
    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    .line 100
    .local v5, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {v7, v1, v5}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 103
    .end local v5           #metrics:Landroid/util/DisplayMetrics;
    :cond_0
    invoke-static {v2}, Lcom/sec/android/app/twlauncher/LauncherConfig;->getColumnNo(Landroid/content/Context;)I

    move-result v8

    iput v8, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mColumnNum:I

    .line 104
    invoke-static {v2}, Lcom/sec/android/app/twlauncher/LauncherConfig;->getItemNoOfPage(Landroid/content/Context;)I

    move-result v8

    iput v8, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mItemNumOfPage:I

    .line 106
    iget v8, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mItemNumOfPage:I

    new-array v8, v8, [Lcom/sec/android/app/twlauncher/AppMenu$Animate;

    iput-object v8, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mChildAnimate:[Lcom/sec/android/app/twlauncher/AppMenu$Animate;

    .line 108
    const v8, 0x7f090006

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mAppHeight:I

    .line 109
    const v8, 0x7f090007

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mVerticalSpace:I

    .line 110
    const v8, 0x7f090011

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mEditLeftOffset:I

    .line 111
    const v8, 0x7f090012

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mEditTopOffset:I

    .line 112
    const v8, 0x7f090008

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    const v9, 0x7f090016

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    add-int/2addr v8, v9

    iput v8, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mDeleteIconTopOffset:I

    .line 113
    const v8, 0x7f090017

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mDeleteIconRightOffset:I

    .line 114
    const v8, 0x7f090013

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mIconWidth:I

    .line 115
    const v8, 0x7f09000a

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mTopOffset:I

    .line 116
    const v8, 0x7f090018

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mLRPadding:I

    .line 117
    const v8, 0x7f090019

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mRightOffset:I

    .line 118
    const v8, 0x7f090039

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mLeftStartOffset:I

    .line 119
    sget-boolean v8, Lcom/sec/android/app/twlauncher/Launcher;->USE_MAINMENU_ICONMODE:Z

    if-eqz v8, :cond_1

    .line 120
    const v8, 0x7f090038

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mLeftOffset:I

    .line 122
    const v8, 0x7f020021

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 123
    .local v3, fold:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    invoke-virtual {v3, v11, v11, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 124
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v9, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    iput-object v8, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mEditFoldBg1:Landroid/graphics/Bitmap;

    .line 125
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v8, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mEditFoldBg1:Landroid/graphics/Bitmap;

    invoke-direct {v0, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 126
    .local v0, c:Landroid/graphics/Canvas;
    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 128
    const v8, 0x7f020022

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 129
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    invoke-virtual {v3, v11, v11, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 130
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v9, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    iput-object v8, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mEditFoldBg2:Landroid/graphics/Bitmap;

    .line 131
    new-instance v0, Landroid/graphics/Canvas;

    .end local v0           #c:Landroid/graphics/Canvas;
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mEditFoldBg2:Landroid/graphics/Bitmap;

    invoke-direct {v0, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 132
    .restart local v0       #c:Landroid/graphics/Canvas;
    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 134
    const v8, 0x7f020023

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 135
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    invoke-virtual {v3, v11, v11, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 136
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v9, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    iput-object v8, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mEditFoldBg3:Landroid/graphics/Bitmap;

    .line 137
    new-instance v0, Landroid/graphics/Canvas;

    .end local v0           #c:Landroid/graphics/Canvas;
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mEditFoldBg3:Landroid/graphics/Bitmap;

    invoke-direct {v0, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 138
    .restart local v0       #c:Landroid/graphics/Canvas;
    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 140
    const v8, 0x7f02001e

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 141
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    invoke-virtual {v3, v11, v11, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 142
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v9, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    iput-object v8, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mEditFoldBgDelete1:Landroid/graphics/Bitmap;

    .line 143
    new-instance v0, Landroid/graphics/Canvas;

    .end local v0           #c:Landroid/graphics/Canvas;
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mEditFoldBgDelete1:Landroid/graphics/Bitmap;

    invoke-direct {v0, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 144
    .restart local v0       #c:Landroid/graphics/Canvas;
    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 146
    const v8, 0x7f02001f

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 147
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    invoke-virtual {v3, v11, v11, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 148
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v9, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    iput-object v8, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mEditFoldBgDelete2:Landroid/graphics/Bitmap;

    .line 149
    new-instance v0, Landroid/graphics/Canvas;

    .end local v0           #c:Landroid/graphics/Canvas;
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mEditFoldBgDelete2:Landroid/graphics/Bitmap;

    invoke-direct {v0, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 150
    .restart local v0       #c:Landroid/graphics/Canvas;
    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 152
    const v8, 0x7f020020

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 153
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    invoke-virtual {v3, v11, v11, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 154
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v9, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    iput-object v8, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mEditFoldBgDelete3:Landroid/graphics/Bitmap;

    .line 155
    new-instance v0, Landroid/graphics/Canvas;

    .end local v0           #c:Landroid/graphics/Canvas;
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mEditFoldBgDelete3:Landroid/graphics/Bitmap;

    invoke-direct {v0, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 156
    .restart local v0       #c:Landroid/graphics/Canvas;
    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 161
    .end local v0           #c:Landroid/graphics/Canvas;
    .end local v3           #fold:Landroid/graphics/drawable/Drawable;
    :cond_1
    const/4 v8, -0x1

    if-eq v6, v8, :cond_2

    .line 162
    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    .line 163
    .restart local v5       #metrics:Landroid/util/DisplayMetrics;
    iput v6, v1, Landroid/content/res/Configuration;->orientation:I

    .line 164
    invoke-virtual {v7, v1, v5}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 167
    .end local v5           #metrics:Landroid/util/DisplayMetrics;
    :cond_2
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    iget v8, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mItemNumOfPage:I

    if-ge v4, v8, :cond_3

    .line 168
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mChildAnimate:[Lcom/sec/android/app/twlauncher/AppMenu$Animate;

    new-instance v9, Lcom/sec/android/app/twlauncher/AppMenu$Animate;

    invoke-direct {v9, p0}, Lcom/sec/android/app/twlauncher/AppMenu$Animate;-><init>(Lcom/sec/android/app/twlauncher/AppMenu;)V

    aput-object v9, v8, v4

    .line 167
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 171
    :cond_3
    invoke-virtual {p0, v11}, Lcom/sec/android/app/twlauncher/AppMenu;->setAnimationCacheEnabled(Z)V

    .line 172
    return-void
.end method


# virtual methods
.method cellToPoint(I[I)V
    .locals 6
    .parameter "cell"
    .parameter "point"

    .prologue
    .line 359
    iget v2, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mColumnNum:I

    div-int v0, p1, v2

    .line 360
    .local v0, line:I
    iget v2, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mColumnNum:I

    rem-int v1, p1, v2

    .line 362
    .local v1, num:I
    const/4 v2, 0x0

    iget v3, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mLRPadding:I

    iget v4, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mAppWidth:I

    mul-int/2addr v4, v1

    add-int/2addr v3, v4

    aput v3, p2, v2

    .line 363
    const/4 v2, 0x1

    iget v3, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mTopOffset:I

    iget v4, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mAppHeight:I

    iget v5, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mVerticalSpace:I

    add-int/2addr v4, v5

    mul-int/2addr v4, v0

    add-int/2addr v3, v4

    aput v3, p2, v2

    .line 364
    return-void
.end method

.method cellToPoint(Landroid/view/View;[I)V
    .locals 4
    .parameter "v"
    .parameter "point"

    .prologue
    .line 367
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 368
    .local v1, r:Landroid/graphics/Rect;
    invoke-virtual {p1, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 369
    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 370
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/AppMenu;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 371
    .local v0, cell:I
    invoke-virtual {p0, v0, p2}, Lcom/sec/android/app/twlauncher/AppMenu;->cellToPoint(I[I)V

    .line 376
    .end local v0           #cell:I
    :goto_0
    return-void

    .line 373
    :cond_0
    const/4 v2, 0x0

    iget v3, v1, Landroid/graphics/Rect;->left:I

    aput v3, p2, v2

    .line 374
    const/4 v2, 0x1

    iget v3, v1, Landroid/graphics/Rect;->top:I

    aput v3, p2, v2

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "canvas"

    .prologue
    .line 390
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 392
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mEditBg:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mEditIndex:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 393
    iget v1, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mEditIndex:I

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 394
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 397
    .end local v0           #child:Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 395
    .restart local v0       #child:Landroid/view/View;
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mEditBg:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    iget v3, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mEditLeftOffset:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    iget v4, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mEditTopOffset:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 12
    .parameter "canvas"
    .parameter "view"
    .parameter "drawingTime"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 257
    sget-boolean v8, Lcom/sec/android/app/twlauncher/Launcher;->USE_MAINMENU_ICONMODE:Z

    if-eqz v8, :cond_a

    .line 258
    invoke-super/range {p0 .. p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v6

    .line 260
    .local v6, ret:Z
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mImage:Landroid/graphics/Bitmap;

    if-eqz v8, :cond_2

    .line 261
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    .line 262
    .local v7, tag:Ljava/lang/Object;
    const/4 v2, 0x0

    .line 263
    .local v2, canDelete:Z
    const/4 v5, 0x0

    .line 264
    .local v5, isGoogleApp:Z
    if-eqz v7, :cond_1

    instance-of v8, v7, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    if-eqz v8, :cond_1

    .line 265
    move-object v0, v7

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    move-object v1, v0

    .line 266
    .local v1, app:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    iget-boolean v8, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->systemApp:Z

    if-nez v8, :cond_3

    move v2, v11

    .line 267
    :goto_0
    iget-object v8, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "com.google.android"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "com.android.vending"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    :cond_0
    move v5, v11

    .line 271
    .end local v1           #app:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    :cond_1
    :goto_1
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 272
    .local v3, group:Landroid/view/ViewGroup;
    invoke-virtual {v3, p2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v4

    .line 273
    .local v4, index:I
    if-eqz v2, :cond_7

    .line 274
    if-eqz v5, :cond_5

    .line 275
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mEditFoldBgDelete3:Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v9

    iget-object v10, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mEditFoldBgDelete3:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-virtual {p2}, Landroid/view/View;->getPaddingLeft()I

    move-result v10

    sub-int/2addr v9, v10

    int-to-float v9, v9

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v10

    invoke-virtual {p2}, Landroid/view/View;->getPaddingTop()I

    move-result v11

    add-int/2addr v10, v11

    int-to-float v10, v10

    iget-object v11, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v9, v10, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .end local v2           #canDelete:Z
    .end local v3           #group:Landroid/view/ViewGroup;
    .end local v4           #index:I
    .end local v5           #isGoogleApp:Z
    .end local v7           #tag:Ljava/lang/Object;
    :cond_2
    :goto_2
    move v8, v6

    .line 308
    .end local v6           #ret:Z
    :goto_3
    return v8

    .restart local v1       #app:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .restart local v2       #canDelete:Z
    .restart local v5       #isGoogleApp:Z
    .restart local v6       #ret:Z
    .restart local v7       #tag:Ljava/lang/Object;
    :cond_3
    move v2, v10

    .line 266
    goto :goto_0

    :cond_4
    move v5, v10

    .line 267
    goto :goto_1

    .line 278
    .end local v1           #app:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .restart local v3       #group:Landroid/view/ViewGroup;
    .restart local v4       #index:I
    :cond_5
    rem-int/lit8 v8, v4, 0x2

    if-nez v8, :cond_6

    .line 279
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mEditFoldBgDelete1:Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v9

    iget-object v10, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mEditFoldBgDelete1:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-virtual {p2}, Landroid/view/View;->getPaddingLeft()I

    move-result v10

    sub-int/2addr v9, v10

    int-to-float v9, v9

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v10

    invoke-virtual {p2}, Landroid/view/View;->getPaddingTop()I

    move-result v11

    add-int/2addr v10, v11

    int-to-float v10, v10

    iget-object v11, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v9, v10, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 282
    :cond_6
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mEditFoldBgDelete2:Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v9

    iget-object v10, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mEditFoldBgDelete2:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-virtual {p2}, Landroid/view/View;->getPaddingLeft()I

    move-result v10

    sub-int/2addr v9, v10

    int-to-float v9, v9

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v10

    invoke-virtual {p2}, Landroid/view/View;->getPaddingTop()I

    move-result v11

    add-int/2addr v10, v11

    int-to-float v10, v10

    iget-object v11, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v9, v10, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 286
    :cond_7
    if-eqz v5, :cond_8

    .line 287
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mEditFoldBg3:Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v9

    iget-object v10, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mEditFoldBg3:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-virtual {p2}, Landroid/view/View;->getPaddingLeft()I

    move-result v10

    sub-int/2addr v9, v10

    int-to-float v9, v9

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v10

    invoke-virtual {p2}, Landroid/view/View;->getPaddingTop()I

    move-result v11

    add-int/2addr v10, v11

    int-to-float v10, v10

    iget-object v11, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v9, v10, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 290
    :cond_8
    rem-int/lit8 v8, v4, 0x2

    if-nez v8, :cond_9

    .line 291
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mEditFoldBg1:Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v9

    iget-object v10, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mEditFoldBg1:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-virtual {p2}, Landroid/view/View;->getPaddingLeft()I

    move-result v10

    sub-int/2addr v9, v10

    int-to-float v9, v9

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v10

    invoke-virtual {p2}, Landroid/view/View;->getPaddingTop()I

    move-result v11

    add-int/2addr v10, v11

    int-to-float v10, v10

    iget-object v11, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v9, v10, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 294
    :cond_9
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mEditFoldBg2:Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v9

    iget-object v10, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mEditFoldBg2:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-virtual {p2}, Landroid/view/View;->getPaddingLeft()I

    move-result v10

    sub-int/2addr v9, v10

    int-to-float v9, v9

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v10

    invoke-virtual {p2}, Landroid/view/View;->getPaddingTop()I

    move-result v11

    add-int/2addr v10, v11

    int-to-float v10, v10

    iget-object v11, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v9, v10, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 302
    .end local v2           #canDelete:Z
    .end local v3           #group:Landroid/view/ViewGroup;
    .end local v4           #index:I
    .end local v5           #isGoogleApp:Z
    .end local v6           #ret:Z
    .end local v7           #tag:Ljava/lang/Object;
    :cond_a
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mImage:Landroid/graphics/Bitmap;

    if-eqz v8, :cond_b

    .line 303
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mEditBg:Landroid/graphics/Bitmap;

    if-eqz v8, :cond_b

    .line 304
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mEditBg:Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v9

    iget v10, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mEditLeftOffset:I

    add-int/2addr v9, v10

    int-to-float v9, v9

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v10

    iget v11, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mEditTopOffset:I

    add-int/2addr v10, v11

    int-to-float v10, v10

    iget-object v11, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v9, v10, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 308
    :cond_b
    invoke-super/range {p0 .. p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v8

    goto/16 :goto_3
.end method

.method public drawChildUninstallableMarker(Landroid/graphics/Canvas;Landroid/view/View;)V
    .locals 7
    .parameter "canvas"
    .parameter "child"

    .prologue
    .line 316
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mImage:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_0

    .line 318
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    .line 319
    .local v3, tag:Ljava/lang/Object;
    if-eqz v3, :cond_0

    instance-of v4, v3, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    if-eqz v4, :cond_0

    .line 320
    move-object v0, v3

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    move-object v1, v0

    .line 321
    .local v1, app:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    iget-boolean v4, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->systemApp:Z

    if-nez v4, :cond_0

    .line 322
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mImage:Landroid/graphics/Bitmap;

    .line 323
    .local v2, bmp:Landroid/graphics/Bitmap;
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v5

    iget v6, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mIconWidth:I

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    iget v6, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mDeleteIconRightOffset:I

    add-int/2addr v5, v6

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mDeleteIconTopOffset:I

    add-int/lit8 v5, v5, 0x0

    int-to-float v5, v5

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 328
    .end local v1           #app:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .end local v2           #bmp:Landroid/graphics/Bitmap;
    .end local v3           #tag:Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method public getChildHeight()I
    .locals 1

    .prologue
    .line 351
    iget v0, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mAppHeight:I

    return v0
.end method

.method public getChildWidth()I
    .locals 1

    .prologue
    .line 347
    iget v0, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mAppWidth:I

    return v0
.end method

.method public getLRPadding()I
    .locals 1

    .prologue
    .line 355
    iget v0, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mLRPadding:I

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 12
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 200
    iget v4, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mTopOffset:I

    .line 201
    .local v4, childTop:I
    const/4 v3, 0x0

    .line 202
    .local v3, childLeft:I
    sget-boolean v10, Lcom/sec/android/app/twlauncher/Launcher;->USE_MAINMENU_ICONMODE:Z

    if-eqz v10, :cond_2

    .line 203
    iget v3, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mLeftOffset:I

    .line 207
    :goto_0
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mTmpRect:Landroid/graphics/Rect;

    .line 208
    .local v8, r:Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildCount()I

    move-result v6

    .line 209
    .local v6, count:I
    iget v9, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mVerticalSpace:I

    .line 210
    .local v9, verticalSpace:I
    const/4 v0, 0x0

    .line 211
    .local v0, cellCount:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    if-ge v7, v6, :cond_5

    .line 212
    invoke-virtual {p0, v7}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 213
    .local v1, child:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v10

    const/16 v11, 0x8

    if-eq v10, v11, :cond_1

    .line 214
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 215
    .local v5, childWidth:I
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 216
    .local v2, childHeight:I
    invoke-virtual {v1, v8}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 217
    invoke-virtual {v8}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_3

    iget-boolean v10, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mEnabledChildAnimation:Z

    if-eqz v10, :cond_3

    .line 218
    add-int v10, v3, v5

    add-int v11, v4, v2

    invoke-virtual {v8, v3, v4, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 219
    iget-object v10, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mChildAnimate:[Lcom/sec/android/app/twlauncher/AppMenu$Animate;

    aget-object v10, v10, v7

    const/16 v11, 0x12c

    invoke-virtual {v10, v1, v8, v11}, Lcom/sec/android/app/twlauncher/AppMenu$Animate;->start(Landroid/view/View;Landroid/graphics/Rect;I)V

    .line 223
    :goto_2
    add-int/2addr v3, v5

    .line 224
    sget-boolean v10, Lcom/sec/android/app/twlauncher/Launcher;->USE_MAINMENU_ICONMODE:Z

    if-eqz v10, :cond_0

    .line 225
    iget v10, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mLRPadding:I

    add-int/2addr v3, v10

    .line 226
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 228
    iget v10, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mColumnNum:I

    rem-int v10, v0, v10

    if-nez v10, :cond_1

    .line 229
    add-int v10, v4, v2

    add-int v4, v10, v9

    .line 230
    sget-boolean v10, Lcom/sec/android/app/twlauncher/Launcher;->USE_MAINMENU_ICONMODE:Z

    if-eqz v10, :cond_4

    .line 231
    iget v3, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mLeftOffset:I

    .line 211
    .end local v2           #childHeight:I
    .end local v5           #childWidth:I
    :cond_1
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 205
    .end local v0           #cellCount:I
    .end local v1           #child:Landroid/view/View;
    .end local v6           #count:I
    .end local v7           #i:I
    .end local v8           #r:Landroid/graphics/Rect;
    .end local v9           #verticalSpace:I
    :cond_2
    iget v3, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mLeftStartOffset:I

    goto :goto_0

    .line 221
    .restart local v0       #cellCount:I
    .restart local v1       #child:Landroid/view/View;
    .restart local v2       #childHeight:I
    .restart local v5       #childWidth:I
    .restart local v6       #count:I
    .restart local v7       #i:I
    .restart local v8       #r:Landroid/graphics/Rect;
    .restart local v9       #verticalSpace:I
    :cond_3
    add-int v10, v3, v5

    add-int v11, v4, v2

    invoke-virtual {v1, v3, v4, v10, v11}, Landroid/view/View;->layout(IIII)V

    goto :goto_2

    .line 233
    :cond_4
    iget v3, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mLeftStartOffset:I

    goto :goto_3

    .line 237
    .end local v1           #child:Landroid/view/View;
    .end local v2           #childHeight:I
    .end local v5           #childWidth:I
    :cond_5
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v6, 0x4000

    .line 176
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 178
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 179
    .local v3, width:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 181
    .local v1, height:I
    sget-boolean v4, Lcom/sec/android/app/twlauncher/Launcher;->USE_MAINMENU_ICONMODE:Z

    if-eqz v4, :cond_0

    .line 182
    iget v4, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mLRPadding:I

    mul-int/lit8 v4, v4, 0x2

    sub-int v4, v3, v4

    iget v5, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mRightOffset:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mLeftOffset:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mColumnNum:I

    div-int/2addr v4, v5

    iput v4, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mAppWidth:I

    .line 186
    :goto_0
    iget v3, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mAppWidth:I

    .line 187
    iget v1, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mAppHeight:I

    .line 189
    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 190
    invoke-static {v1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 192
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildCount()I

    move-result v0

    .line 193
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_1

    .line 194
    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Landroid/view/View;->measure(II)V

    .line 193
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 184
    .end local v0           #count:I
    .end local v2           #i:I
    :cond_0
    iget v4, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mLRPadding:I

    mul-int/lit8 v4, v4, 0x2

    sub-int v4, v3, v4

    iget v5, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mRightOffset:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mColumnNum:I

    div-int/2addr v4, v5

    iput v4, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mAppWidth:I

    goto :goto_0

    .line 196
    .restart local v0       #count:I
    .restart local v2       #i:I
    :cond_1
    return-void
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .parameter "child"
    .parameter "focused"

    .prologue
    .line 380
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 381
    if-eqz p1, :cond_0

    .line 382
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 383
    .local v0, r:Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 384
    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/AppMenu;->requestRectangleOnScreen(Landroid/graphics/Rect;)Z

    .line 386
    .end local v0           #r:Landroid/graphics/Rect;
    :cond_0
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "img"

    .prologue
    .line 339
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mImage:Landroid/graphics/Bitmap;

    .line 340
    return-void
.end method

.method protected setChildrenDrawingCacheEnabled(Z)V
    .locals 4
    .parameter "enabled"

    .prologue
    .line 241
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildCount()I

    move-result v0

    .line 242
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 243
    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 244
    .local v2, view:Landroid/view/View;
    invoke-virtual {v2, p1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 246
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->buildDrawingCache(Z)V

    .line 242
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 248
    .end local v2           #view:Landroid/view/View;
    :cond_0
    return-void
.end method

.method protected setChildrenDrawnWithCacheEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 252
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 253
    return-void
.end method

.method public setEditBg(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "bmp"

    .prologue
    .line 343
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mEditBg:Landroid/graphics/Bitmap;

    .line 344
    return-void
.end method

.method public setEditIndex(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 331
    iput p1, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mEditIndex:I

    .line 332
    return-void
.end method

.method public setEnabledChildAnimation(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 335
    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mEnabledChildAnimation:Z

    .line 336
    return-void
.end method
