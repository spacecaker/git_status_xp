.class public Lcom/sec/android/app/twlauncher/DeleteZone;
.super Landroid/widget/LinearLayout;
.source "DeleteZone.java"

# interfaces
.implements Lcom/sec/android/app/twlauncher/DragController$DragListener;
.implements Lcom/sec/android/app/twlauncher/DropTarget;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/twlauncher/DeleteZone$FastAnimationSet;,
        Lcom/sec/android/app/twlauncher/DeleteZone$FastTranslateAnimation;
    }
.end annotation


# instance fields
.field private final mApplyIconHoverColorFilter:Z

.field private mDragEnter:Z

.field private mDragEnterForced:Z

.field private mDragLayer:Lcom/sec/android/app/twlauncher/DragLayer;

.field private final mDrawDeleteZoneBg:Z

.field private mHandle:Landroid/view/View;

.field private mHandleInAnimation:Landroid/view/animation/Animation;

.field private mHandleOutAnimation:Landroid/view/animation/Animation;

.field private mIconHoverColorFilter:Landroid/graphics/ColorFilter;

.field private mInAnimation:Landroid/view/animation/AnimationSet;

.field private final mInOutAnimationDuration:I

.field private final mInOutAnimationTranslationRatio:F

.field private mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

.field private final mLocation:[I

.field private mOutAnimation:Landroid/view/animation/AnimationSet;

.field private final mRegion:Landroid/graphics/RectF;

.field private mRemoveBg:Landroid/graphics/drawable/Drawable;

.field private mRemoveBgDrag:Landroid/graphics/drawable/Drawable;

.field private mRemoveIcon:Landroid/widget/TextView;

.field private mRemoveView:Landroid/widget/FrameLayout;

.field private mTrashMode:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 74
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    new-array v1, v5, [I

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mLocation:[I

    .line 54
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mRegion:Landroid/graphics/RectF;

    .line 60
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    const/high16 v2, -0x6001

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mIconHoverColorFilter:Landroid/graphics/ColorFilter;

    .line 76
    sget-object v1, Lcom/sec/android/app/twlauncher/R$styleable;->DeleteZone:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 77
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mApplyIconHoverColorFilter:Z

    .line 78
    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mDrawDeleteZoneBg:Z

    .line 79
    const/4 v1, 0x4

    const/16 v2, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mInOutAnimationDuration:I

    .line 80
    const/4 v1, 0x3

    const/high16 v2, 0x3f80

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mInOutAnimationTranslationRatio:F

    .line 81
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 83
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/DeleteZone;->init()V

    .line 84
    return-void
.end method

.method private createAnimations()V
    .locals 15

    .prologue
    const/high16 v14, 0x3f80

    const/4 v5, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 260
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mInAnimation:Landroid/view/animation/AnimationSet;

    if-nez v0, :cond_0

    .line 261
    new-instance v0, Lcom/sec/android/app/twlauncher/DeleteZone$FastAnimationSet;

    invoke-direct {v0}, Lcom/sec/android/app/twlauncher/DeleteZone$FastAnimationSet;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mInAnimation:Landroid/view/animation/AnimationSet;

    .line 262
    iget-object v13, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mInAnimation:Landroid/view/animation/AnimationSet;

    .line 263
    .local v13, animationSet:Landroid/view/animation/AnimationSet;
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v13, v0}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 264
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v2, v14}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v13, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 265
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/DeleteZone;->getOrientation()I

    move-result v0

    if-nez v0, :cond_4

    .line 266
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v6, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mInOutAnimationTranslationRatio:F

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    invoke-virtual {v13, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 274
    :goto_0
    iget v0, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mInOutAnimationDuration:I

    int-to-long v3, v0

    invoke-virtual {v13, v3, v4}, Landroid/view/animation/AnimationSet;->setStartOffset(J)V

    .line 275
    iget v0, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mInOutAnimationDuration:I

    int-to-long v3, v0

    invoke-virtual {v13, v3, v4}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 277
    .end local v13           #animationSet:Landroid/view/animation/AnimationSet;
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mHandleInAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_1

    .line 278
    new-instance v13, Lcom/sec/android/app/twlauncher/DeleteZone$FastAnimationSet;

    invoke-direct {v13}, Lcom/sec/android/app/twlauncher/DeleteZone$FastAnimationSet;-><init>()V

    .line 279
    .restart local v13       #animationSet:Landroid/view/animation/AnimationSet;
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v2, v14}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v13, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 280
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/DeleteZone;->getOrientation()I

    move-result v0

    if-nez v0, :cond_5

    .line 281
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v6, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mInOutAnimationTranslationRatio:F

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    invoke-virtual {v13, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 289
    :goto_1
    iput-object v13, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mHandleInAnimation:Landroid/view/animation/Animation;

    .line 290
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mHandleInAnimation:Landroid/view/animation/Animation;

    iget v3, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mInOutAnimationDuration:I

    int-to-long v3, v3

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 291
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mHandleInAnimation:Landroid/view/animation/Animation;

    iget v3, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mInOutAnimationDuration:I

    int-to-long v3, v3

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 293
    .end local v13           #animationSet:Landroid/view/animation/AnimationSet;
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mOutAnimation:Landroid/view/animation/AnimationSet;

    if-nez v0, :cond_2

    .line 294
    new-instance v0, Lcom/sec/android/app/twlauncher/DeleteZone$FastAnimationSet;

    invoke-direct {v0}, Lcom/sec/android/app/twlauncher/DeleteZone$FastAnimationSet;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mOutAnimation:Landroid/view/animation/AnimationSet;

    .line 295
    iget-object v13, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mOutAnimation:Landroid/view/animation/AnimationSet;

    .line 296
    .restart local v13       #animationSet:Landroid/view/animation/AnimationSet;
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v13, v0}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 297
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v14, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v13, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 298
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/DeleteZone;->getOrientation()I

    move-result v0

    if-nez v0, :cond_6

    .line 299
    new-instance v0, Lcom/sec/android/app/twlauncher/DeleteZone$FastTranslateAnimation;

    iget v8, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mInOutAnimationTranslationRatio:F

    move v3, v1

    move v4, v2

    move v6, v2

    move v7, v5

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/app/twlauncher/DeleteZone$FastTranslateAnimation;-><init>(IFIFIFIF)V

    invoke-virtual {v13, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 307
    :goto_2
    iget v0, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mInOutAnimationDuration:I

    int-to-long v3, v0

    invoke-virtual {v13, v3, v4}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 309
    .end local v13           #animationSet:Landroid/view/animation/AnimationSet;
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mHandleOutAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_3

    .line 310
    new-instance v13, Lcom/sec/android/app/twlauncher/DeleteZone$FastAnimationSet;

    invoke-direct {v13}, Lcom/sec/android/app/twlauncher/DeleteZone$FastAnimationSet;-><init>()V

    .line 311
    .restart local v13       #animationSet:Landroid/view/animation/AnimationSet;
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v14, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v13, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 312
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/DeleteZone;->getOrientation()I

    move-result v0

    if-nez v0, :cond_7

    .line 313
    new-instance v0, Lcom/sec/android/app/twlauncher/DeleteZone$FastTranslateAnimation;

    iget v8, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mInOutAnimationTranslationRatio:F

    move v3, v1

    move v4, v2

    move v6, v2

    move v7, v5

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/app/twlauncher/DeleteZone$FastTranslateAnimation;-><init>(IFIFIFIF)V

    invoke-virtual {v13, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 321
    :goto_3
    iput-object v13, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mHandleOutAnimation:Landroid/view/animation/Animation;

    .line 322
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mHandleOutAnimation:Landroid/view/animation/Animation;

    iget v1, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mInOutAnimationDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 324
    .end local v13           #animationSet:Landroid/view/animation/AnimationSet;
    :cond_3
    return-void

    .line 270
    .restart local v13       #animationSet:Landroid/view/animation/AnimationSet;
    :cond_4
    new-instance v4, Landroid/view/animation/TranslateAnimation;

    iget v6, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mInOutAnimationTranslationRatio:F

    move v7, v5

    move v8, v2

    move v9, v1

    move v10, v2

    move v11, v1

    move v12, v2

    invoke-direct/range {v4 .. v12}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    invoke-virtual {v13, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    .line 285
    :cond_5
    new-instance v4, Landroid/view/animation/TranslateAnimation;

    iget v6, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mInOutAnimationTranslationRatio:F

    move v7, v5

    move v8, v2

    move v9, v1

    move v10, v2

    move v11, v1

    move v12, v2

    invoke-direct/range {v4 .. v12}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    invoke-virtual {v13, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_1

    .line 303
    :cond_6
    new-instance v4, Lcom/sec/android/app/twlauncher/DeleteZone$FastTranslateAnimation;

    iget v8, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mInOutAnimationTranslationRatio:F

    move v6, v2

    move v7, v5

    move v9, v1

    move v10, v2

    move v11, v1

    move v12, v2

    invoke-direct/range {v4 .. v12}, Lcom/sec/android/app/twlauncher/DeleteZone$FastTranslateAnimation;-><init>(IFIFIFIF)V

    invoke-virtual {v13, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto :goto_2

    .line 317
    :cond_7
    new-instance v4, Lcom/sec/android/app/twlauncher/DeleteZone$FastTranslateAnimation;

    iget v8, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mInOutAnimationTranslationRatio:F

    move v6, v2

    move v7, v5

    move v9, v1

    move v10, v2

    move v11, v1

    move v12, v2

    invoke-direct/range {v4 .. v12}, Lcom/sec/android/app/twlauncher/DeleteZone$FastTranslateAnimation;-><init>(IFIFIFIF)V

    invoke-virtual {v13, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto :goto_3
.end method

.method private init()V
    .locals 3

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/DeleteZone;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 88
    .local v0, res:Landroid/content/res/Resources;
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 89
    const v1, 0x7f020061

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mRemoveBg:Landroid/graphics/drawable/Drawable;

    .line 90
    const v1, 0x7f020063

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mRemoveBgDrag:Landroid/graphics/drawable/Drawable;

    .line 95
    :goto_0
    return-void

    .line 92
    :cond_0
    const v1, 0x7f020060

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mRemoveBg:Landroid/graphics/drawable/Drawable;

    .line 93
    const v1, 0x7f020062

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mRemoveBgDrag:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method private setIconViewColorFilter(Landroid/widget/TextView;Landroid/graphics/ColorFilter;)V
    .locals 5
    .parameter "iconView"
    .parameter "cf"

    .prologue
    const/4 v2, 0x1

    .line 190
    invoke-virtual {p1}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 191
    .local v0, ds:[Landroid/graphics/drawable/Drawable;
    aget-object v1, v0, v2

    invoke-virtual {v1, p2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 192
    const/4 v1, 0x0

    aget-object v1, v0, v1

    aget-object v2, v0, v2

    const/4 v3, 0x2

    aget-object v3, v0, v3

    const/4 v4, 0x3

    aget-object v4, v0, v4

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 193
    invoke-virtual {p1}, Landroid/widget/TextView;->invalidate()V

    .line 194
    return-void
.end method

.method private setMode(Lcom/sec/android/app/twlauncher/ItemInfo;)V
    .locals 2
    .parameter "info"

    .prologue
    const/4 v1, 0x0

    .line 381
    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mDragEnterForced:Z

    .line 382
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mRemoveView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 383
    return-void
.end method


# virtual methods
.method public acceptDrop(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)Z
    .locals 1
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    .line 135
    const/4 v0, 0x1

    return v0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    const/4 v3, 0x0

    .line 113
    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mDrawDeleteZoneBg:Z

    if-eqz v1, :cond_2

    .line 114
    const/4 v0, 0x0

    .line 116
    .local v0, background:Landroid/graphics/drawable/Drawable;
    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mDragEnter:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mDragEnterForced:Z

    if-eqz v1, :cond_3

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mRemoveBgDrag:Landroid/graphics/drawable/Drawable;

    .line 122
    :goto_0
    sget-boolean v1, Lcom/sec/android/app/twlauncher/Launcher;->USE_MAINMENU_ICONMODE:Z

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/DeleteZone;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080003

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 123
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/DeleteZone;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 127
    :goto_1
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 130
    .end local v0           #background:Landroid/graphics/drawable/Drawable;
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 131
    return-void

    .line 119
    .restart local v0       #background:Landroid/graphics/drawable/Drawable;
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mRemoveBg:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 125
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/DeleteZone;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/DeleteZone;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_1
.end method

.method public getDeleteAreaRect(Landroid/graphics/Rect;)V
    .locals 1
    .parameter "outDelAreaRect"

    .prologue
    .line 255
    if-nez p1, :cond_0

    .line 257
    :goto_0
    return-void

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mRemoveView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->getHitRect(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public getDragAnimationXOffset(Landroid/view/View;)I
    .locals 1
    .parameter "v"

    .prologue
    .line 373
    const/4 v0, 0x0

    return v0
.end method

.method public onDragEnd()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 241
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mTrashMode:Z

    if-eqz v0, :cond_0

    .line 242
    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mTrashMode:Z

    .line 243
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mDragLayer:Lcom/sec/android/app/twlauncher/DragLayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/DragLayer;->setDeleteRegion(Landroid/graphics/RectF;)V

    .line 244
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mOutAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/DeleteZone;->startAnimation(Landroid/view/animation/Animation;)V

    .line 245
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mHandle:Landroid/view/View;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mHandleInAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 246
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/DeleteZone;->setVisibility(I)V

    .line 247
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mHandle:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 249
    sget-boolean v0, Lcom/sec/android/app/twlauncher/Launcher;->USE_MAINMENU_ICONMODE:Z

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getTopFourZone()Lcom/sec/android/app/twlauncher/TopFourZone;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/twlauncher/TopFourZone;->setVisibility(I)V

    .line 252
    :cond_0
    return-void
.end method

.method public onDragEnter(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V
    .locals 2
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    .line 198
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mDragEnter:Z

    .line 199
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mRemoveIcon:Landroid/widget/TextView;

    .line 201
    .local v0, icon:Landroid/widget/TextView;
    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mApplyIconHoverColorFilter:Z

    if-eqz v1, :cond_0

    .line 202
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mIconHoverColorFilter:Landroid/graphics/ColorFilter;

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/twlauncher/DeleteZone;->setIconViewColorFilter(Landroid/widget/TextView;Landroid/graphics/ColorFilter;)V

    .line 204
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/DeleteZone;->invalidate()V

    .line 205
    return-void
.end method

.method public onDragExit(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V
    .locals 3
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    const/4 v2, 0x0

    .line 213
    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mDragEnter:Z

    .line 214
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mDragLayer:Lcom/sec/android/app/twlauncher/DragLayer;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/DragLayer;->setTrashPaint(I)V

    .line 215
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mRemoveIcon:Landroid/widget/TextView;

    .line 216
    .local v0, icon:Landroid/widget/TextView;
    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mApplyIconHoverColorFilter:Z

    if-eqz v1, :cond_0

    .line 217
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/twlauncher/DeleteZone;->setIconViewColorFilter(Landroid/widget/TextView;Landroid/graphics/ColorFilter;)V

    .line 219
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/DeleteZone;->invalidate()V

    .line 220
    return-void
.end method

.method public onDragOver(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V
    .locals 0
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    .line 209
    return-void
.end method

.method public onDragStart(Landroid/view/View;Lcom/sec/android/app/twlauncher/DragSource;Ljava/lang/Object;I)V
    .locals 10
    .parameter "v"
    .parameter "source"
    .parameter "info"
    .parameter "dragAction"

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 223
    move-object v0, p3

    check-cast v0, Lcom/sec/android/app/twlauncher/ItemInfo;

    move-object v1, v0

    .line 224
    .local v1, item:Lcom/sec/android/app/twlauncher/ItemInfo;
    if-eqz v1, :cond_0

    .line 225
    invoke-direct {p0, v1}, Lcom/sec/android/app/twlauncher/DeleteZone;->setMode(Lcom/sec/android/app/twlauncher/ItemInfo;)V

    .line 226
    iput-boolean v8, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mTrashMode:Z

    .line 227
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/DeleteZone;->createAnimations()V

    .line 228
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mLocation:[I

    .line 229
    .local v2, location:[I
    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/DeleteZone;->getLocationOnScreen([I)V

    .line 230
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mRegion:Landroid/graphics/RectF;

    aget v4, v2, v9

    int-to-float v4, v4

    aget v5, v2, v8

    int-to-float v5, v5

    aget v6, v2, v9

    iget v7, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mRight:I

    add-int/2addr v6, v7

    iget v7, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mLeft:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    aget v7, v2, v8

    iget v8, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mBottom:I

    add-int/2addr v7, v8

    iget v8, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mTop:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 232
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mDragLayer:Lcom/sec/android/app/twlauncher/DragLayer;

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mRegion:Landroid/graphics/RectF;

    invoke-virtual {v3, v4}, Lcom/sec/android/app/twlauncher/DragLayer;->setDeleteRegion(Landroid/graphics/RectF;)V

    .line 233
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mInAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {p0, v3}, Lcom/sec/android/app/twlauncher/DeleteZone;->startAnimation(Landroid/view/animation/Animation;)V

    .line 234
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mHandle:Landroid/view/View;

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mHandleOutAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v3, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 235
    invoke-virtual {p0, v9}, Lcom/sec/android/app/twlauncher/DeleteZone;->setVisibility(I)V

    .line 236
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mHandle:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 238
    .end local v2           #location:[I
    :cond_0
    return-void
.end method

.method public onDrop(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V
    .locals 12
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    .line 143
    move-object/from16 v0, p6

    check-cast v0, Lcom/sec/android/app/twlauncher/ItemInfo;

    move-object v3, v0

    .line 145
    .local v3, item:Lcom/sec/android/app/twlauncher/ItemInfo;
    iget-wide v8, v3, Lcom/sec/android/app/twlauncher/ItemInfo;->container:J

    const-wide/16 v10, -0x1

    cmp-long v8, v8, v10

    if-nez v8, :cond_1

    .line 187
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    iget-wide v8, v3, Lcom/sec/android/app/twlauncher/ItemInfo;->container:J

    const-wide/16 v10, -0x64

    cmp-long v8, v8, v10

    if-nez v8, :cond_8

    .line 148
    instance-of v8, v3, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    if-eqz v8, :cond_4

    .line 149
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object v0, v3

    check-cast v0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    move-object v4, v0

    invoke-virtual {v8, v4}, Lcom/sec/android/app/twlauncher/Launcher;->removeSamsungAppWidget(Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;)V

    .line 168
    :cond_2
    :goto_1
    instance-of v8, v3, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    if-eqz v8, :cond_9

    .line 169
    move-object v0, v3

    check-cast v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    move-object v7, v0

    .line 170
    .local v7, userFolderInfo:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-static {v8, v7}, Lcom/sec/android/app/twlauncher/LauncherModel;->deleteUserFolderContentsFromDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/UserFolderInfo;)V

    .line 171
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v8, v7}, Lcom/sec/android/app/twlauncher/Launcher;->removeFolder(Lcom/sec/android/app/twlauncher/FolderInfo;)V

    .line 183
    .end local v7           #userFolderInfo:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    :cond_3
    :goto_2
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-static {v8, v3}, Lcom/sec/android/app/twlauncher/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;)V

    .line 185
    sget-boolean v8, Lcom/sec/android/app/twlauncher/Launcher;->USE_MAINMENU_ICONMODE:Z

    if-eqz v8, :cond_0

    .line 186
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v8}, Lcom/sec/android/app/twlauncher/Launcher;->getTopFourZone()Lcom/sec/android/app/twlauncher/TopFourZone;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/sec/android/app/twlauncher/TopFourZone;->setVisibility(I)V

    goto :goto_0

    .line 150
    :cond_4
    instance-of v8, v3, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    if-eqz v8, :cond_5

    .line 151
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object v0, v3

    check-cast v0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    move-object v4, v0

    invoke-virtual {v8, v4}, Lcom/sec/android/app/twlauncher/Launcher;->removeAppWidget(Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;)V

    goto :goto_1

    .line 152
    :cond_5
    instance-of v8, v3, Lcom/sec/android/app/twlauncher/ShortcutInfo;

    if-eqz v8, :cond_6

    .line 153
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object v0, v3

    check-cast v0, Lcom/sec/android/app/twlauncher/ShortcutInfo;

    move-object v4, v0

    invoke-virtual {v8, v4}, Lcom/sec/android/app/twlauncher/Launcher;->removeShortcut(Lcom/sec/android/app/twlauncher/ShortcutInfo;)V

    goto :goto_1

    .line 154
    :cond_6
    instance-of v8, v3, Lcom/sec/android/app/twlauncher/FolderInfo;

    if-eqz v8, :cond_7

    .line 155
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object v0, v3

    check-cast v0, Lcom/sec/android/app/twlauncher/FolderInfo;

    move-object v4, v0

    invoke-virtual {v8, v4}, Lcom/sec/android/app/twlauncher/Launcher;->removeFolder(Lcom/sec/android/app/twlauncher/FolderInfo;)V

    goto :goto_1

    .line 157
    :cond_7
    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "What\'s that????? "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 160
    :cond_8
    instance-of v8, p1, Lcom/sec/android/app/twlauncher/UserFolder;

    if-eqz v8, :cond_2

    .line 161
    move-object v0, p1

    check-cast v0, Lcom/sec/android/app/twlauncher/UserFolder;

    move-object v6, v0

    .line 162
    .local v6, userFolder:Lcom/sec/android/app/twlauncher/UserFolder;
    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/UserFolder;->getInfo()Lcom/sec/android/app/twlauncher/FolderInfo;

    move-result-object v7

    check-cast v7, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    .line 165
    .restart local v7       #userFolderInfo:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    move-object v0, v3

    check-cast v0, Lcom/sec/android/app/twlauncher/ShortcutInfo;

    move-object v4, v0

    invoke-virtual {v7, v4}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->remove(Lcom/sec/android/app/twlauncher/ShortcutInfo;)V

    goto :goto_1

    .line 172
    .end local v6           #userFolder:Lcom/sec/android/app/twlauncher/UserFolder;
    .end local v7           #userFolderInfo:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    :cond_9
    instance-of v8, v3, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    if-eqz v8, :cond_a

    .line 173
    move-object v0, v3

    check-cast v0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    move-object v4, v0

    .line 174
    .local v4, launcherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v8}, Lcom/sec/android/app/twlauncher/Launcher;->getAppWidgetHost()Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;

    move-result-object v1

    .line 175
    .local v1, appWidgetHost:Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;
    if-eqz v1, :cond_3

    .line 176
    iget v8, v4, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {v1, v8}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    goto/16 :goto_2

    .line 178
    .end local v1           #appWidgetHost:Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;
    .end local v4           #launcherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;
    :cond_a
    instance-of v8, v3, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    if-eqz v8, :cond_3

    .line 179
    move-object v0, v3

    check-cast v0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    move-object v2, v0

    .line 180
    .local v2, info:Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;
    invoke-static {}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->getInstance()Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    move-result-object v5

    .line 181
    .local v5, manager:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v5, v8, v2}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->destroyWidget(Landroid/app/ActivityGroup;Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;)V

    goto/16 :goto_2
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 106
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 107
    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/DeleteZone;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mRemoveView:Landroid/widget/FrameLayout;

    .line 108
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mRemoveView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mRemoveIcon:Landroid/widget/TextView;

    .line 109
    return-void
.end method

.method resetMode()V
    .locals 1

    .prologue
    .line 377
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/DeleteZone;->setMode(Lcom/sec/android/app/twlauncher/ItemInfo;)V

    .line 378
    return-void
.end method

.method setDragController(Lcom/sec/android/app/twlauncher/DragLayer;)V
    .locals 0
    .parameter "dragLayer"

    .prologue
    .line 331
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mDragLayer:Lcom/sec/android/app/twlauncher/DragLayer;

    .line 332
    return-void
.end method

.method setDragEnterForced(Z)V
    .locals 2
    .parameter "dragOver"

    .prologue
    .line 98
    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mDragEnterForced:Z

    .line 99
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mApplyIconHoverColorFilter:Z

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mRemoveIcon:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mDragEnterForced:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mIconHoverColorFilter:Landroid/graphics/ColorFilter;

    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/twlauncher/DeleteZone;->setIconViewColorFilter(Landroid/widget/TextView;Landroid/graphics/ColorFilter;)V

    .line 102
    :cond_0
    return-void

    .line 100
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method setHandle(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 335
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mHandle:Landroid/view/View;

    .line 336
    return-void
.end method

.method setLauncher(Lcom/sec/android/app/twlauncher/Launcher;)V
    .locals 0
    .parameter "launcher"

    .prologue
    .line 327
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    .line 328
    return-void
.end method
