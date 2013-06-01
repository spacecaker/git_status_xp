.class Lcom/iLoong/launcher/Desktop3D/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/iLoong/launcher/Desktop3D/g;

.field private final synthetic b:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/iLoong/launcher/Desktop3D/g;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/iLoong/launcher/Desktop3D/j;->a:Lcom/iLoong/launcher/Desktop3D/g;

    iput-object p2, p0, Lcom/iLoong/launcher/Desktop3D/j;->b:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "pack"

    const-string v1, "bindAppsUpdated"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/j;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    sget-object v0, Lcom/iLoong/launcher/Desktop3D/at;->a:Lcom/iLoong/launcher/UI3DEngine/l;

    sget-object v1, Lcom/iLoong/launcher/Desktop3D/at;->b:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    sget-object v2, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v3, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-virtual {v0, v1, v2, v3}, Lcom/iLoong/launcher/UI3DEngine/l;->a(Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    invoke-static {}, Lcom/iLoong/launcher/Desktop3D/g;->v()Lcom/iLoong/launcher/Desktop3D/br;

    move-result-object v0

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/j;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/Desktop3D/br;->d(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/j;->a:Lcom/iLoong/launcher/Desktop3D/g;

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/j;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/Desktop3D/g;->i(Ljava/util/ArrayList;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/j;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/a/b;

    invoke-virtual {v0}, Lcom/iLoong/launcher/a/b;->d()Lcom/iLoong/launcher/a/f;

    move-result-object v0

    invoke-static {v0}, Lcom/iLoong/launcher/Desktop3D/at;->b(Lcom/iLoong/launcher/a/f;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method
