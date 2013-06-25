.class public Lcom/android/internal/policy/impl/CircleUnlockView;
.super Landroid/widget/FrameLayout;
.source "CircleUnlockView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/CircleUnlockView$OnCircleTouchListener;,
        Lcom/android/internal/policy/impl/CircleUnlockView$OnCircleUnlockListener;
    }
.end annotation


# instance fields
.field private final ALPHA_ANI_DURATION:J

.field private final ALPHA_ANI_END:F

.field private final ALPHA_ANI_START:F

.field private final ARROW_REPEAT_ANI_DURATION:I

.field private final ARROW_REPEAT_ANI_OFFSET:I

.field private final ARROW_SCALE_ANI_END:F

.field private final ARROW_SCALE_ANI_START:F

.field private final ARROW_START_ANI_DURATION:I

.field private final ARROW_START_ANI_OFFSET:I

.field private final CIRCLE_MAX_ALPHA:I

.field private final CIRCLE_MIN_ALPHA:I

.field private DBG:Z

.field private final SCALE_ANI_DURATION:J

.field private final SCALE_ANI_END:F

.field private final SCALE_ANI_START:F

.field private TAG:Ljava/lang/String;

.field private final UNLOCK_DRAG_THRESHOLD:D

.field private final UNLOCK_RELEASE_THRESHOLD:D

.field private alphaAnim:Landroid/view/animation/AlphaAnimation;

.field private arrowRepeatAlphaAnim1:Landroid/view/animation/AlphaAnimation;

.field private arrowRepeatAlphaAnim2:Landroid/view/animation/AlphaAnimation;

.field private arrowRepeatAlphaAnim3:Landroid/view/animation/AlphaAnimation;

.field private arrowStartAlphaAnim1:Landroid/view/animation/AlphaAnimation;

.field private arrowStartAlphaAnim2:Landroid/view/animation/AlphaAnimation;

.field private arrowStartAlphaAnim3:Landroid/view/animation/AlphaAnimation;

.field private arrowStartAnim1:Landroid/view/animation/AnimationSet;

.field private arrowStartAnim2:Landroid/view/animation/AnimationSet;

.field private arrowStartAnim3:Landroid/view/animation/AnimationSet;

.field private arrowStartScaleAnim1:Landroid/view/animation/ScaleAnimation;

.field private arrowStartScaleAnim2:Landroid/view/animation/ScaleAnimation;

.field private arrowStartScaleAnim3:Landroid/view/animation/ScaleAnimation;

.field private circleUnlockViewAlphaAnim:Landroid/view/animation/AlphaAnimation;

.field private circleUnlockViewScaleAnim:Landroid/view/animation/ScaleAnimation;

.field private mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mCircleAniFlag:Z

.field private mCircleArrow1:Landroid/widget/ImageView;

.field private mCircleArrow1_1:Landroid/widget/ImageView;

.field private mCircleArrow2:Landroid/widget/ImageView;

.field private mCircleArrow2_1:Landroid/widget/ImageView;

.field private mCircleArrow3:Landroid/widget/ImageView;

.field private mCircleArrow3_1:Landroid/widget/ImageView;

.field private mCircleCenter:Landroid/widget/ImageView;

.field private mCircleIn:Landroid/widget/ImageView;

.field private mCircleMain:Landroid/widget/FrameLayout;

.field private mCircleOut:Landroid/widget/ImageView;

.field private mCircleRoot:Landroid/widget/RelativeLayout;

.field private mContext:Landroid/content/Context;

.field private mDistanceRatio:D

.field private mIsFirst:Z

.field private mOnCircleTouchListener:Lcom/android/internal/policy/impl/CircleUnlockView$OnCircleTouchListener;

.field private mOnCircleUnlockListener:Lcom/android/internal/policy/impl/CircleUnlockView$OnCircleUnlockListener;

.field private mOutCircleAnimationSet:Landroid/view/animation/AnimationSet;

.field private mX:F

.field private mY:F

.field private originalCircleX:F

.field private originalCircleY:F

