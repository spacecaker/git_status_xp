.class public Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;
.super Ljava/lang/Object;


# instance fields
.field public indices:[[S

.field public indicesSent:Z

.field public indicesSet:Z

.field public taggedJoint:[Lcom/badlogic/gdx/math/Quaternion;

.field public taggedJointPos:[Lcom/badlogic/gdx/math/Vector3;

.field public vertices:[[F


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;->vertices:[[F

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;->indices:[[S

    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;->indicesSet:Z

    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;->indicesSent:Z

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;->taggedJointPos:[Lcom/badlogic/gdx/math/Vector3;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;->taggedJoint:[Lcom/badlogic/gdx/math/Quaternion;

    return-void
.end method
