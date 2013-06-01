.class public Lcom/iLoong/launcher/widget/c;
.super Lcom/iLoong/launcher/UI3DEngine/View3D;

# interfaces
.implements Lcom/iLoong/launcher/Desktop3D/u;


# instance fields
.field a:Lcom/iLoong/launcher/widget/WidgetHostView;

.field private b:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field private c:Lcom/iLoong/launcher/UI3DEngine/h;

.field private d:J

.field private e:Lcom/iLoong/launcher/a/c;

.field private f:I

.field private h:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/iLoong/launcher/a/c;)V
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/iLoong/launcher/UI3DEngine/View3D;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>()V

    iput-object v0, p0, Lcom/iLoong/launcher/widget/c;->b:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iput-object v1, p0, Lcom/iLoong/launcher/widget/c;->c:Lcom/iLoong/launcher/UI3DEngine/h;

    iput-object v1, p0, Lcom/iLoong/launcher/widget/c;->a:Lcom/iLoong/launcher/widget/WidgetHostView;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/iLoong/launcher/widget/c;->d:J

    iput-object p2, p0, Lcom/iLoong/launcher/widget/c;->e:Lcom/iLoong/launcher/a/c;

    iget v0, p2, Lcom/iLoong/launcher/a/c;->w:I

    sget v1, Lcom/iLoong/launcher/Desktop3D/at;->cn:I

    mul-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p2, Lcom/iLoong/launcher/a/c;->x:I

    sget v2, Lcom/iLoong/launcher/Desktop3D/at;->cp:I

    mul-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/iLoong/launcher/widget/c;->setSize(FF)V

    return-void
.end method


# virtual methods
.method public a()Lcom/iLoong/launcher/a/c;
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/widget/c;->e:Lcom/iLoong/launcher/a/c;

    return-object v0
.end method

.method public a(Lcom/iLoong/launcher/a/j;)V
    .locals 0

    check-cast p1, Lcom/iLoong/launcher/a/c;

    iput-object p1, p0, Lcom/iLoong/launcher/widget/c;->e:Lcom/iLoong/launcher/a/c;

    return-void
.end method

.method public bridge synthetic b()Lcom/iLoong/launcher/a/j;
    .locals 1

    invoke-virtual {p0}, Lcom/iLoong/launcher/widget/c;->a()Lcom/iLoong/launcher/a/c;

    move-result-object v0

    return-object v0
.end method