.field private scaleAnim:Landroid/view/animation/ScaleAnimation;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
    .locals 5
    .parameter "context"
    .parameter "callback"

    .prologue
    const/16 v4, 0x96

    const/4 v3, 0x1

    const/high16 v2, 0x3f80

    .line 133
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 41
    const-string v0, "CircleLockScreen"

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->TAG:Ljava/lang/String;

    .line 42
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->DBG:Z

    .line 47
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->CIRCLE_MAX_ALPHA:I

    .line 48
    const/16 v0, 0x50

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->CIRCLE_MIN_ALPHA:I

    .line 49
    const-wide/16 v0, 0x352

    iput-wide v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->ALPHA_ANI_DURATION:J

    .line 50
    const v0, 0x3ecccccd

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->ALPHA_ANI_START:F

    .line 51
    const v0, 0x3e4ccccd

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->ALPHA_ANI_END:F

    .line 52
    const-wide/16 v0, 0x190

    iput-wide v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->SCALE_ANI_DURATION:J

    .line 53
    const v0, 0x3edc28f6

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->SCALE_ANI_START:F

    .line 54
    iput v2, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->SCALE_ANI_END:F

    .line 55
    const v0, 0x3f8ccccd

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->ARROW_SCALE_ANI_START:F

    .line 56
    iput v2, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->ARROW_SCALE_ANI_END:F

    .line 57
    iput v4, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->ARROW_START_ANI_DURATION:I

    .line 58
    const/16 v0, 0x12c

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->ARROW_START_ANI_OFFSET:I

    .line 59
    iput v4, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->ARROW_REPEAT_ANI_DURATION:I

    .line 60
    const/16 v0, 0x190

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->ARROW_REPEAT_ANI_OFFSET:I

    .line 61
    const-wide v0, 0x3fe99999a0000000L

    iput-wide v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->UNLOCK_RELEASE_THRESHOLD:D

    .line 62
    const-wide v0, 0x3ff4ccccc0000000L

    iput-wide v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->UNLOCK_DRAG_THRESHOLD:D

    .line 114
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleAniFlag:Z

    .line 116
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mIsFirst:Z

    .line 135
    iput-object p1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mContext:Landroid/content/Context;

    .line 137
    iput-object p2, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 140
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/CircleUnlockView;->setLayout()V

    .line 141
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/CircleUnlockView;->setAnimation()V

    .line 143
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/CircleUnlockView;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleOut:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/CircleUnlockView;)Landroid/view/animation/AnimationSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowStartAnim1:Landroid/view/animation/AnimationSet;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/CircleUnlockView;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleArrow2_1:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/CircleUnlockView;)Landroid/view/animation/AlphaAnimation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowRepeatAlphaAnim3:Landroid/view/animation/AlphaAnimation;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/CircleUnlockView;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleArrow3_1:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/CircleUnlockView;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleRoot:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/CircleUnlockView;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleArrow1:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/CircleUnlockView;)Landroid/view/animation/AnimationSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowStartAnim2:Landroid/view/animation/AnimationSet;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/CircleUnlockView;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleArrow2:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/CircleUnlockView;)Landroid/view/animation/AnimationSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowStartAnim3:Landroid/view/animation/AnimationSet;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/CircleUnlockView;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleArrow3:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/CircleUnlockView;)Landroid/view/animation/AlphaAnimation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowRepeatAlphaAnim1:Landroid/view/animation/AlphaAnimation;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/CircleUnlockView;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleArrow1_1:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/CircleUnlockView;)Landroid/view/animation/AlphaAnimation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowRepeatAlphaAnim2:Landroid/view/animation/AlphaAnimation;

    return-object v0
.end method

.method private circleUnlockAnimation(D)V
    .locals 12
    .parameter "value"

    .prologue
    const/16 v11, 0xff

    const/4 v10, 0x4

    const/4 v5, 0x0

    const-wide v8, 0x3fe99999a0000000L

    const-wide v6, 0x3fc999999999999aL

    .line 478
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "circleUnlockAnimation value : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    cmpg-double v2, p1, v6

    if-gez v2, :cond_1

    .line 481
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleIn:Landroid/widget/ImageView;

    invoke-virtual {v2, v11}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 482
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleOut:Landroid/widget/ImageView;

    invoke-virtual {v2, v11}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 483
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleAniFlag:Z

    if-eqz v2, :cond_0

    .line 484
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleAniFlag:Z

    .line 485
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleOut:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->alphaAnim:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 501
    :cond_0
    :goto_0
    return-void

    .line 487
    :cond_1
    cmpl-double v2, p1, v6

    if-lez v2, :cond_2

    cmpg-double v2, p1, v8

    if-gez v2, :cond_2

    .line 488
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleAniFlag:Z

    .line 489
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/CircleUnlockView;->clearAllAnimation()V

    .line 490
    invoke-virtual {p0, v10}, Lcom/android/internal/policy/impl/CircleUnlockView;->setAllCircleArrowVisibility(I)V

    .line 492
    const-wide v2, 0x4058fffff7aaaaadL

    sub-double v4, p1, v6

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4044

    add-double/2addr v2, v4

    double-to-int v1, v2

    .line 493
    .local v1, outerCircleOpacity:I
    const-wide v2, -0x3f9b2aaab19c71c5L

    sub-double v4, p1, v6

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4059

    add-double/2addr v2, v4

    double-to-int v0, v2

    .line 494
    .local v0, innerCircleOpacity:I
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleIn:Landroid/widget/ImageView;

    mul-int/lit16 v3, v0, 0xff

    div-int/lit8 v3, v3, 0x64

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 495
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleOut:Landroid/widget/ImageView;

    mul-int/lit16 v3, v1, 0xff

    div-int/lit8 v3, v3, 0x64

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setAlpha(I)V

    goto :goto_0

    .line 496
    .end local v0           #innerCircleOpacity:I
    .end local v1           #outerCircleOpacity:I
    :cond_2
    cmpl-double v2, p1, v8

    if-ltz v2, :cond_0

    .line 497
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/CircleUnlockView;->clearAllAnimation()V

    .line 498
    invoke-virtual {p0, v10}, Lcom/android/internal/policy/impl/CircleUnlockView;->setAllCircleArrowVisibility(I)V

    .line 499
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleIn:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setAlpha(I)V

    goto :goto_0
