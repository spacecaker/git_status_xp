.class public Lcom/iLoong/launcher/Desktop3D/af;
.super Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;


# static fields
.field private static A:F


# instance fields
.field a:Z

.field public b:Lcom/iLoong/launcher/Desktop3D/h;

.field protected c:Z

.field protected d:I

.field protected e:Ljava/util/ArrayList;

.field protected f:F

.field protected h:F

.field protected i:Z

.field protected j:I

.field protected k:F

.field protected l:Z

.field m:Laurelienribon/tweenengine/Tween;

.field n:Ljava/util/List;

.field o:Ljava/util/ArrayList;

.field p:Z

.field q:I

.field r:I

.field s:I

.field t:I

.field private u:Z

.field private v:Z

.field private w:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/high16 v0, 0x3f80

    sput v0, Lcom/iLoong/launcher/Desktop3D/af;->A:F

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;-><init>(Ljava/lang/String;)V

    iput-boolean v2, p0, Lcom/iLoong/launcher/Desktop3D/af;->a:Z

    iput-boolean v2, p0, Lcom/iLoong/launcher/Desktop3D/af;->c:Z

    iput-boolean v1, p0, Lcom/iLoong/launcher/Desktop3D/af;->l:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/af;->n:Ljava/util/List;

    iput-boolean v1, p0, Lcom/iLoong/launcher/Desktop3D/af;->p:Z

    iput v1, p0, Lcom/iLoong/launcher/Desktop3D/af;->q:I

    iput v1, p0, Lcom/iLoong/launcher/Desktop3D/af;->r:I

    iput v2, p0, Lcom/iLoong/launcher/Desktop3D/af;->s:I

    iput v1, p0, Lcom/iLoong/launcher/Desktop3D/af;->t:I

    iput v1, p0, Lcom/iLoong/launcher/Desktop3D/af;->d:I

    iput v3, p0, Lcom/iLoong/launcher/Desktop3D/af;->f:F

    iput v3, p0, Lcom/iLoong/launcher/Desktop3D/af;->h:F

    iput v1, p0, Lcom/iLoong/launcher/Desktop3D/af;->j:I

    iput-boolean v2, p0, Lcom/iLoong/launcher/Desktop3D/af;->u:Z

    iput-boolean v1, p0, Lcom/iLoong/launcher/Desktop3D/af;->w:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/af;->e:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/iLoong/launcher/Desktop3D/af;->i:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/af;->o:Ljava/util/ArrayList;

    invoke-static {}, Lcom/iLoong/launcher/Desktop3D/a/j;->a()V

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/af;->b()V

    return-void
.end method

.method private c()V
    .locals 10

    const/4 v3, 0x0

    const/4 v9, 0x0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/af;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget v4, p0, Lcom/iLoong/launcher/Desktop3D/af;->r:I

    if-ltz v4, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/af;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_0

    iget-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/af;->i:Z

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/af;->d()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/af;->i:Z

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/af;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_6

    :cond_3
    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/af;->f:F

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/af;->f:F

    float-to-int v1, v1

    int-to-float v1, v1

    sub-float v2, v0, v1

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/af;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    iget v5, p0, Lcom/iLoong/launcher/Desktop3D/af;->q:I

    if-ltz v5, :cond_7

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/af;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v5, v1, :cond_7

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/af;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    :goto_0
    cmpl-float v6, v2, v9

    if-lez v6, :cond_8

    const/high16 v6, 0x3f80

    sub-float/2addr v2, v6

    invoke-static {v1, v0, v2, v9, v3}, Lcom/iLoong/launcher/Desktop3D/a/j;->a(Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;FFI)V

    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/af;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_0

    if-eq v3, v4, :cond_5

    if-eq v3, v5, :cond_5

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/af;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/UI3DEngine/View3D;

    invoke-virtual {v0}, Lcom/iLoong/launcher/UI3DEngine/View3D;->hide()V

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/UI3DEngine/View3D;

    instance-of v1, v0, Lcom/iLoong/launcher/Desktop3D/c;

    if-eqz v1, :cond_2

    move v2, v3

    :goto_2
    move-object v1, v0

    check-cast v1, Lcom/iLoong/launcher/Desktop3D/c;

    invoke-virtual {v1}, Lcom/iLoong/launcher/Desktop3D/c;->getChildCount()I

    move-result v1

    if-ge v2, v1, :cond_2

    move-object v1, v0

    check-cast v1, Lcom/iLoong/launcher/Desktop3D/c;

    invoke-virtual {v1, v2}, Lcom/iLoong/launcher/Desktop3D/c;->getChildAt(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v1

    new-instance v6, Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v1}, Lcom/iLoong/launcher/UI3DEngine/View3D;->getX()F

    move-result v7

    invoke-virtual {v1}, Lcom/iLoong/launcher/UI3DEngine/View3D;->getY()F

    move-result v8

    invoke-direct {v6, v7, v8}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    invoke-virtual {v1, v6}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setTag(Ljava/lang/Object;)V

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2

    :cond_7
    move-object v1, v0

    goto :goto_0

    :cond_8
    cmpg-float v6, v2, v9

    if-gez v6, :cond_4

    invoke-static {v0, v1, v2, v9, v3}, Lcom/iLoong/launcher/Desktop3D/a/j;->a(Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;FFI)V

    goto :goto_1