.method public dispose()V
    .locals 3

    const-string v0, "mem"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "dispose widget:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/iLoong/launcher/widget/c;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/iLoong/launcher/widget/c;->c:Lcom/iLoong/launcher/UI3DEngine/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/widget/c;->c:Lcom/iLoong/launcher/UI3DEngine/h;

    invoke-virtual {v0}, Lcom/iLoong/launcher/UI3DEngine/h;->dispose()V

    :cond_0
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 11

    const/4 v5, 0x2

    const/4 v0, 0x0

    const/high16 v6, 0x4000

    iget-object v1, p0, Lcom/iLoong/launcher/widget/c;->a:Lcom/iLoong/launcher/widget/WidgetHostView;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/iLoong/launcher/widget/c;->a:Lcom/iLoong/launcher/widget/WidgetHostView;

    iget-wide v1, v1, Lcom/iLoong/launcher/widget/WidgetHostView;->b:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_0

    iget-object v1, p0, Lcom/iLoong/launcher/widget/c;->c:Lcom/iLoong/launcher/UI3DEngine/h;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/iLoong/launcher/widget/c;->c:Lcom/iLoong/launcher/UI3DEngine/h;

    invoke-virtual {v1}, Lcom/iLoong/launcher/UI3DEngine/h;->a()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/iLoong/launcher/widget/c;->a:Lcom/iLoong/launcher/widget/WidgetHostView;

    iget v1, v1, Lcom/iLoong/launcher/widget/WidgetHostView;->c:I

    if-ne v1, v5, :cond_5

    :cond_0
    iget-object v1, p0, Lcom/iLoong/launcher/widget/c;->a:Lcom/iLoong/launcher/widget/WidgetHostView;

    iget v1, v1, Lcom/iLoong/launcher/widget/WidgetHostView;->c:I

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/iLoong/launcher/widget/c;->a:Lcom/iLoong/launcher/widget/WidgetHostView;

    const/4 v2, 0x1

    iput v2, v1, Lcom/iLoong/launcher/widget/WidgetHostView;->c:I

    iget-object v1, p0, Lcom/iLoong/launcher/widget/c;->a:Lcom/iLoong/launcher/widget/WidgetHostView;

    invoke-static {v1}, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->getSysWidgetView(Lcom/iLoong/launcher/widget/WidgetHostView;)V

    iget-object v1, p0, Lcom/iLoong/launcher/widget/c;->c:Lcom/iLoong/launcher/UI3DEngine/h;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/iLoong/launcher/widget/c;->c:Lcom/iLoong/launcher/UI3DEngine/h;

    invoke-virtual {v1}, Lcom/iLoong/launcher/UI3DEngine/h;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/iLoong/launcher/widget/c;->a:Lcom/iLoong/launcher/widget/WidgetHostView;

    iget v1, v1, Lcom/iLoong/launcher/widget/WidgetHostView;->c:I

    if-ne v1, v5, :cond_7

    :cond_2
    iget-object v0, p0, Lcom/iLoong/launcher/widget/c;->a:Lcom/iLoong/launcher/widget/WidgetHostView;

    iget-object v4, v0, Lcom/iLoong/launcher/widget/WidgetHostView;->a:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v0, p0, Lcom/iLoong/launcher/widget/c;->a:Lcom/iLoong/launcher/widget/WidgetHostView;

    iget v0, v0, Lcom/iLoong/launcher/widget/WidgetHostView;->c:I

    if-ne v0, v5, :cond_4

    iget-object v0, p0, Lcom/iLoong/launcher/widget/c;->a:Lcom/iLoong/launcher/widget/WidgetHostView;

    const/4 v1, 0x0

    iput v1, v0, Lcom/iLoong/launcher/widget/WidgetHostView;->c:I

    iget-object v0, p0, Lcom/iLoong/launcher/widget/c;->c:Lcom/iLoong/launcher/UI3DEngine/h;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/iLoong/launcher/widget/c;->c:Lcom/iLoong/launcher/UI3DEngine/h;

    invoke-virtual {v0}, Lcom/iLoong/launcher/UI3DEngine/h;->dispose()V

    :cond_3
    new-instance v0, Lcom/iLoong/launcher/UI3DEngine/h;

    iget-object v1, p0, Lcom/iLoong/launcher/widget/c;->a:Lcom/iLoong/launcher/widget/WidgetHostView;

    iget-object v1, v1, Lcom/iLoong/launcher/widget/WidgetHostView;->d:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Lcom/iLoong/launcher/UI3DEngine/h;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/iLoong/launcher/widget/c;->c:Lcom/iLoong/launcher/UI3DEngine/h;

    iget-object v0, p0, Lcom/iLoong/launcher/widget/c;->c:Lcom/iLoong/launcher/UI3DEngine/h;

    sget-object v1, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v2, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-virtual {v0, v1, v2}, Lcom/iLoong/launcher/UI3DEngine/h;->setFilter(Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    iget-object v0, p0, Lcom/iLoong/launcher/widget/c;->b:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget-object v1, p0, Lcom/iLoong/launcher/widget/c;->c:Lcom/iLoong/launcher/UI3DEngine/h;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->setTexture(Lcom/badlogic/gdx/graphics/Texture;)V

    iget-object v0, p0, Lcom/iLoong/launcher/widget/c;->b:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/iLoong/launcher/widget/c;->c:Lcom/iLoong/launcher/UI3DEngine/h;

    invoke-virtual {v3}, Lcom/iLoong/launcher/UI3DEngine/h;->getWidth()I

    move-result v3

    iget-object v5, p0, Lcom/iLoong/launcher/widget/c;->c:Lcom/iLoong/launcher/UI3DEngine/h;

    invoke-virtual {v5}, Lcom/iLoong/launcher/UI3DEngine/h;->getHeight()I

    move-result v5

    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->setRegion(IIII)V

    iget-object v0, p0, Lcom/iLoong/launcher/widget/c;->a:Lcom/iLoong/launcher/widget/WidgetHostView;

    iget-object v0, v0, Lcom/iLoong/launcher/widget/WidgetHostView;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/iLoong/launcher/widget/c;->h:I

    iget-object v0, p0, Lcom/iLoong/launcher/widget/c;->a:Lcom/iLoong/launcher/widget/WidgetHostView;

    iget-object v0, v0, Lcom/iLoong/launcher/widget/WidgetHostView;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/iLoong/launcher/widget/c;->f:I

    const-string v0, "launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "widget:w,h,nw,nh="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/iLoong/launcher/widget/c;->width:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/iLoong/launcher/widget/c;->height:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/iLoong/launcher/widget/c;->h:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/iLoong/launcher/widget/c;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/iLoong/launcher/widget/c;->e:Lcom/iLoong/launcher/a/c;

    iget v0, v0, Lcom/iLoong/launcher/a/c;->w:I

    sget v1, Lcom/iLoong/launcher/Desktop3D/at;->cn:I

    mul-int v2, v0, v1

    iget-object v0, p0, Lcom/iLoong/launcher/widget/c;->e:Lcom/iLoong/launcher/a/c;

    iget v0, v0, Lcom/iLoong/launcher/a/c;->x:I

    sget v1, Lcom/iLoong/launcher/Desktop3D/at;->cp:I

    mul-int/2addr v0, v1

    iget v3, p0, Lcom/iLoong/launcher/widget/c;->h:I

    iget v1, p0, Lcom/iLoong/launcher/widget/c;->f:I

    if-le v3, v2, :cond_a

    iget v1, p0, Lcom/iLoong/launcher/widget/c;->f:I

    int-to-float v1, v1

    int-to-float v3, v2

    mul-float/2addr v1, v3

    iget v3, p0, Lcom/iLoong/launcher/widget/c;->h:I

    int-to-float v3, v3

    div-float/2addr v1, v3

    float-to-int v1, v1

    :goto_1
    if-le v1, v0, :cond_9

    iget v1, p0, Lcom/iLoong/launcher/widget/c;->h:I

    int-to-float v1, v1

    int-to-float v2, v0

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/iLoong/launcher/widget/c;->f:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    :goto_2
    iget v2, p0, Lcom/iLoong/launcher/widget/c;->x:F

    iget v3, p0, Lcom/iLoong/launcher/widget/c;->width:F

    int-to-float v5, v1

    sub-float/2addr v3, v5

    div-float/2addr v3, v6

    add-float/2addr v2, v3

    iput v2, p0, Lcom/iLoong/launcher/widget/c;->x:F

    iget v2, p0, Lcom/iLoong/launcher/widget/c;->y:F

    iget v3, p0, Lcom/iLoong/launcher/widget/c;->height:F

    int-to-float v5, v0

    sub-float/2addr v3, v5

    div-float/2addr v3, v6

    add-float/2addr v2, v3

    iput v2, p0, Lcom/iLoong/launcher/widget/c;->y:F

    int-to-float v1, v1

    int-to-float v0, v0

    invoke-virtual {p0, v1, v0}, Lcom/iLoong/launcher/widget/c;->setSize(FF)V

    invoke-virtual {p0}, Lcom/iLoong/launcher/widget/c;->getWidth()F

    move-result v0

    div-float/2addr v0, v6

    invoke-virtual {p0}, Lcom/iLoong/launcher/widget/c;->getHeight()F

    move-result v1

    div-float/2addr v1, v6

    invoke-virtual {p0, v0, v1}, Lcom/iLoong/launcher/widget/c;->setOrigin(FF)V

    iget-object v0, p0, Lcom/iLoong/launcher/widget/c;->a:Lcom/iLoong/launcher/widget/WidgetHostView;

    iget-object v0, v0, Lcom/iLoong/launcher/widget/WidgetHostView;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iget-object v0, p0, Lcom/iLoong/launcher/widget/c;->a:Lcom/iLoong/launcher/widget/WidgetHostView;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/iLoong/launcher/widget/WidgetHostView;->d:Landroid/graphics/Bitmap;

    invoke-static {}, Ljava/lang/System;->gc()V

    :cond_4
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    iget-object v0, p0, Lcom/iLoong/launcher/widget/c;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v1, p0, Lcom/iLoong/launcher/widget/c;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v2, p0, Lcom/iLoong/launcher/widget/c;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget-object v3, p0, Lcom/iLoong/launcher/widget/c;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v3, p2

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    iget-object v0, p0, Lcom/iLoong/launcher/widget/c;->c:Lcom/iLoong/launcher/UI3DEngine/h;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/iLoong/launcher/widget/c;->c:Lcom/iLoong/launcher/UI3DEngine/h;

    invoke-virtual {v0}, Lcom/iLoong/launcher/UI3DEngine/h;->a()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/iLoong/launcher/widget/c;->is3dRotation()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v1, p0, Lcom/iLoong/launcher/widget/c;->b:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget v0, p0, Lcom/iLoong/launcher/widget/c;->x:F

    float-to-int v0, v0

    int-to-float v2, v0

    iget v0, p0, Lcom/iLoong/launcher/widget/c;->y:F

    float-to-int v0, v0

    int-to-float v3, v0

    iget v4, p0, Lcom/iLoong/launcher/widget/c;->width:F

    iget v5, p0, Lcom/iLoong/launcher/widget/c;->height:F

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    :cond_6
    :goto_3
    return-void

    :cond_7
    const-wide/16 v1, 0x14

    :try_start_1
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_4

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_8
    iget-object v1, p0, Lcom/iLoong/launcher/widget/c;->b:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget v0, p0, Lcom/iLoong/launcher/widget/c;->x:F

    float-to-int v0, v0

    int-to-float v2, v0

    iget v0, p0, Lcom/iLoong/launcher/widget/c;->y:F

    float-to-int v0, v0

    int-to-float v3, v0

    iget v4, p0, Lcom/iLoong/launcher/widget/c;->originX:F

    iget v5, p0, Lcom/iLoong/launcher/widget/c;->originY:F

    iget v6, p0, Lcom/iLoong/launcher/widget/c;->width:F

    iget v7, p0, Lcom/iLoong/launcher/widget/c;->height:F

    iget v8, p0, Lcom/iLoong/launcher/widget/c;->scaleX:F

    iget v9, p0, Lcom/iLoong/launcher/widget/c;->scaleY:F

    iget v10, p0, Lcom/iLoong/launcher/widget/c;->rotation:F

    move-object v0, p1

    invoke-virtual/range {v0 .. v10}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFFFF)V

    goto :goto_3

    :cond_9
    move v0, v1

    move v1, v2

    goto/16 :goto_2

    :cond_a
    move v2, v3

    goto/16 :goto_1
