.class Lcom/iLoong/launcher/Desktop3D/s;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/iLoong/launcher/Desktop3D/g;

.field private final synthetic b:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/iLoong/launcher/Desktop3D/g;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/iLoong/launcher/Desktop3D/s;->a:Lcom/iLoong/launcher/Desktop3D/g;

    iput-object p2, p0, Lcom/iLoong/launcher/Desktop3D/s;->b:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    const/4 v10, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/s;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v3, v2

    :goto_0
    if-lt v3, v4, :cond_0

    sget-object v0, Lcom/iLoong/launcher/Desktop3D/at;->a:Lcom/iLoong/launcher/UI3DEngine/l;

    sget-object v1, Lcom/iLoong/launcher/Desktop3D/at;->b:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    sget-object v2, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v3, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-virtual {v0, v1, v2, v3}, Lcom/iLoong/launcher/UI3DEngine/l;->a(Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/s;->a:Lcom/iLoong/launcher/Desktop3D/g;

    invoke-static {v0}, Lcom/iLoong/launcher/Desktop3D/g;->h(Lcom/iLoong/launcher/Desktop3D/g;)Lcom/iLoong/launcher/Desktop3D/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/e;->b()Lcom/iLoong/launcher/HotSeat3D/a;

    move-result-object v0

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/s;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/HotSeat3D/a;->c(Ljava/util/ArrayList;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/s;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/a/j;

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/s;->a:Lcom/iLoong/launcher/Desktop3D/g;

    invoke-static {v1, v0}, Lcom/iLoong/launcher/Desktop3D/g;->a(Lcom/iLoong/launcher/Desktop3D/g;Lcom/iLoong/launcher/a/j;)V

    iget v1, v0, Lcom/iLoong/launcher/a/j;->l:I

    if-eq v1, v10, :cond_1

    iget v1, v0, Lcom/iLoong/launcher/a/j;->l:I

    if-nez v1, :cond_2

    :cond_1
    move-object v1, v0

    check-cast v1, Lcom/iLoong/launcher/a/f;

    iget-object v5, v1, Lcom/iLoong/launcher/a/f;->o:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/iLoong/launcher/Desktop3D/at;->bB:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    sget v5, Lcom/iLoong/launcher/Desktop3D/at;->bI:I

    if-lez v5, :cond_6

    sget v5, Lcom/iLoong/launcher/Desktop3D/cb;->ao:I

    sget-object v6, Lcom/iLoong/launcher/desktop/iLoongApplication;->e:Lcom/iLoong/launcher/app/ak;

    invoke-virtual {v1, v6}, Lcom/iLoong/launcher/a/f;->a(Lcom/iLoong/launcher/app/ak;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    if-le v5, v6, :cond_5

    invoke-static {v1, v10}, Lcom/iLoong/launcher/Desktop3D/at;->a(Lcom/iLoong/launcher/a/f;Z)Z

    :cond_2
    :goto_1
    iget v1, v0, Lcom/iLoong/launcher/a/j;->l:I

    const/4 v5, 0x2

    if-ne v1, v5, :cond_4

    check-cast v0, Lcom/iLoong/launcher/a/h;

    iget-object v1, v0, Lcom/iLoong/launcher/a/h;->f:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v5, Lcom/iLoong/launcher/Desktop3D/at;->bB:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const/4 v5, -0x1

    invoke-static {v1, v5}, Lcom/iLoong/launcher/d/a;->a(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/iLoong/launcher/Desktop3D/at;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    :cond_3
    iget-object v5, v0, Lcom/iLoong/launcher/a/h;->a:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v1, v2

    :goto_2
    if-lt v1, v6, :cond_7

    :cond_4
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_0

    :cond_5
    invoke-static {v1, v2}, Lcom/iLoong/launcher/Desktop3D/at;->a(Lcom/iLoong/launcher/a/f;Z)Z

    goto :goto_1

    :cond_6
    invoke-static {v1, v2}, Lcom/iLoong/launcher/Desktop3D/at;->a(Lcom/iLoong/launcher/a/f;Z)Z

    goto :goto_1

    :cond_7
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/a/j;

    iget-object v7, p0, Lcom/iLoong/launcher/Desktop3D/s;->a:Lcom/iLoong/launcher/Desktop3D/g;

    invoke-static {v7, v0}, Lcom/iLoong/launcher/Desktop3D/g;->a(Lcom/iLoong/launcher/Desktop3D/g;Lcom/iLoong/launcher/a/j;)V

    iget v7, v0, Lcom/iLoong/launcher/a/j;->l:I

    if-eq v7, v10, :cond_8

    iget v7, v0, Lcom/iLoong/launcher/a/j;->l:I

    if-nez v7, :cond_9

    :cond_8
    check-cast v0, Lcom/iLoong/launcher/a/f;

    invoke-static {v0}, Lcom/iLoong/launcher/Desktop3D/at;->b(Lcom/iLoong/launcher/a/f;)Z

    const-string v7, "icon"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v0, Lcom/iLoong/launcher/a/f;->o:Ljava/lang/CharSequence;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v0, v0, Lcom/iLoong/launcher/a/f;->a:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2
.end method
