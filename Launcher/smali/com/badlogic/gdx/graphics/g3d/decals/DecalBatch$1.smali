.class Lcom/badlogic/gdx/graphics/g3d/decals/DecalBatch$1;
.super Lcom/badlogic/gdx/utils/Pool;


# instance fields
.field final synthetic this$0:Lcom/badlogic/gdx/graphics/g3d/decals/DecalBatch;


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/graphics/g3d/decals/DecalBatch;I)V
    .locals 0

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/decals/DecalBatch$1;->this$0:Lcom/badlogic/gdx/graphics/g3d/decals/DecalBatch;

    invoke-direct {p0, p2}, Lcom/badlogic/gdx/utils/Pool;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected newObject()Lcom/badlogic/gdx/utils/Array;
    .locals 3

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x0

    const/16 v2, 0x64

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/utils/Array;-><init>(ZI)V

    return-object v0
.end method

.method protected bridge synthetic newObject()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/decals/DecalBatch$1;->newObject()Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    return-object v0
.end method
