.class public Lcom/iLoong/launcher/HotSeat3D/b;
.super Lcom/iLoong/launcher/UI3DEngine/p;

# interfaces
.implements Lcom/iLoong/launcher/cling/l;


# instance fields
.field a:Lcom/iLoong/launcher/UI3DEngine/View3D;

.field b:Lcom/badlogic/gdx/math/Vector2;

.field public c:Z

.field public d:I

.field public e:I

.field public f:I

.field private final h:I

.field private final i:I

.field private final j:F

.field private k:Lcom/iLoong/launcher/HotSeat3D/i;

.field private l:Lcom/iLoong/launcher/HotSeat3D/i;

.field private m:I

.field private n:Z

.field private o:Z

.field private p:F

.field private q:Z

.field private r:Lcom/iLoong/launcher/Desktop3D/bq;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/iLoong/launcher/UI3DEngine/p;-><init>(Ljava/lang/String;)V

    iput v1, p0, Lcom/iLoong/launcher/HotSeat3D/b;->h:I

    iput v2, p0, Lcom/iLoong/launcher/HotSeat3D/b;->i:I

    const/high16 v0, 0x41f0

    iput v0, p0, Lcom/iLoong/launcher/HotSeat3D/b;->j:F

    const/4 v0, -0x1

    iput v0, p0, Lcom/iLoong/launcher/HotSeat3D/b;->m:I

    iput-boolean v1, p0, Lcom/iLoong/launcher/HotSeat3D/b;->n:Z

    iput-boolean v1, p0, Lcom/iLoong/launcher/HotSeat3D/b;->o:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/iLoong/launcher/HotSeat3D/b;->p:F

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/b;->b:Lcom/badlogic/gdx/math/Vector2;

    iput-boolean v2, p0, Lcom/iLoong/launcher/HotSeat3D/b;->c:Z

    iput-boolean v1, p0, Lcom/iLoong/launcher/HotSeat3D/b;->q:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 8

    const/4 v7, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-direct {p0, p1}, Lcom/iLoong/launcher/UI3DEngine/p;-><init>(Ljava/lang/String;)V

    iput v6, p0, Lcom/iLoong/launcher/HotSeat3D/b;->h:I

    iput v5, p0, Lcom/iLoong/launcher/HotSeat3D/b;->i:I

    const/high16 v0, 0x41f0

    iput v0, p0, Lcom/iLoong/launcher/HotSeat3D/b;->j:F

    const/4 v0, -0x1

    iput v0, p0, Lcom/iLoong/launcher/HotSeat3D/b;->m:I

    iput-boolean v6, p0, Lcom/iLoong/launcher/HotSeat3D/b;->n:Z

    iput-boolean v6, p0, Lcom/iLoong/launcher/HotSeat3D/b;->o:Z

    iput v7, p0, Lcom/iLoong/launcher/HotSeat3D/b;->p:F

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/b;->b:Lcom/badlogic/gdx/math/Vector2;

    iput-boolean v5, p0, Lcom/iLoong/launcher/HotSeat3D/b;->c:Z

    iput-boolean v6, p0, Lcom/iLoong/launcher/HotSeat3D/b;->q:Z

    sget v0, Lcom/iLoong/launcher/Desktop3D/at;->d:I

    sub-int v0, p3, v0

    if-gez v0, :cond_0

    :cond_0
    new-instance v0, Lcom/iLoong/launcher/HotSeat3D/i;

    const-string v1, "shortcutview"

    int-to-float v2, p2

    int-to-float v3, p3

    sget v4, Lcom/iLoong/launcher/Desktop3D/at;->bW:I

    invoke-direct/range {v0 .. v5}, Lcom/iLoong/launcher/HotSeat3D/i;-><init>(Ljava/lang/String;FFII)V

    iput-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/b;->k:Lcom/iLoong/launcher/HotSeat3D/i;

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/b;->k:Lcom/iLoong/launcher/HotSeat3D/i;

    sget v1, Lcom/iLoong/launcher/Desktop3D/at;->bP:I

    sget v2, Lcom/iLoong/launcher/Desktop3D/at;->bQ:I

    sget v3, Lcom/iLoong/launcher/Desktop3D/at;->bT:I

    invoke-virtual {v0, v1, v2, v6, v3}, Lcom/iLoong/launcher/HotSeat3D/i;->a(IIII)V

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/b;->k:Lcom/iLoong/launcher/HotSeat3D/i;

    invoke-virtual {v0, v7, v7}, Lcom/iLoong/launcher/HotSeat3D/i;->setPosition(FF)V

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/b;->k:Lcom/iLoong/launcher/HotSeat3D/i;

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/HotSeat3D/b;->addView(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    invoke-virtual {p0, v5}, Lcom/iLoong/launcher/HotSeat3D/b;->a(I)V

    int-to-float v0, p2

    int-to-float v1, p3

    invoke-virtual {p0, v0, v1}, Lcom/iLoong/launcher/HotSeat3D/b;->setSize(FF)V

    div-int/lit8 v0, p2, 0x2

    int-to-float v0, v0

    div-int/lit8 v1, p3, 0x2

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/iLoong/launcher/HotSeat3D/b;->setOrigin(FF)V

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/b;->k:Lcom/iLoong/launcher/HotSeat3D/i;

    iput-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/b;->l:Lcom/iLoong/launcher/HotSeat3D/i;

    sget v0, Lcom/iLoong/launcher/Desktop3D/at;->c:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/iLoong/launcher/HotSeat3D/b;->d:I

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/iLoong/launcher/HotSeat3D/b;->e:I

    sget v0, Lcom/iLoong/launcher/Desktop3D/at;->bT:I

    int-to-float v0, v0

    const/high16 v1, 0x3fc0

    mul-float/2addr v0, v1

    sget v1, Lcom/iLoong/launcher/Desktop3D/at;->bT:I

    sub-int v1, p3, v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/iLoong/launcher/HotSeat3D/b;->f:I

    return-void
.end method

.method private a(FFZ)V
    .locals 2

    invoke-virtual {p0}, Lcom/iLoong/launcher/HotSeat3D/b;->a()V

    invoke-direct {p0}, Lcom/iLoong/launcher/HotSeat3D/b;->g()Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v0

    iput-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/b;->a:Lcom/iLoong/launcher/UI3DEngine/View3D;

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/b;->a:Lcom/iLoong/launcher/UI3DEngine/View3D;

    iput p1, v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->x:F

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/b;->a:Lcom/iLoong/launcher/UI3DEngine/View3D;

    iput p2, v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->y:F

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/b;->a:Lcom/iLoong/launcher/UI3DEngine/View3D;

    invoke-virtual {v0}, Lcom/iLoong/launcher/UI3DEngine/View3D;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    const/high16 v1, 0x3f00

    iput v1, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    iget-object v1, p0, Lcom/iLoong/launcher/HotSeat3D/b;->a:Lcom/iLoong/launcher/UI3DEngine/View3D;

    invoke-virtual {v1, v0}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :cond_0
    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/b;->a:Lcom/iLoong/launcher/UI3DEngine/View3D;

    invoke-virtual {v0}, Lcom/iLoong/launcher/UI3DEngine/View3D;->show()V

    invoke-virtual {p0}, Lcom/iLoong/launcher/HotSeat3D/b;->getChildCount()I

    move-result v0

    iget-object v1, p0, Lcom/iLoong/launcher/HotSeat3D/b;->a:Lcom/iLoong/launcher/UI3DEngine/View3D;

    invoke-virtual {p0, v0, v1}, Lcom/iLoong/launcher/HotSeat3D/b;->addViewAt(ILcom/iLoong/launcher/UI3DEngine/View3D;)V

    return-void
.end method

.method private a(Ljava/util/ArrayList;I)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/b;->l:Lcom/iLoong/launcher/HotSeat3D/i;

    iget-object v1, p0, Lcom/iLoong/launcher/HotSeat3D/b;->b:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, p2, v1, v4}, Lcom/iLoong/launcher/HotSeat3D/i;->a(ILcom/badlogic/gdx/math/Vector2;Z)V

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v0

    iget-object v1, p0, Lcom/iLoong/launcher/HotSeat3D/b;->b:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    float-to-int v1, v1

    iget-object v2, p0, Lcom/iLoong/launcher/HotSeat3D/b;->b:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2, p2}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->a(III)Lcom/iLoong/launcher/a/h;

    move-result-object v0

    new-instance v1, Lcom/iLoong/launcher/d/a;

    const-string v2, "FolderIcon3DHot"

    invoke-direct {v1, v2, v0}, Lcom/iLoong/launcher/d/a;-><init>(Ljava/lang/String;Lcom/iLoong/launcher/a/h;)V

    sget-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->aT:Z

    if-eqz v0, :cond_0

    invoke-virtual {v1, v4}, Lcom/iLoong/launcher/d/a;->b(Z)V

    :cond_0
    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/b;->l:Lcom/iLoong/launcher/HotSeat3D/i;

    invoke-virtual {v0}, Lcom/iLoong/launcher/HotSeat3D/i;->getChildCount()I

    move-result v0

    if-ge p2, v0, :cond_1

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/b;->l:Lcom/iLoong/launcher/HotSeat3D/i;

    invoke-virtual {v0, v1, p2}, Lcom/iLoong/launcher/HotSeat3D/i;->a(Lcom/iLoong/launcher/UI3DEngine/View3D;I)V

    :goto_0
    invoke-virtual {v1, p1, v3, v3}, Lcom/iLoong/launcher/d/a;->a(Ljava/util/ArrayList;FF)Z

    invoke-virtual {v1}, Lcom/iLoong/launcher/d/a;->p()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/b;->l:Lcom/iLoong/launcher/HotSeat3D/i;

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/HotSeat3D/i;->a(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    goto :goto_0
.end method

.method private b(Lcom/iLoong/launcher/UI3DEngine/View3D;I)V
    .locals 3

    instance-of v0, p1, Lcom/iLoong/launcher/Desktop3D/u;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/iLoong/launcher/Desktop3D/u;

    invoke-interface {v0}, Lcom/iLoong/launcher/Desktop3D/u;->b()Lcom/iLoong/launcher/a/j;

    move-result-object v0

    iput p2, v0, Lcom/iLoong/launcher/a/j;->n:I

    iget-object v1, p0, Lcom/iLoong/launcher/HotSeat3D/b;->l:Lcom/iLoong/launcher/HotSeat3D/i;

    iget-object v2, p0, Lcom/iLoong/launcher/HotSeat3D/b;->b:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v1, p1, v2}, Lcom/iLoong/launcher/HotSeat3D/i;->a(Lcom/iLoong/launcher/UI3DEngine/View3D;Lcom/badlogic/gdx/math/Vector2;)V

    iget-object v1, p0, Lcom/iLoong/launcher/HotSeat3D/b;->b:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    float-to-int v1, v1

    iput v1, v0, Lcom/iLoong/launcher/a/j;->p:I

    iget-object v1, p0, Lcom/iLoong/launcher/HotSeat3D/b;->b:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    float-to-int v1, v1

    iput v1, v0, Lcom/iLoong/launcher/a/j;->q:I

    const/4 v1, 0x1

    iput v1, v0, Lcom/iLoong/launcher/a/j;->r:I

    const-wide/16 v1, -0x65

    invoke-static {v0, v1, v2}, Lcom/iLoong/launcher/Desktop3D/e;->a(Lcom/iLoong/launcher/a/j;J)V

    instance-of v0, p1, Lcom/iLoong/launcher/Desktop3D/aj;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/iLoong/launcher/Desktop3D/aj;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/aj;->b()Lcom/iLoong/launcher/a/j;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/Desktop3D/aj;->a(Lcom/iLoong/launcher/a/j;)V

    :cond_0
    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/b;->l:Lcom/iLoong/launcher/HotSeat3D/i;

    invoke-virtual {v0}, Lcom/iLoong/launcher/HotSeat3D/i;->getChildCount()I

    move-result v0

    if-ge p2, v0, :cond_1

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/b;->l:Lcom/iLoong/launcher/HotSeat3D/i;

    invoke-virtual {v0, p1, p2}, Lcom/iLoong/launcher/HotSeat3D/i;->a(Lcom/iLoong/launcher/UI3DEngine/View3D;I)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/b;->l:Lcom/iLoong/launcher/HotSeat3D/i;

    invoke-virtual {v0, p1}, Lcom/iLoong/launcher/HotSeat3D/i;->a(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    goto :goto_0
.end method

.method private g()Lcom/iLoong/launcher/UI3DEngine/View3D;
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/iLoong/launcher/a/h;

    invoke-direct {v0}, Lcom/iLoong/launcher/a/h;-><init>()V

    sget-object v1, Lcom/iLoong/launcher/Desktop3D/at;->bB:Ljava/lang/String;

    iput-object v1, v0, Lcom/iLoong/launcher/a/h;->f:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/iLoong/launcher/HotSeat3D/b;->r:Lcom/iLoong/launcher/Desktop3D/bq;

    invoke-virtual {v1}, Lcom/iLoong/launcher/Desktop3D/bq;->y()I

    move-result v1

    iput v1, v0, Lcom/iLoong/launcher/a/h;->n:I

    iput v2, v0, Lcom/iLoong/launcher/a/h;->p:I

    iput v2, v0, Lcom/iLoong/launcher/a/h;->q:I

    new-instance v1, Lcom/iLoong/launcher/d/a;

    const-string v2, "FolderIcon3DView"

    invoke-direct {v1, v2, v0}, Lcom/iLoong/launcher/d/a;-><init>(Ljava/lang/String;Lcom/iLoong/launcher/a/h;)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/iLoong/launcher/d/a;->b(Z)V

    return-object v1
.end method

.method private h()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput v0, p0, Lcom/iLoong/launcher/HotSeat3D/b;->p:F

    iput-boolean v1, p0, Lcom/iLoong/launcher/HotSeat3D/b;->q:Z

    iput-boolean v1, p0, Lcom/iLoong/launcher/HotSeat3D/b;->n:Z

    return-void
.end method

.method private i()V
    .locals 3

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/b;->l:Lcom/iLoong/launcher/HotSeat3D/i;

    invoke-virtual {v0}, Lcom/iLoong/launcher/HotSeat3D/i;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/UI3DEngine/View3D;

    iget-object v1, p0, Lcom/iLoong/launcher/HotSeat3D/b;->l:Lcom/iLoong/launcher/HotSeat3D/i;

    invoke-virtual {v1}, Lcom/iLoong/launcher/HotSeat3D/i;->b()Lcom/iLoong/launcher/UI3DEngine/View3D;

    check-cast v0, Lcom/iLoong/launcher/Desktop3D/u;

    invoke-interface {v0}, Lcom/iLoong/launcher/Desktop3D/u;->b()Lcom/iLoong/launcher/a/j;

    move-result-object v0

    iget v0, v0, Lcom/iLoong/launcher/a/j;->n:I

    iget-object v1, p0, Lcom/iLoong/launcher/HotSeat3D/b;->l:Lcom/iLoong/launcher/HotSeat3D/i;

    iget-object v2, p0, Lcom/iLoong/launcher/HotSeat3D/b;->b:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v1, v0, v2}, Lcom/iLoong/launcher/HotSeat3D/i;->a(ILcom/badlogic/gdx/math/Vector2;)V

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/b;->b:Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v1, p0, Lcom/iLoong/launcher/HotSeat3D/b;->b:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/iLoong/launcher/HotSeat3D/b;->a(FFZ)V

    return-void
