.class public Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;
.super Ljava/lang/Object;


# static fields
.field private static animations:Lcom/badlogic/gdx/utils/ObjectMap;


# instance fields
.field private animationRefs:Ljava/util/ArrayList;

.field private animator:Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;

.field private assetName:Ljava/lang/String;

.field private materials:[Lcom/badlogic/gdx/graphics/g3d/Material;

.field private numMeshes:I

.field private taggedJointNames:Ljava/util/ArrayList;

.field private target:[Lcom/badlogic/gdx/graphics/Mesh;

.field private visible:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->animations:Lcom/badlogic/gdx/utils/ObjectMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->animationRefs:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->animator:Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->target:[Lcom/badlogic/gdx/graphics/Mesh;

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->visible:[Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->numMeshes:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->taggedJointNames:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 4

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->animationRefs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->target:[Lcom/badlogic/gdx/graphics/Mesh;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_1
    if-lt v0, v2, :cond_2

    return-void

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->animations:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimation;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimation;->removeRef()I

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->animations:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/ObjectMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    aget-object v3, v1, v0

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/Mesh;->dispose()V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public getAnimation(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimation;
    .locals 3

    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->animations:Lcom/badlogic/gdx/utils/ObjectMap;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->assetName:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimation;

    return-object v0
.end method

.method public getAnimator()Lcom/badlogic/gdx/graphics/g3d/Animator;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->animator:Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;

    return-object v0
.end method

.method public getJointData(ILcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Quaternion;)V
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->animator:Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->getInterpolatedKeyframe()Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;

    move-result-object v0

    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;->taggedJointPos:[Lcom/badlogic/gdx/math/Vector3;

    aget-object v1, v1, p1

    invoke-virtual {p2, v1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;->taggedJoint:[Lcom/badlogic/gdx/math/Quaternion;

    aget-object v1, v1, p1

    iget v1, v1, Lcom/badlogic/gdx/math/Quaternion;->x:F

    iput v1, p3, Lcom/badlogic/gdx/math/Quaternion;->x:F

    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;->taggedJoint:[Lcom/badlogic/gdx/math/Quaternion;

    aget-object v1, v1, p1

    iget v1, v1, Lcom/badlogic/gdx/math/Quaternion;->y:F

    iput v1, p3, Lcom/badlogic/gdx/math/Quaternion;->y:F

    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;->taggedJoint:[Lcom/badlogic/gdx/math/Quaternion;

    aget-object v1, v1, p1

    iget v1, v1, Lcom/badlogic/gdx/math/Quaternion;->z:F

    iput v1, p3, Lcom/badlogic/gdx/math/Quaternion;->z:F

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;->taggedJoint:[Lcom/badlogic/gdx/math/Quaternion;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    iput v0, p3, Lcom/badlogic/gdx/math/Quaternion;->w:F

    return-void
.end method

.method public render()V
    .locals 5

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->numMeshes:I

    if-lt v0, v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->materials:[Lcom/badlogic/gdx/graphics/g3d/Material;

    aget-object v2, v2, v0

    if-eqz v2, :cond_2

    iget-object v3, v2, Lcom/badlogic/gdx/graphics/g3d/Material;->Texture:Lcom/badlogic/gdx/graphics/TextureRef;

    if-eqz v3, :cond_1

    iget-object v3, v2, Lcom/badlogic/gdx/graphics/g3d/Material;->Texture:Lcom/badlogic/gdx/graphics/TextureRef;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/TextureRef;->bind()V

    :cond_1
    const/16 v3, 0x404

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/graphics/g3d/Material;->set(I)V

    :cond_2
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->visible:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->target:[Lcom/badlogic/gdx/graphics/Mesh;

    aget-object v2, v2, v0

    const/4 v3, 0x4

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->target:[Lcom/badlogic/gdx/graphics/Mesh;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/Mesh;->getNumIndices()I

    move-result v4

    invoke-virtual {v2, v3, v1, v4}, Lcom/badlogic/gdx/graphics/Mesh;->render(III)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public sampleAnimationFromMD5(Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Model;Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Renderer;Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animator;Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animation;FLjava/lang/String;Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimation;
    .locals 16

    move-object/from16 v0, p6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->assetName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Model;->meshes:[Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;

    array-length v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->numMeshes:I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->animator:Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;

    if-nez v2, :cond_0

    new-instance v2, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->numMeshes:I

    move/from16 v0, p5

    invoke-direct {v2, v4, v0}, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;-><init>(IF)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->animator:Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->numMeshes:I

    new-array v2, v2, [Lcom/badlogic/gdx/graphics/Mesh;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->target:[Lcom/badlogic/gdx/graphics/Mesh;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->numMeshes:I

    new-array v2, v2, [Z

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->visible:[Z

    const/4 v2, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->visible:[Z

    array-length v4, v4

    if-lt v2, v4, :cond_3

    :cond_0
    sget-object v2, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->animations:Lcom/badlogic/gdx/utils/ObjectMap;

    if-nez v2, :cond_1

    new-instance v2, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v2}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    sput-object v2, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->animations:Lcom/badlogic/gdx/utils/ObjectMap;

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static/range {p6 .. p6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p7

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x0

    sget-object v5, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->animations:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v5, v4}, Lcom/badlogic/gdx/utils/ObjectMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    sget-object v2, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->animations:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimation;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimation;->addRef()V

    const/4 v3, 0x1

    :cond_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->animationRefs:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/badlogic/gdx/graphics/g3d/Animator$WrapMode;->Clamp:Lcom/badlogic/gdx/graphics/g3d/Animator$WrapMode;

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v5}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animator;->setAnimation(Lcom/badlogic/gdx/graphics/g3d/Animation;Lcom/badlogic/gdx/graphics/g3d/Animator$WrapMode;)V

    move-object/from16 v0, p4

    iget-object v5, v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animation;->frames:[Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;

    array-length v5, v5

    int-to-float v5, v5

    move-object/from16 v0, p4

    iget v6, v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animation;->secondsPerFrame:F

    mul-float v10, v5, v6

    div-float v5, v10, p5

    float-to-int v5, v5

    add-int/lit8 v5, v5, 0x1

    if-nez v3, :cond_e

    new-instance v2, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimation;

    move-object/from16 v0, p4

    iget-object v6, v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animation;->name:Ljava/lang/String;

    move/from16 v0, p5

    invoke-direct {v2, v6, v5, v10, v0}, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimation;-><init>(Ljava/lang/String;IFF)V

    sget-object v5, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->animations:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v5, v4, v2}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v4, v2

    :goto_1
    const v2, 0x3dcccccd

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animator;->update(F)V

    invoke-virtual/range {p3 .. p3}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animator;->getSkeleton()Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Renderer;->setSkeleton(Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;)V

    const/4 v5, 0x0

    const/4 v2, 0x0

    move v8, v2

    move v9, v5

    :goto_2
    cmpg-float v2, v8, v10

    if-ltz v2, :cond_4

    return-object v4

    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->visible:[Z

    const/4 v5, 0x1

    aput-boolean v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_4
    const/4 v2, 0x0

    if-nez v3, :cond_d

    new-instance v2, Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;

    invoke-direct {v2}, Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;-><init>()V

    move-object/from16 v0, p0

    iget v5, v0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->numMeshes:I

    new-array v5, v5, [[F

    iput-object v5, v2, Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;->vertices:[[F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->numMeshes:I

    new-array v5, v5, [[S

    iput-object v5, v2, Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;->indices:[[S

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->taggedJointNames:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->taggedJointNames:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Lcom/badlogic/gdx/math/Vector3;

    iput-object v5, v2, Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;->taggedJointPos:[Lcom/badlogic/gdx/math/Vector3;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->taggedJointNames:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Lcom/badlogic/gdx/math/Quaternion;

    iput-object v5, v2, Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;->taggedJoint:[Lcom/badlogic/gdx/math/Quaternion;

    :cond_5
    move-object v5, v2

    :goto_3
    const/4 v2, 0x0

    move v6, v2

    :goto_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->numMeshes:I

    if-lt v6, v2, :cond_7

    if-nez v3, :cond_6

    invoke-virtual/range {p3 .. p3}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animator;->getSkeleton()Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;

    move-result-object v11

    const/4 v2, 0x0

    move v6, v2

    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->taggedJointNames:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v6, v2, :cond_a

    iget-object v2, v4, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimation;->keyframes:[Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;

    aput-object v5, v2, v9

    :cond_6
    move-object/from16 v0, p3

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animator;->update(F)V

    invoke-virtual/range {p3 .. p3}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animator;->getSkeleton()Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Renderer;->setSkeleton(Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;)V

    add-int/lit8 v5, v9, 0x1

    add-float v2, v8, p5

    move v8, v2

    move v9, v5

    goto :goto_2

    :cond_7
    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Renderer;->getVertices(I)[F

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Renderer;->getIndices(I)[S

    move-result-object v7

    array-length v11, v2

    array-length v12, v7

    if-nez v3, :cond_8

    iget-object v13, v5, Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;->vertices:[[F

    array-length v14, v2

    new-array v14, v14, [F

    aput-object v14, v13, v6

    iget-object v13, v5, Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;->vertices:[[F

    invoke-virtual {v2}, [F->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [F

    aput-object v2, v13, v6

    iget-object v2, v5, Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;->indices:[[S

    array-length v13, v7

    new-array v13, v13, [S

    aput-object v13, v2, v6

    iget-object v13, v5, Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;->indices:[[S

    invoke-virtual {v7}, [S->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [S

    aput-object v2, v13, v6

    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->target:[Lcom/badlogic/gdx/graphics/Mesh;

    aget-object v2, v2, v6

    if-nez v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->animator:Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;

    invoke-virtual {v2, v6, v11, v12}, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->setKeyframeDimensions(III)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->animator:Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->taggedJointNames:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v2, v7}, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->setNumTaggedJoints(I)V

    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Renderer;->getMesh()Lcom/badlogic/gdx/graphics/Mesh;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexAttributes()Lcom/badlogic/gdx/graphics/VertexAttributes;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->target:[Lcom/badlogic/gdx/graphics/Mesh;

    new-instance v13, Lcom/badlogic/gdx/graphics/Mesh;

    const/4 v14, 0x0

    invoke-direct {v13, v14, v11, v12, v2}, Lcom/badlogic/gdx/graphics/Mesh;-><init>(ZIILcom/badlogic/gdx/graphics/VertexAttributes;)V

    aput-object v13, v7, v6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->target:[Lcom/badlogic/gdx/graphics/Mesh;

    aget-object v2, v2, v6

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexSize()I

    move-result v2

    div-int/lit8 v2, v2, 0x4

    const/16 v7, 0x8

    if-eq v2, v7, :cond_9

    new-instance v2, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v3, "Mesh vertexattributes != 8 - is this a valid MD5 source mesh?"

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_9
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    goto/16 :goto_4

    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->taggedJointNames:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v7, 0x0

    :goto_6
    iget v12, v11, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->numJoints:I

    if-lt v7, v12, :cond_b

    :goto_7
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    goto/16 :goto_5

    :cond_b
    iget-object v12, v11, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->names:[Ljava/lang/String;

    aget-object v12, v12, v7

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    mul-int/lit8 v2, v7, 0x8

    iget-object v7, v11, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    add-int/lit8 v12, v2, 0x1

    aget v7, v7, v12

    iget-object v12, v11, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    add-int/lit8 v13, v2, 0x2

    aget v12, v12, v13

    iget-object v13, v11, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    add-int/lit8 v14, v2, 0x3

    aget v13, v13, v14

    iget-object v14, v5, Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;->taggedJointPos:[Lcom/badlogic/gdx/math/Vector3;

    new-instance v15, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v15, v7, v12, v13}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    aput-object v15, v14, v6

    iget-object v7, v11, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    add-int/lit8 v12, v2, 0x4

    aget v7, v7, v12

    iget-object v12, v11, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    add-int/lit8 v13, v2, 0x5

    aget v12, v12, v13

    iget-object v13, v11, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    add-int/lit8 v14, v2, 0x6

    aget v13, v13, v14

    iget-object v14, v11, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    add-int/lit8 v2, v2, 0x7

    aget v2, v14, v2

    iget-object v14, v5, Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;->taggedJoint:[Lcom/badlogic/gdx/math/Quaternion;

    new-instance v15, Lcom/badlogic/gdx/math/Quaternion;

    invoke-direct {v15, v7, v12, v13, v2}, Lcom/badlogic/gdx/math/Quaternion;-><init>(FFFF)V

    aput-object v15, v14, v6

    goto :goto_7

    :cond_c
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_d
    move-object v5, v2

    goto/16 :goto_3

    :cond_e
    move-object v4, v2

    goto/16 :goto_1
.end method

.method public setAnimation(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g3d/Animator$WrapMode;)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->getAnimation(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimation;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->animator:Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;

    invoke-virtual {v1, v0, p2}, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->setAnimation(Lcom/badlogic/gdx/graphics/g3d/Animation;Lcom/badlogic/gdx/graphics/g3d/Animator$WrapMode;)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->animator:Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->getInterpolatedKeyframe()Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;

    move-result-object v0

    iput-boolean v2, v0, Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;->indicesSet:Z

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->animator:Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->getInterpolatedKeyframe()Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;

    move-result-object v0

    iput-boolean v2, v0, Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;->indicesSent:Z

    :cond_0
    return-void
.end method

.method public setMaterials([Lcom/badlogic/gdx/graphics/g3d/Material;)V
    .locals 3

    array-length v0, p1

    new-array v0, v0, [Lcom/badlogic/gdx/graphics/g3d/Material;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->materials:[Lcom/badlogic/gdx/graphics/g3d/Material;

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->materials:[Lcom/badlogic/gdx/graphics/g3d/Material;

    aget-object v2, p1, v0

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setMeshVisible(IZ)V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->visible:[Z

    aput-boolean p2, v0, p1

    return-void
.end method

.method public setTaggedJoints(Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->taggedJointNames:Ljava/util/ArrayList;

    return-void
.end method

.method public update(F)V
    .locals 4

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->animator:Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->animator:Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->update(F)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->animator:Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->hasAnimation()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->animator:Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->getInterpolatedKeyframe()Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;

    move-result-object v1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->animator:Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimator;->getCurrentWrapMode()Lcom/badlogic/gdx/graphics/g3d/Animator$WrapMode;

    move-result-object v0

    sget-object v2, Lcom/badlogic/gdx/graphics/g3d/Animator$WrapMode;->SingleFrame:Lcom/badlogic/gdx/graphics/g3d/Animator$WrapMode;

    if-ne v0, v2, :cond_1

    iget-boolean v0, v1, Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;->indicesSent:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->numMeshes:I

    if-lt v0, v2, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;->indicesSent:Z

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->target:[Lcom/badlogic/gdx/graphics/Mesh;

    aget-object v2, v2, v0

    iget-object v3, v1, Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;->vertices:[[F

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/graphics/Mesh;->setVertices([F)V

    iget-boolean v2, v1, Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;->indicesSent:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframedModel;->target:[Lcom/badlogic/gdx/graphics/Mesh;

    aget-object v2, v2, v0

    iget-object v3, v1, Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;->indices:[[S

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/graphics/Mesh;->setIndices([S)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
