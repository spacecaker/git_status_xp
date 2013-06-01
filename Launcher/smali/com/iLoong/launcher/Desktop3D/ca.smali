.class Lcom/iLoong/launcher/Desktop3D/ca;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/iLoong/launcher/Desktop3D/g;

.field private final synthetic b:I

.field private final synthetic c:I

.field private final synthetic d:Ljava/util/ArrayList;

.field private final synthetic e:I


# direct methods
.method constructor <init>(Lcom/iLoong/launcher/Desktop3D/g;IILjava/util/ArrayList;I)V
    .locals 0

    iput-object p1, p0, Lcom/iLoong/launcher/Desktop3D/ca;->a:Lcom/iLoong/launcher/Desktop3D/g;

    iput p2, p0, Lcom/iLoong/launcher/Desktop3D/ca;->b:I

    iput p3, p0, Lcom/iLoong/launcher/Desktop3D/ca;->c:I

    iput-object p4, p0, Lcom/iLoong/launcher/Desktop3D/ca;->d:Ljava/util/ArrayList;

    iput p5, p0, Lcom/iLoong/launcher/Desktop3D/ca;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v0, 0x1

    sput-boolean v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->r:Z

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/ca;->b:I

    move v1, v0

    :goto_0
    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/ca;->b:I

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/ca;->c:I

    add-int/2addr v0, v2

    if-lt v1, v0, :cond_1

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/ca;->b:I

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/ca;->c:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/ca;->e:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ca;->a:Lcom/iLoong/launcher/Desktop3D/g;

    invoke-static {v0}, Lcom/iLoong/launcher/Desktop3D/g;->e(Lcom/iLoong/launcher/Desktop3D/g;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ca;->d:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/ca;->a:Lcom/iLoong/launcher/Desktop3D/g;

    invoke-static {v1}, Lcom/iLoong/launcher/Desktop3D/g;->e(Lcom/iLoong/launcher/Desktop3D/g;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    sget-object v0, Lcom/iLoong/launcher/Desktop3D/at;->a:Lcom/iLoong/launcher/UI3DEngine/l;

    sget-object v1, Lcom/iLoong/launcher/Desktop3D/at;->b:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    sget-object v2, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v3, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-virtual {v0, v1, v2, v3}, Lcom/iLoong/launcher/UI3DEngine/l;->a(Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ca;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/a/b;

    const-string v2, "jbc"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "titleName = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/iLoong/launcher/a/b;->o:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " packName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/iLoong/launcher/a/b;->f:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " cmpName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/iLoong/launcher/a/b;->d:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v0, Lcom/iLoong/launcher/a/b;->f:Ljava/lang/String;

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/iLoong/launcher/a/b;->d:Landroid/content/ComponentName;

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ca;->a:Lcom/iLoong/launcher/Desktop3D/g;

    invoke-static {v0, v1}, Lcom/iLoong/launcher/Desktop3D/g;->a(Lcom/iLoong/launcher/Desktop3D/g;I)V

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/iLoong/launcher/a/b;->d()Lcom/iLoong/launcher/a/f;

    move-result-object v0

    invoke-static {v0}, Lcom/iLoong/launcher/Desktop3D/at;->b(Lcom/iLoong/launcher/a/f;)Z

    goto :goto_1
.end method
