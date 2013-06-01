.class public Lcom/a/a/c;
.super Ljava/lang/Object;


# instance fields
.field A:I

.field B:I

.field C:I

.field D:I

.field E:Z

.field F:I

.field G:I

.field H:I

.field I:I

.field J:I

.field K:I

.field L:I

.field private final M:Lcom/a/a/e;

.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field g:Ljava/lang/String;

.field h:Ljava/lang/String;

.field i:Ljava/lang/String;

.field j:Ljava/lang/String;

.field k:Ljava/lang/String;

.field l:Ljava/lang/String;

.field m:Ljava/lang/String;

.field n:Ljava/lang/String;

.field o:Ljava/lang/Float;

.field p:Ljava/lang/Float;

.field q:Ljava/lang/Integer;

.field r:Ljava/lang/Integer;

.field s:Ljava/lang/Integer;

.field t:Ljava/lang/Boolean;

.field u:Ljava/lang/Integer;

.field v:Ljava/lang/Boolean;

.field w:Ljava/lang/Boolean;

.field x:Ljava/lang/String;

.field y:Ljava/lang/Integer;

.field z:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/a/a/e;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/a/a/c;->H:I

    iput-object p1, p0, Lcom/a/a/c;->M:Lcom/a/a/e;

    return-void
.end method

.method static a(Lcom/a/a/e;)Lcom/a/a/c;
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    new-instance v0, Lcom/a/a/c;

    invoke-direct {v0, p0}, Lcom/a/a/c;-><init>(Lcom/a/a/e;)V

    const-string v1, "min"

    iput-object v1, v0, Lcom/a/a/c;->a:Ljava/lang/String;

    const-string v1, "min"

    iput-object v1, v0, Lcom/a/a/c;->b:Ljava/lang/String;

    const-string v1, "pref"

    iput-object v1, v0, Lcom/a/a/c;->c:Ljava/lang/String;

    const-string v1, "pref"

    iput-object v1, v0, Lcom/a/a/c;->d:Ljava/lang/String;

    const-string v1, "max"

    iput-object v1, v0, Lcom/a/a/c;->e:Ljava/lang/String;

    const-string v1, "max"

    iput-object v1, v0, Lcom/a/a/c;->f:Ljava/lang/String;

    iput-object v2, v0, Lcom/a/a/c;->g:Ljava/lang/String;

    iput-object v2, v0, Lcom/a/a/c;->h:Ljava/lang/String;

    iput-object v2, v0, Lcom/a/a/c;->i:Ljava/lang/String;

    iput-object v2, v0, Lcom/a/a/c;->j:Ljava/lang/String;

    iput-object v2, v0, Lcom/a/a/c;->k:Ljava/lang/String;

    iput-object v2, v0, Lcom/a/a/c;->l:Ljava/lang/String;

    iput-object v2, v0, Lcom/a/a/c;->m:Ljava/lang/String;

    iput-object v2, v0, Lcom/a/a/c;->n:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, v0, Lcom/a/a/c;->o:Ljava/lang/Float;

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, v0, Lcom/a/a/c;->p:Ljava/lang/Float;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/a/a/c;->q:Ljava/lang/Integer;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/a/a/c;->r:Ljava/lang/Integer;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/a/a/c;->s:Ljava/lang/Integer;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/a/a/c;->t:Ljava/lang/Boolean;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/a/a/c;->u:Ljava/lang/Integer;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/a/a/c;->y:Ljava/lang/Integer;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Lcom/a/a/c;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "widget cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/a/a/c;->M:Lcom/a/a/e;

    iget-object v0, v0, Lcom/a/a/e;->toolkit:Lcom/a/a/d;

    iget-object v1, p0, Lcom/a/a/c;->M:Lcom/a/a/e;

    invoke-virtual {v0, v1, p0, p1}, Lcom/a/a/d;->setWidget(Lcom/a/a/e;Lcom/a/a/c;Ljava/lang/Object;)V

    return-object p0
.end method

.method public a()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/a/a/c;->z:Ljava/lang/Object;

    return-object v0
.end method