.end method

.method private getUnlockscreenLockImageIdAt(D)I
    .locals 5
    .parameter "value"

    .prologue
    const/4 v4, 0x1

    .line 695
    const/16 v2, 0x14

    new-array v1, v2, [I

    fill-array-data v1, :array_0

    .line 708
    .local v1, unlockscreen_lock_drawables:[I
    const-wide v2, 0x3fb999999999999aL

    cmpg-double v2, p1, v2

    if-gez v2, :cond_0

    .line 709
    const/4 v0, 0x0

    .line 715
    .local v0, index:I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Image = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    aget v2, v1, v0

    return v2

    .line 710
    .end local v0           #index:I
    :cond_0
    const-wide v2, 0x3ff0cccccccccccdL

    cmpl-double v2, p1, v2

    if-ltz v2, :cond_1

    .line 711
    array-length v2, v1

    sub-int v0, v2, v4

    .restart local v0       #index:I
    goto :goto_0

    .line 713
    .end local v0           #index:I
    :cond_1
    array-length v2, v1

    int-to-double v2, v2

    mul-double/2addr v2, p1

    double-to-int v2, v2

    sub-int v0, v2, v4

    .restart local v0       #index:I
    goto :goto_0

    .line 695
    nop

    :array_0
    .array-data 0x4
        0xb3t 0x3t 0x8t 0x1t
        0xb4t 0x3t 0x8t 0x1t
        0xb5t 0x3t 0x8t 0x1t
        0xb6t 0x3t 0x8t 0x1t
        0xb7t 0x3t 0x8t 0x1t
        0xb8t 0x3t 0x8t 0x1t
        0xb9t 0x3t 0x8t 0x1t
        0xbat 0x3t 0x8t 0x1t
        0xbbt 0x3t 0x8t 0x1t
        0xbct 0x3t 0x8t 0x1t
        0xbdt 0x3t 0x8t 0x1t
        0xbet 0x3t 0x8t 0x1t
        0xbft 0x3t 0x8t 0x1t
        0xc0t 0x3t 0x8t 0x1t
        0xc1t 0x3t 0x8t 0x1t
        0xc2t 0x3t 0x8t 0x1t
        0xc3t 0x3t 0x8t 0x1t
        0xc4t 0x3t 0x8t 0x1t
        0xc5t 0x3t 0x8t 0x1t
        0xc6t 0x3t 0x8t 0x1t
    .end array-data
.end method

.method private setCenterImage(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 679
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/policy/impl/CircleUnlockView;->setCenterImage(Landroid/view/View;D)V

    .line 680
    return-void
.end method

.method private setCenterImage(Landroid/view/View;D)V
    .locals 3
    .parameter "v"
    .parameter "value"

    .prologue
    const/4 v1, 0x1

    .line 683
    if-nez p1, :cond_0

    .line 685
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleCenter:Landroid/widget/ImageView;

    invoke-direct {p0, p2, p3}, Lcom/android/internal/policy/impl/CircleUnlockView;->getUnlockscreenLockImageIdAt(D)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 692
    :goto_0
    return-void

    .line 688
    :cond_0
    invoke-virtual {p1, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 689
    invoke-virtual {p1, v1}, Landroid/view/View;->buildDrawingCache(Z)V

    .line 690
    invoke-virtual {p1, v1}, Landroid/view/View;->getDrawingCache(Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 691
    .local v0, bm:Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleCenter:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method


# virtual methods
.method public cleanUp()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 739
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->TAG:Ljava/lang/String;

    const-string v1, "cleanUp CircleUnlockView"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/CircleUnlockView;->clearAllAnimation()V

    .line 742
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->scaleAnim:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {v0, v2}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 743
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->alphaAnim:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v2}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 744
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowStartAlphaAnim1:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v2}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 745
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowStartAlphaAnim2:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v2}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 746
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowStartAlphaAnim3:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v2}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 747
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowStartScaleAnim1:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {v0, v2}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 748
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowStartScaleAnim2:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {v0, v2}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 749
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowStartScaleAnim3:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {v0, v2}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 750
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowStartAnim1:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 751
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowStartAnim2:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 752
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowStartAnim3:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 753
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowRepeatAlphaAnim1:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v2}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 754
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowRepeatAlphaAnim2:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v2}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 755
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowRepeatAlphaAnim3:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v2}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 756
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->circleUnlockViewScaleAnim:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {v0, v2}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 757
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->circleUnlockViewAlphaAnim:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v2}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 759
    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 761
    return-void
