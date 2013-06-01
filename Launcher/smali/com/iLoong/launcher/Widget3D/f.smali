.class public Lcom/iLoong/launcher/Widget3D/f;
.super Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

# interfaces
.implements Lcom/iLoong/launcher/Desktop3D/u;


# instance fields
.field public a:Lcom/iLoong/launcher/a/d;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Lcom/iLoong/launcher/Widget3D/WidgetPluginView3D;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/iLoong/launcher/Widget3D/WidgetPluginView3D;)V
    .locals 3

    const/high16 v2, 0x4000

    invoke-direct {p0, p1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;-><init>(Ljava/lang/String;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/iLoong/launcher/Widget3D/f;->b:I

    iput-object p2, p0, Lcom/iLoong/launcher/Widget3D/f;->d:Lcom/iLoong/launcher/Widget3D/WidgetPluginView3D;

    invoke-virtual {p0, p2}, Lcom/iLoong/launcher/Widget3D/f;->addView(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    iget v0, p2, Lcom/iLoong/launcher/Widget3D/WidgetPluginView3D;->width:F

    iput v0, p0, Lcom/iLoong/launcher/Widget3D/f;->width:F

    iget v0, p2, Lcom/iLoong/launcher/Widget3D/WidgetPluginView3D;->height:F

    iput v0, p0, Lcom/iLoong/launcher/Widget3D/f;->height:F

    iget v0, p0, Lcom/iLoong/launcher/Widget3D/f;->width:F

    div-float/2addr v0, v2

    iget v1, p0, Lcom/iLoong/launcher/Widget3D/f;->height:F

    div-float/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/iLoong/launcher/Widget3D/f;->setOrigin(FF)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iLoong/launcher/Widget3D/f;->transform:Z

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/Widget3D/f;->c:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/iLoong/launcher/Widget3D/f;->b:I

    return-void
.end method

.method public a(II)V
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/Widget3D/f;->d:Lcom/iLoong/launcher/Widget3D/WidgetPluginView3D;

    invoke-virtual {v0, p1, p2}, Lcom/iLoong/launcher/Widget3D/WidgetPluginView3D;->onKeyEvent(II)V

    return-void
.end method

.method public a(Lcom/iLoong/launcher/a/j;)V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iLoong/launcher/Widget3D/f;->c:Ljava/lang/String;

    return-void
.end method

.method public bridge synthetic b()Lcom/iLoong/launcher/a/j;
    .locals 1

    invoke-virtual {p0}, Lcom/iLoong/launcher/Widget3D/f;->c()Lcom/iLoong/launcher/a/d;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/iLoong/launcher/a/d;
    .locals 3

    iget-object v0, p0, Lcom/iLoong/launcher/Widget3D/f;->a:Lcom/iLoong/launcher/a/d;

    if-nez v0, :cond_0

    new-instance v0, Lcom/iLoong/launcher/a/d;

    invoke-direct {v0}, Lcom/iLoong/launcher/a/d;-><init>()V

    iput-object v0, p0, Lcom/iLoong/launcher/Widget3D/f;->a:Lcom/iLoong/launcher/a/d;

    iget-object v0, p0, Lcom/iLoong/launcher/Widget3D/f;->a:Lcom/iLoong/launcher/a/d;

    const/4 v1, 0x5

    iput v1, v0, Lcom/iLoong/launcher/a/d;->l:I

    iget-object v0, p0, Lcom/iLoong/launcher/Widget3D/f;->a:Lcom/iLoong/launcher/a/d;

    iget-object v1, p0, Lcom/iLoong/launcher/Widget3D/f;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/iLoong/launcher/a/d;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/iLoong/launcher/Widget3D/f;->a:Lcom/iLoong/launcher/a/d;

    iget v1, p0, Lcom/iLoong/launcher/Widget3D/f;->b:I

    iput v1, v0, Lcom/iLoong/launcher/a/d;->a:I

    :cond_0
    invoke-static {}, Lcom/iLoong/launcher/Widget3D/g;->a()Lcom/iLoong/launcher/Widget3D/g;

    move-result-object v0

    iget-object v1, p0, Lcom/iLoong/launcher/Widget3D/f;->a:Lcom/iLoong/launcher/a/d;

    iget-object v1, v1, Lcom/iLoong/launcher/a/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/Widget3D/g;->a(Ljava/lang/String;)Lcom/iLoong/launcher/Widget3D/a;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/iLoong/launcher/Widget3D/f;->a:Lcom/iLoong/launcher/a/d;

    iget v2, v0, Lcom/iLoong/launcher/Widget3D/a;->d:I

    iput v2, v1, Lcom/iLoong/launcher/a/d;->w:I

    iget-object v1, p0, Lcom/iLoong/launcher/Widget3D/f;->a:Lcom/iLoong/launcher/a/d;

    iget v0, v0, Lcom/iLoong/launcher/Widget3D/a;->e:I

    iput v0, v1, Lcom/iLoong/launcher/a/d;->x:I

    :cond_1
    iget-object v0, p0, Lcom/iLoong/launcher/Widget3D/f;->a:Lcom/iLoong/launcher/a/d;

    iget v1, p0, Lcom/iLoong/launcher/Widget3D/f;->x:F

    float-to-int v1, v1

    iput v1, v0, Lcom/iLoong/launcher/a/d;->p:I

    iget-object v0, p0, Lcom/iLoong/launcher/Widget3D/f;->a:Lcom/iLoong/launcher/a/d;

    iget v1, p0, Lcom/iLoong/launcher/Widget3D/f;->y:F

    float-to-int v1, v1

    iput v1, v0, Lcom/iLoong/launcher/a/d;->q:I

    iget-object v0, p0, Lcom/iLoong/launcher/Widget3D/f;->a:Lcom/iLoong/launcher/a/d;

    return-object v0
.end method

.method public clone()Lcom/iLoong/launcher/UI3DEngine/View3D;
    .locals 3

    new-instance v0, Lcom/iLoong/launcher/Widget3D/f;

    iget-object v1, p0, Lcom/iLoong/launcher/Widget3D/f;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/iLoong/launcher/Widget3D/f;->d:Lcom/iLoong/launcher/Widget3D/WidgetPluginView3D;

    invoke-direct {v0, v1, v2}, Lcom/iLoong/launcher/Widget3D/f;-><init>(Ljava/lang/String;Lcom/iLoong/launcher/Widget3D/WidgetPluginView3D;)V

    iget v1, p0, Lcom/iLoong/launcher/Widget3D/f;->b:I

    iput v1, v0, Lcom/iLoong/launcher/Widget3D/f;->b:I

    iget-object v1, p0, Lcom/iLoong/launcher/Widget3D/f;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/iLoong/launcher/Widget3D/f;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/Widget3D/f;->d:Lcom/iLoong/launcher/Widget3D/WidgetPluginView3D;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Widget3D/WidgetPluginView3D;->isOpened()Z

    move-result v0

    return v0
.end method

.method public dispose()V
    .locals 1

    invoke-super {p0}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->dispose()V

    iget-object v0, p0, Lcom/iLoong/launcher/Widget3D/f;->d:Lcom/iLoong/launcher/Widget3D/WidgetPluginView3D;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Widget3D/WidgetPluginView3D;->dispose()V

    return-void
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/Widget3D/f;->d:Lcom/iLoong/launcher/Widget3D/WidgetPluginView3D;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Widget3D/WidgetPluginView3D;->onDelete()V

    return-void
.end method

.method public f()V
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/Widget3D/f;->d:Lcom/iLoong/launcher/Widget3D/WidgetPluginView3D;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Widget3D/WidgetPluginView3D;->onResume()V

    return-void
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/Widget3D/f;->d:Lcom/iLoong/launcher/Widget3D/WidgetPluginView3D;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Widget3D/WidgetPluginView3D;->onPause()V

    return-void
.end method

.method public h()V
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/Widget3D/f;->d:Lcom/iLoong/launcher/Widget3D/WidgetPluginView3D;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Widget3D/WidgetPluginView3D;->onStop()V

    return-void
.end method

.method public i()V
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/Widget3D/f;->d:Lcom/iLoong/launcher/Widget3D/WidgetPluginView3D;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Widget3D/WidgetPluginView3D;->onUninstall()V

    return-void
.end method

.method public onClick(FF)Z
    .locals 3

    const-string v0, "Widget3D"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onClick"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/iLoong/launcher/Widget3D/f;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " x:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " y:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1, p2}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->onClick(FF)Z

    move-result v0

    return v0
.end method

.method public onCtrlEvent(Lcom/iLoong/launcher/UI3DEngine/View3D;I)Z
    .locals 4

    const/4 v1, 0x0

    const-string v0, "Widget3D"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onLongClick:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/iLoong/launcher/Widget3D/f;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " x:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/iLoong/launcher/Widget3D/f;->x:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " y:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/iLoong/launcher/Widget3D/f;->y:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/iLoong/launcher/Widget3D/f;->isDragging:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/iLoong/launcher/Widget3D/f;->point:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/Widget3D/f;->toAbsoluteCoords(Lcom/badlogic/gdx/math/Vector2;)V

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    iget-object v2, p0, Lcom/iLoong/launcher/Widget3D/f;->point:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v3, p0, Lcom/iLoong/launcher/Widget3D/f;->point:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-direct {v0, v2, v3}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/Widget3D/f;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/iLoong/launcher/UI3DEngine/View3D;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/iLoong/launcher/UI3DEngine/View3D;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/math/Vector2;

    iget v2, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    sput v2, Lcom/iLoong/launcher/Desktop3D/x;->a:F

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    sput v0, Lcom/iLoong/launcher/Desktop3D/x;->b:F

    :cond_0
    iget-object v0, p0, Lcom/iLoong/launcher/Widget3D/f;->viewParent:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    invoke-virtual {v0, p0, v1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->onCtrlEvent(Lcom/iLoong/launcher/UI3DEngine/View3D;I)Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public onLongClick(FF)Z
    .locals 4

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/iLoong/launcher/Widget3D/f;->isDragging:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/iLoong/launcher/Widget3D/f;->point:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p0, v1}, Lcom/iLoong/launcher/Widget3D/f;->toAbsoluteCoords(Lcom/badlogic/gdx/math/Vector2;)V

    new-instance v1, Lcom/badlogic/gdx/math/Vector2;

    iget-object v2, p0, Lcom/iLoong/launcher/Widget3D/f;->point:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v3, p0, Lcom/iLoong/launcher/Widget3D/f;->point:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-direct {v1, v2, v3}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    invoke-virtual {p0, v1}, Lcom/iLoong/launcher/Widget3D/f;->setTag(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/iLoong/launcher/Widget3D/f;->point:Lcom/badlogic/gdx/math/Vector2;

    iput p1, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v1, p0, Lcom/iLoong/launcher/Widget3D/f;->point:Lcom/badlogic/gdx/math/Vector2;

    iput p2, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v1, p0, Lcom/iLoong/launcher/Widget3D/f;->point:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p0, v1}, Lcom/iLoong/launcher/Widget3D/f;->toAbsolute(Lcom/badlogic/gdx/math/Vector2;)V

    iget-object v1, p0, Lcom/iLoong/launcher/Widget3D/f;->point:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    sput v1, Lcom/iLoong/launcher/Desktop3D/x;->a:F

    iget-object v1, p0, Lcom/iLoong/launcher/Widget3D/f;->point:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    sput v1, Lcom/iLoong/launcher/Desktop3D/x;->b:F

    const-string v1, "launcher"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onLongClick:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/iLoong/launcher/Widget3D/f;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " x:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/iLoong/launcher/Widget3D/f;->point:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " y:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/iLoong/launcher/Widget3D/f;->point:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/iLoong/launcher/Widget3D/f;->viewParent:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    invoke-virtual {v1, p0, v0}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->onCtrlEvent(Lcom/iLoong/launcher/UI3DEngine/View3D;I)Z

    move-result v0

    :cond_0
    return v0
.end method

.method public onTouchDown(FFI)Z
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->onTouchDown(FFI)Z

    move-result v0

    return v0
.end method
