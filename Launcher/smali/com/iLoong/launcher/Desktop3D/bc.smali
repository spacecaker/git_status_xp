.class public Lcom/iLoong/launcher/Desktop3D/bc;
.super Lcom/iLoong/launcher/UI3DEngine/View3D;


# instance fields
.field private a:Lcom/iLoong/launcher/Desktop3D/bq;

.field private b:Lcom/iLoong/launcher/UI3DEngine/View3D;

.field private c:Ljava/util/ArrayList;

.field private d:Z

.field private e:Lcom/iLoong/launcher/UI3DEngine/View3D;

.field private f:Lcom/iLoong/launcher/d/a;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/iLoong/launcher/Desktop3D/bq;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/iLoong/launcher/UI3DEngine/View3D;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/bc;->d:Z

    iput-object p2, p0, Lcom/iLoong/launcher/Desktop3D/bc;->a:Lcom/iLoong/launcher/Desktop3D/bq;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bc;->c:Ljava/util/ArrayList;

    return-void
.end method

.method private a(FF)V
    .locals 3

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/iLoong/launcher/Desktop3D/bc;->c()I

    move-result v0

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/bc;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v2, :cond_1

    if-le v1, v2, :cond_1

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bc;->f:Lcom/iLoong/launcher/d/a;

    iget-object v0, v0, Lcom/iLoong/launcher/d/a;->c:Lcom/iLoong/launcher/a/h;

    iget-object v0, v0, Lcom/iLoong/launcher/a/h;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/bc;->a()V

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    sget v1, Lcom/iLoong/launcher/Desktop3D/at;->bA:I

    if-gt v0, v1, :cond_0

    invoke-direct {p0}, Lcom/iLoong/launcher/Desktop3D/bc;->d()V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/iLoong/launcher/Desktop3D/at;->bC:Ljava/lang/String;

    invoke-static {v0}, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->sendOurToastMsg(Ljava/lang/String;)V

    invoke-static {}, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->sendShowWorkspaceMsg()V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/iLoong/launcher/Desktop3D/bc;->b(FF)V

    goto :goto_0
.end method

