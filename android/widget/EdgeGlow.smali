.class public Landroid/widget/EdgeGlow;
.super Ljava/lang/Object;
.source "EdgeGlow.java"


# static fields
.field private static final EPSILON:F = 0.001f

.field private static final HELD_EDGE_ALPHA:F = 0.7f

.field private static final HELD_EDGE_SCALE_Y:F = 0.5f

.field private static final HELD_GLOW_ALPHA:F = 0.5f

.field private static final HELD_GLOW_SCALE_Y:F = 0.5f

.field private static final MAX_ALPHA:F = 0.8f

.field private static final MAX_GLOW_HEIGHT:F = 3.0f

.field private static final MIN_VELOCITY:I = 0x64

.field private static final PULL_DECAY_TIME:I = 0x3e8

.field private static final PULL_DISTANCE_ALPHA_GLOW_FACTOR:F = 0.8f

.field private static final PULL_DISTANCE_EDGE_FACTOR:I = 0x5

.field private static final PULL_DISTANCE_GLOW_FACTOR:I = 0x5

.field private static final PULL_EDGE_BEGIN:F = 0.6f

.field private static final PULL_GLOW_BEGIN:F = 1.0f

.field private static final PULL_TIME:I = 0xa7

.field private static final RECEDE_TIME:I = 0x3e8

.field private static final STATE_ABSORB:I = 0x2

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_PULL:I = 0x1

.field private static final STATE_PULL_DECAY:I = 0x4

.field private static final STATE_RECEDE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "EdgeGlow"

.field private static final VELOCITY_EDGE_FACTOR:I = 0x8

.field private static final VELOCITY_GLOW_FACTOR:I = 0x10


# instance fields
.field public MAX_EDGE_SCALE_Y:F

.field public MAX_GLOW_SCALE_Y:F

.field private final MIN_WIDTH:I

.field private isTouchWiz:Z

.field private mDuration:F

.field private final mEdge:Landroid/graphics/drawable/Drawable;

.field private mEdgeAlpha:F

.field private mEdgeAlphaFinish:F

.field private mEdgeAlphaStart:F

.field private mEdgeScaleY:F

.field private mEdgeScaleYFinish:F

.field private mEdgeScaleYStart:F

.field private final mGlow:Landroid/graphics/drawable/Drawable;

.field private mGlowAlpha:F

.field private mGlowAlphaFinish:F

.field private mGlowAlphaStart:F

.field private mGlowScaleY:F

.field private mGlowScaleYFinish:F

.field private mGlowScaleYStart:F

.field private mHeight:I

.field private final mInterpolator:Landroid/view/animation/Interpolator;

.field private final mMinWidth:I

.field private mPullDistance:F

.field private mStartTime:J

.field private mState:I

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "context"
    .parameter "edge"
    .parameter "glow"

    .prologue
    const/4 v1, 0x0

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/16 v0, 0x12c

    iput v0, p0, Landroid/widget/EdgeGlow;->MIN_WIDTH:I

    .line 103
    iput v1, p0, Landroid/widget/EdgeGlow;->mState:I

    .line 179
    const/high16 v0, 0x3f80

    iput v0, p0, Landroid/widget/EdgeGlow;->MAX_EDGE_SCALE_Y:F

    .line 182
    const/high16 v0, 0x4080

    iput v0, p0, Landroid/widget/EdgeGlow;->MAX_GLOW_SCALE_Y:F

    .line 184
    iput-boolean v1, p0, Landroid/widget/EdgeGlow;->isTouchWiz:Z

    .line 108
    iput-object p2, p0, Landroid/widget/EdgeGlow;->mEdge:Landroid/graphics/drawable/Drawable;

    .line 109
    iput-object p3, p0, Landroid/widget/EdgeGlow;->mGlow:Landroid/graphics/drawable/Drawable;

    .line 111
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x4396

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/widget/EdgeGlow;->mMinWidth:I

    .line 112
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Landroid/widget/EdgeGlow;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 113
    return-void
.end method

