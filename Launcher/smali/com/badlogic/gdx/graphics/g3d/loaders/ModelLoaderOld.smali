.class public Lcom/badlogic/gdx/graphics/g3d/loaders/ModelLoaderOld;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static loadObj(Ljava/io/InputStream;)Lcom/badlogic/gdx/graphics/Mesh;
    .locals 1

    invoke-static {p0}, Lcom/badlogic/gdx/graphics/g3d/loaders/obj/ObjLoader;->loadObj(Ljava/io/InputStream;)Lcom/badlogic/gdx/graphics/Mesh;

    move-result-object v0

    return-object v0
.end method
