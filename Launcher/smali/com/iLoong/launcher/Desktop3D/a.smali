.class Lcom/iLoong/launcher/Desktop3D/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/iLoong/launcher/Desktop3D/bz;

.field private final synthetic b:J


# direct methods
.method constructor <init>(Lcom/iLoong/launcher/Desktop3D/bz;J)V
    .locals 0

    iput-object p1, p0, Lcom/iLoong/launcher/Desktop3D/a;->a:Lcom/iLoong/launcher/Desktop3D/bz;

    iput-wide p2, p0, Lcom/iLoong/launcher/Desktop3D/a;->b:J

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

    invoke-static {}, Lcom/iLoong/launcher/Desktop3D/g;->v()Lcom/iLoong/launcher/Desktop3D/br;

    move-result-object v0

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/a;->a:Lcom/iLoong/launcher/Desktop3D/bz;

    invoke-static {v1}, Lcom/iLoong/launcher/Desktop3D/bz;->a(Lcom/iLoong/launcher/Desktop3D/bz;)Lcom/iLoong/launcher/Desktop3D/g;

    move-result-object v1

    invoke-static {v1}, Lcom/iLoong/launcher/Desktop3D/g;->b(Lcom/iLoong/launcher/Desktop3D/g;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/Desktop3D/br;->b(Ljava/util/ArrayList;)V

    const-string v0, "launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "bindAllWidgets done:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/iLoong/launcher/Desktop3D/a;->b:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/iLoong/launcher/Desktop3D/g;->h:Ljava/lang/Boolean;

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

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/a;->a:Lcom/iLoong/launcher/Desktop3D/bz;

    invoke-static {v0}, Lcom/iLoong/launcher/Desktop3D/bz;->a(Lcom/iLoong/launcher/Desktop3D/bz;)Lcom/iLoong/launcher/Desktop3D/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/g;->resume()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->X:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->p()V

    const-string v0, "bind"

    const-string v1, "sendCancelProgressDialogMsg done"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/a;->a:Lcom/iLoong/launcher/Desktop3D/bz;

    invoke-static {v0}, Lcom/iLoong/launcher/Desktop3D/bz;->a(Lcom/iLoong/launcher/Desktop3D/bz;)Lcom/iLoong/launcher/Desktop3D/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/g;->resume()V

    goto :goto_0
.end method