.end method

.method public clearAllAnimation()V
    .locals 1

    .prologue
    .line 721
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleOut:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 722
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleArrow1:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 723
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleArrow2:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 724
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleArrow3:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 725
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleArrow1_1:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 726
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleArrow2_1:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 727
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleArrow3_1:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 728
    return-void
.end method

.method public handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 28
    .parameter "view"
    .parameter "event"

    .prologue
    .line 518
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-object/from16 v22, v0

    if-nez v22, :cond_0

    const/16 v22, 0x0

    .line 672
    :goto_0
    return v22

    .line 525
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v18

    .line 526
    .local v18, touchedEventX:F
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v19

    .line 529
    .local v19, touchedEventY:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v22, v0

    if-nez v22, :cond_1

    .line 530
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->TAG:Ljava/lang/String;

    move-object/from16 v22, v0

    const-string v23, "Occured Divided by zero Exception caused by mCircleMain-Null"

    invoke-static/range {v22 .. v23}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    const/16 v22, 0x0

    goto :goto_0

    .line 532
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v22

    if-nez v22, :cond_2

    .line 533
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->TAG:Ljava/lang/String;

    move-object/from16 v22, v0

    const-string v23, "Occured Divided by zero Exception caused by mCircleMain.getHeight() == 0"

    invoke-static/range {v22 .. v23}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    const/16 v22, 0x0

    goto :goto_0

    .line 535
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v22

    if-nez v22, :cond_3

    .line 536
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->TAG:Ljava/lang/String;

    move-object/from16 v22, v0

    const-string v23, "Occured Divided by zero Exception caused by mCircleMain.getWidth() == 0"

    invoke-static/range {v22 .. v23}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    const/16 v22, 0x0

    goto :goto_0

    .line 540
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v22

    packed-switch v22, :pswitch_data_0

    .line 672
    :cond_4
    :goto_1
    const/16 v22, 0x1

    goto :goto_0

    .line 544
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mOnCircleTouchListener:Lcom/android/internal/policy/impl/CircleUnlockView$OnCircleTouchListener;

    move-object/from16 v22, v0

    if-eqz v22, :cond_5

    .line 545
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mOnCircleTouchListener:Lcom/android/internal/policy/impl/CircleUnlockView$OnCircleTouchListener;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/CircleUnlockView$OnCircleTouchListener;->onCircleTouchDown(Landroid/view/View;)V

    .line 548
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 550
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleRoot:Landroid/widget/RelativeLayout;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/RelativeLayout;->clearAnimation()V

    .line 551
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleRoot:Landroid/widget/RelativeLayout;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 554
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/CircleUnlockView;->mX:F

    .line 555
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/CircleUnlockView;->mY:F

    .line 556
    if-eqz p1, :cond_6

    .line 557
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->originalCircleX:F

    move/from16 v22, v0

    sub-float v22, v22, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v23

    div-int/lit8 v23, v23, 0x2

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    sub-float v22, v22, v23

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v23

    div-int/lit8 v23, v23, 0x2

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    add-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v20, v0

    .line 558
    .local v20, xOffset:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->originalCircleY:F

    move/from16 v22, v0

    sub-float v22, v22, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v23

    div-int/lit8 v23, v23, 0x2

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    sub-float v22, v22, v23

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v23

    div-int/lit8 v23, v23, 0x2

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    add-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v21, v0

    .line 565
    .local v21, yOffset:I
    :goto_2
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/policy/impl/CircleUnlockView;->setCenterImage(Landroid/view/View;)V

    .line 568
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/widget/RelativeLayout$LayoutParams;

    .line 569
    .local v11, lp:Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleRoot:Landroid/widget/RelativeLayout;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v23

    sub-int v22, v22, v23

    sub-int v15, v22, v20

    .line 570
    .local v15, rightMargin:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleRoot:Landroid/widget/RelativeLayout;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v23

    sub-int v22, v22, v23

    sub-int v4, v22, v21

    .line 571
    .local v4, bottomMargin:I
    move/from16 v0, v20

    move-object v1, v11

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 572
    iput v15, v11, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 573
    move/from16 v0, v21

    move-object v1, v11

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 574
    iput v4, v11, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 575
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 578
    const-wide/16 v22, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/CircleUnlockView;->circleUnlockAnimation(D)V

    .line 580
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleOut:Landroid/widget/ImageView;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mOutCircleAnimationSet:Landroid/view/animation/AnimationSet;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_1

    .line 560
    .end local v4           #bottomMargin:I
    .end local v11           #lp:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v15           #rightMargin:I
    .end local v20           #xOffset:I
    .end local v21           #yOffset:I
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->originalCircleX:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v23

    div-int/lit8 v23, v23, 0x2

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    sub-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v20, v0

    .line 561
    .restart local v20       #xOffset:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->originalCircleY:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v23

    div-int/lit8 v23, v23, 0x2

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    sub-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v21, v0

    .restart local v21       #yOffset:I
    goto/16 :goto_2

    .line 585
    .end local v20           #xOffset:I
    .end local v21           #yOffset:I
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mOnCircleTouchListener:Lcom/android/internal/policy/impl/CircleUnlockView$OnCircleTouchListener;

    move-object/from16 v22, v0

    if-eqz v22, :cond_7

    .line 586
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mOnCircleTouchListener:Lcom/android/internal/policy/impl/CircleUnlockView$OnCircleTouchListener;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/CircleUnlockView$OnCircleTouchListener;->onCircleTouchMove(Landroid/view/View;)V

    .line 590
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 593
    const/4 v5, 0x0

    .line 594
    .local v5, diffX:I
    const/4 v6, 0x0

    .line 595
    .local v6, diffY:I
    if-eqz p1, :cond_8

    .line 597
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v22

    div-int/lit8 v12, v22, 0x2

    .line 598
    .local v12, mCircleCenterX:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v22

    div-int/lit8 v13, v22, 0x2

    .line 599
    .local v13, mCircleCenterY:I
    move v0, v12

    int-to-float v0, v0

    move/from16 v22, v0

    sub-float v22, v18, v22

    move/from16 v0, v22

    float-to-int v0, v0

    move v5, v0

    .line 600
    move v0, v13

    int-to-float v0, v0

    move/from16 v22, v0

    sub-float v22, v19, v22

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v23

    mul-int v22, v22, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v23

    div-int v6, v22, v23

    .line 607
    .end local v12           #mCircleCenterX:I
    .end local v13           #mCircleCenterY:I
    :goto_3
    move v0, v5

    int-to-double v0, v0

    move-wide/from16 v22, v0

    const-wide/high16 v24, 0x4000

    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v22

    move v0, v6

    int-to-double v0, v0

    move-wide/from16 v24, v0

    const-wide/high16 v26, 0x4000

    invoke-static/range {v24 .. v27}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v24

    add-double v9, v22, v24

    .line 608
    .local v9, distance_square:D
    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    .line 609
    .local v7, distance:D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v22

    move/from16 v14, v22

    .line 610
    .local v14, min:I
    :goto_4
    div-int/lit8 v22, v14, 0x2

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v16, v0

    .line 611
    .local v16, threshold:D
    div-double v22, v7, v16

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/policy/impl/CircleUnlockView;->mDistanceRatio:D

    .line 615
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mDistanceRatio:D

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/CircleUnlockView;->circleUnlockAnimation(D)V

    .line 616
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mDistanceRatio:D

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/CircleUnlockView;->setCenterImage(Landroid/view/View;D)V

    .line 618
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mDistanceRatio:D

    move-wide/from16 v22, v0

    const-wide v24, 0x3ff4ccccc0000000L

    cmpl-double v22, v22, v24

    if-ltz v22, :cond_4

    .line 619
    if-nez p1, :cond_a

    .line 622
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mIsFirst:Z

    move/from16 v22, v0

    if-eqz v22, :cond_4

    .line 623
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/CircleUnlockView;->mIsFirst:Z

    .line 624
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    goto/16 :goto_1

    .line 603
    .end local v7           #distance:D
    .end local v9           #distance_square:D
    .end local v14           #min:I
    .end local v16           #threshold:D
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mX:F

    move/from16 v22, v0

    sub-float v22, v18, v22

    move/from16 v0, v22

    float-to-int v0, v0

    move v5, v0

    .line 604
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mY:F

    move/from16 v22, v0

    sub-float v22, v19, v22

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v23

    mul-int v22, v22, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v23

    div-int v6, v22, v23

    goto/16 :goto_3

    .line 609
    .restart local v7       #distance:D
    .restart local v9       #distance_square:D
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v22

    move/from16 v14, v22

    goto/16 :goto_4

    .line 631
    .restart local v14       #min:I
    .restart local v16       #threshold:D
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mOnCircleUnlockListener:Lcom/android/internal/policy/impl/CircleUnlockView$OnCircleUnlockListener;

    move-object/from16 v22, v0

    if-eqz v22, :cond_4

    .line 632
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mOnCircleUnlockListener:Lcom/android/internal/policy/impl/CircleUnlockView$OnCircleUnlockListener;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/CircleUnlockView$OnCircleUnlockListener;->onCircleUnlocked(Landroid/view/View;)V

    goto/16 :goto_1

    .line 640
    .end local v5           #diffX:I
    .end local v6           #diffY:I
    .end local v7           #distance:D
    .end local v9           #distance_square:D
    .end local v14           #min:I
    .end local v16           #threshold:D
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/CircleUnlockView;->clearAllAnimation()V

    .line 641
    const/16 v22, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/CircleUnlockView;->setAllCircleArrowVisibility(I)V

    .line 642
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/CircleUnlockView;->mIsFirst:Z

    .line 645
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mOnCircleTouchListener:Lcom/android/internal/policy/impl/CircleUnlockView$OnCircleTouchListener;

    move-object/from16 v22, v0

    if-eqz v22, :cond_b

    .line 646
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mOnCircleTouchListener:Lcom/android/internal/policy/impl/CircleUnlockView$OnCircleTouchListener;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/CircleUnlockView$OnCircleTouchListener;->onCircleTouchUp(Landroid/view/View;)V

    .line 651
    :cond_b
    const-wide v22, 0x3fe99999a0000000L

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mDistanceRatio:D

    move-wide/from16 v24, v0

    cmpg-double v22, v22, v24

    if-gtz v22, :cond_e

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mDistanceRatio:D

    move-wide/from16 v22, v0

    const-wide v24, 0x3ff4ccccc0000000L

    cmpg-double v22, v22, v24

    if-gez v22, :cond_e

    .line 653
    if-nez p1, :cond_d

    .line 655
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 668
    :cond_c
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleRoot:Landroid/widget/RelativeLayout;

    move-object/from16 v22, v0

    const/16 v23, 0x4

    invoke-virtual/range {v22 .. v23}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_1

    .line 659
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mOnCircleUnlockListener:Lcom/android/internal/policy/impl/CircleUnlockView$OnCircleUnlockListener;

    move-object/from16 v22, v0

    if-eqz v22, :cond_c

    .line 660
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mOnCircleUnlockListener:Lcom/android/internal/policy/impl/CircleUnlockView$OnCircleUnlockListener;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/CircleUnlockView$OnCircleUnlockListener;->onCircleUnlocked(Landroid/view/View;)V

    goto :goto_5

    .line 664
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleOut:Landroid/widget/ImageView;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->circleUnlockViewScaleAnim:Landroid/view/animation/ScaleAnimation;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 665
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleRoot:Landroid/widget/RelativeLayout;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->circleUnlockViewAlphaAnim:Landroid/view/animation/AlphaAnimation;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_5

    .line 540
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 506
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->originalCircleX:F

    .line 507
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->originalCircleY:F

    .line 508
    const/4 v0, 0x0

    return v0
