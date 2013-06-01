.class public Lcom/iLoong/launcher/Desktop3D/br;
.super Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

# interfaces
.implements Lcom/iLoong/launcher/Desktop3D/bb;


# instance fields
.field public a:Lcom/iLoong/launcher/Desktop3D/b;

.field public b:Lcom/iLoong/launcher/Desktop3D/aw;

.field public c:Lcom/iLoong/launcher/Desktop3D/ay;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/iLoong/launcher/Desktop3D/aw;

    const-string v1, "applist"

    invoke-direct {v0, v1}, Lcom/iLoong/launcher/Desktop3D/aw;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/br;->b:Lcom/iLoong/launcher/Desktop3D/aw;

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/br;->b:Lcom/iLoong/launcher/Desktop3D/aw;

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/Desktop3D/br;->addView(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    sget v0, Lcom/iLoong/launcher/Desktop3D/cb;->aH:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    new-instance v0, Lcom/iLoong/launcher/Desktop3D/ay;

    const-string v1, "apppopmenu2"

    invoke-direct {v0, v1}, Lcom/iLoong/launcher/Desktop3D/ay;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/br;->c:Lcom/iLoong/launcher/Desktop3D/ay;

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/br;->c:Lcom/iLoong/launcher/Desktop3D/ay;

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/br;->b:Lcom/iLoong/launcher/Desktop3D/aw;

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/Desktop3D/ay;->a(Lcom/iLoong/launcher/Desktop3D/aw;)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/br;->c:Lcom/iLoong/launcher/Desktop3D/ay;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/ay;->b()V

    sget-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->aw:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->ax:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/iLoong/launcher/Desktop3D/b;

    const-string v1, "appbar"

    invoke-direct {v0, v1}, Lcom/iLoong/launcher/Desktop3D/b;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/br;->a:Lcom/iLoong/launcher/Desktop3D/b;

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/br;->a:Lcom/iLoong/launcher/Desktop3D/b;

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/Desktop3D/br;->addView(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/br;->a:Lcom/iLoong/launcher/Desktop3D/b;

    invoke-virtual {v0, p0}, Lcom/iLoong/launcher/Desktop3D/b;->a(Lcom/iLoong/launcher/Desktop3D/bb;)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/br;->b:Lcom/iLoong/launcher/Desktop3D/aw;

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/br;->a:Lcom/iLoong/launcher/Desktop3D/b;

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/Desktop3D/aw;->a(Lcom/iLoong/launcher/Desktop3D/b;)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/br;->b:Lcom/iLoong/launcher/Desktop3D/aw;

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/br;->a:Lcom/iLoong/launcher/Desktop3D/b;

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/Desktop3D/aw;->a(Lcom/iLoong/launcher/Desktop3D/ad;)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/br;->a:Lcom/iLoong/launcher/Desktop3D/b;

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/br;->b:Lcom/iLoong/launcher/Desktop3D/aw;

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/Desktop3D/b;->a(Lcom/iLoong/launcher/Desktop3D/aw;)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/br;->a:Lcom/iLoong/launcher/Desktop3D/b;

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/br;->c:Lcom/iLoong/launcher/Desktop3D/ay;

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/Desktop3D/b;->a(Lcom/iLoong/launcher/Desktop3D/ay;)V

    :cond_0
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/br;->c:Lcom/iLoong/launcher/Desktop3D/ay;

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/Desktop3D/br;->addView(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->aw:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->ax:Z

    if-nez v0, :cond_1

    new-instance v0, Lcom/iLoong/launcher/Desktop3D/b;

    const-string v1, "appbar"

    invoke-direct {v0, v1}, Lcom/iLoong/launcher/Desktop3D/b;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/br;->a:Lcom/iLoong/launcher/Desktop3D/b;

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/br;->a:Lcom/iLoong/launcher/Desktop3D/b;

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/Desktop3D/br;->addView(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/br;->a:Lcom/iLoong/launcher/Desktop3D/b;

    invoke-virtual {v0, p0}, Lcom/iLoong/launcher/Desktop3D/b;->a(Lcom/iLoong/launcher/Desktop3D/bb;)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/br;->b:Lcom/iLoong/launcher/Desktop3D/aw;

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/br;->a:Lcom/iLoong/launcher/Desktop3D/b;

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/Desktop3D/aw;->a(Lcom/iLoong/launcher/Desktop3D/b;)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/br;->b:Lcom/iLoong/launcher/Desktop3D/aw;

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/br;->a:Lcom/iLoong/launcher/Desktop3D/b;

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/Desktop3D/aw;->a(Lcom/iLoong/launcher/Desktop3D/ad;)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/br;->a:Lcom/iLoong/launcher/Desktop3D/b;

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/br;->b:Lcom/iLoong/launcher/Desktop3D/aw;

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/Desktop3D/b;->a(Lcom/iLoong/launcher/Desktop3D/aw;)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/br;->a:Lcom/iLoong/launcher/Desktop3D/b;

    iget-object v0, v0, Lcom/iLoong/launcher/Desktop3D/b;->c:Lcom/iLoong/launcher/Desktop3D/ac;

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/Desktop3D/br;->addView(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    invoke-super {p0}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->show()V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/br;->b:Lcom/iLoong/launcher/Desktop3D/aw;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/aw;->G()V

    return-void
.end method

.method public a(I)V
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/br;->b:Lcom/iLoong/launcher/Desktop3D/aw;

    invoke-virtual {v0, p1}, Lcom/iLoong/launcher/Desktop3D/aw;->h(I)V

    return-void
.end method

.method public a(Lcom/iLoong/launcher/Widget3D/o;)V
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/br;->b:Lcom/iLoong/launcher/Desktop3D/aw;

    invoke-virtual {v0, p1}, Lcom/iLoong/launcher/Desktop3D/aw;->a(Lcom/iLoong/launcher/Widget3D/o;)V

    return-void
.end method

.method public a(Lcom/iLoong/launcher/app/ak;)V
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/br;->b:Lcom/iLoong/launcher/Desktop3D/aw;

    invoke-virtual {v0, p1}, Lcom/iLoong/launcher/Desktop3D/aw;->a(Lcom/iLoong/launcher/app/ak;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/br;->b:Lcom/iLoong/launcher/Desktop3D/aw;

    invoke-virtual {v0, p1}, Lcom/iLoong/launcher/Desktop3D/aw;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/br;->b:Lcom/iLoong/launcher/Desktop3D/aw;

    invoke-virtual {v0, p1}, Lcom/iLoong/launcher/Desktop3D/aw;->c(Ljava/util/ArrayList;)V

    return-void
.end method

.method public a(Ljava/util/ArrayList;Z)V
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/br;->b:Lcom/iLoong/launcher/Desktop3D/aw;

    invoke-virtual {v0, p1, p2}, Lcom/iLoong/launcher/Desktop3D/aw;->a(Ljava/util/ArrayList;Z)V

    return-void
.end method

.method public b(I)I
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/br;->b:Lcom/iLoong/launcher/Desktop3D/aw;

    invoke-virtual {v0, p1}, Lcom/iLoong/launcher/Desktop3D/aw;->i(I)I

    move-result v0

    return v0
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/br;->b:Lcom/iLoong/launcher/Desktop3D/aw;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/aw;->F()V

    return-void
.end method

.method public b(Ljava/util/ArrayList;)V
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/br;->b:Lcom/iLoong/launcher/Desktop3D/aw;

    invoke-virtual {v0, p1}, Lcom/iLoong/launcher/Desktop3D/aw;->b(Ljava/util/ArrayList;)V

    return-void
.end method

.method public c(I)I
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/br;->b:Lcom/iLoong/launcher/Desktop3D/aw;

    invoke-virtual {v0, p1}, Lcom/iLoong/launcher/Desktop3D/aw;->j(I)I

    move-result v0

    return v0
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/br;->b:Lcom/iLoong/launcher/Desktop3D/aw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/br;->b:Lcom/iLoong/launcher/Desktop3D/aw;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/aw;->N()V

    :cond_0
    return-void
.end method

.method public c(Ljava/util/ArrayList;)V
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/br;->b:Lcom/iLoong/launcher/Desktop3D/aw;

    invoke-virtual {v0, p1}, Lcom/iLoong/launcher/Desktop3D/aw;->a(Ljava/util/ArrayList;)V

    return-void
.end method

.method public d(I)V
    .locals 2

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/br;->b:Lcom/iLoong/launcher/Desktop3D/aw;

    iget v0, v0, Lcom/iLoong/launcher/Desktop3D/aw;->F:I

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/br;->b:Lcom/iLoong/launcher/Desktop3D/aw;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/iLoong/launcher/Desktop3D/aw;->c(IZ)V

    :cond_0
    return-void
.end method

.method public d(Ljava/util/ArrayList;)V
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/br;->b:Lcom/iLoong/launcher/Desktop3D/aw;

    invoke-virtual {v0, p1}, Lcom/iLoong/launcher/Desktop3D/aw;->d(Ljava/util/ArrayList;)V

    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    return-void
.end method

.method public hide()V
    .locals 1

    invoke-super {p0}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->hide()V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/br;->b:Lcom/iLoong/launcher/Desktop3D/aw;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/aw;->hide()V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/br;->a:Lcom/iLoong/launcher/Desktop3D/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/br;->a:Lcom/iLoong/launcher/Desktop3D/b;

    iget-object v0, v0, Lcom/iLoong/launcher/Desktop3D/b;->c:Lcom/iLoong/launcher/Desktop3D/ac;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/br;->a:Lcom/iLoong/launcher/Desktop3D/b;

    iget-object v0, v0, Lcom/iLoong/launcher/Desktop3D/b;->c:Lcom/iLoong/launcher/Desktop3D/ac;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/ac;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/br;->a:Lcom/iLoong/launcher/Desktop3D/b;

    iget-object v0, v0, Lcom/iLoong/launcher/Desktop3D/b;->c:Lcom/iLoong/launcher/Desktop3D/ac;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/ac;->hide()V

    :cond_0
    return-void
.end method

.method public keyUp(I)Z
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/br;->b:Lcom/iLoong/launcher/Desktop3D/aw;

    iget v1, v1, Lcom/iLoong/launcher/Desktop3D/aw;->f:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    sget v1, Lcom/iLoong/launcher/Desktop3D/cb;->aH:I

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/br;->c:Lcom/iLoong/launcher/Desktop3D/ay;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/br;->c:Lcom/iLoong/launcher/Desktop3D/ay;

    invoke-virtual {v1}, Lcom/iLoong/launcher/Desktop3D/ay;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/br;->c:Lcom/iLoong/launcher/Desktop3D/ay;

    iget-boolean v1, v1, Lcom/iLoong/launcher/Desktop3D/ay;->touchable:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/br;->c:Lcom/iLoong/launcher/Desktop3D/ay;

    invoke-virtual {v1}, Lcom/iLoong/launcher/Desktop3D/ay;->hide()V

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/br;->a:Lcom/iLoong/launcher/Desktop3D/b;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/br;->a:Lcom/iLoong/launcher/Desktop3D/b;

    iget-object v1, v1, Lcom/iLoong/launcher/Desktop3D/b;->c:Lcom/iLoong/launcher/Desktop3D/ac;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/br;->a:Lcom/iLoong/launcher/Desktop3D/b;

    iget-object v1, v1, Lcom/iLoong/launcher/Desktop3D/b;->c:Lcom/iLoong/launcher/Desktop3D/ac;

    invoke-virtual {v1}, Lcom/iLoong/launcher/Desktop3D/ac;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/br;->a:Lcom/iLoong/launcher/Desktop3D/b;

    iget-object v1, v1, Lcom/iLoong/launcher/Desktop3D/b;->c:Lcom/iLoong/launcher/Desktop3D/ac;

    iget-boolean v1, v1, Lcom/iLoong/launcher/Desktop3D/ac;->touchable:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/br;->a:Lcom/iLoong/launcher/Desktop3D/b;

    iget-object v1, v1, Lcom/iLoong/launcher/Desktop3D/b;->c:Lcom/iLoong/launcher/Desktop3D/ac;

    invoke-virtual {v1}, Lcom/iLoong/launcher/Desktop3D/ac;->hide()V

    goto :goto_0

    :cond_1
    const/16 v1, 0x52

    if-ne p1, v1, :cond_5

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/br;->b:Lcom/iLoong/launcher/Desktop3D/aw;

    iget v1, v1, Lcom/iLoong/launcher/Desktop3D/aw;->f:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/br;->b:Lcom/iLoong/launcher/Desktop3D/aw;

    invoke-virtual {v1}, Lcom/iLoong/launcher/Desktop3D/aw;->y()Z

    move-result v1

    if-eqz v1, :cond_5

    sget v1, Lcom/iLoong/launcher/Desktop3D/cb;->aH:I

    if-ne v1, v0, :cond_3

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/br;->c:Lcom/iLoong/launcher/Desktop3D/ay;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/br;->c:Lcom/iLoong/launcher/Desktop3D/ay;

    invoke-virtual {v1}, Lcom/iLoong/launcher/Desktop3D/ay;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/br;->c:Lcom/iLoong/launcher/Desktop3D/ay;

    invoke-virtual {v1}, Lcom/iLoong/launcher/Desktop3D/ay;->hide()V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/br;->c:Lcom/iLoong/launcher/Desktop3D/ay;

    invoke-virtual {v1}, Lcom/iLoong/launcher/Desktop3D/ay;->show()V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/br;->a:Lcom/iLoong/launcher/Desktop3D/b;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/br;->a:Lcom/iLoong/launcher/Desktop3D/b;

    iget-object v1, v1, Lcom/iLoong/launcher/Desktop3D/b;->c:Lcom/iLoong/launcher/Desktop3D/ac;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/br;->a:Lcom/iLoong/launcher/Desktop3D/b;

    iget-object v1, v1, Lcom/iLoong/launcher/Desktop3D/b;->c:Lcom/iLoong/launcher/Desktop3D/ac;

    invoke-virtual {v1}, Lcom/iLoong/launcher/Desktop3D/ac;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/br;->a:Lcom/iLoong/launcher/Desktop3D/b;

    iget-object v1, v1, Lcom/iLoong/launcher/Desktop3D/b;->c:Lcom/iLoong/launcher/Desktop3D/ac;

    invoke-virtual {v1}, Lcom/iLoong/launcher/Desktop3D/ac;->hide()V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/br;->a:Lcom/iLoong/launcher/Desktop3D/b;

    iget-object v1, v1, Lcom/iLoong/launcher/Desktop3D/b;->c:Lcom/iLoong/launcher/Desktop3D/ac;

    invoke-virtual {v1}, Lcom/iLoong/launcher/Desktop3D/ac;->show()V

    goto :goto_0

    :cond_5
    invoke-super {p0, p1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->keyUp(I)Z

    move-result v0

    goto :goto_0
.end method

.method public onCtrlEvent(Lcom/iLoong/launcher/UI3DEngine/View3D;I)Z
    .locals 1

    instance-of v0, p1, Lcom/iLoong/launcher/Desktop3D/ay;

    if-eqz v0, :cond_0

    packed-switch p2, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->onCtrlEvent(Lcom/iLoong/launcher/UI3DEngine/View3D;I)Z

    move-result v0

    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/br;->b:Lcom/iLoong/launcher/Desktop3D/aw;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/aw;->I()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public show()V
    .locals 1

    invoke-super {p0}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->show()V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/br;->b:Lcom/iLoong/launcher/Desktop3D/aw;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/aw;->show()V

    return-void
.end method
