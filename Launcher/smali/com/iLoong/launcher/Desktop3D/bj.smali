.class Lcom/iLoong/launcher/Desktop3D/bj;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/iLoong/launcher/Desktop3D/e;

.field private final synthetic b:Lcom/iLoong/launcher/d/a;


# direct methods
.method constructor <init>(Lcom/iLoong/launcher/Desktop3D/e;Lcom/iLoong/launcher/d/a;)V
    .locals 0

    iput-object p1, p0, Lcom/iLoong/launcher/Desktop3D/bj;->a:Lcom/iLoong/launcher/Desktop3D/e;

    iput-object p2, p0, Lcom/iLoong/launcher/Desktop3D/bj;->b:Lcom/iLoong/launcher/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    sget-object v0, Lcom/iLoong/launcher/Desktop3D/at;->a:Lcom/iLoong/launcher/UI3DEngine/l;

    sget-object v1, Lcom/iLoong/launcher/Desktop3D/at;->b:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    sget-object v2, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v3, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-virtual {v0, v1, v2, v3}, Lcom/iLoong/launcher/UI3DEngine/l;->a(Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bj;->b:Lcom/iLoong/launcher/d/a;

    invoke-virtual {v0}, Lcom/iLoong/launcher/d/a;->k()V

    return-void
.end method
