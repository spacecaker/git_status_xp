.class Lcom/iLoong/launcher/UI3DEngine/i;
.super Ljava/lang/Object;


# instance fields
.field a:I

.field b:I

.field c:I

.field d:I

.field e:I

.field f:J

.field g:I

.field h:[F

.field i:[F

.field j:[J


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    iput v0, p0, Lcom/iLoong/launcher/UI3DEngine/i;->a:I

    iget v0, p0, Lcom/iLoong/launcher/UI3DEngine/i;->a:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/i;->h:[F

    iget v0, p0, Lcom/iLoong/launcher/UI3DEngine/i;->a:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/i;->i:[F

    iget v0, p0, Lcom/iLoong/launcher/UI3DEngine/i;->a:I

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/i;->j:[J

    return-void
.end method

.method private a([FI)F
    .locals 4

    iget v0, p0, Lcom/iLoong/launcher/UI3DEngine/i;->a:I

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_0

    int-to-float v0, v2

    div-float v0, v1, v0

    return v0

    :cond_0
    aget v3, p1, v0

    add-float/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private a([JI)J
    .locals 8

    const-wide/16 v0, 0x0

    iget v2, p0, Lcom/iLoong/launcher/UI3DEngine/i;->a:I

    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    move-result v5

    const/4 v2, 0x0

    move-wide v3, v0

    :goto_0
    if-lt v2, v5, :cond_0

    if-nez v5, :cond_1

    :goto_1
    return-wide v0

    :cond_0
    aget-wide v6, p1, v2

    add-long/2addr v3, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    int-to-long v0, v5

    div-long v0, v3, v0

    goto :goto_1
.end method


# virtual methods
.method public a()F
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/iLoong/launcher/UI3DEngine/i;->h:[F

    iget v2, p0, Lcom/iLoong/launcher/UI3DEngine/i;->g:I

    invoke-direct {p0, v1, v2}, Lcom/iLoong/launcher/UI3DEngine/i;->a([FI)F

    move-result v1

    iget-object v2, p0, Lcom/iLoong/launcher/UI3DEngine/i;->j:[J

    iget v3, p0, Lcom/iLoong/launcher/UI3DEngine/i;->g:I

    invoke-direct {p0, v2, v3}, Lcom/iLoong/launcher/UI3DEngine/i;->a([JI)J

    move-result-wide v2

    long-to-float v2, v2

    const v3, 0x4e6e6b28

    div-float/2addr v2, v3

    cmpl-float v3, v2, v0

    if-nez v3, :cond_0

    :goto_0
    return v0

    :cond_0
    div-float v0, v1, v2

    goto :goto_0
.end method

.method public a(IIJ)V
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x0

    iput p1, p0, Lcom/iLoong/launcher/UI3DEngine/i;->b:I

    iput p2, p0, Lcom/iLoong/launcher/UI3DEngine/i;->c:I

    iput v0, p0, Lcom/iLoong/launcher/UI3DEngine/i;->d:I

    iput v0, p0, Lcom/iLoong/launcher/UI3DEngine/i;->e:I

    iput v0, p0, Lcom/iLoong/launcher/UI3DEngine/i;->g:I

    :goto_0
    iget v1, p0, Lcom/iLoong/launcher/UI3DEngine/i;->a:I

    if-lt v0, v1, :cond_0

    iput-wide p3, p0, Lcom/iLoong/launcher/UI3DEngine/i;->f:J

    return-void

    :cond_0
    iget-object v1, p0, Lcom/iLoong/launcher/UI3DEngine/i;->h:[F

    aput v4, v1, v0

    iget-object v1, p0, Lcom/iLoong/launcher/UI3DEngine/i;->i:[F

    aput v4, v1, v0

    iget-object v1, p0, Lcom/iLoong/launcher/UI3DEngine/i;->j:[J

    const-wide/16 v2, 0x0

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public b()F
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/iLoong/launcher/UI3DEngine/i;->i:[F

    iget v2, p0, Lcom/iLoong/launcher/UI3DEngine/i;->g:I

    invoke-direct {p0, v1, v2}, Lcom/iLoong/launcher/UI3DEngine/i;->a([FI)F

    move-result v1

    iget-object v2, p0, Lcom/iLoong/launcher/UI3DEngine/i;->j:[J

    iget v3, p0, Lcom/iLoong/launcher/UI3DEngine/i;->g:I

    invoke-direct {p0, v2, v3}, Lcom/iLoong/launcher/UI3DEngine/i;->a([JI)J

    move-result-wide v2

    long-to-float v2, v2

    const v3, 0x4e6e6b28

    div-float/2addr v2, v3

    cmpl-float v3, v2, v0

    if-nez v3, :cond_0

    :goto_0
    return v0

    :cond_0
    div-float v0, v1, v2

    goto :goto_0
.end method

.method public b(IIJ)V
    .locals 5

    iget v0, p0, Lcom/iLoong/launcher/UI3DEngine/i;->b:I

    sub-int v0, p1, v0

    iput v0, p0, Lcom/iLoong/launcher/UI3DEngine/i;->d:I

    iget v0, p0, Lcom/iLoong/launcher/UI3DEngine/i;->c:I

    sub-int v0, p2, v0

    iput v0, p0, Lcom/iLoong/launcher/UI3DEngine/i;->e:I

    iput p1, p0, Lcom/iLoong/launcher/UI3DEngine/i;->b:I

    iput p2, p0, Lcom/iLoong/launcher/UI3DEngine/i;->c:I

    iget-wide v0, p0, Lcom/iLoong/launcher/UI3DEngine/i;->f:J

    sub-long v0, p3, v0

    iput-wide p3, p0, Lcom/iLoong/launcher/UI3DEngine/i;->f:J

    iget v2, p0, Lcom/iLoong/launcher/UI3DEngine/i;->g:I

    iget v3, p0, Lcom/iLoong/launcher/UI3DEngine/i;->a:I

    rem-int/2addr v2, v3

    iget-object v3, p0, Lcom/iLoong/launcher/UI3DEngine/i;->h:[F

    iget v4, p0, Lcom/iLoong/launcher/UI3DEngine/i;->d:I

    int-to-float v4, v4

    aput v4, v3, v2

    iget-object v3, p0, Lcom/iLoong/launcher/UI3DEngine/i;->i:[F

    iget v4, p0, Lcom/iLoong/launcher/UI3DEngine/i;->e:I

    int-to-float v4, v4

    aput v4, v3, v2

    iget-object v3, p0, Lcom/iLoong/launcher/UI3DEngine/i;->j:[J

    aput-wide v0, v3, v2

    iget v0, p0, Lcom/iLoong/launcher/UI3DEngine/i;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/iLoong/launcher/UI3DEngine/i;->g:I

    return-void
.end method