.method a(Lcom/a/a/c;)V
    .locals 1

    iget-object v0, p1, Lcom/a/a/c;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/a/a/c;->a:Ljava/lang/String;

    iget-object v0, p1, Lcom/a/a/c;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/a/a/c;->b:Ljava/lang/String;

    iget-object v0, p1, Lcom/a/a/c;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/a/a/c;->c:Ljava/lang/String;

    iget-object v0, p1, Lcom/a/a/c;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/a/a/c;->d:Ljava/lang/String;

    iget-object v0, p1, Lcom/a/a/c;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/a/a/c;->e:Ljava/lang/String;

    iget-object v0, p1, Lcom/a/a/c;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/a/a/c;->f:Ljava/lang/String;

    iget-object v0, p1, Lcom/a/a/c;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/a/a/c;->g:Ljava/lang/String;

    iget-object v0, p1, Lcom/a/a/c;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/a/a/c;->h:Ljava/lang/String;

    iget-object v0, p1, Lcom/a/a/c;->i:Ljava/lang/String;

    iput-object v0, p0, Lcom/a/a/c;->i:Ljava/lang/String;

    iget-object v0, p1, Lcom/a/a/c;->j:Ljava/lang/String;

    iput-object v0, p0, Lcom/a/a/c;->j:Ljava/lang/String;

    iget-object v0, p1, Lcom/a/a/c;->k:Ljava/lang/String;

    iput-object v0, p0, Lcom/a/a/c;->k:Ljava/lang/String;

    iget-object v0, p1, Lcom/a/a/c;->l:Ljava/lang/String;

    iput-object v0, p0, Lcom/a/a/c;->l:Ljava/lang/String;

    iget-object v0, p1, Lcom/a/a/c;->m:Ljava/lang/String;

    iput-object v0, p0, Lcom/a/a/c;->m:Ljava/lang/String;

    iget-object v0, p1, Lcom/a/a/c;->n:Ljava/lang/String;

    iput-object v0, p0, Lcom/a/a/c;->n:Ljava/lang/String;

    iget-object v0, p1, Lcom/a/a/c;->o:Ljava/lang/Float;

    iput-object v0, p0, Lcom/a/a/c;->o:Ljava/lang/Float;

    iget-object v0, p1, Lcom/a/a/c;->p:Ljava/lang/Float;

    iput-object v0, p0, Lcom/a/a/c;->p:Ljava/lang/Float;

    iget-object v0, p1, Lcom/a/a/c;->q:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/a/a/c;->q:Ljava/lang/Integer;

    iget-object v0, p1, Lcom/a/a/c;->r:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/a/a/c;->r:Ljava/lang/Integer;

    iget-object v0, p1, Lcom/a/a/c;->s:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/a/a/c;->s:Ljava/lang/Integer;

    iget-object v0, p1, Lcom/a/a/c;->t:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/a/a/c;->t:Ljava/lang/Boolean;

    iget-object v0, p1, Lcom/a/a/c;->u:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/a/a/c;->u:Ljava/lang/Integer;

    iget-object v0, p1, Lcom/a/a/c;->v:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/a/a/c;->v:Ljava/lang/Boolean;

    iget-object v0, p1, Lcom/a/a/c;->w:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/a/a/c;->w:Ljava/lang/Boolean;

    iget-object v0, p1, Lcom/a/a/c;->y:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/a/a/c;->y:Ljava/lang/Integer;

    return-void
.end method

.method public b()Lcom/a/a/c;
    .locals 2

    const/high16 v1, 0x3f80

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/c;->o:Ljava/lang/Float;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/c;->p:Ljava/lang/Float;

    return-object p0
.end method

