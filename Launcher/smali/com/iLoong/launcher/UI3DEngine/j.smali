.class public Lcom/iLoong/launcher/UI3DEngine/j;
.super Ljava/lang/Object;


# instance fields
.field private final a:I

.field private final b:J

.field private final c:J

.field private d:J

.field private e:Z

.field private f:I

.field private g:J

.field private h:Z

.field private i:Z

.field private j:Z

.field private final k:Lcom/iLoong/launcher/UI3DEngine/i;

.field private l:I

.field private m:I

.field private n:J

.field private o:Lcom/badlogic/gdx/math/Vector2;

.field private p:Lcom/badlogic/gdx/math/Vector2;

.field private q:Lcom/badlogic/gdx/math/Vector2;

.field private r:Lcom/badlogic/gdx/math/Vector2;

.field private s:I

.field private t:I

.field private u:Z

.field private v:[Z

.field private final w:Lcom/iLoong/launcher/UI3DEngine/q;


# direct methods
.method public constructor <init>(IFFFLcom/iLoong/launcher/UI3DEngine/q;)V
    .locals 3

    const/4 v1, 0x0

    const v2, 0x4e6e6b28

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/iLoong/launcher/UI3DEngine/i;

    invoke-direct {v0}, Lcom/iLoong/launcher/UI3DEngine/i;-><init>()V

    iput-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/j;->k:Lcom/iLoong/launcher/UI3DEngine/i;

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/j;->o:Lcom/badlogic/gdx/math/Vector2;

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/j;->p:Lcom/badlogic/gdx/math/Vector2;

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/j;->q:Lcom/badlogic/gdx/math/Vector2;

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/j;->r:Lcom/badlogic/gdx/math/Vector2;

    iput v1, p0, Lcom/iLoong/launcher/UI3DEngine/j;->s:I

    iput v1, p0, Lcom/iLoong/launcher/UI3DEngine/j;->t:I

    iput-boolean v1, p0, Lcom/iLoong/launcher/UI3DEngine/j;->u:Z

    const/4 v0, 0x2

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/j;->v:[Z

    iput p1, p0, Lcom/iLoong/launcher/UI3DEngine/j;->a:I

    mul-float v0, p2, v2

    float-to-long v0, v0

    iput-wide v0, p0, Lcom/iLoong/launcher/UI3DEngine/j;->b:J

    mul-float v0, p3, v2

    float-to-long v0, v0

    iput-wide v0, p0, Lcom/iLoong/launcher/UI3DEngine/j;->c:J

    mul-float v0, p4, v2

    float-to-long v0, v0

    iput-wide v0, p0, Lcom/iLoong/launcher/UI3DEngine/j;->d:J

    iput-object p5, p0, Lcom/iLoong/launcher/UI3DEngine/j;->w:Lcom/iLoong/launcher/UI3DEngine/q;

    return-void
.end method

.method public constructor <init>(Lcom/iLoong/launcher/UI3DEngine/q;)V
    .locals 6

    const/16 v1, 0xf

    const/high16 v2, 0x3f00

    const v3, 0x3eb33333

    const v4, 0x3e19999a

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/iLoong/launcher/UI3DEngine/j;-><init>(IFFFLcom/iLoong/launcher/UI3DEngine/q;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    iget-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/j;->v:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/iLoong/launcher/UI3DEngine/j;->e:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/iLoong/launcher/UI3DEngine/j;->h:Z

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/iLoong/launcher/UI3DEngine/j;->n:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/iLoong/launcher/UI3DEngine/j;->c:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iLoong/launcher/UI3DEngine/j;->h:Z

    iget-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/j;->w:Lcom/iLoong/launcher/UI3DEngine/q;

    iget v1, p0, Lcom/iLoong/launcher/UI3DEngine/j;->s:I

    iget v2, p0, Lcom/iLoong/launcher/UI3DEngine/j;->t:I

    invoke-interface {v0, v1, v2}, Lcom/iLoong/launcher/UI3DEngine/q;->a(II)Z

    :cond_0
    return-void
.end method

.method public a(III)Z
    .locals 7

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-gt p3, v2, :cond_0

    iget-wide v3, p0, Lcom/iLoong/launcher/UI3DEngine/j;->n:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-ltz p2, :cond_2

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p2, v0, :cond_3

    :cond_2
    if-gez p2, :cond_7

    move v0, v1

    :goto_1
    move p2, v0

    :cond_3
    if-ltz p1, :cond_4

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenWidth()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_5

    :cond_4
    if-gez p1, :cond_8

    move v0, v1

    :goto_2
    move p1, v0

    :cond_5
    iput p1, p0, Lcom/iLoong/launcher/UI3DEngine/j;->s:I

    iput p2, p0, Lcom/iLoong/launcher/UI3DEngine/j;->t:I

    iget-boolean v0, p0, Lcom/iLoong/launcher/UI3DEngine/j;->i:Z

    if-eqz v0, :cond_b

    if-nez p3, :cond_9

    iget-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/j;->o:Lcom/badlogic/gdx/math/Vector2;

    int-to-float v3, p1

    int-to-float v4, p2

    invoke-virtual {v0, v3, v4}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    :goto_3
    iget-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/j;->w:Lcom/iLoong/launcher/UI3DEngine/q;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/j;->w:Lcom/iLoong/launcher/UI3DEngine/q;

    iget-object v3, p0, Lcom/iLoong/launcher/UI3DEngine/j;->q:Lcom/badlogic/gdx/math/Vector2;

    iget-object v4, p0, Lcom/iLoong/launcher/UI3DEngine/j;->r:Lcom/badlogic/gdx/math/Vector2;

    iget-object v5, p0, Lcom/iLoong/launcher/UI3DEngine/j;->o:Lcom/badlogic/gdx/math/Vector2;

    iget-object v6, p0, Lcom/iLoong/launcher/UI3DEngine/j;->p:Lcom/badlogic/gdx/math/Vector2;

    invoke-interface {v0, v3, v4, v5, v6}, Lcom/iLoong/launcher/UI3DEngine/q;->a(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)Z

    move-result v0

    iget-object v3, p0, Lcom/iLoong/launcher/UI3DEngine/j;->w:Lcom/iLoong/launcher/UI3DEngine/q;

    iget-object v4, p0, Lcom/iLoong/launcher/UI3DEngine/j;->q:Lcom/badlogic/gdx/math/Vector2;

    iget-object v5, p0, Lcom/iLoong/launcher/UI3DEngine/j;->r:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/math/Vector2;->dst(Lcom/badlogic/gdx/math/Vector2;)F

    move-result v4

    iget-object v5, p0, Lcom/iLoong/launcher/UI3DEngine/j;->o:Lcom/badlogic/gdx/math/Vector2;

    iget-object v6, p0, Lcom/iLoong/launcher/UI3DEngine/j;->p:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/math/Vector2;->dst(Lcom/badlogic/gdx/math/Vector2;)F

    move-result v5

    invoke-interface {v3, v4, v5}, Lcom/iLoong/launcher/UI3DEngine/q;->b(FF)Z

    move-result v3

    if-nez v3, :cond_a

    if-nez v0, :cond_a

    move v0, v1

    :goto_4
    iget-object v3, p0, Lcom/iLoong/launcher/UI3DEngine/j;->w:Lcom/iLoong/launcher/UI3DEngine/q;

    invoke-interface {v3, p1, p2, p3}, Lcom/iLoong/launcher/UI3DEngine/q;->c(III)Z

    move-result v3

    if-nez v3, :cond_6

    if-eqz v0, :cond_0

    :cond_6
    move v1, v2

    goto :goto_0

    :cond_7
    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_8
    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenWidth()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_9
    iget-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/j;->p:Lcom/badlogic/gdx/math/Vector2;

    int-to-float v3, p1

    int-to-float v4, p2

    invoke-virtual {v0, v3, v4}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    goto :goto_3

    :cond_a
    move v0, v2

    goto :goto_4

    :cond_b
    iget-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/j;->k:Lcom/iLoong/launcher/UI3DEngine/i;

    sget-object v3, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    invoke-interface {v3}, Lcom/badlogic/gdx/Input;->getCurrentEventTime()J

    move-result-wide v3

    invoke-virtual {v0, p1, p2, v3, v4}, Lcom/iLoong/launcher/UI3DEngine/i;->b(IIJ)V

    iget-boolean v0, p0, Lcom/iLoong/launcher/UI3DEngine/j;->e:Z

    if-eqz v0, :cond_c

    iget v0, p0, Lcom/iLoong/launcher/UI3DEngine/j;->l:I

    sub-int v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v3, p0, Lcom/iLoong/launcher/UI3DEngine/j;->a:I

    if-ge v0, v3, :cond_c

    iget v0, p0, Lcom/iLoong/launcher/UI3DEngine/j;->m:I

    sub-int v0, p2, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v3, p0, Lcom/iLoong/launcher/UI3DEngine/j;->a:I

    if-lt v0, v3, :cond_d

    :cond_c
    iput-boolean v1, p0, Lcom/iLoong/launcher/UI3DEngine/j;->e:Z

    :cond_d
    iget-boolean v0, p0, Lcom/iLoong/launcher/UI3DEngine/j;->e:Z

    if-nez v0, :cond_10

    iput-boolean v1, p0, Lcom/iLoong/launcher/UI3DEngine/j;->e:Z

    iput-boolean v2, p0, Lcom/iLoong/launcher/UI3DEngine/j;->j:Z

    iget-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/j;->w:Lcom/iLoong/launcher/UI3DEngine/q;

    iget-object v3, p0, Lcom/iLoong/launcher/UI3DEngine/j;->k:Lcom/iLoong/launcher/UI3DEngine/i;

    iget v3, v3, Lcom/iLoong/launcher/UI3DEngine/i;->b:I

    iget-object v4, p0, Lcom/iLoong/launcher/UI3DEngine/j;->k:Lcom/iLoong/launcher/UI3DEngine/i;

    iget v4, v4, Lcom/iLoong/launcher/UI3DEngine/i;->c:I

    iget-object v5, p0, Lcom/iLoong/launcher/UI3DEngine/j;->k:Lcom/iLoong/launcher/UI3DEngine/i;

    iget v5, v5, Lcom/iLoong/launcher/UI3DEngine/i;->d:I

    iget-object v6, p0, Lcom/iLoong/launcher/UI3DEngine/j;->k:Lcom/iLoong/launcher/UI3DEngine/i;

    iget v6, v6, Lcom/iLoong/launcher/UI3DEngine/i;->e:I

    invoke-interface {v0, v3, v4, v5, v6}, Lcom/iLoong/launcher/UI3DEngine/q;->a(IIII)Z

    move-result v0

    if-nez v0, :cond_f

    move v0, v1

    :goto_5
    iget-object v3, p0, Lcom/iLoong/launcher/UI3DEngine/j;->w:Lcom/iLoong/launcher/UI3DEngine/q;

    invoke-interface {v3, p1, p2, p3}, Lcom/iLoong/launcher/UI3DEngine/q;->c(III)Z

    move-result v3

    if-nez v3, :cond_e

    if-eqz v0, :cond_0

    :cond_e
    move v1, v2

    goto/16 :goto_0

    :cond_f
    move v0, v2

    goto :goto_5

    :cond_10
    move v0, v1

    goto :goto_5

    :cond_11
    move v0, v1

    goto :goto_4
.end method

.method public a(IIII)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v4, 0x1

    if-le p3, v4, :cond_0

    :goto_0
    return v0

    :cond_0
    iput p1, p0, Lcom/iLoong/launcher/UI3DEngine/j;->s:I

    iput p2, p0, Lcom/iLoong/launcher/UI3DEngine/j;->t:I

    iget-object v1, p0, Lcom/iLoong/launcher/UI3DEngine/j;->v:[Z

    aput-boolean v4, v1, p3

    if-nez p3, :cond_2

    iget-object v1, p0, Lcom/iLoong/launcher/UI3DEngine/j;->o:Lcom/badlogic/gdx/math/Vector2;

    int-to-float v2, p1

    int-to-float v3, p2

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    invoke-interface {v1}, Lcom/badlogic/gdx/Input;->getCurrentEventTime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/iLoong/launcher/UI3DEngine/j;->n:J

    iget-object v1, p0, Lcom/iLoong/launcher/UI3DEngine/j;->k:Lcom/iLoong/launcher/UI3DEngine/i;

    iget-wide v2, p0, Lcom/iLoong/launcher/UI3DEngine/j;->n:J

    invoke-virtual {v1, p1, p2, v2, v3}, Lcom/iLoong/launcher/UI3DEngine/i;->a(IIJ)V

    iget-object v1, p0, Lcom/iLoong/launcher/UI3DEngine/j;->v:[Z

    aget-boolean v1, v1, v4

    if-eqz v1, :cond_1

    iput-boolean v0, p0, Lcom/iLoong/launcher/UI3DEngine/j;->e:Z

    iput-boolean v4, p0, Lcom/iLoong/launcher/UI3DEngine/j;->i:Z

    iget-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/j;->q:Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, p0, Lcom/iLoong/launcher/UI3DEngine/j;->o:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    iget-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/j;->r:Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, p0, Lcom/iLoong/launcher/UI3DEngine/j;->p:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    :goto_1
    iget-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/j;->w:Lcom/iLoong/launcher/UI3DEngine/q;

    invoke-interface {v0, p1, p2, p3}, Lcom/iLoong/launcher/UI3DEngine/q;->b(III)Z

    move-result v0

    goto :goto_0

    :cond_1
    iput-boolean v4, p0, Lcom/iLoong/launcher/UI3DEngine/j;->e:Z

    iput-boolean v0, p0, Lcom/iLoong/launcher/UI3DEngine/j;->i:Z

    iput-boolean v0, p0, Lcom/iLoong/launcher/UI3DEngine/j;->h:Z

    iput p1, p0, Lcom/iLoong/launcher/UI3DEngine/j;->l:I

    iput p2, p0, Lcom/iLoong/launcher/UI3DEngine/j;->m:I

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/iLoong/launcher/UI3DEngine/j;->p:Lcom/badlogic/gdx/math/Vector2;

    int-to-float v2, p1

    int-to-float v3, p2

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    iput-boolean v0, p0, Lcom/iLoong/launcher/UI3DEngine/j;->e:Z

    iput-boolean v4, p0, Lcom/iLoong/launcher/UI3DEngine/j;->i:Z

    iget-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/j;->q:Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, p0, Lcom/iLoong/launcher/UI3DEngine/j;->o:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    iget-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/j;->r:Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, p0, Lcom/iLoong/launcher/UI3DEngine/j;->p:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    goto :goto_1
.end method

.method public b()V
    .locals 3

    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/iLoong/launcher/UI3DEngine/j;->n:J

    iput-boolean v2, p0, Lcom/iLoong/launcher/UI3DEngine/j;->j:Z

    iput-boolean v2, p0, Lcom/iLoong/launcher/UI3DEngine/j;->e:Z

    iget-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/j;->v:[Z

    aput-boolean v2, v0, v2

    iget-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/j;->v:[Z

    const/4 v1, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public b(IIII)Z
    .locals 9

    const-wide/16 v7, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-le p3, v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-ltz p2, :cond_2

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenHeight()I

    move-result v0

    if-le p2, v0, :cond_3

    :cond_2
    if-gez p2, :cond_8

    move v0, v1

    :goto_1
    move p2, v0

    :cond_3
    if-ltz p1, :cond_4

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenWidth()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_5

    :cond_4
    if-gez p1, :cond_9

    move v0, v1

    :goto_2
    move p1, v0

    :cond_5
    iget-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/j;->v:[Z

    aput-boolean v1, v0, p3

    iput-boolean v1, p0, Lcom/iLoong/launcher/UI3DEngine/j;->j:Z

    iget-boolean v3, p0, Lcom/iLoong/launcher/UI3DEngine/j;->e:Z

    iget-boolean v0, p0, Lcom/iLoong/launcher/UI3DEngine/j;->h:Z

    if-eqz v0, :cond_a

    move v0, v1

    :goto_3
    and-int/2addr v0, v3

    if-eqz v0, :cond_c

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/iLoong/launcher/UI3DEngine/j;->g:J

    sub-long/2addr v3, v5

    iget-wide v5, p0, Lcom/iLoong/launcher/UI3DEngine/j;->b:J

    cmp-long v0, v3, v5

    if-lez v0, :cond_6

    const-string v0, "tap"

    const-string v3, "reset"

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput v1, p0, Lcom/iLoong/launcher/UI3DEngine/j;->f:I

    :cond_6
    iget v0, p0, Lcom/iLoong/launcher/UI3DEngine/j;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/iLoong/launcher/UI3DEngine/j;->f:I

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/iLoong/launcher/UI3DEngine/j;->g:J

    iput-wide v7, p0, Lcom/iLoong/launcher/UI3DEngine/j;->n:J

    iget-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/j;->w:Lcom/iLoong/launcher/UI3DEngine/q;

    iget v3, p0, Lcom/iLoong/launcher/UI3DEngine/j;->l:I

    iget v4, p0, Lcom/iLoong/launcher/UI3DEngine/j;->m:I

    iget v5, p0, Lcom/iLoong/launcher/UI3DEngine/j;->f:I

    invoke-interface {v0, v3, v4, v5}, Lcom/iLoong/launcher/UI3DEngine/q;->a(III)Z

    move-result v0

    if-nez v0, :cond_b

    move v0, v1

    :goto_4
    iget-object v3, p0, Lcom/iLoong/launcher/UI3DEngine/j;->w:Lcom/iLoong/launcher/UI3DEngine/q;

    invoke-interface {v3, p1, p2, p3}, Lcom/iLoong/launcher/UI3DEngine/q;->d(III)Z

    move-result v3

    if-nez v3, :cond_7

    if-eqz v0, :cond_0

    :cond_7
    move v1, v2

    goto :goto_0

    :cond_8
    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_9
    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenWidth()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_a
    move v0, v2

    goto :goto_3

    :cond_b
    move v0, v2

    goto :goto_4

    :cond_c
    iget-boolean v0, p0, Lcom/iLoong/launcher/UI3DEngine/j;->i:Z

    if-eqz v0, :cond_e

    iput-boolean v1, p0, Lcom/iLoong/launcher/UI3DEngine/j;->i:Z

    iput-boolean v2, p0, Lcom/iLoong/launcher/UI3DEngine/j;->j:Z

    if-nez p3, :cond_d

    iget-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/j;->k:Lcom/iLoong/launcher/UI3DEngine/i;

    iget-object v3, p0, Lcom/iLoong/launcher/UI3DEngine/j;->p:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    float-to-int v3, v3

    iget-object v4, p0, Lcom/iLoong/launcher/UI3DEngine/j;->p:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    float-to-int v4, v4

    sget-object v5, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    invoke-interface {v5}, Lcom/badlogic/gdx/Input;->getCurrentEventTime()J

    move-result-wide v5

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/iLoong/launcher/UI3DEngine/i;->a(IIJ)V

    move v0, v1

    goto :goto_4

    :cond_d
    iget-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/j;->k:Lcom/iLoong/launcher/UI3DEngine/i;

    iget-object v3, p0, Lcom/iLoong/launcher/UI3DEngine/j;->o:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    float-to-int v3, v3

    iget-object v4, p0, Lcom/iLoong/launcher/UI3DEngine/j;->o:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    float-to-int v4, v4

    sget-object v5, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    invoke-interface {v5}, Lcom/badlogic/gdx/Input;->getCurrentEventTime()J

    move-result-wide v5

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/iLoong/launcher/UI3DEngine/i;->a(IIJ)V

    move v0, v1

    goto :goto_4

    :cond_e
    iput-wide v7, p0, Lcom/iLoong/launcher/UI3DEngine/j;->n:J

    sget-object v0, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    invoke-interface {v0}, Lcom/badlogic/gdx/Input;->getCurrentEventTime()J

    move-result-wide v3

    iget-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/j;->k:Lcom/iLoong/launcher/UI3DEngine/i;

    iget-wide v5, v0, Lcom/iLoong/launcher/UI3DEngine/i;->f:J

    sub-long v5, v3, v5

    iget-wide v7, p0, Lcom/iLoong/launcher/UI3DEngine/j;->d:J

    cmp-long v0, v5, v7

    if-gez v0, :cond_10

    iget-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/j;->k:Lcom/iLoong/launcher/UI3DEngine/i;

    invoke-virtual {v0, p1, p2, v3, v4}, Lcom/iLoong/launcher/UI3DEngine/i;->b(IIJ)V

    iget-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/j;->w:Lcom/iLoong/launcher/UI3DEngine/q;

    iget-object v3, p0, Lcom/iLoong/launcher/UI3DEngine/j;->k:Lcom/iLoong/launcher/UI3DEngine/i;

    invoke-virtual {v3}, Lcom/iLoong/launcher/UI3DEngine/i;->a()F

    move-result v3

    iget-object v4, p0, Lcom/iLoong/launcher/UI3DEngine/j;->k:Lcom/iLoong/launcher/UI3DEngine/i;

    invoke-virtual {v4}, Lcom/iLoong/launcher/UI3DEngine/i;->b()F

    move-result v4

    invoke-interface {v0, v3, v4}, Lcom/iLoong/launcher/UI3DEngine/q;->a(FF)Z

    move-result v0

    if-nez v0, :cond_f

    move v0, v1

    goto/16 :goto_4

    :cond_f
    move v0, v2

    goto/16 :goto_4

    :cond_10
    move v0, v1

    goto/16 :goto_4
.end method
