.class public Lcom/iLoong/launcher/Desktop3D/av;
.super Lcom/iLoong/launcher/UI3DEngine/d;


# instance fields
.field a:F

.field b:F

.field final synthetic c:Lcom/iLoong/launcher/Desktop3D/bo;


# virtual methods
.method public onTouchDown(FFI)Z
    .locals 2

    const-string v0, "ICONGROUP3D"

    const-string v1, " ResizeButton3D on onTouchDown "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p3, :cond_0

    iput p1, p0, Lcom/iLoong/launcher/Desktop3D/av;->a:F

    iput p2, p0, Lcom/iLoong/launcher/Desktop3D/av;->b:F

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/av;->requestFocus()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onTouchUp(FFI)Z
    .locals 2

    const-string v0, "ICONGROUP3D"

    const-string v1, " ResizeButton3D on onTouchUp "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p3, :cond_0

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/av;->releaseFocus()V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public scroll(FFFF)Z
    .locals 4

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/av;->requestFocus()V

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/av;->a:F

    sub-float v0, p1, v0

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/av;->a:F

    sub-float v1, p1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/av;->b:F

    sub-float v1, p2, v1

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/av;->b:F

    sub-float v2, p2, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4024

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/av;->c:Lcom/iLoong/launcher/Desktop3D/bo;

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/av;->a:F

    sub-float v1, p1, v1

    iput v1, v0, Lcom/iLoong/launcher/Desktop3D/bo;->a:F

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/av;->c:Lcom/iLoong/launcher/Desktop3D/bo;

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/av;->b:F

    sub-float/2addr v1, p2

    iput v1, v0, Lcom/iLoong/launcher/Desktop3D/bo;->b:F

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/av;->c:Lcom/iLoong/launcher/Desktop3D/bo;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/bo;->a()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
