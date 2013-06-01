.class Lcom/iLoong/launcher/Desktop3D/w;
.super Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;


# instance fields
.field final synthetic a:Lcom/iLoong/launcher/Desktop3D/f;


# direct methods
.method public constructor <init>(Lcom/iLoong/launcher/Desktop3D/f;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/iLoong/launcher/Desktop3D/w;->a:Lcom/iLoong/launcher/Desktop3D/f;

    invoke-direct {p0, p2}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/w;->transform:Z

    return-void
.end method


# virtual methods
.method protected drawChildren(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 14

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/w;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float v8, p2, v0

    const/4 v0, 0x0

    move v7, v0

    :goto_0
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/w;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v7, v0, :cond_0

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/w;->children:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/iLoong/launcher/UI3DEngine/View3D;

    iget-boolean v0, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->visible:Z

    if-nez v0, :cond_1

    :goto_1
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v6, p1}, Lcom/iLoong/launcher/UI3DEngine/View3D;->applyTransformChild(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    iget-object v0, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->background9:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    if-eqz v0, :cond_2

    iget-object v0, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v1, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v2, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget-object v3, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v3, v8

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->getTransformMatrix()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v9

    iget v0, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->width:F

    const/high16 v1, 0x428c

    div-float/2addr v0, v1

    const/high16 v1, 0x3f80

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    iget v0, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->width:F

    const/high16 v1, 0x428c

    div-float/2addr v0, v1

    :goto_2
    iget v1, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->height:F

    const/high16 v2, 0x42b0

    div-float/2addr v1, v2

    const/high16 v2, 0x3f80

    cmpg-float v1, v1, v2

    if-gez v1, :cond_4

    iget v1, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->height:F

    const/high16 v2, 0x42b0

    div-float/2addr v1, v2

    :goto_3
    sget v2, Lcom/iLoong/launcher/Desktop3D/ah;->h:F

    sub-float/2addr v0, v2

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/w;->a:Lcom/iLoong/launcher/Desktop3D/f;

    invoke-static {v2}, Lcom/iLoong/launcher/Desktop3D/f;->a(Lcom/iLoong/launcher/Desktop3D/f;)F

    move-result v2

    const/high16 v3, 0x3f80

    sub-float/2addr v2, v3

    div-float v10, v0, v2

    sget v0, Lcom/iLoong/launcher/Desktop3D/ah;->h:F

    sub-float v11, v0, v10

    sget v0, Lcom/iLoong/launcher/Desktop3D/ah;->i:F

    sub-float v0, v1, v0

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/w;->a:Lcom/iLoong/launcher/Desktop3D/f;

    invoke-static {v1}, Lcom/iLoong/launcher/Desktop3D/f;->b(Lcom/iLoong/launcher/Desktop3D/f;)F

    move-result v1

    const/high16 v2, 0x3f80

    sub-float/2addr v1, v2

    div-float v12, v0, v1

    sget v0, Lcom/iLoong/launcher/Desktop3D/ah;->i:F

    sub-float v13, v0, v12

    iget v0, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->scaleX:F

    mul-float/2addr v0, v10

    add-float/2addr v0, v11

    iget v1, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->scaleY:F

    mul-float/2addr v1, v12

    add-float/2addr v1, v13

    const/high16 v2, 0x3f80

    invoke-virtual {v9, v0, v1, v2}, Lcom/badlogic/gdx/math/Matrix4;->scale(FFF)Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {p1, v9}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setTransformMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    iget-object v0, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->background9:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    iget v2, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->x:F

    iget v3, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->y:F

    iget v1, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->width:F

    iget v4, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->scaleX:F

    mul-float/2addr v4, v10

    add-float/2addr v4, v11

    div-float v4, v1, v4

    iget v1, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->height:F

    iget v5, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->scaleY:F

    mul-float/2addr v5, v12

    add-float/2addr v5, v13

    div-float v5, v1, v5

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFF)V

    const/high16 v0, 0x3f80

    iget v1, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->scaleX:F

    mul-float/2addr v1, v10

    add-float/2addr v1, v11

    div-float/2addr v0, v1

    const/high16 v1, 0x3f80

    iget v2, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->scaleY:F

    mul-float/2addr v2, v12

    add-float/2addr v2, v13

    div-float/2addr v1, v2

    const/high16 v2, 0x3f80

    invoke-virtual {v9, v0, v1, v2}, Lcom/badlogic/gdx/math/Matrix4;->scale(FFF)Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {p1, v9}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setTransformMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    :cond_2
    invoke-virtual {v6, p1, v8}, Lcom/iLoong/launcher/UI3DEngine/View3D;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    invoke-virtual {v6, p1}, Lcom/iLoong/launcher/UI3DEngine/View3D;->resetTransformChild(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    goto/16 :goto_1

    :cond_3
    const/high16 v0, 0x3f80

    goto :goto_2

    :cond_4
    const/high16 v1, 0x3f80

    goto :goto_3
.end method