.method b(Lcom/a/a/c;)V
    .locals 1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p1, Lcom/a/a/c;->a:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/a/a/c;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/a/a/c;->a:Ljava/lang/String;

    :cond_2
    iget-object v0, p1, Lcom/a/a/c;->b:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/a/a/c;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/a/a/c;->b:Ljava/lang/String;

    :cond_3
    iget-object v0, p1, Lcom/a/a/c;->c:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/a/a/c;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/a/a/c;->c:Ljava/lang/String;

    :cond_4
    iget-object v0, p1, Lcom/a/a/c;->d:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/a/a/c;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/a/a/c;->d:Ljava/lang/String;

    :cond_5
    iget-object v0, p1, Lcom/a/a/c;->e:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p1, Lcom/a/a/c;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/a/a/c;->e:Ljava/lang/String;

    :cond_6
    iget-object v0, p1, Lcom/a/a/c;->f:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p1, Lcom/a/a/c;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/a/a/c;->f:Ljava/lang/String;

    :cond_7
    iget-object v0, p1, Lcom/a/a/c;->g:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p1, Lcom/a/a/c;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/a/a/c;->g:Ljava/lang/String;

    :cond_8
    iget-object v0, p1, Lcom/a/a/c;->h:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, p1, Lcom/a/a/c;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/a/a/c;->h:Ljava/lang/String;

    :cond_9
    iget-object v0, p1, Lcom/a/a/c;->i:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object v0, p1, Lcom/a/a/c;->i:Ljava/lang/String;

    iput-object v0, p0, Lcom/a/a/c;->i:Ljava/lang/String;

    :cond_a
    iget-object v0, p1, Lcom/a/a/c;->j:Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object v0, p1, Lcom/a/a/c;->j:Ljava/lang/String;

    iput-object v0, p0, Lcom/a/a/c;->j:Ljava/lang/String;

    :cond_b
    iget-object v0, p1, Lcom/a/a/c;->k:Ljava/lang/String;

    if-eqz v0, :cond_c

    iget-object v0, p1, Lcom/a/a/c;->k:Ljava/lang/String;

    iput-object v0, p0, Lcom/a/a/c;->k:Ljava/lang/String;

    :cond_c
    iget-object v0, p1, Lcom/a/a/c;->l:Ljava/lang/String;

    if-eqz v0, :cond_d

    iget-object v0, p1, Lcom/a/a/c;->l:Ljava/lang/String;

    iput-object v0, p0, Lcom/a/a/c;->l:Ljava/lang/String;

    :cond_d
    iget-object v0, p1, Lcom/a/a/c;->m:Ljava/lang/String;

    if-eqz v0, :cond_e

    iget-object v0, p1, Lcom/a/a/c;->m:Ljava/lang/String;

    iput-object v0, p0, Lcom/a/a/c;->m:Ljava/lang/String;

    :cond_e
    iget-object v0, p1, Lcom/a/a/c;->n:Ljava/lang/String;

    if-eqz v0, :cond_f

    iget-object v0, p1, Lcom/a/a/c;->n:Ljava/lang/String;

    iput-object v0, p0, Lcom/a/a/c;->n:Ljava/lang/String;

    :cond_f
    iget-object v0, p1, Lcom/a/a/c;->o:Ljava/lang/Float;

    if-eqz v0, :cond_10

    iget-object v0, p1, Lcom/a/a/c;->o:Ljava/lang/Float;

    iput-object v0, p0, Lcom/a/a/c;->o:Ljava/lang/Float;

    :cond_10
    iget-object v0, p1, Lcom/a/a/c;->p:Ljava/lang/Float;

    if-eqz v0, :cond_11

    iget-object v0, p1, Lcom/a/a/c;->p:Ljava/lang/Float;

    iput-object v0, p0, Lcom/a/a/c;->p:Ljava/lang/Float;

    :cond_11
    iget-object v0, p1, Lcom/a/a/c;->q:Ljava/lang/Integer;

    if-eqz v0, :cond_12

    iget-object v0, p1, Lcom/a/a/c;->q:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/a/a/c;->q:Ljava/lang/Integer;

    :cond_12
    iget-object v0, p1, Lcom/a/a/c;->r:Ljava/lang/Integer;

    if-eqz v0, :cond_13

    iget-object v0, p1, Lcom/a/a/c;->r:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/a/a/c;->r:Ljava/lang/Integer;

    :cond_13
    iget-object v0, p1, Lcom/a/a/c;->s:Ljava/lang/Integer;

    if-eqz v0, :cond_14

    iget-object v0, p1, Lcom/a/a/c;->s:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/a/a/c;->s:Ljava/lang/Integer;

    :cond_14
    iget-object v0, p1, Lcom/a/a/c;->t:Ljava/lang/Boolean;

    if-eqz v0, :cond_15

    iget-object v0, p1, Lcom/a/a/c;->t:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/a/a/c;->t:Ljava/lang/Boolean;

    :cond_15
    iget-object v0, p1, Lcom/a/a/c;->u:Ljava/lang/Integer;

    if-eqz v0, :cond_16

    iget-object v0, p1, Lcom/a/a/c;->u:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/a/a/c;->u:Ljava/lang/Integer;

    :cond_16
    iget-object v0, p1, Lcom/a/a/c;->v:Ljava/lang/Boolean;

    if-eqz v0, :cond_17

    iget-object v0, p1, Lcom/a/a/c;->v:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/a/a/c;->v:Ljava/lang/Boolean;

    :cond_17
    iget-object v0, p1, Lcom/a/a/c;->w:Ljava/lang/Boolean;

    if-eqz v0, :cond_18

    iget-object v0, p1, Lcom/a/a/c;->w:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/a/a/c;->w:Ljava/lang/Boolean;

    :cond_18
    iget-object v0, p1, Lcom/a/a/c;->y:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/a/a/c;->y:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/a/a/c;->y:Ljava/lang/Integer;

    goto/16 :goto_0
.end method

.method public c()Lcom/a/a/c;
    .locals 2

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/c;->r:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/c;->s:Ljava/lang/Integer;

    return-object p0
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Lcom/a/a/c;->t:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a/a/c;->t:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lcom/a/a/c;->A:I

    return v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lcom/a/a/c;->B:I

    return v0
.end method

.method public g()I
    .locals 1

    iget v0, p0, Lcom/a/a/c;->C:I

    return v0
.end method

.method public h()I
    .locals 1

    iget v0, p0, Lcom/a/a/c;->D:I

    return v0
.end method

.method public i()Z
    .locals 1

    iget-boolean v0, p0, Lcom/a/a/c;->E:Z

    return v0
.end method
