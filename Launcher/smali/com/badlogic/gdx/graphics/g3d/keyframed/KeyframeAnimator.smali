.class public Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;
.super Lcom/badlogic/gdx/graphics/g3d/Animator;


# static fields
.field static jointAOrient:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion; = null

.field static jointBOrient:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion; = null

.field public static final sStride:I = 0x8


# instance fields
.field private A:Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;

.field private B:Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;

.field private R:Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;

.field private invSampleRate:F

.field private numMeshes:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->jointAOrient:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->jointBOrient:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    return-void
.end method

.method public constructor <init>(IF)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/Animator;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->A:Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->B:Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->R:Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;

    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->numMeshes:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->invSampleRate:F

    iput p1, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->numMeshes:I

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->R:Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->R:Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;

    new-array v1, p1, [[F

    iput-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;->vertices:[[F

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->R:Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;

    new-array v1, p1, [[S

    iput-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;->indices:[[S

    const/high16 v0, 0x3f80

    div-float/2addr v0, p2

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->invSampleRate:F

    return-void
.end method

.method private interpolateJoints(F)V
    .locals 8

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->A:Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;->taggedJoint:[Lcom/badlogic/gdx/math/Quaternion;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->A:Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;->taggedJointPos:[Lcom/badlogic/gdx/math/Vector3;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->A:Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;->taggedJointPos:[Lcom/badlogic/gdx/math/Vector3;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->A:Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;

    iget-object v3, v3, Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;->taggedJointPos:[Lcom/badlogic/gdx/math/Vector3;

    aget-object v3, v3, v0

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->B:Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;

    iget-object v4, v4, Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;->taggedJointPos:[Lcom/badlogic/gdx/math/Vector3;

    aget-object v4, v4, v0

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->B:Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;

    iget-object v5, v5, Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;->taggedJointPos:[Lcom/badlogic/gdx/math/Vector3;

    aget-object v5, v5, v0

    iget v5, v5, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->B:Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;

    iget-object v6, v6, Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;->taggedJointPos:[Lcom/badlogic/gdx/math/Vector3;

    aget-object v6, v6, v0

    iget v6, v6, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->R:Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;

    iget-object v7, v7, Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;->taggedJointPos:[Lcom/badlogic/gdx/math/Vector3;

    aget-object v7, v7, v0

    sub-float/2addr v4, v1

    mul-float/2addr v4, p1

    add-float/2addr v1, v4

    iput v1, v7, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->R:Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;->taggedJointPos:[Lcom/badlogic/gdx/math/Vector3;

    aget-object v1, v1, v0

    sub-float v4, v5, v2

    mul-float/2addr v4, p1

    add-float/2addr v2, v4

    iput v2, v1, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->R:Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;->taggedJointPos:[Lcom/badlogic/gdx/math/Vector3;

    aget-object v1, v1, v0

    sub-float v2, v6, v3

    mul-float/2addr v2, p1

    add-float/2addr v2, v3

    iput v2, v1, Lcom/badlogic/gdx/math/Vector3;->z:F

    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->jointAOrient:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->A:Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;->taggedJoint:[Lcom/badlogic/gdx/math/Quaternion;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/badlogic/gdx/math/Quaternion;->x:F

    iput v2, v1, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->x:F

    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->jointAOrient:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->A:Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;->taggedJoint:[Lcom/badlogic/gdx/math/Quaternion;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/badlogic/gdx/math/Quaternion;->y:F

    iput v2, v1, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->y:F

    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->jointAOrient:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->A:Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;->taggedJoint:[Lcom/badlogic/gdx/math/Quaternion;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/badlogic/gdx/math/Quaternion;->z:F

    iput v2, v1, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->z:F

    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->jointAOrient:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->A:Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;->taggedJoint:[Lcom/badlogic/gdx/math/Quaternion;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/badlogic/gdx/math/Quaternion;->w:F

    iput v2, v1, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->w:F

    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->jointBOrient:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->B:Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;->taggedJoint:[Lcom/badlogic/gdx/math/Quaternion;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/badlogic/gdx/math/Quaternion;->x:F

    iput v2, v1, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->x:F

    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->jointBOrient:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->B:Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;->taggedJoint:[Lcom/badlogic/gdx/math/Quaternion;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/badlogic/gdx/math/Quaternion;->y:F

    iput v2, v1, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->y:F

    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->jointBOrient:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->B:Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;->taggedJoint:[Lcom/badlogic/gdx/math/Quaternion;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/badlogic/gdx/math/Quaternion;->z:F

    iput v2, v1, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->z:F

    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->jointBOrient:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->B:Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;->taggedJoint:[Lcom/badlogic/gdx/math/Quaternion;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/badlogic/gdx/math/Quaternion;->w:F

    iput v2, v1, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->w:F

    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->jointAOrient:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    sget-object v2, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->jointBOrient:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    invoke-virtual {v1, v2, p1}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->slerp(Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;F)V

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->R:Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;->taggedJoint:[Lcom/badlogic/gdx/math/Quaternion;

    aget-object v1, v1, v0

    sget-object v2, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->jointAOrient:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    iget v2, v2, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->x:F

    iput v2, v1, Lcom/badlogic/gdx/math/Quaternion;->x:F

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->R:Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;->taggedJoint:[Lcom/badlogic/gdx/math/Quaternion;

    aget-object v1, v1, v0

    sget-object v2, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->jointAOrient:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    iget v2, v2, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->y:F

    iput v2, v1, Lcom/badlogic/gdx/math/Quaternion;->y:F

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->R:Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;->taggedJoint:[Lcom/badlogic/gdx/math/Quaternion;

    aget-object v1, v1, v0

    sget-object v2, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->jointAOrient:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    iget v2, v2, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->z:F

    iput v2, v1, Lcom/badlogic/gdx/math/Quaternion;->z:F

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->R:Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;->taggedJoint:[Lcom/badlogic/gdx/math/Quaternion;

    aget-object v1, v1, v0

    sget-object v2, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->jointAOrient:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    iget v2, v2, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->w:F

    iput v2, v1, Lcom/badlogic/gdx/math/Quaternion;->w:F

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method


# virtual methods
.method public getInterpolatedKeyframe()Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->R:Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;

    return-object v0
.end method

.method public hasAnimation()Z
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->mCurrentAnim:Lcom/badlogic/gdx/graphics/g3d/Animation;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected interpolate()V
    .locals 11

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->mWrapMode:Lcom/badlogic/gdx/graphics/g3d/Animator$WrapMode;

    sget-object v2, Lcom/badlogic/gdx/graphics/g3d/Animator$WrapMode;->SingleFrame:Lcom/badlogic/gdx/graphics/g3d/Animator$WrapMode;

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->R:Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;

    iget-boolean v0, v0, Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;->indicesSet:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->mFrameDelta:F

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->invSampleRate:F

    mul-float v3, v0, v2

    move v0, v1

    :goto_1
    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->numMeshes:I

    if-lt v0, v2, :cond_2

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->R:Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;->indicesSet:Z

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->A:Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;->taggedJoint:[Lcom/badlogic/gdx/math/Quaternion;

    if-eqz v0, :cond_0

    invoke-direct {p0, v3}, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->interpolateJoints(F)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->R:Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;->vertices:[[F

    aget-object v4, v2, v0

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->A:Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;->vertices:[[F

    aget-object v5, v2, v0

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->B:Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;->vertices:[[F

    aget-object v6, v2, v0

    move v2, v1

    :goto_2
    array-length v7, v5

    if-lt v2, v7, :cond_4

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->R:Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;

    iget-boolean v2, v2, Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;->indicesSet:Z

    if-nez v2, :cond_3

    move v2, v1

    :goto_3
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->A:Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;

    iget-object v4, v4, Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;->indices:[[S

    aget-object v4, v4, v0

    array-length v4, v4

    if-lt v2, v4, :cond_5

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    aget v7, v5, v2

    aget v8, v6, v2

    sub-float/2addr v8, v7

    mul-float/2addr v8, v3

    add-float/2addr v7, v8

    add-int/lit8 v8, v2, 0x1

    aget v8, v5, v8

    add-int/lit8 v9, v2, 0x1

    aget v9, v6, v9

    sub-float/2addr v9, v8

    mul-float/2addr v9, v3

    add-float/2addr v8, v9

    add-int/lit8 v9, v2, 0x2

    aget v9, v5, v9

    add-int/lit8 v10, v2, 0x2

    aget v10, v6, v10

    sub-float/2addr v10, v9

    mul-float/2addr v10, v3

    add-float/2addr v9, v10

    aput v7, v4, v2

    add-int/lit8 v7, v2, 0x1

    aput v8, v4, v7

    add-int/lit8 v7, v2, 0x2

    aput v9, v4, v7

    add-int/lit8 v7, v2, 0x3

    add-int/lit8 v8, v2, 0x3

    aget v8, v5, v8

    aput v8, v4, v7

    add-int/lit8 v7, v2, 0x4

    add-int/lit8 v8, v2, 0x4

    aget v8, v5, v8

    aput v8, v4, v7

    add-int/lit8 v7, v2, 0x5

    aget v7, v5, v7

    add-int/lit8 v8, v2, 0x5

    aget v8, v6, v8

    sub-float/2addr v8, v7

    mul-float/2addr v8, v3

    add-float/2addr v7, v8

    add-int/lit8 v8, v2, 0x6

    aget v8, v5, v8

    add-int/lit8 v9, v2, 0x6

    aget v9, v6, v9

    sub-float/2addr v9, v8

    mul-float/2addr v9, v3

    add-float/2addr v8, v9

    add-int/lit8 v9, v2, 0x7

    aget v9, v5, v9

    add-int/lit8 v10, v2, 0x7

    aget v10, v6, v10

    sub-float/2addr v10, v9

    mul-float/2addr v10, v3

    add-float/2addr v9, v10

    add-int/lit8 v10, v2, 0x5

    aput v7, v4, v10

    add-int/lit8 v7, v2, 0x6

    aput v8, v4, v7

    add-int/lit8 v7, v2, 0x7

    aput v9, v4, v7

    add-int/lit8 v2, v2, 0x8

    goto :goto_2

    :cond_5
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->R:Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;

    iget-object v4, v4, Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;->indices:[[S

    aget-object v4, v4, v0

    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->A:Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;

    iget-object v5, v5, Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;->indices:[[S

    aget-object v5, v5, v0

    aget-short v5, v5, v2

    aput-short v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3
.end method

.method protected setInterpolationFrames()V
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->mCurrentAnim:Lcom/badlogic/gdx/graphics/g3d/Animation;

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimation;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimation;->keyframes:[Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->mCurrentFrameIdx:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->A:Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->mCurrentAnim:Lcom/badlogic/gdx/graphics/g3d/Animation;

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimation;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimation;->keyframes:[Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->mNextFrameIdx:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->B:Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;

    return-void
.end method

.method public setKeyframeDimensions(III)V
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->R:Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;->vertices:[[F

    new-array v1, p2, [F

    aput-object v1, v0, p1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->R:Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;->indices:[[S

    new-array v1, p3, [S

    aput-object v1, v0, p1

    return-void
.end method

.method public setNumTaggedJoints(I)V
    .locals 5

    const/4 v0, 0x0

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->R:Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;

    new-array v2, p1, [Lcom/badlogic/gdx/math/Vector3;

    iput-object v2, v1, Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;->taggedJointPos:[Lcom/badlogic/gdx/math/Vector3;

    move v1, v0

    :goto_0
    if-lt v1, p1, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->R:Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;

    new-array v2, p1, [Lcom/badlogic/gdx/math/Quaternion;

    iput-object v2, v1, Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;->taggedJoint:[Lcom/badlogic/gdx/math/Quaternion;

    :goto_1
    if-lt v0, p1, :cond_1

    return-void

    :cond_0
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->R:Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;->taggedJointPos:[Lcom/badlogic/gdx/math/Vector3;

    new-instance v3, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v3}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->R:Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;->taggedJoint:[Lcom/badlogic/gdx/math/Quaternion;

    new-instance v2, Lcom/badlogic/gdx/math/Quaternion;

    invoke-direct {v2, v4, v4, v4, v4}, Lcom/badlogic/gdx/math/Quaternion;-><init>(FFFF)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