.end method

.method private j()V
    .locals 5

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/b;->l:Lcom/iLoong/launcher/HotSeat3D/i;

    invoke-virtual {v0}, Lcom/iLoong/launcher/HotSeat3D/i;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/UI3DEngine/View3D;

    iget-object v1, p0, Lcom/iLoong/launcher/HotSeat3D/b;->l:Lcom/iLoong/launcher/HotSeat3D/i;

    invoke-virtual {v1}, Lcom/iLoong/launcher/HotSeat3D/i;->b()Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v2

    invoke-virtual {p0}, Lcom/iLoong/launcher/HotSeat3D/b;->a()V

    move-object v1, v0

    check-cast v1, Lcom/iLoong/launcher/Desktop3D/aj;

    invoke-virtual {v1}, Lcom/iLoong/launcher/Desktop3D/aj;->b()Lcom/iLoong/launcher/a/j;

    move-result-object v1

    iget v1, v1, Lcom/iLoong/launcher/a/j;->n:I

    iget-object v3, p0, Lcom/iLoong/launcher/HotSeat3D/b;->l:Lcom/iLoong/launcher/HotSeat3D/i;

    iget-object v4, p0, Lcom/iLoong/launcher/HotSeat3D/b;->b:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v3, v1, v4}, Lcom/iLoong/launcher/HotSeat3D/i;->a(ILcom/badlogic/gdx/math/Vector2;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/iLoong/launcher/HotSeat3D/b;->l:Lcom/iLoong/launcher/HotSeat3D/i;

    invoke-virtual {v4, v0}, Lcom/iLoong/launcher/HotSeat3D/i;->removeView(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/b;->l:Lcom/iLoong/launcher/HotSeat3D/i;

    invoke-virtual {v0, v2}, Lcom/iLoong/launcher/HotSeat3D/i;->removeView(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    invoke-direct {p0, v3, v1}, Lcom/iLoong/launcher/HotSeat3D/b;->a(Ljava/util/ArrayList;I)V

    return-void
.end method

.method private k()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/b;->l:Lcom/iLoong/launcher/HotSeat3D/i;

    invoke-virtual {v0}, Lcom/iLoong/launcher/HotSeat3D/i;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/d/a;

    iget-object v1, p0, Lcom/iLoong/launcher/HotSeat3D/b;->l:Lcom/iLoong/launcher/HotSeat3D/i;

    invoke-virtual {v1}, Lcom/iLoong/launcher/HotSeat3D/i;->b()Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v1

    invoke-virtual {p0}, Lcom/iLoong/launcher/HotSeat3D/b;->a()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/iLoong/launcher/HotSeat3D/b;->l:Lcom/iLoong/launcher/HotSeat3D/i;

    invoke-virtual {v3, v1}, Lcom/iLoong/launcher/HotSeat3D/i;->removeView(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    invoke-virtual {v0, v2, v4, v4}, Lcom/iLoong/launcher/d/a;->a(Ljava/util/ArrayList;FF)Z

    invoke-virtual {v0}, Lcom/iLoong/launcher/d/a;->p()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/b;->a:Lcom/iLoong/launcher/UI3DEngine/View3D;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/b;->a:Lcom/iLoong/launcher/UI3DEngine/View3D;

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/HotSeat3D/b;->removeView(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/b;->a:Lcom/iLoong/launcher/UI3DEngine/View3D;

    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 0

    return-void
.end method

.method public a(Lcom/iLoong/launcher/UI3DEngine/View3D;)V
    .locals 0

    check-cast p1, Lcom/iLoong/launcher/Desktop3D/bq;

    iput-object p1, p0, Lcom/iLoong/launcher/HotSeat3D/b;->r:Lcom/iLoong/launcher/Desktop3D/bq;

    return-void
.end method

.method public a(Lcom/iLoong/launcher/UI3DEngine/View3D;I)V
    .locals 2

    sget v0, Lcom/iLoong/launcher/Desktop3D/at;->bW:I

    if-eq p2, v0, :cond_1

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/b;->k:Lcom/iLoong/launcher/HotSeat3D/i;

    invoke-virtual {v0}, Lcom/iLoong/launcher/HotSeat3D/i;->getChildCount()I

    move-result v0

    sget v1, Lcom/iLoong/launcher/Desktop3D/at;->bW:I

    if-lt v0, v1, :cond_0

    const-string v0, "testdock"

    const-string v1, " hotdockgroup View3D view,int index bindItem"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/b;->k:Lcom/iLoong/launcher/HotSeat3D/i;

    invoke-virtual {v0, p1}, Lcom/iLoong/launcher/HotSeat3D/i;->a(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    :cond_1
    return-void
.end method

.method public a(Lcom/iLoong/launcher/d/a;)V
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/b;->k:Lcom/iLoong/launcher/HotSeat3D/i;

    invoke-virtual {v0, p1}, Lcom/iLoong/launcher/HotSeat3D/i;->a(Lcom/iLoong/launcher/d/a;)V

    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 9

    const/4 v7, 0x0

    const/4 v0, 0x0

    move v8, v0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v8, v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/UI3DEngine/View3D;

    instance-of v1, v0, Lcom/iLoong/launcher/d/a;

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Lcom/iLoong/launcher/d/a;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/iLoong/launcher/d/a;->c(Z)V

    :cond_2
    invoke-virtual {v0}, Lcom/iLoong/launcher/UI3DEngine/View3D;->stopTween()V

    instance-of v1, v0, Lcom/iLoong/launcher/Desktop3D/u;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/iLoong/launcher/Desktop3D/u;

    invoke-interface {v1}, Lcom/iLoong/launcher/Desktop3D/u;->b()Lcom/iLoong/launcher/a/j;

    move-result-object v5

    iget-wide v1, v5, Lcom/iLoong/launcher/a/j;->m:J

    const-wide/16 v3, -0x65

    cmp-long v1, v1, v3

    if-nez v1, :cond_6

    sget-boolean v1, Lcom/iLoong/launcher/Desktop3D/cb;->aT:Z

    if-eqz v1, :cond_3

    instance-of v1, v0, Lcom/iLoong/launcher/Desktop3D/aj;

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getIconBmpHeight()F

    move-result v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->changeTextureRegion(Lcom/iLoong/launcher/UI3DEngine/View3D;FZ)V

    :cond_3
    :goto_1
    iget v1, v5, Lcom/iLoong/launcher/a/j;->n:I

    invoke-direct {p0, v0, v1}, Lcom/iLoong/launcher/HotSeat3D/b;->b(Lcom/iLoong/launcher/UI3DEngine/View3D;I)V

    move-object v1, v7

    :cond_4
    :goto_2
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    move-object v7, v1

    goto :goto_0

    :cond_5
    instance-of v1, v0, Lcom/iLoong/launcher/d/a;

    if-eqz v1, :cond_3

    move-object v1, v0

    check-cast v1, Lcom/iLoong/launcher/d/a;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/iLoong/launcher/d/a;->b(Z)V

    goto :goto_1

    :cond_6
    iget-wide v1, v5, Lcom/iLoong/launcher/a/j;->m:J

    const-wide/16 v3, -0x64

    cmp-long v1, v1, v3

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/iLoong/launcher/HotSeat3D/b;->r:Lcom/iLoong/launcher/Desktop3D/bq;

    iget v2, v5, Lcom/iLoong/launcher/a/j;->p:I

    iget v3, v5, Lcom/iLoong/launcher/a/j;->q:I

    invoke-virtual {v1, v0, v2, v3}, Lcom/iLoong/launcher/Desktop3D/bq;->b(Lcom/iLoong/launcher/UI3DEngine/View3D;II)V

    const/4 v1, 0x1

    sget-object v2, Laurelienribon/tweenengine/equations/Cubic;->OUT:Laurelienribon/tweenengine/equations/Cubic;

    const/high16 v3, 0x3f00

    iget v4, v5, Lcom/iLoong/launcher/a/j;->p:I

    int-to-float v4, v4

    iget v5, v5, Lcom/iLoong/launcher/a/j;->q:I

    int-to-float v5, v5

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/iLoong/launcher/UI3DEngine/View3D;->startTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    move-object v1, v7

    goto :goto_2

    :cond_7
    iget-wide v0, v5, Lcom/iLoong/launcher/a/j;->m:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_a

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v0

    iget-wide v1, v5, Lcom/iLoong/launcher/a/j;->m:J

    invoke-virtual {v0, v1, v2}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->a(J)Lcom/iLoong/launcher/a/h;

    move-result-object v0

    iget-wide v1, v0, Lcom/iLoong/launcher/a/h;->m:J

    const-wide/16 v3, -0x65

    cmp-long v1, v1, v3

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/iLoong/launcher/HotSeat3D/b;->l:Lcom/iLoong/launcher/HotSeat3D/i;

    iget v0, v0, Lcom/iLoong/launcher/a/h;->n:I

    invoke-virtual {v1, v0}, Lcom/iLoong/launcher/HotSeat3D/i;->a(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v1

    :goto_3
    if-eqz v1, :cond_4

    instance-of v0, v1, Lcom/iLoong/launcher/d/a;

    if-eqz v0, :cond_4

    move-object v0, v1

    check-cast v0, Lcom/iLoong/launcher/d/a;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v2, v3}, Lcom/iLoong/launcher/d/a;->a(Ljava/util/ArrayList;FF)Z

    goto :goto_2

    :cond_8
    iget-wide v1, v0, Lcom/iLoong/launcher/a/h;->m:J

    const-wide/16 v3, -0x64

    cmp-long v1, v1, v3

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/iLoong/launcher/HotSeat3D/b;->r:Lcom/iLoong/launcher/Desktop3D/bq;

    invoke-virtual {v1, v0}, Lcom/iLoong/launcher/Desktop3D/bq;->a(Lcom/iLoong/launcher/a/j;)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v1

    goto :goto_3

    :cond_9
    move-object v1, v7

    goto :goto_3

    :cond_a
    move-object v1, v7

    goto :goto_2
.end method

.method public a(Ljava/util/ArrayList;FF)V
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/b;->l:Lcom/iLoong/launcher/HotSeat3D/i;

    float-to-int v1, p2

    float-to-int v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/iLoong/launcher/HotSeat3D/i;->a(II)I

    move-result v0

    const-string v1, "testdock"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "dealDockGroupDropOver index ="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ltz v0, :cond_0

    sget v1, Lcom/iLoong/launcher/Desktop3D/at;->bW:I

    if-lt v0, v1, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/iLoong/launcher/HotSeat3D/b;->a()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/iLoong/launcher/HotSeat3D/b;->l:Lcom/iLoong/launcher/HotSeat3D/i;

    invoke-virtual {v1, v0}, Lcom/iLoong/launcher/HotSeat3D/i;->a(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v1

    if-nez v1, :cond_3

    const-string v0, "testdock"

    const-string v1, "dealDockGroupDropOver findView==null "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/iLoong/launcher/HotSeat3D/b;->a()V

    goto :goto_0

    :cond_3
    instance-of v1, v1, Lcom/iLoong/launcher/d/a;

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/iLoong/launcher/HotSeat3D/b;->a()V

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v4, :cond_5

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/iLoong/launcher/d/a;

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/iLoong/launcher/HotSeat3D/b;->a()V

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/iLoong/launcher/HotSeat3D/b;->l:Lcom/iLoong/launcher/HotSeat3D/i;

    iget-object v2, p0, Lcom/iLoong/launcher/HotSeat3D/b;->b:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v1, v0, v2}, Lcom/iLoong/launcher/HotSeat3D/i;->a(ILcom/badlogic/gdx/math/Vector2;)V

    sget-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->bw:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/b;->b:Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v1, p0, Lcom/iLoong/launcher/HotSeat3D/b;->b:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-direct {p0, v0, v1, v4}, Lcom/iLoong/launcher/HotSeat3D/b;->a(FFZ)V

    goto :goto_0
.end method

.method public b()Lcom/iLoong/launcher/UI3DEngine/View3D;
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/b;->l:Lcom/iLoong/launcher/HotSeat3D/i;

    invoke-virtual {v0}, Lcom/iLoong/launcher/HotSeat3D/i;->b()Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/iLoong/launcher/UI3DEngine/View3D;)V
    .locals 2

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/b;->k:Lcom/iLoong/launcher/HotSeat3D/i;

    invoke-virtual {v0}, Lcom/iLoong/launcher/HotSeat3D/i;->getChildCount()I

    move-result v0

    sget v1, Lcom/iLoong/launcher/Desktop3D/at;->bW:I

    if-lt v0, v1, :cond_0

    const-string v0, "testdock"

    const-string v1, " hotdockgroup bindItem"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/b;->k:Lcom/iLoong/launcher/HotSeat3D/i;

    invoke-virtual {v0, p1}, Lcom/iLoong/launcher/HotSeat3D/i;->a(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    return-void
.end method

.method public b(Ljava/util/ArrayList;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/UI3DEngine/View3D;

    iget-object v1, p0, Lcom/iLoong/launcher/HotSeat3D/b;->l:Lcom/iLoong/launcher/HotSeat3D/i;

    invoke-virtual {v1, v0}, Lcom/iLoong/launcher/HotSeat3D/i;->calcCoordinate(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    iget-object v1, p0, Lcom/iLoong/launcher/HotSeat3D/b;->l:Lcom/iLoong/launcher/HotSeat3D/i;

    iget v2, v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->x:F

    iget v3, v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->width:F

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-int v2, v2

    iget-object v3, p0, Lcom/iLoong/launcher/HotSeat3D/b;->l:Lcom/iLoong/launcher/HotSeat3D/i;

    iget v3, v3, Lcom/iLoong/launcher/HotSeat3D/i;->height:F

    float-to-int v3, v3

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/iLoong/launcher/HotSeat3D/i;->a(II)I

    move-result v2

    const-string v1, "testdock"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " hotdockgroup addItems index="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Count="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/iLoong/launcher/HotSeat3D/b;->l:Lcom/iLoong/launcher/HotSeat3D/i;

    invoke-virtual {v4}, Lcom/iLoong/launcher/HotSeat3D/i;->getChildCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/iLoong/launcher/HotSeat3D/b;->a()V

    const/4 v1, -0x1

    if-ne v2, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/iLoong/launcher/HotSeat3D/b;->a(Ljava/util/ArrayList;)V

    const v0, 0x7f0c008a

    invoke-static {v0}, Lcom/iLoong/launcher/Desktop3D/at;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->sendOurToastMsg(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const/4 v1, -0x2

    if-ne v2, v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/iLoong/launcher/HotSeat3D/b;->a(Ljava/util/ArrayList;)V

    const v0, 0x7f0c008b

    invoke-static {v0}, Lcom/iLoong/launcher/Desktop3D/at;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->sendOurToastMsg(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget v1, Lcom/iLoong/launcher/Desktop3D/at;->bW:I

    if-lt v2, v1, :cond_2

    invoke-virtual {p0, p1}, Lcom/iLoong/launcher/HotSeat3D/b;->a(Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/iLoong/launcher/HotSeat3D/b;->l:Lcom/iLoong/launcher/HotSeat3D/i;

    invoke-virtual {v1, v2}, Lcom/iLoong/launcher/HotSeat3D/i;->a(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v1

    if-eqz v1, :cond_6

    instance-of v0, v0, Lcom/iLoong/launcher/d/a;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v5, :cond_3

    invoke-virtual {p0, p1}, Lcom/iLoong/launcher/HotSeat3D/b;->a(Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_3
    instance-of v0, v1, Lcom/iLoong/launcher/d/a;

    if-eqz v0, :cond_4

    move-object v0, v1

    check-cast v0, Lcom/iLoong/launcher/d/a;

    invoke-virtual {v0, p1, v6, v6}, Lcom/iLoong/launcher/d/a;->a(Ljava/util/ArrayList;FF)Z

    check-cast v1, Lcom/iLoong/launcher/d/a;

    invoke-virtual {v1}, Lcom/iLoong/launcher/d/a;->p()V

    goto :goto_0

    :cond_4
    sget-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->bw:Z

    if-eqz v0, :cond_5

    invoke-virtual {p0, p1}, Lcom/iLoong/launcher/HotSeat3D/b;->a(Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_5
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/b;->l:Lcom/iLoong/launcher/HotSeat3D/i;

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/HotSeat3D/i;->removeView(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    invoke-direct {p0, p1, v2}, Lcom/iLoong/launcher/HotSeat3D/b;->a(Ljava/util/ArrayList;I)V

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v5, :cond_9

    sget-boolean v1, Lcom/iLoong/launcher/Desktop3D/cb;->aT:Z

    if-eqz v1, :cond_7

    instance-of v1, v0, Lcom/iLoong/launcher/Desktop3D/aj;

    if-eqz v1, :cond_8

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getIconBmpHeight()F

    move-result v1

    invoke-static {p1, v1, v5}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->changeTextureRegion(Ljava/util/ArrayList;FZ)V

    :cond_7
    :goto_1
    const-string v1, "testdock"

    const-string v3, " hotdockgroup addSingleItem"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0, v2}, Lcom/iLoong/launcher/HotSeat3D/b;->b(Lcom/iLoong/launcher/UI3DEngine/View3D;I)V

    goto :goto_0

    :cond_8
    instance-of v1, v0, Lcom/iLoong/launcher/d/a;

    if-eqz v1, :cond_7

    move-object v1, v0

    check-cast v1, Lcom/iLoong/launcher/d/a;

    invoke-virtual {v1, v5}, Lcom/iLoong/launcher/d/a;->b(Z)V

    goto :goto_1

    :cond_9
    invoke-direct {p0, p1, v2}, Lcom/iLoong/launcher/HotSeat3D/b;->a(Ljava/util/ArrayList;I)V

    goto/16 :goto_0
.end method

.method public c()V
    .locals 0

    invoke-virtual {p0}, Lcom/iLoong/launcher/HotSeat3D/b;->a()V

    return-void
.end method

.method public c(Lcom/iLoong/launcher/UI3DEngine/View3D;)V
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/b;->k:Lcom/iLoong/launcher/HotSeat3D/i;

    invoke-virtual {v0, p1}, Lcom/iLoong/launcher/HotSeat3D/i;->removeView(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    return-void
.end method

.method public d()Lcom/iLoong/launcher/HotSeat3D/i;
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/b;->k:Lcom/iLoong/launcher/HotSeat3D/i;

    return-object v0
.end method

.method public e()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public f()V
    .locals 0

    return-void
.end method

.method public hide()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iLoong/launcher/HotSeat3D/b;->visible:Z

    iput-boolean v0, p0, Lcom/iLoong/launcher/HotSeat3D/b;->touchable:Z

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/b;->l:Lcom/iLoong/launcher/HotSeat3D/i;

    invoke-virtual {v0}, Lcom/iLoong/launcher/HotSeat3D/i;->hide()V

    return-void
.end method

.method public onCtrlEvent(Lcom/iLoong/launcher/UI3DEngine/View3D;I)Z
    .locals 2

    const/4 v1, 0x1

    instance-of v0, p1, Lcom/iLoong/launcher/HotSeat3D/i;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/iLoong/launcher/HotSeat3D/i;

    packed-switch p2, :pswitch_data_0

    :cond_0
    :pswitch_0
    invoke-super {p0, p1, p2}, Lcom/iLoong/launcher/UI3DEngine/p;->onCtrlEvent(Lcom/iLoong/launcher/UI3DEngine/View3D;I)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_1
    invoke-direct {p0}, Lcom/iLoong/launcher/HotSeat3D/b;->j()V

    move v0, v1

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/iLoong/launcher/HotSeat3D/b;->k()V

    move v0, v1

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/b;->viewParent:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    const/4 v1, 0x6

    invoke-virtual {v0, p0, v1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->onCtrlEvent(Lcom/iLoong/launcher/UI3DEngine/View3D;I)Z

    move-result v0

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/b;->viewParent:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->onCtrlEvent(Lcom/iLoong/launcher/UI3DEngine/View3D;I)Z

    move-result v0

    goto :goto_0

    :pswitch_5
    iget-object v1, p0, Lcom/iLoong/launcher/HotSeat3D/b;->k:Lcom/iLoong/launcher/HotSeat3D/i;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/b;->k:Lcom/iLoong/launcher/HotSeat3D/i;

    invoke-virtual {v0}, Lcom/iLoong/launcher/HotSeat3D/i;->d()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/iLoong/launcher/HotSeat3D/b;->a()V

    :cond_1
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/iLoong/launcher/HotSeat3D/b;->i()V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onDoubleClick(FF)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onLongClick(FF)Z
    .locals 3

    invoke-static {}, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->sendHideWorkspaceMsg()V

    iget-boolean v0, p0, Lcom/iLoong/launcher/HotSeat3D/b;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/b;->l:Lcom/iLoong/launcher/HotSeat3D/i;

    iget-object v1, p0, Lcom/iLoong/launcher/HotSeat3D/b;->k:Lcom/iLoong/launcher/HotSeat3D/i;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/b;->l:Lcom/iLoong/launcher/HotSeat3D/i;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/HotSeat3D/i;->b(Z)V

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/iLoong/launcher/UI3DEngine/p;->onLongClick(FF)Z

    move-result v0

    iget-boolean v1, p0, Lcom/iLoong/launcher/HotSeat3D/b;->c:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/iLoong/launcher/HotSeat3D/b;->l:Lcom/iLoong/launcher/HotSeat3D/i;

    iget-object v2, p0, Lcom/iLoong/launcher/HotSeat3D/b;->k:Lcom/iLoong/launcher/HotSeat3D/i;

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/iLoong/launcher/HotSeat3D/b;->l:Lcom/iLoong/launcher/HotSeat3D/i;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/iLoong/launcher/HotSeat3D/i;->b(Z)V

    :cond_1
    return v0
.end method

.method public onTouchDown(FFI)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p3, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/iLoong/launcher/HotSeat3D/b;->l:Lcom/iLoong/launcher/HotSeat3D/i;

    invoke-virtual {v1}, Lcom/iLoong/launcher/HotSeat3D/i;->stopTween()V

    iget-object v1, p0, Lcom/iLoong/launcher/HotSeat3D/b;->l:Lcom/iLoong/launcher/HotSeat3D/i;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/iLoong/launcher/HotSeat3D/i;->setUser(F)V

    iput-boolean v0, p0, Lcom/iLoong/launcher/HotSeat3D/b;->n:Z

    iput-boolean v0, p0, Lcom/iLoong/launcher/HotSeat3D/b;->q:Z

    invoke-super {p0, p1, p2, p3}, Lcom/iLoong/launcher/UI3DEngine/p;->onTouchDown(FFI)Z

    move-result v0

    goto :goto_0
.end method

.method public onTouchUp(FFI)Z
    .locals 1

    invoke-virtual {p0}, Lcom/iLoong/launcher/HotSeat3D/b;->releaseFocus()V

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/iLoong/launcher/HotSeat3D/b;->h()V

    invoke-super {p0, p1, p2, p3}, Lcom/iLoong/launcher/UI3DEngine/p;->onTouchUp(FFI)Z

    move-result v0

    goto :goto_0
.end method

.method public removeAllViews()V
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/b;->l:Lcom/iLoong/launcher/HotSeat3D/i;

    invoke-virtual {v0}, Lcom/iLoong/launcher/HotSeat3D/i;->removeAllViews()V

    return-void
.end method

.method public scroll(FFFF)Z
    .locals 6

    const/high16 v5, 0x3f80

    const/high16 v4, -0x4100

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/iLoong/launcher/HotSeat3D/b;->requestFocus()V

    iget v0, p0, Lcom/iLoong/launcher/HotSeat3D/b;->p:F

    const/high16 v1, 0x4000

    mul-float/2addr v1, p4

    iget v2, p0, Lcom/iLoong/launcher/HotSeat3D/b;->height:F

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/iLoong/launcher/HotSeat3D/b;->p:F

    iget v0, p0, Lcom/iLoong/launcher/HotSeat3D/b;->p:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/iLoong/launcher/HotSeat3D/b;->o:Z

    if-nez v0, :cond_0

    iput-boolean v3, p0, Lcom/iLoong/launcher/HotSeat3D/b;->o:Z

    :cond_0
    iget v0, p0, Lcom/iLoong/launcher/HotSeat3D/b;->p:F

    cmpl-float v0, v0, v5

    if-ltz v0, :cond_1

    iput v5, p0, Lcom/iLoong/launcher/HotSeat3D/b;->p:F

    :cond_1
    iget v0, p0, Lcom/iLoong/launcher/HotSeat3D/b;->p:F

    cmpg-float v0, v0, v4

    if-gtz v0, :cond_2

    iput v4, p0, Lcom/iLoong/launcher/HotSeat3D/b;->p:F

    :cond_2
    iget-boolean v0, p0, Lcom/iLoong/launcher/HotSeat3D/b;->q:Z

    if-nez v0, :cond_3

    invoke-super {p0, p1, p2, p3, p4}, Lcom/iLoong/launcher/UI3DEngine/p;->scroll(FFFF)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "hotobj"

    const-string v1, " hotdock scroll return true"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v3
.end method

.method public show()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iLoong/launcher/HotSeat3D/b;->visible:Z

    iput-boolean v0, p0, Lcom/iLoong/launcher/HotSeat3D/b;->touchable:Z

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/b;->l:Lcom/iLoong/launcher/HotSeat3D/i;

    invoke-virtual {v0}, Lcom/iLoong/launcher/HotSeat3D/i;->show()V

    return-void
.end method
