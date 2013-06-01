.class Lcom/iLoong/launcher/Desktop3D/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/iLoong/launcher/Desktop3D/g;

.field private final synthetic b:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/iLoong/launcher/Desktop3D/g;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/iLoong/launcher/Desktop3D/k;->a:Lcom/iLoong/launcher/Desktop3D/g;

    iput-object p2, p0, Lcom/iLoong/launcher/Desktop3D/k;->b:Ljava/util/ArrayList;

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

    invoke-static {}, Lcom/iLoong/launcher/Desktop3D/g;->v()Lcom/iLoong/launcher/Desktop3D/br;

    move-result-object v0

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/k;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/Desktop3D/br;->c(Ljava/util/ArrayList;)V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/iLoong/launcher/Desktop3D/g;->g:Ljava/lang/Boolean;

    sget-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->bD:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/iLoong/launcher/Desktop3D/g;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->p()V

    const-string v0, "bind"

    const-string v1, "sendCancelProgressDialogMsg done"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/k;->a:Lcom/iLoong/launcher/Desktop3D/g;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/g;->resume()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->X:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/iLoong/launcher/desktop/iLoongApplication;->c:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->at:Z

    if-eqz v0, :cond_0

    :cond_2
    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->p()V

    const-string v0, "bind"

    const-string v1, "sendCancelProgressDialogMsg done"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/k;->a:Lcom/iLoong/launcher/Desktop3D/g;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/g;->resume()V

    goto :goto_0
.end method
