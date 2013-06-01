.class public Lcom/iLoong/launcher/cling/n;
.super Ljava/lang/Object;


# instance fields
.field public a:Landroid/graphics/PointF;

.field public b:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/PointF;

    const/high16 v1, 0x3f80

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/iLoong/launcher/cling/n;->a:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v2, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/iLoong/launcher/cling/n;->b:Landroid/graphics/PointF;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/PointF;

    const/high16 v1, 0x3f80

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/iLoong/launcher/cling/n;->a:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v2, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/iLoong/launcher/cling/n;->b:Landroid/graphics/PointF;

    invoke-virtual {p0, p1, p2}, Lcom/iLoong/launcher/cling/n;->a(Landroid/graphics/PointF;Landroid/graphics/PointF;)Z

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/PointF;)F
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/iLoong/launcher/cling/n;->a:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    invoke-static {v0, v1}, Lcom/iLoong/launcher/cling/k;->a(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/iLoong/launcher/cling/n;->b:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/iLoong/launcher/cling/n;->a:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-static {v0, v1}, Lcom/iLoong/launcher/cling/k;->a(FF)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p1, Landroid/graphics/PointF;->y:F

    iget-object v1, p0, Lcom/iLoong/launcher/cling/n;->b:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/iLoong/launcher/cling/n;

    invoke-direct {v0}, Lcom/iLoong/launcher/cling/n;-><init>()V

    new-instance v1, Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/iLoong/launcher/cling/n;->a:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget-object v3, p0, Lcom/iLoong/launcher/cling/n;->a:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    neg-float v3, v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v0, v1, p1}, Lcom/iLoong/launcher/cling/n;->a(Landroid/graphics/PointF;Landroid/graphics/PointF;)Z

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/cling/n;->b(Lcom/iLoong/launcher/cling/n;)Landroid/graphics/PointF;

    move-result-object v0

    iget v1, p1, Landroid/graphics/PointF;->x:F

    neg-float v1, v1

    iget v2, p1, Landroid/graphics/PointF;->y:F

    neg-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->offset(FF)V

    invoke-virtual {v0}, Landroid/graphics/PointF;->length()F

    move-result v0

    goto :goto_0
.end method

.method public a(Landroid/graphics/PointF;Landroid/graphics/PointF;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/graphics/PointF;->length()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/PointF;->length()F

    move-result v0

    iget-object v1, p0, Lcom/iLoong/launcher/cling/n;->a:Landroid/graphics/PointF;

    iget v2, p1, Landroid/graphics/PointF;->x:F

    div-float/2addr v2, v0

    iget v3, p1, Landroid/graphics/PointF;->y:F

    div-float v0, v3, v0

    invoke-virtual {v1, v2, v0}, Landroid/graphics/PointF;->set(FF)V

    iget-object v0, p0, Lcom/iLoong/launcher/cling/n;->b:Landroid/graphics/PointF;

    invoke-virtual {v0, p2}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public a(Lcom/iLoong/launcher/cling/n;)Z
    .locals 2

    iget-object v0, p0, Lcom/iLoong/launcher/cling/n;->a:Landroid/graphics/PointF;

    iget-object v1, p1, Lcom/iLoong/launcher/cling/n;->a:Landroid/graphics/PointF;

    invoke-static {v0, v1}, Lcom/iLoong/launcher/cling/k;->a(Landroid/graphics/PointF;Landroid/graphics/PointF;)Z

    move-result v0

    return v0
.end method

.method public b(Lcom/iLoong/launcher/cling/n;)Landroid/graphics/PointF;
    .locals 6

    const/high16 v3, 0x7f80

    const/4 v2, 0x0

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v2, v2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p0, p1}, Lcom/iLoong/launcher/cling/n;->a(Lcom/iLoong/launcher/cling/n;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v3, v3}, Landroid/graphics/PointF;->set(FF)V

    :cond_0
    iget-object v1, p0, Lcom/iLoong/launcher/cling/n;->a:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    invoke-static {v1, v2}, Lcom/iLoong/launcher/cling/k;->a(FF)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/iLoong/launcher/cling/n;->b:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iput v1, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p1, Lcom/iLoong/launcher/cling/n;->a:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget-object v2, p1, Lcom/iLoong/launcher/cling/n;->a:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    div-float/2addr v1, v2

    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget-object v3, p1, Lcom/iLoong/launcher/cling/n;->b:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p1, Lcom/iLoong/launcher/cling/n;->b:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->y:F

    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p1, Lcom/iLoong/launcher/cling/n;->a:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    invoke-static {v1, v2}, Lcom/iLoong/launcher/cling/k;->a(FF)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/iLoong/launcher/cling/n;->b:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iput v1, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/iLoong/launcher/cling/n;->a:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget-object v2, p0, Lcom/iLoong/launcher/cling/n;->a:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    div-float/2addr v1, v2

    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/iLoong/launcher/cling/n;->b:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/iLoong/launcher/cling/n;->b:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->y:F

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/iLoong/launcher/cling/n;->a:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget-object v2, p0, Lcom/iLoong/launcher/cling/n;->a:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/iLoong/launcher/cling/n;->b:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget-object v3, p0, Lcom/iLoong/launcher/cling/n;->b:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    mul-float/2addr v3, v1

    sub-float/2addr v2, v3

    iget-object v3, p1, Lcom/iLoong/launcher/cling/n;->a:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget-object v4, p1, Lcom/iLoong/launcher/cling/n;->a:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    div-float/2addr v3, v4

    iget-object v4, p1, Lcom/iLoong/launcher/cling/n;->b:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    iget-object v5, p1, Lcom/iLoong/launcher/cling/n;->b:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    mul-float/2addr v5, v3

    sub-float/2addr v4, v5

    sub-float/2addr v4, v2

    sub-float v3, v1, v3

    div-float v3, v4, v3

    iput v3, v0, Landroid/graphics/PointF;->x:F

    iget v3, v0, Landroid/graphics/PointF;->x:F

    mul-float/2addr v1, v3

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->y:F

    goto :goto_0
.end method

.method public b(Landroid/graphics/PointF;Landroid/graphics/PointF;)Z
    .locals 4

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    new-instance v0, Landroid/graphics/PointF;

    iget v1, p2, Landroid/graphics/PointF;->x:F

    iget v2, p1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    iget v2, p2, Landroid/graphics/PointF;->y:F

    iget v3, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v3

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p0, v0, p1}, Lcom/iLoong/launcher/cling/n;->a(Landroid/graphics/PointF;Landroid/graphics/PointF;)Z

    const/4 v0, 0x1

    goto :goto_0
.end method
