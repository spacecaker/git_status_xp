.class Lcom/iLoong/launcher/Desktop3D/bx;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/iLoong/launcher/Desktop3D/g;

.field private final synthetic b:Lcom/iLoong/launcher/a/f;


# direct methods
.method constructor <init>(Lcom/iLoong/launcher/Desktop3D/g;Lcom/iLoong/launcher/a/f;)V
    .locals 0

    iput-object p1, p0, Lcom/iLoong/launcher/Desktop3D/bx;->a:Lcom/iLoong/launcher/Desktop3D/g;

    iput-object p2, p0, Lcom/iLoong/launcher/Desktop3D/bx;->b:Lcom/iLoong/launcher/a/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    sget-object v0, Lcom/iLoong/launcher/Desktop3D/at;->a:Lcom/iLoong/launcher/UI3DEngine/l;

    sget-object v1, Lcom/iLoong/launcher/Desktop3D/at;->b:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    sget-object v2, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v3, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-virtual {v0, v1, v2, v3}, Lcom/iLoong/launcher/UI3DEngine/l;->a(Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    new-instance v1, Lcom/iLoong/launcher/Desktop3D/aj;

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bx;->b:Lcom/iLoong/launcher/a/f;

    iget-object v0, v0, Lcom/iLoong/launcher/a/f;->o:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/bx;->b:Lcom/iLoong/launcher/a/f;

    iget-object v3, p0, Lcom/iLoong/launcher/Desktop3D/bx;->b:Lcom/iLoong/launcher/a/f;

    iget-object v3, v3, Lcom/iLoong/launcher/a/f;->o:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/iLoong/launcher/Desktop3D/at;->b(Lcom/iLoong/launcher/a/f;Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/iLoong/launcher/Desktop3D/aj;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bx;->b:Lcom/iLoong/launcher/a/f;

    invoke-virtual {v1, v0}, Lcom/iLoong/launcher/Desktop3D/aj;->a(Lcom/iLoong/launcher/a/j;)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bx;->a:Lcom/iLoong/launcher/Desktop3D/g;

    invoke-static {v0}, Lcom/iLoong/launcher/Desktop3D/g;->a(Lcom/iLoong/launcher/Desktop3D/g;)Lcom/iLoong/launcher/Desktop3D/bq;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/iLoong/launcher/Desktop3D/bq;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bx;->a:Lcom/iLoong/launcher/Desktop3D/g;

    invoke-static {v0}, Lcom/iLoong/launcher/Desktop3D/g;->a(Lcom/iLoong/launcher/Desktop3D/g;)Lcom/iLoong/launcher/Desktop3D/bq;

    move-result-object v0

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/bx;->b:Lcom/iLoong/launcher/a/f;

    iget v2, v2, Lcom/iLoong/launcher/a/f;->n:I

    iget-object v3, p0, Lcom/iLoong/launcher/Desktop3D/bx;->b:Lcom/iLoong/launcher/a/f;

    iget v3, v3, Lcom/iLoong/launcher/a/f;->p:I

    iget-object v4, p0, Lcom/iLoong/launcher/Desktop3D/bx;->b:Lcom/iLoong/launcher/a/f;

    iget v4, v4, Lcom/iLoong/launcher/a/f;->q:I

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/iLoong/launcher/Desktop3D/bq;->a(Lcom/iLoong/launcher/UI3DEngine/View3D;IIIZ)Z

    return-void
.end method