.end method

.method public setAllCircleArrowVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 731
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleArrow1:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 732
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleArrow2:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 733
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleArrow3:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 734
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleArrow1_1:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 735
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleArrow2_1:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 736
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleArrow3_1:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 737
    return-void
.end method

.method public setAnimation()V
    .locals 9

    .prologue
    .line 225
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const v1, 0x3edc28f6

    const/high16 v2, 0x3f80

    const v3, 0x3edc28f6

    const/high16 v4, 0x3f80

    const/4 v5, 0x1

    const/high16 v6, 0x3f00

    const/4 v7, 0x1

    const/high16 v8, 0x3f00

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->scaleAnim:Landroid/view/animation/ScaleAnimation;

    .line 228
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->scaleAnim:Landroid/view/animation/ScaleAnimation;

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 229
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->scaleAnim:Landroid/view/animation/ScaleAnimation;

    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 231
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const v1, 0x3ecccccd

    const v2, 0x3ecccccd

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->alphaAnim:Landroid/view/animation/AlphaAnimation;

    .line 232
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->alphaAnim:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v1, 0x352

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 233
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->alphaAnim:Landroid/view/animation/AlphaAnimation;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setRepeatCount(I)V

    .line 235
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->alphaAnim:Landroid/view/animation/AlphaAnimation;

    new-instance v1, Lcom/android/internal/policy/impl/CircleUnlockView$1;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/CircleUnlockView$1;-><init>(Lcom/android/internal/policy/impl/CircleUnlockView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 258
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mOutCircleAnimationSet:Landroid/view/animation/AnimationSet;

    .line 259
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mOutCircleAnimationSet:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->scaleAnim:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 260
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mOutCircleAnimationSet:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->alphaAnim:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 262
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const v1, 0x3f8ccccd

    const/high16 v2, 0x3f80

    const v3, 0x3f8ccccd

    const/high16 v4, 0x3f80

    const/4 v5, 0x1

    const/high16 v6, 0x3f00

    const/4 v7, 0x1

    const/high16 v8, 0x3f00

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowStartScaleAnim1:Landroid/view/animation/ScaleAnimation;

    .line 265
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowStartScaleAnim1:Landroid/view/animation/ScaleAnimation;

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 267
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const v2, 0x3f333333

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowStartAlphaAnim1:Landroid/view/animation/AlphaAnimation;

    .line 268
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowStartAlphaAnim1:Landroid/view/animation/AlphaAnimation;

    new-instance v1, Lcom/android/internal/policy/impl/CircleUnlockView$2;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/CircleUnlockView$2;-><init>(Lcom/android/internal/policy/impl/CircleUnlockView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 285
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowStartAnim1:Landroid/view/animation/AnimationSet;

    .line 286
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowStartAnim1:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowStartScaleAnim1:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 287
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowStartAnim1:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowStartAlphaAnim1:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 288
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowStartAnim1:Landroid/view/animation/AnimationSet;

    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AnimationSet;->setStartOffset(J)V

    .line 289
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowStartAnim1:Landroid/view/animation/AnimationSet;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 291
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const v1, 0x3f8ccccd

    const/high16 v2, 0x3f80

    const v3, 0x3f8ccccd

    const/high16 v4, 0x3f80

    const/4 v5, 0x1

    const/high16 v6, 0x3f00

    const/4 v7, 0x1

    const/high16 v8, 0x3f00

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowStartScaleAnim2:Landroid/view/animation/ScaleAnimation;

    .line 294
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowStartScaleAnim2:Landroid/view/animation/ScaleAnimation;

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 296
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const v2, 0x3f333333

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowStartAlphaAnim2:Landroid/view/animation/AlphaAnimation;

    .line 297
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowStartAlphaAnim2:Landroid/view/animation/AlphaAnimation;

    new-instance v1, Lcom/android/internal/policy/impl/CircleUnlockView$3;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/CircleUnlockView$3;-><init>(Lcom/android/internal/policy/impl/CircleUnlockView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 314
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowStartAnim2:Landroid/view/animation/AnimationSet;

    .line 315
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowStartAnim2:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowStartScaleAnim2:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 316
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowStartAnim2:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowStartAlphaAnim2:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 317
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowStartAnim2:Landroid/view/animation/AnimationSet;

    const-wide/16 v1, 0x15e

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AnimationSet;->setStartOffset(J)V

    .line 318
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowStartAnim2:Landroid/view/animation/AnimationSet;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 321
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const v1, 0x3f8ccccd

    const/high16 v2, 0x3f80

    const v3, 0x3f8ccccd

    const/high16 v4, 0x3f80

    const/4 v5, 0x1

    const/high16 v6, 0x3f00

    const/4 v7, 0x1

    const/high16 v8, 0x3f00

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowStartScaleAnim3:Landroid/view/animation/ScaleAnimation;

    .line 324
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowStartScaleAnim3:Landroid/view/animation/ScaleAnimation;

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 325
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const v2, 0x3f333333

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowStartAlphaAnim3:Landroid/view/animation/AlphaAnimation;

    .line 326
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowStartAlphaAnim3:Landroid/view/animation/AlphaAnimation;

    new-instance v1, Lcom/android/internal/policy/impl/CircleUnlockView$4;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/CircleUnlockView$4;-><init>(Lcom/android/internal/policy/impl/CircleUnlockView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 343
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowStartAnim3:Landroid/view/animation/AnimationSet;

    .line 344
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowStartAnim3:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowStartScaleAnim3:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 345
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowStartAnim3:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowStartAlphaAnim3:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 346
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowStartAnim3:Landroid/view/animation/AnimationSet;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AnimationSet;->setStartOffset(J)V

    .line 347
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowStartAnim3:Landroid/view/animation/AnimationSet;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 349
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const v2, 0x3f333333

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowRepeatAlphaAnim1:Landroid/view/animation/AlphaAnimation;

    .line 350
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowRepeatAlphaAnim1:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    .line 351
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowRepeatAlphaAnim1:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 352
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowRepeatAlphaAnim1:Landroid/view/animation/AlphaAnimation;

    new-instance v1, Lcom/android/internal/policy/impl/CircleUnlockView$5;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/CircleUnlockView$5;-><init>(Lcom/android/internal/policy/impl/CircleUnlockView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 370
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const v2, 0x3f333333

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowRepeatAlphaAnim2:Landroid/view/animation/AlphaAnimation;

    .line 371
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowRepeatAlphaAnim2:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v1, 0x226

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    .line 372
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowRepeatAlphaAnim2:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 373
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowRepeatAlphaAnim2:Landroid/view/animation/AlphaAnimation;

    new-instance v1, Lcom/android/internal/policy/impl/CircleUnlockView$6;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/CircleUnlockView$6;-><init>(Lcom/android/internal/policy/impl/CircleUnlockView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 391
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const v2, 0x3f333333

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowRepeatAlphaAnim3:Landroid/view/animation/AlphaAnimation;

    .line 392
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowRepeatAlphaAnim3:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v1, 0x2bc

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    .line 393
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowRepeatAlphaAnim3:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 394
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowRepeatAlphaAnim3:Landroid/view/animation/AlphaAnimation;

    new-instance v1, Lcom/android/internal/policy/impl/CircleUnlockView$7;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/CircleUnlockView$7;-><init>(Lcom/android/internal/policy/impl/CircleUnlockView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 412
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->circleUnlockViewAlphaAnim:Landroid/view/animation/AlphaAnimation;

    .line 413
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->circleUnlockViewAlphaAnim:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    .line 414
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->circleUnlockViewAlphaAnim:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 415
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->circleUnlockViewAlphaAnim:Landroid/view/animation/AlphaAnimation;

    new-instance v1, Lcom/android/internal/policy/impl/CircleUnlockView$8;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/CircleUnlockView$8;-><init>(Lcom/android/internal/policy/impl/CircleUnlockView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 432
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/high16 v1, 0x3f80

    const v2, 0x3eb33333

    const/high16 v3, 0x3f80

    const v4, 0x3eb33333

    const/4 v5, 0x1

    const/high16 v6, 0x3f00

    const/4 v7, 0x1

    const/high16 v8, 0x3f00

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->circleUnlockViewScaleAnim:Landroid/view/animation/ScaleAnimation;

    .line 435
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->circleUnlockViewScaleAnim:Landroid/view/animation/ScaleAnimation;

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 436
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->circleUnlockViewScaleAnim:Landroid/view/animation/ScaleAnimation;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/ScaleAnimation;->setStartOffset(J)V

    .line 437
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->circleUnlockViewScaleAnim:Landroid/view/animation/ScaleAnimation;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 438
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->circleUnlockViewScaleAnim:Landroid/view/animation/ScaleAnimation;

    new-instance v1, Lcom/android/internal/policy/impl/CircleUnlockView$9;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/CircleUnlockView$9;-><init>(Lcom/android/internal/policy/impl/CircleUnlockView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 454
    return-void
.end method

.method public setLayout()V
    .locals 8

    .prologue
    const v7, 0x1080383

    const/4 v6, -0x1

    const/16 v5, 0x66

    const/4 v4, -0x2

    const/4 v3, 0x4

    .line 146
    new-instance v1, Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleRoot:Landroid/widget/RelativeLayout;

    .line 147
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleRoot:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 150
    new-instance v1, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    .line 153
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleIn:Landroid/widget/ImageView;

    .line 154
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleIn:Landroid/widget/ImageView;

    const v2, 0x1080386

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 157
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleOut:Landroid/widget/ImageView;

    .line 158
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleOut:Landroid/widget/ImageView;

    const v2, 0x1080387

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 161
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleArrow1:Landroid/widget/ImageView;

    .line 162
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleArrow1:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 163
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleArrow1:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 164
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleArrow1:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 167
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleArrow2:Landroid/widget/ImageView;

    .line 168
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleArrow2:Landroid/widget/ImageView;

    const v2, 0x1080384

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 169
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleArrow2:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 170
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleArrow2:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 173
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleArrow3:Landroid/widget/ImageView;

    .line 174
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleArrow3:Landroid/widget/ImageView;

    const v2, 0x1080385

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 175
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleArrow3:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 176
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleArrow3:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 178
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleArrow1_1:Landroid/widget/ImageView;

    .line 179
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleArrow1_1:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 180
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleArrow1_1:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 183
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleArrow2_1:Landroid/widget/ImageView;

    .line 184
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleArrow2_1:Landroid/widget/ImageView;

    const v2, 0x1080384

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 185
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleArrow2_1:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 188
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleArrow3_1:Landroid/widget/ImageView;

    .line 189
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleArrow3_1:Landroid/widget/ImageView;

    const v2, 0x1080385

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 190
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleArrow3_1:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 193
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleCenter:Landroid/widget/ImageView;

    .line 194
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleCenter:Landroid/widget/ImageView;

    const v2, 0x108038a

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 195
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleCenter:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 198
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 199
    .local v0, lp:Landroid/widget/FrameLayout$LayoutParams;
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 202
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleIn:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 203
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleOut:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 204
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleArrow1:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 205
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleArrow2:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 206
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleArrow3:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 207
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleArrow1_1:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 208
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleArrow2_1:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 209
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleArrow3_1:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 210
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleCenter:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 211
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleRoot:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2, v4, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    .line 212
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleRoot:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v1, v6, v6}, Lcom/android/internal/policy/impl/CircleUnlockView;->addView(Landroid/view/View;II)V

    .line 213
    return-void
.end method

.method public setOnCircleTouchListener(Lcom/android/internal/policy/impl/CircleUnlockView$OnCircleTouchListener;)V
    .locals 0
    .parameter "onCircleTouchListener"

    .prologue
    .line 471
    iput-object p1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mOnCircleTouchListener:Lcom/android/internal/policy/impl/CircleUnlockView$OnCircleTouchListener;

    .line 472
    return-void
.end method

.method public setOnCircleUnlockListener(Lcom/android/internal/policy/impl/CircleUnlockView$OnCircleUnlockListener;)V
    .locals 0
    .parameter "onCircleUnlockListener"

    .prologue
    .line 462
    iput-object p1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mOnCircleUnlockListener:Lcom/android/internal/policy/impl/CircleUnlockView$OnCircleUnlockListener;

    .line 463
    return-void
.end method