.end method

.method static synthetic w()F
    .locals 1

    sget v0, Lcom/iLoong/launcher/Desktop3D/af;->A:F

    return v0
.end method


# virtual methods
.method a()V
    .locals 4

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/af;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    sget-object v0, Lcom/iLoong/launcher/Desktop3D/at;->ac:[Ljava/lang/String;

    array-length v0, v0

    if-lt v1, v0, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/af;->o:Ljava/util/ArrayList;

    sget-object v0, Lcom/iLoong/launcher/Desktop3D/a/j;->b:Ljava/util/Map;

    sget-object v3, Lcom/iLoong/launcher/Desktop3D/at;->ac:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method a(F)V
    .locals 5

    iput p1, p0, Lcom/iLoong/launcher/Desktop3D/af;->f:F

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/af;->n:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/af;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/af;->o()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/af;->n:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/Desktop3D/ad;

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/af;->f:F

    iget v3, p0, Lcom/iLoong/launcher/Desktop3D/af;->d:I

    iget-object v4, p0, Lcom/iLoong/launcher/Desktop3D/af;->e:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-interface {v0, v2, v3, v4}, Lcom/iLoong/launcher/Desktop3D/ad;->a(FII)V

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/af;->f:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    invoke-interface {v0}, Lcom/iLoong/launcher/Desktop3D/ad;->a()I

    move-result v2

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/af;->u()I

    move-result v3

    if-eq v2, v3, :cond_2

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/af;->u()I

    move-result v2

    invoke-interface {v0, v2}, Lcom/iLoong/launcher/Desktop3D/ad;->setCurrentPage(I)V

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method a(FF)V
    .locals 4

    iput p1, p0, Lcom/iLoong/launcher/Desktop3D/af;->f:F

    iput p2, p0, Lcom/iLoong/launcher/Desktop3D/af;->h:F

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/af;->n:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/af;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/af;->o()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/af;->n:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/Desktop3D/ad;

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/af;->d:I

    iget-object v3, p0, Lcom/iLoong/launcher/Desktop3D/af;->e:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-interface {v0, p1, v2, v3}, Lcom/iLoong/launcher/Desktop3D/ad;->a(FII)V

    const/4 v2, 0x0

    cmpl-float v2, p1, v2

    if-nez v2, :cond_2

    invoke-interface {v0}, Lcom/iLoong/launcher/Desktop3D/ad;->a()I

    move-result v2

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/af;->u()I

    move-result v3

    if-eq v2, v3, :cond_2

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/af;->u()I

    move-result v2

    invoke-interface {v0, v2}, Lcom/iLoong/launcher/Desktop3D/ad;->setCurrentPage(I)V

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method protected a(I)V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/af;->u:Z

    iput-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/af;->v:Z

    if-ne p1, v1, :cond_1

    const/4 v0, 0x2

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/af;->j:I

    iput-boolean v1, p0, Lcom/iLoong/launcher/Desktop3D/af;->u:Z

    :goto_0
    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/af;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/af;->d()V

    :cond_0
    return-void

    :cond_1
    iput p1, p0, Lcom/iLoong/launcher/Desktop3D/af;->j:I

    goto :goto_0
.end method

.method public a(ILcom/iLoong/launcher/UI3DEngine/View3D;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p2, v0, v0}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setPosition(FF)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/af;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/iLoong/launcher/UI3DEngine/View3D;->hide()V

    :cond_0
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/af;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-virtual {p0, p1, p2}, Lcom/iLoong/launcher/Desktop3D/af;->addViewAt(ILcom/iLoong/launcher/UI3DEngine/View3D;)V

    return-void
.end method

.method public a(Lcom/iLoong/launcher/Desktop3D/ad;)V
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/af;->n:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method a(Lcom/iLoong/launcher/UI3DEngine/View3D;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setPosition(FF)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/af;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/iLoong/launcher/UI3DEngine/View3D;->hide()V

    :cond_0
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/af;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1}, Lcom/iLoong/launcher/Desktop3D/af;->addView(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    return-void
.end method

.method b()V
    .locals 4

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/af;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    sget-object v0, Lcom/iLoong/launcher/Desktop3D/at;->ab:[Ljava/lang/String;

    array-length v0, v0

    if-lt v1, v0, :cond_0

    invoke-static {}, Lcom/iLoong/launcher/SetupMenu/Actions/x;->a()Lcom/iLoong/launcher/SetupMenu/Actions/x;

    move-result-object v0

    const-string v1, "desktopeffects"

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/SetupMenu/Actions/x;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/Desktop3D/af;->a(I)V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/af;->o:Ljava/util/ArrayList;

    sget-object v0, Lcom/iLoong/launcher/Desktop3D/a/j;->b:Ljava/util/Map;

    sget-object v3, Lcom/iLoong/launcher/Desktop3D/at;->ab:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public b(I)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ltz p1, :cond_0

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/af;->e:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-le p1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iput p1, p0, Lcom/iLoong/launcher/Desktop3D/af;->q:I

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/af;->d:I

    iput v2, p0, Lcom/iLoong/launcher/Desktop3D/af;->r:I

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/af;->d:I

    if-eq v2, p1, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/af;->b:Lcom/iLoong/launcher/Desktop3D/h;

    const/high16 v2, 0x3f80

    invoke-virtual {v0, v2}, Lcom/iLoong/launcher/Desktop3D/h;->a(F)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/af;->b:Lcom/iLoong/launcher/Desktop3D/h;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/h;->b()Laurelienribon/tweenengine/Tween;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/af;->b:Lcom/iLoong/launcher/Desktop3D/h;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/h;->b()Laurelienribon/tweenengine/Tween;

    move-result-object v0

    invoke-virtual {v0}, Laurelienribon/tweenengine/Tween;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/af;->b:Lcom/iLoong/launcher/Desktop3D/h;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/h;->b()Laurelienribon/tweenengine/Tween;

    move-result-object v0

    invoke-virtual {v0}, Laurelienribon/tweenengine/Tween;->free()V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/af;->b:Lcom/iLoong/launcher/Desktop3D/h;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/iLoong/launcher/Desktop3D/h;->a(Laurelienribon/tweenengine/Tween;)V

    :cond_2
    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/af;->d:I

    if-le v0, p1, :cond_3

    const/4 v0, -0x1

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/af;->s:I

    const v0, 0x38d1b717

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/af;->f:F

    :goto_1
    iput-boolean v1, p0, Lcom/iLoong/launcher/Desktop3D/af;->p:Z

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/af;->n()V

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/af;->p()V

    move v0, v1

    goto :goto_0

    :cond_3
    iput v1, p0, Lcom/iLoong/launcher/Desktop3D/af;->s:I

    const v0, -0x472e48e9

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/af;->f:F

    goto :goto_1
.end method

.method public c(I)V
    .locals 2

    const/4 v1, 0x0

    if-gez p1, :cond_1

    const/4 p1, 0x0

    :cond_0
    :goto_0
    iput p1, p0, Lcom/iLoong/launcher/Desktop3D/af;->d:I

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/af;->d()V

    invoke-virtual {p0, v1, v1}, Lcom/iLoong/launcher/Desktop3D/af;->a(FF)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/af;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/af;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 p1, v0, -0x1

    goto :goto_0
.end method

.method d()V
    .locals 11

    const/high16 v10, 0x4000

    const/4 v3, 0x0

    const/4 v9, 0x0

    const/high16 v8, 0x3f80

    move v2, v3

    :goto_0
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/af;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v2, v0, :cond_0

    iput-boolean v3, p0, Lcom/iLoong/launcher/Desktop3D/af;->i:Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/af;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/UI3DEngine/View3D;

    invoke-virtual {v0, v9, v9}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setPosition(FF)V

    invoke-virtual {v0, v9}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setRotationZ(F)V

    invoke-virtual {v0, v8, v8}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setScale(FF)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v1, v8, v8, v8, v8}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget v1, v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->width:F

    div-float/2addr v1, v10

    iget v4, v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->height:F

    div-float/2addr v4, v10

    invoke-virtual {v0, v1, v4}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setOrigin(FF)V

    invoke-virtual {v0, v9}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setZ(F)V

    invoke-virtual {v0, v9}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setOriginZ(F)V

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/af;->d:I

    if-eq v2, v1, :cond_2

    invoke-virtual {v0}, Lcom/iLoong/launcher/UI3DEngine/View3D;->hide()V

    :goto_1
    instance-of v1, v0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    invoke-virtual {v1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->getChildCount()I

    move-result v5

    move v4, v3

    :goto_2
    if-lt v4, v5, :cond_3

    instance-of v1, v0, Lcom/iLoong/launcher/Desktop3D/c;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/iLoong/launcher/Desktop3D/c;

    invoke-virtual {v0, v3, v3}, Lcom/iLoong/launcher/Desktop3D/c;->a(IZ)V

    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/iLoong/launcher/UI3DEngine/View3D;->show()V

    goto :goto_1

    :cond_3
    move-object v1, v0

    check-cast v1, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    invoke-virtual {v1, v4}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->getChildAt(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setRotationZ(F)V

    invoke-virtual {v1, v8, v8}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setScale(FF)V

    new-instance v6, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v6, v8, v8, v8, v8}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v1, v6}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget v6, v1, Lcom/iLoong/launcher/UI3DEngine/View3D;->width:F

    div-float/2addr v6, v10

    iget v7, v1, Lcom/iLoong/launcher/UI3DEngine/View3D;->height:F

    div-float/2addr v7, v10

    invoke-virtual {v1, v6, v7}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setOrigin(FF)V

    invoke-virtual {v1, v9}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setOriginZ(F)V

    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_2
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    iget-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/af;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/af;->b:Lcom/iLoong/launcher/Desktop3D/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/af;->b:Lcom/iLoong/launcher/Desktop3D/h;

    invoke-virtual {v0, p1, p2}, Lcom/iLoong/launcher/Desktop3D/h;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    :cond_0
    return-void
.end method

.method public fling(FF)Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/af;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gt v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    iput p1, p0, Lcom/iLoong/launcher/Desktop3D/af;->k:F

    invoke-super {p0, p1, p2}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->fling(FF)Z

    move-result v0

    goto :goto_0
.end method

.method public g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/af;->u:Z

    return v0
.end method

.method public getX()F
    .locals 1

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/af;->f:F

    return v0
.end method

.method public getY()F
    .locals 1

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/af;->h:F

    return v0
.end method

.method protected h()I
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/af;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public hide()V
    .locals 1

    const/4 v0, 0x0

    invoke-super {p0}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->hide()V

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/af;->n()V

    invoke-virtual {p0, v0, v0}, Lcom/iLoong/launcher/Desktop3D/af;->a(FF)V

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/af;->k:F

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/af;->d()V

    return-void
.end method

.method protected i()I
    .locals 1

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/af;->d:I

    return v0
.end method

.method protected j()I
    .locals 2

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/af;->d:I

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/af;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/af;->d:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected k()I
    .locals 1

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/af;->d:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/af;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/af;->d:I

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method protected l()V
    .locals 3

    const/4 v2, 0x3

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/af;->d()V

    iget-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/af;->u:Z

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/iLoong/launcher/Desktop3D/af;->i:Z

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/af;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v2, v0}, Lcom/badlogic/gdx/math/MathUtils;->random(II)I

    move-result v0

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/af;->j:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/af;->v:Z

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/iLoong/launcher/Desktop3D/af;->i:Z

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/af;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/af;->j:I

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/af;->j:I

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/af;->o:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    iput v2, p0, Lcom/iLoong/launcher/Desktop3D/af;->j:I

    goto :goto_0
.end method

.method protected m()V
    .locals 15

    const/4 v6, 0x0

    const/high16 v7, 0x3f00

    const/high16 v8, -0x4100

    const/high16 v14, 0x3f80

    const/4 v9, 0x0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/af;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/af;->d:I

    if-gez v0, :cond_2

    iput v6, p0, Lcom/iLoong/launcher/Desktop3D/af;->d:I

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/af;->d:I

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/af;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_3

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/af;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/af;->d:I

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/af;->e:Ljava/util/ArrayList;

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/af;->d:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/af;->e:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/af;->k()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/af;->e:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/af;->j()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    iget-boolean v3, p0, Lcom/iLoong/launcher/Desktop3D/af;->i:Z

    if-nez v3, :cond_5

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/af;->l()V

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/iLoong/launcher/Desktop3D/af;->i:Z

    iget-object v3, p0, Lcom/iLoong/launcher/Desktop3D/af;->e:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_8

    :cond_5
    iget-boolean v3, p0, Lcom/iLoong/launcher/Desktop3D/af;->a:Z

    if-eqz v3, :cond_d

    iget v3, p0, Lcom/iLoong/launcher/Desktop3D/af;->h:F

    cmpl-float v3, v3, v7

    if-lez v3, :cond_9

    move v3, v7

    :goto_1
    neg-float v3, v3

    iget v4, p0, Lcom/iLoong/launcher/Desktop3D/af;->f:F

    cmpl-float v4, v4, v9

    if-lez v4, :cond_b

    invoke-virtual {v2}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->hide()V

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/af;->f:F

    sub-float v4, v2, v14

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/af;->o:Ljava/util/ArrayList;

    iget v5, p0, Lcom/iLoong/launcher/Desktop3D/af;->j:I

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v0, v4, v3, v2}, Lcom/iLoong/launcher/Desktop3D/a/j;->a(Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;FFI)V

    :cond_6
    :goto_2
    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/af;->f:F

    const/high16 v2, -0x4080

    cmpg-float v1, v1, v2

    if-gez v1, :cond_7

    invoke-virtual {v0}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->hide()V

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/af;->j()I

    move-result v1

    iput v1, p0, Lcom/iLoong/launcher/Desktop3D/af;->d:I

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/af;->f:F

    add-float/2addr v1, v14

    invoke-virtual {p0, v1}, Lcom/iLoong/launcher/Desktop3D/af;->a(F)V

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/af;->l()V

    :cond_7
    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/af;->f:F

    cmpl-float v1, v1, v14

    if-lez v1, :cond_0

    invoke-virtual {v0}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->hide()V

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/af;->k()I

    move-result v0

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/af;->d:I

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/af;->l()V

    goto/16 :goto_0

    :cond_8
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iLoong/launcher/UI3DEngine/View3D;

    instance-of v4, v3, Lcom/iLoong/launcher/Desktop3D/c;

    if-eqz v4, :cond_4

    move v5, v6

    :goto_3
    move-object v4, v3

    check-cast v4, Lcom/iLoong/launcher/Desktop3D/c;

    invoke-virtual {v4}, Lcom/iLoong/launcher/Desktop3D/c;->getChildCount()I

    move-result v4

    if-ge v5, v4, :cond_4

    move-object v4, v3

    check-cast v4, Lcom/iLoong/launcher/Desktop3D/c;

    invoke-virtual {v4, v5}, Lcom/iLoong/launcher/Desktop3D/c;->getChildAt(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v4

    new-instance v11, Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v4}, Lcom/iLoong/launcher/UI3DEngine/View3D;->getX()F

    move-result v12

    invoke-virtual {v4}, Lcom/iLoong/launcher/UI3DEngine/View3D;->getY()F

    move-result v13

    invoke-direct {v11, v12, v13}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    invoke-virtual {v4, v11}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setTag(Ljava/lang/Object;)V

    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_3

    :cond_9
    iget v3, p0, Lcom/iLoong/launcher/Desktop3D/af;->h:F

    cmpg-float v3, v3, v8

    if-gez v3, :cond_a

    move v3, v8

    goto/16 :goto_1

    :cond_a
    iget v3, p0, Lcom/iLoong/launcher/Desktop3D/af;->h:F

    goto/16 :goto_1

    :cond_b
    iget v4, p0, Lcom/iLoong/launcher/Desktop3D/af;->f:F

    cmpg-float v4, v4, v9

    if-gez v4, :cond_c

    invoke-virtual {v1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->hide()V

    iget v4, p0, Lcom/iLoong/launcher/Desktop3D/af;->f:F

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/af;->o:Ljava/util/ArrayList;

    iget v5, p0, Lcom/iLoong/launcher/Desktop3D/af;->j:I

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v2, v4, v3, v1}, Lcom/iLoong/launcher/Desktop3D/a/j;->a(Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;FFI)V

    goto/16 :goto_2

    :cond_c
    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/af;->h:F

    cmpl-float v1, v1, v9

    if-eqz v1, :cond_6

    iget v4, p0, Lcom/iLoong/launcher/Desktop3D/af;->f:F

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/af;->o:Ljava/util/ArrayList;

    iget v5, p0, Lcom/iLoong/launcher/Desktop3D/af;->j:I

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v2, v4, v3, v1}, Lcom/iLoong/launcher/Desktop3D/a/j;->a(Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;FFI)V

    goto/16 :goto_2

    :cond_d
    move v3, v9

    goto/16 :goto_1