.end method

.method public onClick(FF)Z
    .locals 9

    const/4 v4, 0x1

    iget v0, p0, Lcom/iLoong/launcher/widget/c;->width:F

    iget v1, p0, Lcom/iLoong/launcher/widget/c;->h:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    div-float v5, p1, v0

    iget v0, p0, Lcom/iLoong/launcher/widget/c;->f:I

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    iget v1, p0, Lcom/iLoong/launcher/widget/c;->height:F

    iget v2, p0, Lcom/iLoong/launcher/widget/c;->f:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    div-float v1, p2, v1

    sub-float v6, v0, v1

    iget-wide v0, p0, Lcom/iLoong/launcher/widget/c;->d:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v7, p0, Lcom/iLoong/launcher/widget/c;->d:J

    sub-long/2addr v2, v7

    invoke-static/range {v0 .. v6}, Lcom/iLoong/launcher/widget/d;->a(JJIFF)I

    move-result v0

    iget-object v1, p0, Lcom/iLoong/launcher/widget/c;->e:Lcom/iLoong/launcher/a/c;

    iget-object v1, v1, Lcom/iLoong/launcher/a/c;->c:Lcom/iLoong/launcher/widget/WidgetHostView;

    invoke-static {v1, v0}, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->sendUpdateSysWidgetMsg(Landroid/view/View;I)V

    return v4