.method private update()V
    .locals 11

    .prologue
    const/high16 v10, 0x447a

    const/high16 v9, 0x3f80

    const/4 v8, 0x0

    .line 330
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v3

    .line 331
    .local v3, time:J
    iget-wide v5, p0, Landroid/widget/EdgeGlow;->mStartTime:J

    sub-long v5, v3, v5

    long-to-float v5, v5

    iget v6, p0, Landroid/widget/EdgeGlow;->mDuration:F

    div-float/2addr v5, v6

    invoke-static {v5, v9}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 333
    .local v2, t:F
    iget-object v5, p0, Landroid/widget/EdgeGlow;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v5, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    .line 335
    .local v1, interp:F
    iget v5, p0, Landroid/widget/EdgeGlow;->mEdgeAlphaStart:F

    iget v6, p0, Landroid/widget/EdgeGlow;->mEdgeAlphaFinish:F

    iget v7, p0, Landroid/widget/EdgeGlow;->mEdgeAlphaStart:F

    sub-float/2addr v6, v7

    mul-float/2addr v6, v1

    add-float/2addr v5, v6

    iput v5, p0, Landroid/widget/EdgeGlow;->mEdgeAlpha:F

    .line 336
    iget v5, p0, Landroid/widget/EdgeGlow;->mEdgeScaleYStart:F

    iget v6, p0, Landroid/widget/EdgeGlow;->mEdgeScaleYFinish:F

    iget v7, p0, Landroid/widget/EdgeGlow;->mEdgeScaleYStart:F

    sub-float/2addr v6, v7

    mul-float/2addr v6, v1

    add-float/2addr v5, v6

    iput v5, p0, Landroid/widget/EdgeGlow;->mEdgeScaleY:F

    .line 337
    iget v5, p0, Landroid/widget/EdgeGlow;->mGlowAlphaStart:F

    iget v6, p0, Landroid/widget/EdgeGlow;->mGlowAlphaFinish:F

    iget v7, p0, Landroid/widget/EdgeGlow;->mGlowAlphaStart:F

    sub-float/2addr v6, v7

    mul-float/2addr v6, v1

    add-float/2addr v5, v6

    iput v5, p0, Landroid/widget/EdgeGlow;->mGlowAlpha:F

    .line 338
    iget v5, p0, Landroid/widget/EdgeGlow;->mGlowScaleYStart:F

    iget v6, p0, Landroid/widget/EdgeGlow;->mGlowScaleYFinish:F

    iget v7, p0, Landroid/widget/EdgeGlow;->mGlowScaleYStart:F

    sub-float/2addr v6, v7

    mul-float/2addr v6, v1

    add-float/2addr v5, v6

    iput v5, p0, Landroid/widget/EdgeGlow;->mGlowScaleY:F

    .line 340
    const v5, 0x3f7fbe77

    cmpl-float v5, v2, v5

    if-ltz v5, :cond_0

    .line 341
    iget v5, p0, Landroid/widget/EdgeGlow;->mState:I

    packed-switch v5, :pswitch_data_0

    .line 389
    :cond_0
    :goto_0
    return-void

    .line 343
    :pswitch_0
    const/4 v5, 0x3

    iput v5, p0, Landroid/widget/EdgeGlow;->mState:I

    .line 344
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/widget/EdgeGlow;->mStartTime:J

    .line 345
    iput v10, p0, Landroid/widget/EdgeGlow;->mDuration:F

    .line 347
    iget v5, p0, Landroid/widget/EdgeGlow;->mEdgeAlpha:F

    iput v5, p0, Landroid/widget/EdgeGlow;->mEdgeAlphaStart:F

    .line 348
    iget v5, p0, Landroid/widget/EdgeGlow;->mEdgeScaleY:F

    iput v5, p0, Landroid/widget/EdgeGlow;->mEdgeScaleYStart:F

    .line 349
    iget v5, p0, Landroid/widget/EdgeGlow;->mGlowAlpha:F

    iput v5, p0, Landroid/widget/EdgeGlow;->mGlowAlphaStart:F

    .line 350
    iget v5, p0, Landroid/widget/EdgeGlow;->mGlowScaleY:F

    iput v5, p0, Landroid/widget/EdgeGlow;->mGlowScaleYStart:F

    .line 353
    iput v8, p0, Landroid/widget/EdgeGlow;->mEdgeAlphaFinish:F

    .line 354
    iput v8, p0, Landroid/widget/EdgeGlow;->mEdgeScaleYFinish:F

    .line 355
    iput v8, p0, Landroid/widget/EdgeGlow;->mGlowAlphaFinish:F

    .line 356
    iput v8, p0, Landroid/widget/EdgeGlow;->mGlowScaleYFinish:F

    goto :goto_0

    .line 359
    :pswitch_1
    const/4 v5, 0x4

    iput v5, p0, Landroid/widget/EdgeGlow;->mState:I

    .line 360
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/widget/EdgeGlow;->mStartTime:J

    .line 361
    iput v10, p0, Landroid/widget/EdgeGlow;->mDuration:F

    .line 363
    iget v5, p0, Landroid/widget/EdgeGlow;->mEdgeAlpha:F

    iput v5, p0, Landroid/widget/EdgeGlow;->mEdgeAlphaStart:F

    .line 364
    iget v5, p0, Landroid/widget/EdgeGlow;->mEdgeScaleY:F

    iput v5, p0, Landroid/widget/EdgeGlow;->mEdgeScaleYStart:F

    .line 365
    iget v5, p0, Landroid/widget/EdgeGlow;->mGlowAlpha:F

    iput v5, p0, Landroid/widget/EdgeGlow;->mGlowAlphaStart:F

    .line 366
    iget v5, p0, Landroid/widget/EdgeGlow;->mGlowScaleY:F

    iput v5, p0, Landroid/widget/EdgeGlow;->mGlowScaleYStart:F

    .line 369
    iput v8, p0, Landroid/widget/EdgeGlow;->mEdgeAlphaFinish:F

    .line 370
    iput v8, p0, Landroid/widget/EdgeGlow;->mEdgeScaleYFinish:F

    .line 371
    iput v8, p0, Landroid/widget/EdgeGlow;->mGlowAlphaFinish:F

    .line 372
    iput v8, p0, Landroid/widget/EdgeGlow;->mGlowScaleYFinish:F

    goto :goto_0

    .line 377
    :pswitch_2
    iget v5, p0, Landroid/widget/EdgeGlow;->mGlowScaleYFinish:F

    cmpl-float v5, v5, v8

    if-eqz v5, :cond_1

    iget v5, p0, Landroid/widget/EdgeGlow;->mGlowScaleYFinish:F

    iget v6, p0, Landroid/widget/EdgeGlow;->mGlowScaleYFinish:F

    mul-float/2addr v5, v6

    div-float v5, v9, v5

    move v0, v5

    .line 380
    .local v0, factor:F
    :goto_1
    iget v5, p0, Landroid/widget/EdgeGlow;->mEdgeScaleYStart:F

    iget v6, p0, Landroid/widget/EdgeGlow;->mEdgeScaleYFinish:F

    iget v7, p0, Landroid/widget/EdgeGlow;->mEdgeScaleYStart:F

    sub-float/2addr v6, v7

    mul-float/2addr v6, v1

    mul-float/2addr v6, v0

    add-float/2addr v5, v6

    iput v5, p0, Landroid/widget/EdgeGlow;->mEdgeScaleY:F

    goto :goto_0

    .line 377
    .end local v0           #factor:F
    :cond_1
    const v5, 0x7f7fffff

    move v0, v5

    goto :goto_1

    .line 385
    :pswitch_3
    const/4 v5, 0x0

    iput v5, p0, Landroid/widget/EdgeGlow;->mState:I

    goto :goto_0

    .line 341
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)Z
    .locals 13
    .parameter "canvas"

    .prologue
    .line 288
    iget-boolean v9, p0, Landroid/widget/EdgeGlow;->isTouchWiz:Z

    if-nez v9, :cond_0

    .line 289
    invoke-direct {p0}, Landroid/widget/EdgeGlow;->update()V

    .line 291
    :cond_0
    iget-object v9, p0, Landroid/widget/EdgeGlow;->mEdge:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 292
    .local v2, edgeHeight:I
    iget-object v9, p0, Landroid/widget/EdgeGlow;->mEdge:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 293
    .local v4, edgeWidth:I
    iget-object v9, p0, Landroid/widget/EdgeGlow;->mGlow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    .line 294
    .local v6, glowHeight:I
    iget-object v9, p0, Landroid/widget/EdgeGlow;->mGlow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    .line 296
    .local v8, glowWidth:I
    iget v9, p0, Landroid/widget/EdgeGlow;->mHeight:I

    int-to-float v9, v9

    iget v10, p0, Landroid/widget/EdgeGlow;->mWidth:I

    int-to-float v10, v10

    div-float v0, v9, v10

    .line 298
    .local v0, distScale:F
    iget-object v9, p0, Landroid/widget/EdgeGlow;->mGlow:Landroid/graphics/drawable/Drawable;

    const/4 v10, 0x0

    iget v11, p0, Landroid/widget/EdgeGlow;->mGlowAlpha:F

    const/high16 v12, 0x3f80

    invoke-static {v11, v12}, Ljava/lang/Math;->min(FF)F

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(FF)F

    move-result v10

    const/high16 v11, 0x437f

    mul-float/2addr v10, v11

    float-to-int v10, v10

    invoke-virtual {v9, v10}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 300
    int-to-float v9, v6

    iget v10, p0, Landroid/widget/EdgeGlow;->mGlowScaleY:F

    mul-float/2addr v9, v10

    int-to-float v10, v6

    mul-float/2addr v9, v10

    int-to-float v10, v8

    div-float/2addr v9, v10

    const v10, 0x3f19999a

    mul-float/2addr v9, v10

    int-to-float v10, v6

    const/high16 v11, 0x4040

    mul-float/2addr v10, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v9

    float-to-int v5, v9

    .line 302
    .local v5, glowBottom:I
    iget v9, p0, Landroid/widget/EdgeGlow;->mWidth:I

    iget v10, p0, Landroid/widget/EdgeGlow;->mMinWidth:I

    if-ge v9, v10, :cond_1

    .line 304
    iget v9, p0, Landroid/widget/EdgeGlow;->mWidth:I

    iget v10, p0, Landroid/widget/EdgeGlow;->mMinWidth:I

    sub-int/2addr v9, v10

    div-int/lit8 v7, v9, 0x2

    .line 305
    .local v7, glowLeft:I
    iget-object v9, p0, Landroid/widget/EdgeGlow;->mGlow:Landroid/graphics/drawable/Drawable;

    const/4 v10, 0x0

    iget v11, p0, Landroid/widget/EdgeGlow;->mWidth:I

    sub-int/2addr v11, v7

    invoke-virtual {v9, v7, v10, v11, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 311
    .end local v7           #glowLeft:I
    :goto_0
    iget-object v9, p0, Landroid/widget/EdgeGlow;->mGlow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 313
    iget-object v9, p0, Landroid/widget/EdgeGlow;->mEdge:Landroid/graphics/drawable/Drawable;

    const/4 v10, 0x0

    iget v11, p0, Landroid/widget/EdgeGlow;->mEdgeAlpha:F

    const/high16 v12, 0x3f80

    invoke-static {v11, v12}, Ljava/lang/Math;->min(FF)F

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(FF)F

    move-result v10

    const/high16 v11, 0x437f

    mul-float/2addr v10, v11

    float-to-int v10, v10

    invoke-virtual {v9, v10}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 315
    int-to-float v9, v2

    iget v10, p0, Landroid/widget/EdgeGlow;->mEdgeScaleY:F

    mul-float/2addr v9, v10

    float-to-int v1, v9

    .line 316
    .local v1, edgeBottom:I
    iget v9, p0, Landroid/widget/EdgeGlow;->mWidth:I

    iget v10, p0, Landroid/widget/EdgeGlow;->mMinWidth:I

    if-ge v9, v10, :cond_2

    .line 318
    iget v9, p0, Landroid/widget/EdgeGlow;->mWidth:I

    iget v10, p0, Landroid/widget/EdgeGlow;->mMinWidth:I

    sub-int/2addr v9, v10

    div-int/lit8 v3, v9, 0x2

    .line 319
    .local v3, edgeLeft:I
    iget-object v9, p0, Landroid/widget/EdgeGlow;->mEdge:Landroid/graphics/drawable/Drawable;

    const/4 v10, 0x0

    iget v11, p0, Landroid/widget/EdgeGlow;->mWidth:I

    sub-int/2addr v11, v3

    invoke-virtual {v9, v3, v10, v11, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 324
    .end local v3           #edgeLeft:I
    :goto_1
    iget-object v9, p0, Landroid/widget/EdgeGlow;->mEdge:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 326
    iget v9, p0, Landroid/widget/EdgeGlow;->mState:I

    if-eqz v9, :cond_3

    const/4 v9, 0x1

    :goto_2
    return v9

    .line 308
    .end local v1           #edgeBottom:I
    :cond_1
    iget-object v9, p0, Landroid/widget/EdgeGlow;->mGlow:Landroid/graphics/drawable/Drawable;

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget v12, p0, Landroid/widget/EdgeGlow;->mWidth:I

    invoke-virtual {v9, v10, v11, v12, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    .line 322
    .restart local v1       #edgeBottom:I
    :cond_2
    iget-object v9, p0, Landroid/widget/EdgeGlow;->mEdge:Landroid/graphics/drawable/Drawable;

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget v12, p0, Landroid/widget/EdgeGlow;->mWidth:I

    invoke-virtual {v9, v10, v11, v12, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_1

    .line 326
    :cond_3
    const/4 v9, 0x0

    goto :goto_2
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 129
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/EdgeGlow;->mState:I

    .line 130
    return-void
.end method

.method public isFinished()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 121
    iget-boolean v0, p0, Landroid/widget/EdgeGlow;->isTouchWiz:Z

    if-eqz v0, :cond_1

    .line 122
    iget v0, p0, Landroid/widget/EdgeGlow;->mPullDistance:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    move v0, v3

    .line 124
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 122
    goto :goto_0

    .line 124
    :cond_1
    iget v0, p0, Landroid/widget/EdgeGlow;->mState:I

    if-nez v0, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method public onAbsorb(I)V
    .locals 5
    .parameter "velocity"

    .prologue
    const/high16 v4, 0x3f00

    const/4 v3, 0x0

    .line 244
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/EdgeGlow;->mState:I

    .line 245
    const/16 v0, 0x64

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 247
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/EdgeGlow;->mStartTime:J

    .line 248
    const v0, 0x3dcccccd

    int-to-float v1, p1

    const v2, 0x3cf5c28f

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Landroid/widget/EdgeGlow;->mDuration:F

    .line 252
    iput v3, p0, Landroid/widget/EdgeGlow;->mEdgeAlphaStart:F

    .line 253
    iput v3, p0, Landroid/widget/EdgeGlow;->mEdgeScaleYStart:F

    iput v3, p0, Landroid/widget/EdgeGlow;->mEdgeScaleY:F

    .line 256
    iput v4, p0, Landroid/widget/EdgeGlow;->mGlowAlphaStart:F

    .line 257
    iput v3, p0, Landroid/widget/EdgeGlow;->mGlowScaleYStart:F

    .line 261
    const/4 v0, 0x0

    mul-int/lit8 v1, p1, 0x8

    const/4 v2, 0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Landroid/widget/EdgeGlow;->mEdgeAlphaFinish:F

    .line 263
    mul-int/lit8 v0, p1, 0x8

    int-to-float v0, v0

    const/high16 v1, 0x3f80

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Landroid/widget/EdgeGlow;->mEdgeScaleYFinish:F

    .line 270
    const v0, 0x3ccccccd

    div-int/lit8 v1, p1, 0x64

    mul-int/2addr v1, p1

    int-to-float v1, v1

    const v2, 0x391d4952

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    const/high16 v1, 0x3fe0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Landroid/widget/EdgeGlow;->mGlowScaleYFinish:F

    .line 272
    iget v0, p0, Landroid/widget/EdgeGlow;->mGlowAlphaStart:F

    mul-int/lit8 v1, p1, 0x10

    int-to-float v1, v1

    const v2, 0x3727c5ac

    mul-float/2addr v1, v2

    const v2, 0x3f4ccccd

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Landroid/widget/EdgeGlow;->mGlowAlphaFinish:F

    .line 274
    return-void
.end method

.method public onPull(F)V
    .locals 11
    .parameter "deltaDistance"

    .prologue
    const/4 v10, 0x1

    const/high16 v9, 0x40a0

    const/high16 v8, 0x3f80

    const v6, 0x3f4ccccd

    const/4 v7, 0x0

    .line 138
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    .line 139
    .local v2, now:J
    iget v4, p0, Landroid/widget/EdgeGlow;->mState:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_0

    iget-wide v4, p0, Landroid/widget/EdgeGlow;->mStartTime:J

    sub-long v4, v2, v4

    long-to-float v4, v4

    iget v5, p0, Landroid/widget/EdgeGlow;->mDuration:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    .line 177
    :goto_0
    return-void

    .line 142
    :cond_0
    iget v4, p0, Landroid/widget/EdgeGlow;->mState:I

    if-eq v4, v10, :cond_1

    .line 143
    iput v8, p0, Landroid/widget/EdgeGlow;->mGlowScaleY:F

    .line 145
    :cond_1
    iput v10, p0, Landroid/widget/EdgeGlow;->mState:I

    .line 147
    iput-wide v2, p0, Landroid/widget/EdgeGlow;->mStartTime:J

    .line 148
    const/high16 v4, 0x4327

    iput v4, p0, Landroid/widget/EdgeGlow;->mDuration:F

    .line 150
    iget v4, p0, Landroid/widget/EdgeGlow;->mPullDistance:F

    add-float/2addr v4, p1

    iput v4, p0, Landroid/widget/EdgeGlow;->mPullDistance:F

    .line 151
    iget v4, p0, Landroid/widget/EdgeGlow;->mPullDistance:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 153
    .local v0, distance:F
    const v4, 0x3f19999a

    invoke-static {v0, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, p0, Landroid/widget/EdgeGlow;->mEdgeAlphaStart:F

    iput v4, p0, Landroid/widget/EdgeGlow;->mEdgeAlpha:F

    .line 154
    const/high16 v4, 0x3f00

    mul-float v5, v0, v9

    invoke-static {v5, v8}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, p0, Landroid/widget/EdgeGlow;->mEdgeScaleYStart:F

    iput v4, p0, Landroid/widget/EdgeGlow;->mEdgeScaleY:F

    .line 157
    iget v4, p0, Landroid/widget/EdgeGlow;->mGlowAlpha:F

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v5

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-static {v6, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iput v4, p0, Landroid/widget/EdgeGlow;->mGlowAlphaStart:F

    iput v4, p0, Landroid/widget/EdgeGlow;->mGlowAlpha:F

    .line 161
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 162
    .local v1, glowChange:F
    cmpl-float v4, p1, v7

    if-lez v4, :cond_2

    iget v4, p0, Landroid/widget/EdgeGlow;->mPullDistance:F

    cmpg-float v4, v4, v7

    if-gez v4, :cond_2

    .line 163
    neg-float v1, v1

    .line 165
    :cond_2
    iget v4, p0, Landroid/widget/EdgeGlow;->mPullDistance:F

    cmpl-float v4, v4, v7

    if-nez v4, :cond_3

    .line 166
    iput v7, p0, Landroid/widget/EdgeGlow;->mGlowScaleY:F

    .line 170
    :cond_3
    const/high16 v4, 0x4040

    iget v5, p0, Landroid/widget/EdgeGlow;->mGlowScaleY:F

    mul-float v6, v1, v9

    add-float/2addr v5, v6

    invoke-static {v7, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iput v4, p0, Landroid/widget/EdgeGlow;->mGlowScaleYStart:F

    iput v4, p0, Landroid/widget/EdgeGlow;->mGlowScaleY:F

    .line 173
    iget v4, p0, Landroid/widget/EdgeGlow;->mEdgeAlpha:F

    iput v4, p0, Landroid/widget/EdgeGlow;->mEdgeAlphaFinish:F

    .line 174
    iget v4, p0, Landroid/widget/EdgeGlow;->mEdgeScaleY:F

    iput v4, p0, Landroid/widget/EdgeGlow;->mEdgeScaleYFinish:F

    .line 175
    iget v4, p0, Landroid/widget/EdgeGlow;->mGlowAlpha:F

    iput v4, p0, Landroid/widget/EdgeGlow;->mGlowAlphaFinish:F

    .line 176
    iget v4, p0, Landroid/widget/EdgeGlow;->mGlowScaleY:F

    iput v4, p0, Landroid/widget/EdgeGlow;->mGlowScaleYFinish:F

    goto/16 :goto_0
.end method

.method public onPull2(F)V
    .locals 2
    .parameter "factor"

    .prologue
    const/high16 v1, 0x3f80

    .line 196
    cmpl-float v0, p1, v1

    if-lez v0, :cond_0

    .line 197
    const/high16 p1, 0x3f80

    .line 199
    :cond_0
    iput p1, p0, Landroid/widget/EdgeGlow;->mPullDistance:F

    .line 203
    iput v1, p0, Landroid/widget/EdgeGlow;->mEdgeAlpha:F

    iput v1, p0, Landroid/widget/EdgeGlow;->mGlowAlpha:F

    .line 204
    iget v0, p0, Landroid/widget/EdgeGlow;->MAX_EDGE_SCALE_Y:F

    mul-float/2addr v0, p1

    iput v0, p0, Landroid/widget/EdgeGlow;->mEdgeScaleY:F

    .line 205
    iget v0, p0, Landroid/widget/EdgeGlow;->MAX_GLOW_SCALE_Y:F

    mul-float/2addr v0, p1

    iput v0, p0, Landroid/widget/EdgeGlow;->mGlowScaleY:F

    .line 206
    return-void
.end method

.method public onRelease()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 217
    iput v2, p0, Landroid/widget/EdgeGlow;->mPullDistance:F

    .line 219
    iget v0, p0, Landroid/widget/EdgeGlow;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/widget/EdgeGlow;->mState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 236
    :goto_0
    return-void

    .line 223
    :cond_0
    const/4 v0, 0x3

    iput v0, p0, Landroid/widget/EdgeGlow;->mState:I

    .line 224
    iget v0, p0, Landroid/widget/EdgeGlow;->mEdgeAlpha:F

    iput v0, p0, Landroid/widget/EdgeGlow;->mEdgeAlphaStart:F

    .line 225
    iget v0, p0, Landroid/widget/EdgeGlow;->mEdgeScaleY:F

    iput v0, p0, Landroid/widget/EdgeGlow;->mEdgeScaleYStart:F

    .line 226
    iget v0, p0, Landroid/widget/EdgeGlow;->mGlowAlpha:F

    iput v0, p0, Landroid/widget/EdgeGlow;->mGlowAlphaStart:F

    .line 227
    iget v0, p0, Landroid/widget/EdgeGlow;->mGlowScaleY:F

    iput v0, p0, Landroid/widget/EdgeGlow;->mGlowScaleYStart:F

    .line 229
    iput v2, p0, Landroid/widget/EdgeGlow;->mEdgeAlphaFinish:F

    .line 230
    iput v2, p0, Landroid/widget/EdgeGlow;->mEdgeScaleYFinish:F

    .line 231
    iput v2, p0, Landroid/widget/EdgeGlow;->mGlowAlphaFinish:F

    .line 232
    iput v2, p0, Landroid/widget/EdgeGlow;->mGlowScaleYFinish:F

    .line 234
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/EdgeGlow;->mStartTime:J

    .line 235
    const/high16 v0, 0x447a

    iput v0, p0, Landroid/widget/EdgeGlow;->mDuration:F

    goto :goto_0
.end method

.method public onRelease2()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 209
    iput v0, p0, Landroid/widget/EdgeGlow;->mPullDistance:F

    .line 210
    iput v0, p0, Landroid/widget/EdgeGlow;->mGlowScaleY:F

    iput v0, p0, Landroid/widget/EdgeGlow;->mEdgeScaleY:F

    iput v0, p0, Landroid/widget/EdgeGlow;->mGlowAlpha:F

    iput v0, p0, Landroid/widget/EdgeGlow;->mGlowScaleY:F

    .line 211
    return-void
.end method

.method public setSize(II)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 116
    iput p1, p0, Landroid/widget/EdgeGlow;->mWidth:I

    .line 117
    iput p2, p0, Landroid/widget/EdgeGlow;->mHeight:I

    .line 118
    return-void
.end method

.method public setTouchWiz(Z)V
    .locals 0
    .parameter "touchwiz"

    .prologue
    .line 187
    iput-boolean p1, p0, Landroid/widget/EdgeGlow;->isTouchWiz:Z

    .line 188
    return-void
.end method
