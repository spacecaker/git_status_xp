.class Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader$BaseFrameJoint;
.super Ljava/lang/Object;


# instance fields
.field public final orient:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

.field public final pos:Lcom/badlogic/gdx/math/Vector3;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader$BaseFrameJoint;->pos:Lcom/badlogic/gdx/math/Vector3;

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader$BaseFrameJoint;->orient:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    return-void
.end method
