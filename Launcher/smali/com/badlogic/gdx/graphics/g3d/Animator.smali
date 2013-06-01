.class public abstract Lcom/badlogic/gdx/graphics/g3d/Animator;
.super Ljava/lang/Object;


# static fields
.field private static synthetic $SWITCH_TABLE$com$badlogic$gdx$graphics$g3d$Animator$WrapMode:[I


# instance fields
.field protected mAnimLen:F

.field protected mAnimPos:F

.field protected mCurrentAnim:Lcom/badlogic/gdx/graphics/g3d/Animation;

.field protected mCurrentFrameIdx:I

.field protected mFrameDelta:F

.field protected mNextFrameIdx:I

.field protected mWrapMode:Lcom/badlogic/gdx/graphics/g3d/Animator$WrapMode;


# direct methods
.method static synthetic $SWITCH_TABLE$com$badlogic$gdx$graphics$g3d$Animator$WrapMode()[I
    .locals 3

    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/Animator;->$SWITCH_TABLE$com$badlogic$gdx$graphics$g3d$Animator$WrapMode:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/badlogic/gdx/graphics/g3d/Animator$WrapMode;->values()[Lcom/badlogic/gdx/graphics/g3d/Animator$WrapMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/Animator$WrapMode;->Clamp:Lcom/badlogic/gdx/graphics/g3d/Animator$WrapMode;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g3d/Animator$WrapMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/Animator$WrapMode;->Loop:Lcom/badlogic/gdx/graphics/g3d/Animator$WrapMode;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g3d/Animator$WrapMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/Animator$WrapMode;->SingleFrame:Lcom/badlogic/gdx/graphics/g3d/Animator$WrapMode;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g3d/Animator$WrapMode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/Animator;->$SWITCH_TABLE$com$badlogic$gdx$graphics$g3d$Animator$WrapMode:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/badlogic/gdx/graphics/g3d/Animator;->mAnimPos:F

    iput v1, p0, Lcom/badlogic/gdx/graphics/g3d/Animator;->mAnimLen:F

    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/Animator$WrapMode;->Clamp:Lcom/badlogic/gdx/graphics/g3d/Animator$WrapMode;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/Animator;->mWrapMode:Lcom/badlogic/gdx/graphics/g3d/Animator$WrapMode;

    iput v2, p0, Lcom/badlogic/gdx/graphics/g3d/Animator;->mCurrentFrameIdx:I

    iput v2, p0, Lcom/badlogic/gdx/graphics/g3d/Animator;->mNextFrameIdx:I

    iput v1, p0, Lcom/badlogic/gdx/graphics/g3d/Animator;->mFrameDelta:F

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/Animator;->mCurrentAnim:Lcom/badlogic/gdx/graphics/g3d/Animation;

    return-void
.end method


# virtual methods
.method public getCurrentAnimation()Lcom/badlogic/gdx/graphics/g3d/Animation;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/Animator;->mCurrentAnim:Lcom/badlogic/gdx/graphics/g3d/Animation;

    return-object v0
.end method

.method public getCurrentWrapMode()Lcom/badlogic/gdx/graphics/g3d/Animator$WrapMode;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/Animator;->mWrapMode:Lcom/badlogic/gdx/graphics/g3d/Animator$WrapMode;

    return-object v0
.end method

.method protected abstract interpolate()V
.end method

.method public setAnimation(Lcom/badlogic/gdx/graphics/g3d/Animation;Lcom/badlogic/gdx/graphics/g3d/Animator$WrapMode;)V
    .locals 2

    const/4 v1, -0x1

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/Animator;->mCurrentAnim:Lcom/badlogic/gdx/graphics/g3d/Animation;

    iput-object p2, p0, Lcom/badlogic/gdx/graphics/g3d/Animator;->mWrapMode:Lcom/badlogic/gdx/graphics/g3d/Animator$WrapMode;

    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/Animator;->mFrameDelta:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/Animator;->mAnimPos:F

    iput v1, p0, Lcom/badlogic/gdx/graphics/g3d/Animator;->mCurrentFrameIdx:I

    iput v1, p0, Lcom/badlogic/gdx/graphics/g3d/Animator;->mNextFrameIdx:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/Animator;->mCurrentAnim:Lcom/badlogic/gdx/graphics/g3d/Animation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/Animator;->mCurrentAnim:Lcom/badlogic/gdx/graphics/g3d/Animation;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/Animation;->getLength()F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/Animator;->mAnimLen:F

    :cond_0
    return-void
.end method

.method protected abstract setInterpolationFrames()V
.end method

.method public update(F)V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/Animator;->mCurrentAnim:Lcom/badlogic/gdx/graphics/g3d/Animation;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/Animator;->mWrapMode:Lcom/badlogic/gdx/graphics/g3d/Animator$WrapMode;

    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/Animator$WrapMode;->SingleFrame:Lcom/badlogic/gdx/graphics/g3d/Animator$WrapMode;

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/Animator;->mAnimPos:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/Animator;->mAnimPos:F

    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/Animator;->mAnimPos:F

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/Animator;->mAnimLen:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/Animator;->mWrapMode:Lcom/badlogic/gdx/graphics/g3d/Animator$WrapMode;

    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/Animator$WrapMode;->Loop:Lcom/badlogic/gdx/graphics/g3d/Animator$WrapMode;

    if-ne v0, v1, :cond_3

    iput v4, p0, Lcom/badlogic/gdx/graphics/g3d/Animator;->mAnimPos:F

    :cond_0
    :goto_0
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/Animator;->mAnimPos:F

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/Animator;->mAnimLen:F

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/Animator;->mCurrentAnim:Lcom/badlogic/gdx/graphics/g3d/Animation;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g3d/Animation;->getNumFrames()I

    move-result v1

    add-int/lit8 v2, v1, -0x1

    int-to-float v3, v1

    mul-float/2addr v0, v3

    float-to-int v0, v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/Animator;->mCurrentFrameIdx:I

    if-eq v0, v2, :cond_1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_4

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/badlogic/gdx/graphics/g3d/Animator;->mNextFrameIdx:I

    :goto_1
    iput v4, p0, Lcom/badlogic/gdx/graphics/g3d/Animator;->mFrameDelta:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/Animator;->mCurrentFrameIdx:I

    :cond_1
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/Animator;->mFrameDelta:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/Animator;->mFrameDelta:F

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/Animator;->setInterpolationFrames()V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/Animator;->interpolate()V

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/Animator;->mWrapMode:Lcom/badlogic/gdx/graphics/g3d/Animator$WrapMode;

    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/Animator$WrapMode;->Clamp:Lcom/badlogic/gdx/graphics/g3d/Animator$WrapMode;

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/Animator;->mAnimLen:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/Animator;->mAnimPos:F

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/badlogic/gdx/graphics/g3d/Animator;->$SWITCH_TABLE$com$badlogic$gdx$graphics$g3d$Animator$WrapMode()[I

    move-result-object v1

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/Animator;->mWrapMode:Lcom/badlogic/gdx/graphics/g3d/Animator$WrapMode;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g3d/Animator$WrapMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/badlogic/gdx/graphics/g3d/Animator;->mNextFrameIdx:I

    goto :goto_1

    :pswitch_1
    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/Animator;->mNextFrameIdx:I

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