.method private b()V
    .locals 5

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bc;->a:Lcom/iLoong/launcher/Desktop3D/bq;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/bq;->z()Lcom/iLoong/launcher/Desktop3D/CellLayout3D;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->getChildCount()I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_0

    return-void

    :cond_0
    invoke-virtual {v2, v1}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->getChildAt(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v0

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bc;->e:Lcom/iLoong/launcher/UI3DEngine/View3D;

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bc;->e:Lcom/iLoong/launcher/UI3DEngine/View3D;

    instance-of v0, v0, Lcom/iLoong/launcher/UI3DEngine/n;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bc;->e:Lcom/iLoong/launcher/UI3DEngine/View3D;

    check-cast v0, Lcom/iLoong/launcher/UI3DEngine/n;

    invoke-virtual {v0}, Lcom/iLoong/launcher/UI3DEngine/n;->u()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bc;->c:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/iLoong/launcher/Desktop3D/bc;->e:Lcom/iLoong/launcher/UI3DEngine/View3D;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bc;->e:Lcom/iLoong/launcher/UI3DEngine/View3D;

    instance-of v0, v0, Lcom/iLoong/launcher/UI3DEngine/c;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bc;->e:Lcom/iLoong/launcher/UI3DEngine/View3D;

    check-cast v0, Lcom/iLoong/launcher/UI3DEngine/c;

    invoke-virtual {v0}, Lcom/iLoong/launcher/UI3DEngine/c;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bc;->c:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/iLoong/launcher/Desktop3D/bc;->e:Lcom/iLoong/launcher/UI3DEngine/View3D;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private b(FF)V
    .locals 7

    const/high16 v4, 0x3f80

    const/4 v6, 0x0

    iget-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/bc;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bc;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Lcom/iLoong/launcher/Desktop3D/cd;

    const-string v1, "circlePopWnd3D"

    invoke-direct {v0, v1, p1, p2}, Lcom/iLoong/launcher/Desktop3D/cd;-><init>(Ljava/lang/String;FF)V

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/bc;->a:Lcom/iLoong/launcher/Desktop3D/bq;

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/bc;->a:Lcom/iLoong/launcher/Desktop3D/bq;

    invoke-virtual {v2}, Lcom/iLoong/launcher/Desktop3D/bq;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lcom/iLoong/launcher/Desktop3D/bq;->getChildAt(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v1

    iput-object v1, p0, Lcom/iLoong/launcher/Desktop3D/bc;->b:Lcom/iLoong/launcher/UI3DEngine/View3D;

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/bc;->a:Lcom/iLoong/launcher/Desktop3D/bq;

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/bc;->b:Lcom/iLoong/launcher/UI3DEngine/View3D;

    invoke-virtual {v1, v2, v0}, Lcom/iLoong/launcher/Desktop3D/bq;->addViewAfter(Lcom/iLoong/launcher/UI3DEngine/View3D;Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/cd;->a()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/iLoong/launcher/Desktop3D/bc;->d:Z

    invoke-virtual {v0, v6, v6}, Lcom/iLoong/launcher/Desktop3D/cd;->setScale(FF)V

    const/4 v1, 0x3

    sget-object v2, Laurelienribon/tweenengine/equations/Quad;->IN:Laurelienribon/tweenengine/equations/Quad;

    const v3, 0x3e4ccccd

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/iLoong/launcher/Desktop3D/cd;->startTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->sendShowWorkspaceMsg()V

    goto :goto_0
.end method

.method private c()I
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/bc;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v2, v0

    move v1, v0

    :goto_0
    if-lt v2, v3, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bc;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/UI3DEngine/View3D;

    instance-of v4, v0, Lcom/iLoong/launcher/Desktop3D/aj;

    if-nez v4, :cond_1

    check-cast v0, Lcom/iLoong/launcher/d/a;

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bc;->f:Lcom/iLoong/launcher/d/a;

    add-int/lit8 v0, v1, 0x1

    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private d()V
    .locals 2

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bc;->f:Lcom/iLoong/launcher/d/a;

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/bc;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/d/a;->a(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bc;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private e()V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bc;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_2

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bc;->a:Lcom/iLoong/launcher/Desktop3D/bq;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/bq;->z()Lcom/iLoong/launcher/Desktop3D/CellLayout3D;

    move-result-object v2

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bc;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/UI3DEngine/View3D;

    invoke-virtual {v2, v0}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->calcCoordinate(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    :goto_0
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bc;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bc;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->a(Ljava/util/ArrayList;)V

    :goto_1
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bc;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bc;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/UI3DEngine/View3D;

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bc;->e:Lcom/iLoong/launcher/UI3DEngine/View3D;

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bc;->e:Lcom/iLoong/launcher/UI3DEngine/View3D;

    invoke-virtual {v0}, Lcom/iLoong/launcher/UI3DEngine/View3D;->getParent()Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    move-result-object v0

    instance-of v0, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bc;->e:Lcom/iLoong/launcher/UI3DEngine/View3D;

    invoke-virtual {v2, v0}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->removeView(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/iLoong/launcher/Desktop3D/at;->ak:Ljava/lang/String;

    invoke-static {v0}, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->sendOurToastMsg(Ljava/lang/String;)V

    invoke-static {}, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->sendShowWorkspaceMsg()V

    goto :goto_1
.end method

.method private f()V
    .locals 6

    const/high16 v3, 0x3f80

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bc;->a:Lcom/iLoong/launcher/Desktop3D/bq;

    const-string v1, "circlePopWnd3D"

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/Desktop3D/bq;->findView(Ljava/lang/String;)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/bc;->a:Lcom/iLoong/launcher/Desktop3D/bq;

    invoke-virtual {v1, v0}, Lcom/iLoong/launcher/Desktop3D/bq;->removeView(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    :cond_0
    iput-boolean v2, p0, Lcom/iLoong/launcher/Desktop3D/bc;->d:Z

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bc;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ltz v4, :cond_5

    new-instance v5, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v5, v3, v3, v3, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    move v3, v2

    move v1, v2

    :goto_0
    if-lt v3, v4, :cond_2

    :goto_1
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bc;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    if-nez v1, :cond_1

    sget-object v0, Lcom/iLoong/launcher/Desktop3D/at;->am:Ljava/lang/String;

    invoke-static {v0}, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->sendOurToastMsg(Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bc;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/UI3DEngine/View3D;

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bc;->e:Lcom/iLoong/launcher/UI3DEngine/View3D;

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bc;->e:Lcom/iLoong/launcher/UI3DEngine/View3D;

    instance-of v0, v0, Lcom/iLoong/launcher/Desktop3D/aj;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bc;->e:Lcom/iLoong/launcher/UI3DEngine/View3D;

    check-cast v0, Lcom/iLoong/launcher/UI3DEngine/n;

    invoke-virtual {v0}, Lcom/iLoong/launcher/UI3DEngine/n;->u()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bc;->e:Lcom/iLoong/launcher/UI3DEngine/View3D;

    check-cast v0, Lcom/iLoong/launcher/UI3DEngine/n;

    invoke-virtual {v0, v2}, Lcom/iLoong/launcher/UI3DEngine/n;->b(Z)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bc;->e:Lcom/iLoong/launcher/UI3DEngine/View3D;

    check-cast v0, Lcom/iLoong/launcher/Desktop3D/aj;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/aj;->g()V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bc;->e:Lcom/iLoong/launcher/UI3DEngine/View3D;

    invoke-virtual {v0, v5}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    :cond_3
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bc;->e:Lcom/iLoong/launcher/UI3DEngine/View3D;

    instance-of v0, v0, Lcom/iLoong/launcher/UI3DEngine/c;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bc;->e:Lcom/iLoong/launcher/UI3DEngine/View3D;

    check-cast v0, Lcom/iLoong/launcher/UI3DEngine/c;

    invoke-virtual {v0}, Lcom/iLoong/launcher/UI3DEngine/c;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bc;->e:Lcom/iLoong/launcher/UI3DEngine/View3D;

    check-cast v0, Lcom/iLoong/launcher/UI3DEngine/c;

    invoke-virtual {v0, v2}, Lcom/iLoong/launcher/UI3DEngine/c;->a(Z)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bc;->e:Lcom/iLoong/launcher/UI3DEngine/View3D;

    check-cast v0, Lcom/iLoong/launcher/UI3DEngine/c;

    invoke-virtual {v0, v5}, Lcom/iLoong/launcher/UI3DEngine/c;->a(Lcom/badlogic/gdx/graphics/Color;)V

    :cond_4
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_5
    move v1, v2

    goto :goto_1
.end method

.method private g()V
    .locals 2

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bc;->a:Lcom/iLoong/launcher/Desktop3D/bq;

    const-string v1, "circlePopWnd3D"

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/Desktop3D/bq;->findView(Ljava/lang/String;)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/bc;->a:Lcom/iLoong/launcher/Desktop3D/bq;

    invoke-virtual {v1, v0}, Lcom/iLoong/launcher/Desktop3D/bq;->removeView(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/bc;->d:Z

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/bc;->a()V

    invoke-static {}, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->sendCreatePopDialogMsg()V

    return-void
.end method

.method private h()V
    .locals 1

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/bc;->a()V

    sget-object v0, Lcom/iLoong/launcher/Desktop3D/at;->aj:Ljava/lang/String;

    invoke-static {v0}, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->sendOurToastMsg(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bc;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private i()V
    .locals 3

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bc;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-gez v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bc;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/UI3DEngine/View3D;

    instance-of v2, v0, Lcom/iLoong/launcher/Desktop3D/aj;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/bc;->a:Lcom/iLoong/launcher/Desktop3D/bq;

    invoke-virtual {v2}, Lcom/iLoong/launcher/Desktop3D/bq;->z()Lcom/iLoong/launcher/Desktop3D/CellLayout3D;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->removeView(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    :goto_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/bc;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private j()V
    .locals 9

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/bc;->a()V

    invoke-direct {p0}, Lcom/iLoong/launcher/Desktop3D/bc;->i()V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bc;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bc;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sget v1, Lcom/iLoong/launcher/Desktop3D/at;->bA:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    sget v1, Lcom/iLoong/launcher/Desktop3D/at;->bA:I

    div-int v4, v0, v1

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bc;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v3, v2

    :goto_0
    if-lt v3, v4, :cond_0

    :goto_1
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bc;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bc;->c:Ljava/util/ArrayList;

    sget v1, Lcom/iLoong/launcher/Desktop3D/at;->bA:I

    mul-int/2addr v1, v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/UI3DEngine/View3D;

    new-instance v1, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v1}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iget v6, v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->x:F

    iput v6, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v6, v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->y:F

    iput v6, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v6, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    cmpg-float v6, v6, v7

    if-gez v6, :cond_2

    iget v6, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_2

    iget v6, v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->x:F

    sget v7, Lcom/iLoong/launcher/Desktop3D/at;->be:I

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    add-float/2addr v6, v7

    iput v6, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v0, v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->y:F

    sget v6, Lcom/iLoong/launcher/Desktop3D/at;->cp:I

    int-to-float v6, v6

    sub-float/2addr v0, v6

    iput v0, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    :goto_2
    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v0

    iget v6, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    float-to-int v6, v6

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    float-to-int v1, v1

    invoke-virtual {v0, v6, v1}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->a(II)Lcom/iLoong/launcher/a/h;

    move-result-object v0

    new-instance v6, Lcom/iLoong/launcher/d/a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v7, "FolderIcon3DView"

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v1, v0}, Lcom/iLoong/launcher/d/a;-><init>(Ljava/lang/String;Lcom/iLoong/launcher/a/h;)V

    invoke-virtual {p0, v6}, Lcom/iLoong/launcher/Desktop3D/bc;->a(Lcom/iLoong/launcher/d/a;)V

    sget v0, Lcom/iLoong/launcher/Desktop3D/at;->bA:I

    mul-int v7, v3, v0

    move v1, v2

    :goto_3
    sget v0, Lcom/iLoong/launcher/Desktop3D/at;->bA:I

    if-lt v1, v0, :cond_5

    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_2
    iget v6, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    cmpg-float v6, v6, v7

    if-gez v6, :cond_3

    iget v6, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    cmpg-float v6, v6, v7

    if-gez v6, :cond_3

    iget v6, v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->x:F

    sget v7, Lcom/iLoong/launcher/Desktop3D/at;->be:I

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    add-float/2addr v6, v7

    iput v6, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v0, v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->y:F

    sget v6, Lcom/iLoong/launcher/Desktop3D/at;->cp:I

    int-to-float v6, v6

    add-float/2addr v0, v6

    iput v0, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    goto :goto_2

    :cond_3
    iget v6, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_4

    iget v6, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    cmpg-float v6, v6, v7

    if-gez v6, :cond_4

    iget v6, v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->x:F

    sget v7, Lcom/iLoong/launcher/Desktop3D/at;->be:I

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    sub-float/2addr v6, v7

    iput v6, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v0, v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->y:F

    sget v6, Lcom/iLoong/launcher/Desktop3D/at;->cp:I

    int-to-float v6, v6

    add-float/2addr v0, v6

    iput v0, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    goto/16 :goto_2

    :cond_4
    iget v6, v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->x:F

    sget v7, Lcom/iLoong/launcher/Desktop3D/at;->be:I

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    sub-float/2addr v6, v7

    iput v6, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v0, v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->y:F

    sget v6, Lcom/iLoong/launcher/Desktop3D/at;->cp:I

    int-to-float v6, v6

    sub-float/2addr v0, v6

    iput v0, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    goto/16 :goto_2

    :cond_5
    add-int v0, v1, v7

    if-ge v0, v5, :cond_1

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bc;->c:Ljava/util/ArrayList;

    add-int v8, v1, v7

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/UI3DEngine/View3D;

    check-cast v0, Lcom/iLoong/launcher/Desktop3D/aj;

    invoke-virtual {v6, v0}, Lcom/iLoong/launcher/d/a;->a(Lcom/iLoong/launcher/Desktop3D/aj;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_3

    :cond_6
    sget-object v0, Lcom/iLoong/launcher/Desktop3D/at;->am:Ljava/lang/String;

    invoke-static {v0}, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->sendOurToastMsg(Ljava/lang/String;)V

    goto/16 :goto_1
.end method


# virtual methods
.method public a()V
    .locals 6

    const/4 v2, 0x0

    const/high16 v5, 0x3f80

    iput-boolean v2, p0, Lcom/iLoong/launcher/Desktop3D/bc;->d:Z

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bc;->a:Lcom/iLoong/launcher/Desktop3D/bq;

    const-string v1, "circlePopWnd3D"

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/Desktop3D/bq;->findView(Ljava/lang/String;)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/iLoong/launcher/UI3DEngine/View3D;->releaseFocus()V

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/bc;->a:Lcom/iLoong/launcher/Desktop3D/bq;

    invoke-virtual {v1, v0}, Lcom/iLoong/launcher/Desktop3D/bq;->removeView(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    :cond_0
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bc;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ltz v3, :cond_1

    new-instance v4, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v4, v5, v5, v5, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    move v1, v2

    :goto_0
    if-lt v1, v3, :cond_2

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bc;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/UI3DEngine/View3D;

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bc;->e:Lcom/iLoong/launcher/UI3DEngine/View3D;

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bc;->e:Lcom/iLoong/launcher/UI3DEngine/View3D;

    instance-of v0, v0, Lcom/iLoong/launcher/UI3DEngine/n;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bc;->e:Lcom/iLoong/launcher/UI3DEngine/View3D;

    check-cast v0, Lcom/iLoong/launcher/UI3DEngine/n;

    invoke-virtual {v0}, Lcom/iLoong/launcher/UI3DEngine/n;->u()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bc;->e:Lcom/iLoong/launcher/UI3DEngine/View3D;

    check-cast v0, Lcom/iLoong/launcher/UI3DEngine/n;

    invoke-virtual {v0, v2}, Lcom/iLoong/launcher/UI3DEngine/n;->b(Z)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bc;->e:Lcom/iLoong/launcher/UI3DEngine/View3D;

    invoke-virtual {v0, v4}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :cond_3
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bc;->e:Lcom/iLoong/launcher/UI3DEngine/View3D;

    instance-of v0, v0, Lcom/iLoong/launcher/UI3DEngine/c;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bc;->e:Lcom/iLoong/launcher/UI3DEngine/View3D;

    check-cast v0, Lcom/iLoong/launcher/UI3DEngine/c;

    invoke-virtual {v0}, Lcom/iLoong/launcher/UI3DEngine/c;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bc;->e:Lcom/iLoong/launcher/UI3DEngine/View3D;

    check-cast v0, Lcom/iLoong/launcher/UI3DEngine/c;

    invoke-virtual {v0, v2}, Lcom/iLoong/launcher/UI3DEngine/c;->a(Z)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bc;->e:Lcom/iLoong/launcher/UI3DEngine/View3D;

    check-cast v0, Lcom/iLoong/launcher/UI3DEngine/c;

    invoke-virtual {v0, v4}, Lcom/iLoong/launcher/UI3DEngine/c;->a(Lcom/badlogic/gdx/graphics/Color;)V

    :cond_4
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bc;->e:Lcom/iLoong/launcher/UI3DEngine/View3D;

    instance-of v0, v0, Lcom/iLoong/launcher/Desktop3D/aj;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bc;->e:Lcom/iLoong/launcher/UI3DEngine/View3D;

    check-cast v0, Lcom/iLoong/launcher/Desktop3D/aj;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/aj;->j()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bc;->e:Lcom/iLoong/launcher/UI3DEngine/View3D;

    check-cast v0, Lcom/iLoong/launcher/Desktop3D/aj;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/aj;->h()V

    :cond_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public a(FFI)V
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bc;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-direct {p0}, Lcom/iLoong/launcher/Desktop3D/bc;->b()V

    if-nez p3, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/iLoong/launcher/Desktop3D/bc;->b(FF)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/iLoong/launcher/Desktop3D/bc;->a(FF)V

    goto :goto_0
.end method

.method public a(Lcom/iLoong/launcher/d/a;)V
    .locals 3

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bc;->a:Lcom/iLoong/launcher/Desktop3D/bq;

    iget v1, p1, Lcom/iLoong/launcher/d/a;->x:F

    float-to-int v1, v1

    iget v2, p1, Lcom/iLoong/launcher/d/a;->y:F

    float-to-int v2, v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/iLoong/launcher/Desktop3D/bq;->a(Lcom/iLoong/launcher/UI3DEngine/View3D;II)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v0

    iget-object v1, p1, Lcom/iLoong/launcher/d/a;->c:Lcom/iLoong/launcher/a/h;

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->a(Lcom/iLoong/launcher/a/h;)V

    :cond_0
    return-void
.end method

.method public a(I)Z
    .locals 4

    const/4 v0, 0x1

    const-string v1, "ICONGROUP3D"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " CellLayout3D dealEvent_circlePopWnd3D mCircleSomething.size="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/iLoong/launcher/Desktop3D/bc;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/bc;->a()V

    invoke-direct {p0}, Lcom/iLoong/launcher/Desktop3D/bc;->e()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/iLoong/launcher/Desktop3D/bc;->g()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/iLoong/launcher/Desktop3D/bc;->f()V

    invoke-static {}, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->sendShowWorkspaceMsg()V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0}, Lcom/iLoong/launcher/Desktop3D/bc;->h()V

    invoke-static {}, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->sendShowWorkspaceMsg()V

    goto :goto_0

    :pswitch_4
    invoke-direct {p0}, Lcom/iLoong/launcher/Desktop3D/bc;->j()V

    goto :goto_0

    :pswitch_5
    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/bc;->a()V

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/bc;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method public b(I)V
    .locals 2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bc;->a:Lcom/iLoong/launcher/Desktop3D/bq;

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/bc;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/Desktop3D/bq;->setTag(Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bc;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-static {}, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->sendShowWorkspaceMsg()V

    :cond_1
    return-void
.end method