.end method

.method public onDoubleClick(FF)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onLongClick(FF)Z
    .locals 8

    const-wide/16 v0, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/iLoong/launcher/widget/c;->e:Lcom/iLoong/launcher/a/c;

    invoke-virtual {v2}, Lcom/iLoong/launcher/a/c;->a()V

    invoke-static {}, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->sendStartCoverMTKWidgetMsg()V

    const/4 v4, 0x3

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v6}, Lcom/iLoong/launcher/widget/d;->a(JJIFF)I

    move-result v0

    iget-object v1, p0, Lcom/iLoong/launcher/widget/c;->e:Lcom/iLoong/launcher/a/c;

    iget-object v1, v1, Lcom/iLoong/launcher/a/c;->c:Lcom/iLoong/launcher/widget/WidgetHostView;

    invoke-static {v1, v0}, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->sendUpdateSysWidgetMsg(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/iLoong/launcher/widget/c;->a:Lcom/iLoong/launcher/widget/WidgetHostView;

    invoke-static {v0}, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->getSysWidgetView(Lcom/iLoong/launcher/widget/WidgetHostView;)V

    iget-boolean v0, p0, Lcom/iLoong/launcher/widget/c;->isDragging:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/iLoong/launcher/widget/c;->point:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/widget/c;->toAbsoluteCoords(Lcom/badlogic/gdx/math/Vector2;)V

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    sget-object v1, Lcom/iLoong/launcher/widget/c;->point:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    sget-object v2, Lcom/iLoong/launcher/widget/c;->point:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/widget/c;->setTag(Ljava/lang/Object;)V

    sget-object v0, Lcom/iLoong/launcher/widget/c;->point:Lcom/badlogic/gdx/math/Vector2;

    iput p1, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    sget-object v0, Lcom/iLoong/launcher/widget/c;->point:Lcom/badlogic/gdx/math/Vector2;

    iput p2, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    sget-object v0, Lcom/iLoong/launcher/widget/c;->point:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/widget/c;->toAbsolute(Lcom/badlogic/gdx/math/Vector2;)V

    sget-object v0, Lcom/iLoong/launcher/widget/c;->point:Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    sput v0, Lcom/iLoong/launcher/Desktop3D/x;->a:F

    sget-object v0, Lcom/iLoong/launcher/widget/c;->point:Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    sput v0, Lcom/iLoong/launcher/Desktop3D/x;->b:F

    iget-object v0, p0, Lcom/iLoong/launcher/widget/c;->viewParent:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    invoke-virtual {v0, p0, v7}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->onCtrlEvent(Lcom/iLoong/launcher/UI3DEngine/View3D;I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    move v0, v7

    goto :goto_0
.end method

.method public onTouchDown(FFI)Z
    .locals 7

    iget v0, p0, Lcom/iLoong/launcher/widget/c;->width:F

    iget v1, p0, Lcom/iLoong/launcher/widget/c;->h:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    div-float v5, p1, v0

    iget v0, p0, Lcom/iLoong/launcher/widget/c;->f:I

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    iget v1, p0, Lcom/iLoong/launcher/widget/c;->height:F

    iget v2, p0, Lcom/iLoong/launcher/widget/c;->f:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    div-float v1, p2, v1

    sub-float v6, v0, v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/iLoong/launcher/widget/c;->d:J

    iget-wide v0, p0, Lcom/iLoong/launcher/widget/c;->d:J

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Lcom/iLoong/launcher/widget/d;->a(JJIFF)I

    move-result v0

    iget-object v1, p0, Lcom/iLoong/launcher/widget/c;->e:Lcom/iLoong/launcher/a/c;

    iget-object v1, v1, Lcom/iLoong/launcher/a/c;->c:Lcom/iLoong/launcher/widget/WidgetHostView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/iLoong/launcher/widget/c;->e:Lcom/iLoong/launcher/a/c;

    iget-object v1, v1, Lcom/iLoong/launcher/a/c;->c:Lcom/iLoong/launcher/widget/WidgetHostView;

    invoke-static {v1, v0}, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->sendUpdateSysWidgetMsg(Landroid/view/View;I)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public scroll(FFFF)Z
    .locals 7

    const-wide/16 v0, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x3

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v6}, Lcom/iLoong/launcher/widget/d;->a(JJIFF)I

    move-result v0

    iget-object v1, p0, Lcom/iLoong/launcher/widget/c;->e:Lcom/iLoong/launcher/a/c;

    iget-object v1, v1, Lcom/iLoong/launcher/a/c;->c:Lcom/iLoong/launcher/widget/WidgetHostView;

    invoke-static {v1, v0}, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->sendUpdateSysWidgetMsg(Landroid/view/View;I)V

    invoke-super {p0, p1, p2, p3, p4}, Lcom/iLoong/launcher/UI3DEngine/View3D;->scroll(FFFF)Z

    move-result v0

    return v0
.end method