.end method

.method public multiTouch2(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)Z
    .locals 2

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/af;->f:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3851b717

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    iget-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/af;->i:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/af;->d()V

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->multiTouch2(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method n()V
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/af;->m:Laurelienribon/tweenengine/Tween;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/af;->m:Laurelienribon/tweenengine/Tween;

    invoke-virtual {v0}, Laurelienribon/tweenengine/Tween;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/af;->m:Laurelienribon/tweenengine/Tween;

    invoke-virtual {v0}, Laurelienribon/tweenengine/Tween;->free()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/af;->m:Laurelienribon/tweenengine/Tween;

    :cond_0
    return-void
.end method

.method public o()V
    .locals 0

    return-void
.end method

.method public onClick(FF)Z
    .locals 2

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/af;->f:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3c23d70a

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    iget-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/af;->i:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/af;->d()V

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->onClick(FF)Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onEvent(ILaurelienribon/tweenengine/BaseTween;)V
    .locals 4

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/af;->m:Laurelienribon/tweenengine/Tween;

    if-ne p2, v1, :cond_1

    iget-boolean v1, p0, Lcom/iLoong/launcher/Desktop3D/af;->p:Z

    if-eqz v1, :cond_2

    const-string v1, "launcher"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onEvent 0:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/iLoong/launcher/Desktop3D/af;->q:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/af;->q:I

    invoke-virtual {p0, v1}, Lcom/iLoong/launcher/Desktop3D/af;->c(I)V

    iput-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/af;->p:Z

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/af;->d()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/iLoong/launcher/Desktop3D/af;->m:Laurelienribon/tweenengine/Tween;

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/af;->v()V

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/af;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_4

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->onEvent(ILaurelienribon/tweenengine/BaseTween;)V

    return-void

    :cond_2
    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/af;->f:F

    const/high16 v2, -0x4080

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_3

    const-string v1, "launcher"

    const-string v2, "onEvent 1"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/af;->j()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/iLoong/launcher/Desktop3D/af;->c(I)V

    :cond_3
    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/af;->f:F

    const/high16 v2, 0x3f80

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    const-string v1, "launcher"

    const-string v2, "onEvent 2"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/af;->k()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/iLoong/launcher/Desktop3D/af;->c(I)V

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/af;->children:Ljava/util/List;

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/af;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/UI3DEngine/View3D;

    invoke-interface {v2, v1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method public onLongClick(FF)Z
    .locals 3

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/af;->f:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3c23d70a

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    const-string v0, "123456"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onLongClick xScale="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/af;->f:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "moving="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/iLoong/launcher/Desktop3D/af;->i:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/af;->i:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/af;->d()V

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->onLongClick(FF)Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onTouchDown(FFI)Z
    .locals 5

    const/high16 v4, 0x3f80

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/af;->w:Z

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/af;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gt v1, v0, :cond_1

    invoke-super {p0, p1, p2, p3}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->onTouchDown(FFI)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v1, p0, Lcom/iLoong/launcher/Desktop3D/af;->p:Z

    if-nez v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/af;->k:F

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/af;->f:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x3fe0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_2

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/af;->k()I

    move-result v0

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/af;->d:I

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/af;->f:F

    sub-float/2addr v0, v4

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/Desktop3D/af;->a(F)V

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/af;->l()V

    :cond_2
    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/af;->f:F

    float-to-double v0, v0

    const-wide/high16 v2, -0x4020

    cmpg-double v0, v0, v2

    if-gez v0, :cond_3

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/af;->j()I

    move-result v0

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/af;->d:I

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/af;->f:F

    add-float/2addr v0, v4

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/Desktop3D/af;->a(F)V

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/af;->l()V

    :cond_3
    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/af;->n()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/af;->p:Z

    if-nez p3, :cond_4

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/af;->requestFocus()V

    :cond_4
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/af;->b:Lcom/iLoong/launcher/Desktop3D/h;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/h;->stopTween()V

    invoke-super {p0, p1, p2, p3}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->onTouchDown(FFI)Z

    move-result v0

    goto :goto_0
.end method

.method public onTouchUp(FFI)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/iLoong/launcher/Desktop3D/af;->w:Z

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/af;->e:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v2, p0, Lcom/iLoong/launcher/Desktop3D/af;->p:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/af;->f:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    :cond_2
    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/af;->e:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v0, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/af;->b:Lcom/iLoong/launcher/Desktop3D/h;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/h;->stopTween()V

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/af;->q()V

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/af;->releaseFocus()V

    iget-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/af;->i:Z

    if-eqz v0, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    invoke-super {p0, p1, p2, p3}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->onTouchUp(FFI)Z

    move-result v0

    goto :goto_0
.end method

.method p()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/high16 v0, 0x3f00

    const/high16 v1, 0x447a

    iput v1, p0, Lcom/iLoong/launcher/Desktop3D/af;->k:F

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/af;->f:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    invoke-static {p0, v3, v0}, Laurelienribon/tweenengine/Tween;->to(Ljava/lang/Object;IF)Laurelienribon/tweenengine/Tween;

    move-result-object v0

    sget-object v1, Laurelienribon/tweenengine/equations/Cubic;->OUT:Laurelienribon/tweenengine/equations/Cubic;

    invoke-virtual {v0, v1}, Laurelienribon/tweenengine/Tween;->ease(Laurelienribon/tweenengine/TweenEquation;)Laurelienribon/tweenengine/Tween;

    move-result-object v0

    int-to-float v1, v3

    invoke-virtual {v0, v1, v2}, Laurelienribon/tweenengine/Tween;->target(FF)Laurelienribon/tweenengine/Tween;

    move-result-object v0

    invoke-virtual {v0, p0}, Laurelienribon/tweenengine/Tween;->setCallback(Laurelienribon/tweenengine/TweenCallback;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/Tween;

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/af;->m:Laurelienribon/tweenengine/Tween;

    :goto_0
    iput v2, p0, Lcom/iLoong/launcher/Desktop3D/af;->k:F

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/af;->m:Laurelienribon/tweenengine/Tween;

    sget-object v1, Lcom/iLoong/launcher/tween/View3DTweenAccessor;->manager:Laurelienribon/tweenengine/TweenManager;

    invoke-virtual {v0, v1}, Laurelienribon/tweenengine/Tween;->start(Laurelienribon/tweenengine/TweenManager;)Ljava/lang/Object;

    return-void

    :cond_0
    invoke-static {p0, v3, v0}, Laurelienribon/tweenengine/Tween;->to(Ljava/lang/Object;IF)Laurelienribon/tweenengine/Tween;

    move-result-object v0

    sget-object v1, Laurelienribon/tweenengine/equations/Cubic;->OUT:Laurelienribon/tweenengine/equations/Cubic;

    invoke-virtual {v0, v1}, Laurelienribon/tweenengine/Tween;->ease(Laurelienribon/tweenengine/TweenEquation;)Laurelienribon/tweenengine/Tween;

    move-result-object v0

    const/4 v1, -0x1

    int-to-float v1, v1

    invoke-virtual {v0, v1, v2}, Laurelienribon/tweenengine/Tween;->target(FF)Laurelienribon/tweenengine/Tween;

    move-result-object v0

    invoke-virtual {v0, p0}, Laurelienribon/tweenengine/Tween;->setCallback(Laurelienribon/tweenengine/TweenCallback;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/Tween;

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/af;->m:Laurelienribon/tweenengine/Tween;

    goto :goto_0
.end method

.method q()V
    .locals 8

    const/high16 v7, 0x447a

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/high16 v0, 0x3f00

    const-string v1, "NPageBase"

    const-string v2, "startAutoEffect"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/iLoong/launcher/Desktop3D/af;->p:Z

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/af;->f:F

    cmpl-float v1, v1, v5

    if-nez v1, :cond_0

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/af;->k:F

    cmpl-float v1, v1, v5

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/af;->f:F

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/af;->k:F

    div-float/2addr v2, v7

    add-float/2addr v1, v2

    float-to-double v1, v1

    const-wide/high16 v3, 0x3fe0

    cmpl-double v1, v1, v3

    if-lez v1, :cond_1

    invoke-static {p0, v6, v0}, Laurelienribon/tweenengine/Tween;->to(Ljava/lang/Object;IF)Laurelienribon/tweenengine/Tween;

    move-result-object v0

    sget-object v1, Laurelienribon/tweenengine/equations/Quint;->OUT:Laurelienribon/tweenengine/equations/Quint;

    invoke-virtual {v0, v1}, Laurelienribon/tweenengine/Tween;->ease(Laurelienribon/tweenengine/TweenEquation;)Laurelienribon/tweenengine/Tween;

    move-result-object v0

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1, v5}, Laurelienribon/tweenengine/Tween;->target(FF)Laurelienribon/tweenengine/Tween;

    move-result-object v0

    invoke-virtual {v0, p0}, Laurelienribon/tweenengine/Tween;->setCallback(Laurelienribon/tweenengine/TweenCallback;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/Tween;

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/af;->m:Laurelienribon/tweenengine/Tween;

    :goto_1
    iput v5, p0, Lcom/iLoong/launcher/Desktop3D/af;->k:F

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/af;->m:Laurelienribon/tweenengine/Tween;

    sget-object v1, Lcom/iLoong/launcher/tween/View3DTweenAccessor;->manager:Laurelienribon/tweenengine/TweenManager;

    invoke-virtual {v0, v1}, Laurelienribon/tweenengine/Tween;->start(Laurelienribon/tweenengine/TweenManager;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/af;->f:F

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/af;->k:F

    div-float/2addr v2, v7

    add-float/2addr v1, v2

    float-to-double v1, v1

    const-wide/high16 v3, -0x4020

    cmpg-double v1, v1, v3

    if-gez v1, :cond_2

    invoke-static {p0, v6, v0}, Laurelienribon/tweenengine/Tween;->to(Ljava/lang/Object;IF)Laurelienribon/tweenengine/Tween;

    move-result-object v0

    sget-object v1, Laurelienribon/tweenengine/equations/Quint;->OUT:Laurelienribon/tweenengine/equations/Quint;

    invoke-virtual {v0, v1}, Laurelienribon/tweenengine/Tween;->ease(Laurelienribon/tweenengine/TweenEquation;)Laurelienribon/tweenengine/Tween;

    move-result-object v0

    const/high16 v1, -0x4080

    invoke-virtual {v0, v1, v5}, Laurelienribon/tweenengine/Tween;->target(FF)Laurelienribon/tweenengine/Tween;

    move-result-object v0

    invoke-virtual {v0, p0}, Laurelienribon/tweenengine/Tween;->setCallback(Laurelienribon/tweenengine/TweenCallback;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/Tween;

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/af;->m:Laurelienribon/tweenengine/Tween;

    goto :goto_1

    :cond_2
    invoke-static {p0, v6, v0}, Laurelienribon/tweenengine/Tween;->to(Ljava/lang/Object;IF)Laurelienribon/tweenengine/Tween;

    move-result-object v0

    sget-object v1, Laurelienribon/tweenengine/equations/Quint;->OUT:Laurelienribon/tweenengine/equations/Quint;

    invoke-virtual {v0, v1}, Laurelienribon/tweenengine/Tween;->ease(Laurelienribon/tweenengine/TweenEquation;)Laurelienribon/tweenengine/Tween;

    move-result-object v0

    invoke-virtual {v0, v5, v5}, Laurelienribon/tweenengine/Tween;->target(FF)Laurelienribon/tweenengine/Tween;

    move-result-object v0

    invoke-virtual {v0, p0}, Laurelienribon/tweenengine/Tween;->setCallback(Laurelienribon/tweenengine/TweenCallback;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/Tween;

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/af;->m:Laurelienribon/tweenengine/Tween;

    goto :goto_1
.end method

.method public r()I
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/af;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public s()F
    .locals 7

    const/4 v0, 0x0

    const/high16 v6, 0x3f80

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/af;->r()I

    move-result v2

    iget-boolean v1, p0, Lcom/iLoong/launcher/Desktop3D/af;->p:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->s()Lcom/iLoong/launcher/Desktop3D/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iLoong/launcher/Desktop3D/g;->b()Lcom/iLoong/launcher/Desktop3D/bq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iLoong/launcher/Desktop3D/bq;->A()I

    move-result v1

    iget v3, p0, Lcom/iLoong/launcher/Desktop3D/af;->d:I

    if-eq v3, v1, :cond_5

    int-to-float v3, v2

    div-float v3, v6, v3

    iget v4, p0, Lcom/iLoong/launcher/Desktop3D/af;->d:I

    int-to-float v4, v4

    iget v5, p0, Lcom/iLoong/launcher/Desktop3D/af;->f:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    sub-float v5, v6, v5

    mul-float/2addr v4, v5

    int-to-float v1, v1

    iget v5, p0, Lcom/iLoong/launcher/Desktop3D/af;->f:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    mul-float/2addr v1, v5

    add-float/2addr v1, v4

    mul-float/2addr v1, v3

    :goto_0
    cmpg-float v3, v1, v0

    if-gez v3, :cond_3

    :goto_1
    return v0

    :cond_0
    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/af;->d:I

    if-nez v1, :cond_1

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/af;->f:F

    cmpl-float v1, v1, v0

    if-lez v1, :cond_1

    int-to-float v1, v2

    sub-float/2addr v1, v6

    int-to-float v3, v2

    div-float/2addr v1, v3

    iget v3, p0, Lcom/iLoong/launcher/Desktop3D/af;->f:F

    mul-float/2addr v1, v3

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/af;->d:I

    add-int/lit8 v3, v2, -0x1

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/af;->f:F

    cmpg-float v1, v1, v0

    if-gez v1, :cond_2

    int-to-float v1, v2

    sub-float/2addr v1, v6

    int-to-float v3, v2

    div-float/2addr v1, v3

    int-to-float v3, v2

    sub-float/2addr v3, v6

    int-to-float v4, v2

    div-float/2addr v3, v4

    iget v4, p0, Lcom/iLoong/launcher/Desktop3D/af;->f:F

    mul-float/2addr v3, v4

    add-float/2addr v1, v3

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/af;->d:I

    int-to-float v1, v1

    iget v3, p0, Lcom/iLoong/launcher/Desktop3D/af;->f:F

    sub-float/2addr v1, v3

    int-to-float v3, v2

    div-float/2addr v1, v3

    goto :goto_0

    :cond_3
    int-to-float v0, v2

    div-float v0, v6, v0

    sub-float v0, v6, v0

    cmpl-float v0, v1, v0

    if-lez v0, :cond_4

    int-to-float v0, v2

    div-float v0, v6, v0

    sub-float v0, v6, v0

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_1

    :cond_5
    move v1, v0

    goto :goto_0
.end method

.method public scroll(FFFF)Z
    .locals 5

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/iLoong/launcher/Desktop3D/af;->w:Z

    if-nez v1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v1, p0, Lcom/iLoong/launcher/Desktop3D/af;->p:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/iLoong/launcher/Desktop3D/af;->i:Z

    if-nez v1, :cond_2

    invoke-super {p0, p1, p2, p3, p4}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->scroll(FFFF)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/af;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v0, :cond_0

    const v1, 0x3fa66666

    mul-float/2addr v1, p4

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/af;->f:F

    neg-float v3, p3

    iget v4, p0, Lcom/iLoong/launcher/Desktop3D/af;->width:F

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/iLoong/launcher/Desktop3D/af;->h:F

    neg-float v1, v1

    iget v4, p0, Lcom/iLoong/launcher/Desktop3D/af;->height:F

    div-float/2addr v1, v4

    add-float/2addr v1, v3

    invoke-virtual {p0, v2, v1}, Lcom/iLoong/launcher/Desktop3D/af;->a(FF)V

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/af;->m()V

    goto :goto_0
.end method

.method public setPosition(FF)V
    .locals 1

    iget-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/af;->p:Z

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/iLoong/launcher/Desktop3D/af;->f:F

    iput p2, p0, Lcom/iLoong/launcher/Desktop3D/af;->h:F

    invoke-direct {p0}, Lcom/iLoong/launcher/Desktop3D/af;->c()V

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/af;->o()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/iLoong/launcher/Desktop3D/af;->a(FF)V

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/af;->m()V

    goto :goto_0
.end method

.method public show()V
    .locals 0

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/af;->d()V

    invoke-super {p0}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->show()V

    return-void
.end method

.method public t()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/af;->e:Ljava/util/ArrayList;

    return-object v0
.end method

.method public u()I
    .locals 1

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/af;->d:I

    return v0
.end method

.method protected v()V
    .locals 2

    const-string v0, "NPageBase"

    const-string v1, "finishAutoEffect"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
