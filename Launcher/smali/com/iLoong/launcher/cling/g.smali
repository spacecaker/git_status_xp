.class Lcom/iLoong/launcher/cling/g;
.super Ljava/lang/Thread;


# instance fields
.field a:[F

.field b:[F

.field final synthetic c:Lcom/iLoong/launcher/cling/o;

.field private d:I

.field private e:Landroid/graphics/PointF;

.field private f:Landroid/graphics/PointF;

.field private g:Landroid/graphics/PointF;

.field private h:Landroid/graphics/PointF;

.field private i:I

.field private j:I

.field private k:Z

.field private l:Z


# direct methods
.method public constructor <init>(Lcom/iLoong/launcher/cling/o;)V
    .locals 5

    const/16 v2, 0x1e

    const/4 v1, 0x1

    const/high16 v4, -0x4080

    const/4 v3, 0x0

    iput-object p1, p0, Lcom/iLoong/launcher/cling/g;->c:Lcom/iLoong/launcher/cling/o;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/16 v0, 0xf

    iput v0, p0, Lcom/iLoong/launcher/cling/g;->d:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/iLoong/launcher/cling/g;->i:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/iLoong/launcher/cling/g;->j:I

    iput-boolean v1, p0, Lcom/iLoong/launcher/cling/g;->k:Z

    iput-boolean v1, p0, Lcom/iLoong/launcher/cling/g;->l:Z

    new-array v0, v2, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/iLoong/launcher/cling/g;->a:[F

    new-array v0, v2, [F

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/iLoong/launcher/cling/g;->b:[F

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v4, v3}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/iLoong/launcher/cling/g;->e:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    sget v1, Lcom/iLoong/launcher/cling/o;->a:I

    int-to-float v1, v1

    sget v2, Lcom/iLoong/launcher/cling/o;->b:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/iLoong/launcher/cling/g;->f:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v4, v3}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/iLoong/launcher/cling/g;->g:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    sget v1, Lcom/iLoong/launcher/cling/o;->b:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-direct {v0, v3, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/iLoong/launcher/cling/g;->h:Landroid/graphics/PointF;

    invoke-direct {p0}, Lcom/iLoong/launcher/cling/g;->b()V

    return-void

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xcdt 0xcct 0x4ct 0x3dt
        0xcdt 0xcct 0xcct 0x3dt
        0x9at 0x99t 0x19t 0x3et
        0xcdt 0xcct 0x4ct 0x3et
        0x0t 0x0t 0x80t 0x3et
        0x9at 0x99t 0x99t 0x3et
        0x33t 0x33t 0xb3t 0x3et
        0xcdt 0xcct 0xcct 0x3et
        0x66t 0x66t 0xe6t 0x3et
        0x0t 0x0t 0x0t 0x3ft
        0xcdt 0xcct 0xct 0x3ft
        0x9at 0x99t 0x19t 0x3ft
        0x66t 0x66t 0x26t 0x3ft
        0x33t 0x33t 0x33t 0x3ft
        0x0t 0x0t 0x40t 0x3ft
        0xcdt 0xcct 0x4ct 0x3ft
        0x9at 0x99t 0x59t 0x3ft
        0x66t 0x66t 0x66t 0x3ft
        0x33t 0x33t 0x73t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x8ft 0xc2t 0xf5t 0x3ct
        0x29t 0x5ct 0x8ft 0x3dt
        0xcdt 0xcct 0xcct 0x3dt
        0x29t 0x5ct 0xft 0x3et
        0x7bt 0x14t 0x2et 0x3et
        0x3dt 0xat 0x57t 0x3et
        0x8ft 0xc2t 0x75t 0x3et
        0x29t 0x5ct 0x8ft 0x3et
        0x52t 0xb8t 0x9et 0x3et
        0x7bt 0x14t 0xaet 0x3et
        0x5ct 0x8ft 0xc2t 0x3et
        0x85t 0xebt 0xd1t 0x3et
        0x66t 0x66t 0xe6t 0x3et
        0x8ft 0xc2t 0xf5t 0x3et
        0xb8t 0x1et 0x5t 0x3ft
        0xcdt 0xcct 0xct 0x3ft
        0x3dt 0xat 0x17t 0x3ft
        0x52t 0xb8t 0x1et 0x3ft
        0xc3t 0xf5t 0x28t 0x3ft
        0xd7t 0xa3t 0x30t 0x3ft
        0xect 0x51t 0x38t 0x3ft
        0x5ct 0x8ft 0x42t 0x3ft
        0x71t 0x3dt 0x4at 0x3ft
        0xe1t 0x7at 0x54t 0x3ft
        0xf6t 0x28t 0x5ct 0x3ft
        0x66t 0x66t 0x66t 0x3ft
        0x7bt 0x14t 0x6et 0x3ft
        0xect 0x51t 0x78t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method private b()V
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/high16 v4, 0x3f80

    iget-object v0, p0, Lcom/iLoong/launcher/cling/g;->a:[F

    aput v1, v0, v2

    iget-object v0, p0, Lcom/iLoong/launcher/cling/g;->b:[F

    aput v1, v0, v2

    const/4 v0, 0x1

    :goto_0
    iget v1, p0, Lcom/iLoong/launcher/cling/g;->d:I

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/cling/g;->a:[F

    iget v1, p0, Lcom/iLoong/launcher/cling/g;->d:I

    add-int/lit8 v1, v1, -0x1

    aput v4, v0, v1

    iget-object v0, p0, Lcom/iLoong/launcher/cling/g;->b:[F

    iget v1, p0, Lcom/iLoong/launcher/cling/g;->d:I

    add-int/lit8 v1, v1, -0x1

    aput v4, v0, v1

    return-void

    :cond_0
    iget-object v1, p0, Lcom/iLoong/launcher/cling/g;->a:[F

    iget v2, p0, Lcom/iLoong/launcher/cling/g;->d:I

    mul-int/lit8 v2, v2, 0x2

    div-int/lit8 v2, v2, 0x3

    int-to-float v2, v2

    div-float v2, v4, v2

    int-to-float v3, v0

    mul-float/2addr v2, v3

    aput v2, v1, v0

    iget-object v1, p0, Lcom/iLoong/launcher/cling/g;->a:[F

    aget v1, v1, v0

    cmpl-float v1, v1, v4

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/iLoong/launcher/cling/g;->a:[F

    aput v4, v1, v0

    :cond_1
    iget-object v1, p0, Lcom/iLoong/launcher/cling/g;->b:[F

    iget v2, p0, Lcom/iLoong/launcher/cling/g;->d:I

    int-to-float v2, v2

    div-float v2, v4, v2

    int-to-float v3, v0

    mul-float/2addr v2, v3

    aput v2, v1, v0

    iget-object v1, p0, Lcom/iLoong/launcher/cling/g;->b:[F

    aget v1, v1, v0

    cmpl-float v1, v1, v4

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/iLoong/launcher/cling/g;->b:[F

    aput v4, v1, v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/iLoong/launcher/cling/g;->l:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/cling/g;->a(Z)V

    invoke-virtual {p0, v1}, Lcom/iLoong/launcher/cling/g;->b(Z)V

    iput v1, p0, Lcom/iLoong/launcher/cling/g;->j:I

    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->requestRendering()V

    goto :goto_0
.end method

.method public a(FF)V
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/cling/g;->e:Landroid/graphics/PointF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    return-void
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/iLoong/launcher/cling/g;->i:I

    return-void
.end method

.method public declared-synchronized a(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/iLoong/launcher/cling/g;->c:Lcom/iLoong/launcher/cling/o;

    invoke-static {v0, p1}, Lcom/iLoong/launcher/cling/o;->a(Lcom/iLoong/launcher/cling/o;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(FF)V
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/cling/g;->f:Landroid/graphics/PointF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    return-void
.end method

.method public declared-synchronized b(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/iLoong/launcher/cling/g;->l:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c(FF)V
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/cling/g;->g:Landroid/graphics/PointF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    return-void
.end method

.method public declared-synchronized c(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/iLoong/launcher/cling/g;->k:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public d(FF)V
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/cling/g;->h:Landroid/graphics/PointF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    return-void
.end method

.method public run()V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    :goto_0
    iget-boolean v0, p0, Lcom/iLoong/launcher/cling/g;->l:Z

    if-nez v0, :cond_3

    :cond_0
    :goto_1
    iget v0, p0, Lcom/iLoong/launcher/cling/g;->j:I

    iget v1, p0, Lcom/iLoong/launcher/cling/g;->d:I

    if-lt v0, v1, :cond_4

    iget v0, p0, Lcom/iLoong/launcher/cling/g;->i:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/iLoong/launcher/cling/g;->i:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/iLoong/launcher/cling/g;->c:Lcom/iLoong/launcher/cling/o;

    invoke-static {v0}, Lcom/iLoong/launcher/cling/o;->h(Lcom/iLoong/launcher/cling/o;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/iLoong/launcher/cling/o;->a(Lcom/iLoong/launcher/cling/o;I)V

    iget-object v0, p0, Lcom/iLoong/launcher/cling/g;->c:Lcom/iLoong/launcher/cling/o;

    const/high16 v1, -0x4080

    const/4 v2, 0x0

    sget v3, Lcom/iLoong/launcher/cling/o;->a:I

    int-to-float v3, v3

    sget v4, Lcom/iLoong/launcher/cling/o;->b:I

    int-to-float v4, v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/iLoong/launcher/cling/o;->a(Lcom/iLoong/launcher/cling/o;FFFF)V

    :cond_2
    const/4 v0, -0x1

    iput v0, p0, Lcom/iLoong/launcher/cling/g;->i:I

    invoke-virtual {p0, v7}, Lcom/iLoong/launcher/cling/g;->a(Z)V

    invoke-virtual {p0, v8}, Lcom/iLoong/launcher/cling/g;->b(Z)V

    goto :goto_0

    :cond_3
    const-wide/16 v0, 0x19

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/iLoong/launcher/cling/g;->e:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/iLoong/launcher/cling/g;->a:[F

    iget v2, p0, Lcom/iLoong/launcher/cling/g;->j:I

    aget v1, v1, v2

    iget-object v2, p0, Lcom/iLoong/launcher/cling/g;->g:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/iLoong/launcher/cling/g;->e:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/iLoong/launcher/cling/g;->e:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget-object v2, p0, Lcom/iLoong/launcher/cling/g;->a:[F

    iget v3, p0, Lcom/iLoong/launcher/cling/g;->j:I

    aget v2, v2, v3

    iget-object v3, p0, Lcom/iLoong/launcher/cling/g;->g:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget-object v4, p0, Lcom/iLoong/launcher/cling/g;->e:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, v4

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/iLoong/launcher/cling/g;->f:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/iLoong/launcher/cling/g;->b:[F

    iget v4, p0, Lcom/iLoong/launcher/cling/g;->j:I

    aget v3, v3, v4

    iget-object v4, p0, Lcom/iLoong/launcher/cling/g;->h:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    iget-object v5, p0, Lcom/iLoong/launcher/cling/g;->f:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    sub-float/2addr v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/iLoong/launcher/cling/g;->f:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget-object v4, p0, Lcom/iLoong/launcher/cling/g;->b:[F

    iget v5, p0, Lcom/iLoong/launcher/cling/g;->j:I

    aget v4, v4, v5

    iget-object v5, p0, Lcom/iLoong/launcher/cling/g;->h:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    iget-object v6, p0, Lcom/iLoong/launcher/cling/g;->f:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    sub-float/2addr v5, v6

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-int v3, v3

    int-to-float v3, v3

    :goto_2
    iget-boolean v4, p0, Lcom/iLoong/launcher/cling/g;->k:Z

    if-eqz v4, :cond_6

    iget v4, p0, Lcom/iLoong/launcher/cling/g;->i:I

    if-ne v4, v8, :cond_5

    iget v4, p0, Lcom/iLoong/launcher/cling/g;->j:I

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/iLoong/launcher/cling/g;->c:Lcom/iLoong/launcher/cling/o;

    invoke-static {v4}, Lcom/iLoong/launcher/cling/o;->h(Lcom/iLoong/launcher/cling/o;)I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-static {v4, v5}, Lcom/iLoong/launcher/cling/o;->a(Lcom/iLoong/launcher/cling/o;I)V

    :cond_5
    iget-object v4, p0, Lcom/iLoong/launcher/cling/g;->c:Lcom/iLoong/launcher/cling/o;

    invoke-static {v4, v0, v1, v2, v3}, Lcom/iLoong/launcher/cling/o;->a(Lcom/iLoong/launcher/cling/o;FFFF)V

    invoke-virtual {p0, v7}, Lcom/iLoong/launcher/cling/g;->c(Z)V

    iget v0, p0, Lcom/iLoong/launcher/cling/g;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/iLoong/launcher/cling/g;->j:I

    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->requestRendering()V

    goto/16 :goto_1

    :cond_6
    const-wide/16 v4, 0xa

    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v4

    goto :goto_2
.end method
