.class public Lcom/iLoong/launcher/Desktop3D/bs;
.super Lcom/iLoong/launcher/UI3DEngine/View3D;

# interfaces
.implements Lcom/iLoong/launcher/Desktop3D/ad;
.implements Lcom/iLoong/launcher/cling/l;


# static fields
.field public static e:Z

.field private static s:F


# instance fields
.field private A:J

.field private B:F

.field private C:F

.field private D:I

.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public f:F

.field public final h:I

.field public final i:I

.field public final j:I

.field public final k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:F

.field private p:Laurelienribon/tweenengine/Tween;

.field private q:Laurelienribon/tweenengine/Tween;

.field private r:F

.field private t:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field private u:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field private v:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

.field private w:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/high16 v0, 0x3f80

    sput v0, Lcom/iLoong/launcher/Desktop3D/bs;->s:F

    const/4 v0, 0x0

    sput-boolean v0, Lcom/iLoong/launcher/Desktop3D/bs;->e:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 9

    const/4 v3, 0x0

    const/high16 v8, 0x4000

    const/4 v2, 0x6

    const/4 v7, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/iLoong/launcher/UI3DEngine/View3D;-><init>(Ljava/lang/String;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/bs;->l:I

    iput v7, p0, Lcom/iLoong/launcher/Desktop3D/bs;->r:F

    iput-object v3, p0, Lcom/iLoong/launcher/Desktop3D/bs;->t:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iput-object v3, p0, Lcom/iLoong/launcher/Desktop3D/bs;->u:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iput-object v3, p0, Lcom/iLoong/launcher/Desktop3D/bs;->v:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/iLoong/launcher/Desktop3D/bs;->A:J

    iput v7, p0, Lcom/iLoong/launcher/Desktop3D/bs;->B:F

    iput v7, p0, Lcom/iLoong/launcher/Desktop3D/bs;->C:F

    sget v0, Lcom/iLoong/launcher/cling/i;->f:I

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/bs;->D:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/bs;->d:I

    sget v0, Lcom/iLoong/launcher/Desktop3D/at;->cb:I

    int-to-float v0, v0

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/bs;->f:F

    sget v0, Lcom/iLoong/launcher/Desktop3D/at;->cd:I

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/bs;->h:I

    sget v0, Lcom/iLoong/launcher/Desktop3D/at;->ce:I

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/bs;->i:I

    sget v0, Lcom/iLoong/launcher/Desktop3D/at;->cf:I

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/bs;->j:I

    sget v0, Lcom/iLoong/launcher/Desktop3D/at;->cg:I

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/bs;->k:I

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/bs;->j:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bs;->v:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/iLoong/launcher/theme/i;->c()Lcom/iLoong/launcher/theme/i;

    move-result-object v0

    const-string v3, "theme/pack_source/default_indicator_current.png"

    invoke-virtual {v0, v3}, Lcom/iLoong/launcher/theme/i;->d(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->read()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v6

    new-instance v3, Lcom/iLoong/launcher/UI3DEngine/Texture3D;

    invoke-direct {v3, v6, v1}, Lcom/iLoong/launcher/UI3DEngine/Texture3D;-><init>(Landroid/graphics/Bitmap;Z)V

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    new-instance v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-direct {v1, v3}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IIII)V

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bs;->v:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    sget-boolean v0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->m:Z

    if-nez v0, :cond_0

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    :goto_0
    const-string v0, "page_indicator_width"

    invoke-static {v0}, Lcom/iLoong/launcher/Desktop3D/at;->d(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_6

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenWidth()I

    move-result v0

    :goto_1
    int-to-float v0, v0

    const-string v1, "page_indicator_height"

    invoke-static {v1}, Lcom/iLoong/launcher/Desktop3D/at;->d(Ljava/lang/String;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/iLoong/launcher/Desktop3D/bs;->setSize(FF)V

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/bs;->width:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v8

    sget v1, Lcom/iLoong/launcher/Desktop3D/at;->cc:I

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/iLoong/launcher/Desktop3D/bs;->setPosition(FF)V

    invoke-static {}, Lcom/iLoong/launcher/cling/i;->a()Lcom/iLoong/launcher/cling/i;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/iLoong/launcher/cling/i;->b(Lcom/iLoong/launcher/cling/l;)I

    iput v7, p0, Lcom/iLoong/launcher/Desktop3D/bs;->r:F

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/bs;->b:I

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/bs;->y:F

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/bs;->height:F

    div-float/2addr v1, v8

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/bs;->c:I

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/bs;->f:F

    mul-float/2addr v0, v8

    float-to-int v0, v0

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/bs;->a:I

    return-void

    :cond_1
    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/bs;->j:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bs;->u:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/iLoong/launcher/theme/i;->c()Lcom/iLoong/launcher/theme/i;

    move-result-object v0

    const-string v2, "theme/pack_source/default_indicator_current_s2.png"

    invoke-virtual {v0, v2}, Lcom/iLoong/launcher/theme/i;->d(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->read()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v2, Lcom/iLoong/launcher/UI3DEngine/Texture3D;

    invoke-direct {v2, v0, v1}, Lcom/iLoong/launcher/UI3DEngine/Texture3D;-><init>(Landroid/graphics/Bitmap;Z)V

    new-instance v3, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-direct {v3, v2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    iput-object v3, p0, Lcom/iLoong/launcher/Desktop3D/bs;->u:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sget-boolean v2, Lcom/iLoong/launcher/desktop/iLoongLauncher;->m:Z

    if-nez v2, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bs;->w:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move v0, v1

    :goto_2
    const/16 v2, 0x9

    if-ge v0, v2, :cond_0

    invoke-static {}, Lcom/iLoong/launcher/theme/i;->c()Lcom/iLoong/launcher/theme/i;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "theme/pack_source/indicator_num_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/iLoong/launcher/theme/i;->d(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/files/FileHandle;->read()Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v3, Lcom/iLoong/launcher/UI3DEngine/Texture3D;

    invoke-direct {v3, v2, v1}, Lcom/iLoong/launcher/UI3DEngine/Texture3D;-><init>(Landroid/graphics/Bitmap;Z)V

    iget-object v4, p0, Lcom/iLoong/launcher/Desktop3D/bs;->w:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    new-instance v5, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-direct {v5, v3}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    aput-object v5, v4, v0

    sget-boolean v3, Lcom/iLoong/launcher/desktop/iLoongLauncher;->m:Z

    if-nez v3, :cond_3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bs;->t:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    if-nez v0, :cond_5

    invoke-static {}, Lcom/iLoong/launcher/theme/i;->c()Lcom/iLoong/launcher/theme/i;

    move-result-object v0

    const-string v2, "theme/pack_source/default_indicator.png"

    invoke-virtual {v0, v2}, Lcom/iLoong/launcher/theme/i;->d(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->read()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v2, Lcom/iLoong/launcher/UI3DEngine/Texture3D;

    invoke-direct {v2, v0, v1}, Lcom/iLoong/launcher/UI3DEngine/Texture3D;-><init>(Landroid/graphics/Bitmap;Z)V

    new-instance v3, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-direct {v3, v2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    iput-object v3, p0, Lcom/iLoong/launcher/Desktop3D/bs;->t:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sget-boolean v2, Lcom/iLoong/launcher/desktop/iLoongLauncher;->m:Z

    if-nez v2, :cond_5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_5
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bs;->u:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/iLoong/launcher/theme/i;->c()Lcom/iLoong/launcher/theme/i;

    move-result-object v0

    const-string v2, "theme/pack_source/default_indicator_current.png"

    invoke-virtual {v0, v2}, Lcom/iLoong/launcher/theme/i;->d(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->read()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v2, Lcom/iLoong/launcher/UI3DEngine/Texture3D;

    invoke-direct {v2, v0, v1}, Lcom/iLoong/launcher/UI3DEngine/Texture3D;-><init>(Landroid/graphics/Bitmap;Z)V

    new-instance v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    iput-object v1, p0, Lcom/iLoong/launcher/Desktop3D/bs;->u:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sget-boolean v1, Lcom/iLoong/launcher/desktop/iLoongLauncher;->m:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_0

    :cond_6
    const-string v0, "page_indicator_width"

    invoke-static {v0}, Lcom/iLoong/launcher/Desktop3D/at;->d(Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_1
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/bs;->l:I

    return v0
.end method

.method public a(FII)V
    .locals 1

    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/bs;->r:F

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bs;->q:Laurelienribon/tweenengine/Tween;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bs;->q:Laurelienribon/tweenengine/Tween;

    invoke-virtual {v0}, Laurelienribon/tweenengine/Tween;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bs;->q:Laurelienribon/tweenengine/Tween;

    invoke-virtual {v0}, Laurelienribon/tweenengine/Tween;->free()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bs;->q:Laurelienribon/tweenengine/Tween;

    :cond_0
    iput p2, p0, Lcom/iLoong/launcher/Desktop3D/bs;->l:I

    iput p1, p0, Lcom/iLoong/launcher/Desktop3D/bs;->o:F

    iput p3, p0, Lcom/iLoong/launcher/Desktop3D/bs;->n:I

    return-void
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/iLoong/launcher/Desktop3D/bs;->n:I

    return-void
.end method

.method public b()V
    .locals 8

    const/4 v7, 0x1

    const/high16 v4, 0x3f80

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/bs;->touchable:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-super {p0}, Lcom/iLoong/launcher/UI3DEngine/View3D;->show()V

    iput v4, p0, Lcom/iLoong/launcher/Desktop3D/bs;->r:F

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/bs;->stopTween()V

    sput-boolean v7, Lcom/iLoong/launcher/Desktop3D/bs;->e:Z

    const-string v0, "PageIndicator3D"

    const-string v1, "TweenStart show"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x5

    sget-object v2, Laurelienribon/tweenengine/equations/Cubic;->OUT:Laurelienribon/tweenengine/equations/Cubic;

    move-object v0, p0

    move v5, v3

    move v6, v3

    invoke-virtual/range {v0 .. v6}, Lcom/iLoong/launcher/Desktop3D/bs;->startTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    move-result-object v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Laurelienribon/tweenengine/Tween;->setUserData(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/Tween;

    invoke-virtual {v0, p0}, Laurelienribon/tweenengine/Tween;->setCallback(Laurelienribon/tweenengine/TweenCallback;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/Tween;

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bs;->p:Laurelienribon/tweenengine/Tween;

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/bs;->D:I

    sget v1, Lcom/iLoong/launcher/cling/i;->g:I

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->sendRefreshClingStateMsg()V

    goto :goto_0
.end method

.method public c()V
    .locals 8

    const/4 v7, 0x0

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/bs;->touchable:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean v7, p0, Lcom/iLoong/launcher/Desktop3D/bs;->touchable:Z

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/bs;->stopTween()V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/iLoong/launcher/Desktop3D/bs;->e:Z

    const-string v0, "PageIndicator3D"

    const-string v1, "TweenStart hide"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x5

    sget-object v2, Laurelienribon/tweenengine/equations/Cubic;->OUT:Laurelienribon/tweenengine/equations/Cubic;

    move-object v0, p0

    move v4, v3

    move v5, v3

    move v6, v3

    invoke-virtual/range {v0 .. v6}, Lcom/iLoong/launcher/Desktop3D/bs;->startTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    move-result-object v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Laurelienribon/tweenengine/Tween;->setUserData(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/Tween;

    invoke-virtual {v0, p0}, Laurelienribon/tweenengine/Tween;->setCallback(Laurelienribon/tweenengine/TweenCallback;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/Tween;

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bs;->p:Laurelienribon/tweenengine/Tween;

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/bs;->D:I

    sget v1, Lcom/iLoong/launcher/cling/i;->g:I

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->sendRefreshClingStateMsg()V

    goto :goto_0
.end method

.method public d()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/bs;->touchable:Z

    iput-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/bs;->visible:Z

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/bs;->D:I

    sget v1, Lcom/iLoong/launcher/cling/i;->g:I

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->sendRefreshClingStateMsg()V

    :cond_0
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 21

    sget-boolean v1, Lcom/iLoong/launcher/Desktop3D/g;->d:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iLoong/launcher/Desktop3D/bs;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/Desktop3D/bs;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iLoong/launcher/Desktop3D/bs;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/iLoong/launcher/Desktop3D/bs;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->a:F

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v15

    iget v0, v15, Lcom/badlogic/gdx/graphics/Color;->a:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/iLoong/launcher/Desktop3D/bs;->n:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/iLoong/launcher/Desktop3D/bs;->f:F

    move/from16 v0, v17

    int-to-float v2, v0

    mul-float/2addr v2, v1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/iLoong/launcher/Desktop3D/bs;->l:I

    move-object/from16 v0, p0

    iget v1, v0, Lcom/iLoong/launcher/Desktop3D/bs;->o:F

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-ltz v1, :cond_3

    const/4 v1, 0x1

    :goto_1
    move-object/from16 v0, p0

    iget v3, v0, Lcom/iLoong/launcher/Desktop3D/bs;->o:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-nez v3, :cond_4

    move-object/from16 v0, p0

    iget v1, v0, Lcom/iLoong/launcher/Desktop3D/bs;->l:I

    move v13, v1

    :goto_2
    move-object/from16 v0, p0

    iget v1, v0, Lcom/iLoong/launcher/Desktop3D/bs;->x:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/iLoong/launcher/Desktop3D/bs;->width:F

    sub-float v2, v3, v2

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    add-float v18, v1, v2

    move-object/from16 v0, p0

    iget v1, v0, Lcom/iLoong/launcher/Desktop3D/bs;->j:I

    packed-switch v1, :pswitch_data_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iLoong/launcher/Desktop3D/bs;->u:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iLoong/launcher/Desktop3D/bs;->t:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget v1, v0, Lcom/iLoong/launcher/Desktop3D/bs;->i:I

    int-to-float v6, v1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/iLoong/launcher/Desktop3D/bs;->h:I

    int-to-float v12, v1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/iLoong/launcher/Desktop3D/bs;->y:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/iLoong/launcher/Desktop3D/bs;->height:F

    sub-float/2addr v2, v6

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    add-float v4, v1, v2

    move-object/from16 v0, p0

    iget v1, v0, Lcom/iLoong/launcher/Desktop3D/bs;->y:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/iLoong/launcher/Desktop3D/bs;->height:F

    sub-float/2addr v2, v12

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    add-float v10, v1, v2

    move-object/from16 v0, p0

    iget v1, v0, Lcom/iLoong/launcher/Desktop3D/bs;->f:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/iLoong/launcher/Desktop3D/bs;->i:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x4000

    div-float v19, v1, v2

    move-object/from16 v0, p0

    iget v1, v0, Lcom/iLoong/launcher/Desktop3D/bs;->f:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/iLoong/launcher/Desktop3D/bs;->h:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x4000

    div-float v20, v1, v2

    const/4 v1, 0x0

    move v14, v1

    :goto_3
    move/from16 v0, v17

    if-lt v14, v0, :cond_11

    :cond_2
    :goto_4
    move/from16 v0, v16

    iput v0, v15, Lcom/badlogic/gdx/graphics/Color;->a:F

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    move-object/from16 v0, p0

    iget v1, v0, Lcom/iLoong/launcher/Desktop3D/bs;->D:I

    sget v2, Lcom/iLoong/launcher/cling/i;->f:I

    if-ne v1, v2, :cond_0

    invoke-static {}, Lcom/iLoong/launcher/cling/i;->a()Lcom/iLoong/launcher/cling/i;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/iLoong/launcher/cling/i;->b(Lcom/iLoong/launcher/cling/l;)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/iLoong/launcher/Desktop3D/bs;->D:I

    goto/16 :goto_0

    :cond_3
    const/4 v1, -0x1

    goto/16 :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget v3, v0, Lcom/iLoong/launcher/Desktop3D/bs;->o:F

    const/high16 v4, 0x3f80

    cmpl-float v3, v3, v4

    if-nez v3, :cond_6

    move-object/from16 v0, p0

    iget v1, v0, Lcom/iLoong/launcher/Desktop3D/bs;->l:I

    if-nez v1, :cond_5

    add-int/lit8 v1, v17, -0x1

    :goto_5
    move v13, v1

    goto/16 :goto_2

    :cond_5
    move-object/from16 v0, p0

    iget v1, v0, Lcom/iLoong/launcher/Desktop3D/bs;->l:I

    add-int/lit8 v1, v1, -0x1

    goto :goto_5

    :cond_6
    move-object/from16 v0, p0

    iget v3, v0, Lcom/iLoong/launcher/Desktop3D/bs;->o:F

    const/high16 v4, -0x4080

    cmpl-float v3, v3, v4

    if-nez v3, :cond_8

    move-object/from16 v0, p0

    iget v1, v0, Lcom/iLoong/launcher/Desktop3D/bs;->l:I

    add-int/lit8 v3, v17, -0x1

    if-ne v1, v3, :cond_7

    const/4 v1, 0x0

    :goto_6
    move v13, v1

    goto/16 :goto_2

    :cond_7
    move-object/from16 v0, p0

    iget v1, v0, Lcom/iLoong/launcher/Desktop3D/bs;->l:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_8
    move-object/from16 v0, p0

    iget v3, v0, Lcom/iLoong/launcher/Desktop3D/bs;->l:I

    if-nez v3, :cond_9

    move-object/from16 v0, p0

    iget v3, v0, Lcom/iLoong/launcher/Desktop3D/bs;->o:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_9

    add-int/lit8 v1, v17, -0x1

    move v13, v1

    goto/16 :goto_2

    :cond_9
    move-object/from16 v0, p0

    iget v3, v0, Lcom/iLoong/launcher/Desktop3D/bs;->l:I

    add-int/lit8 v4, v17, -0x1

    if-ne v3, v4, :cond_a

    move-object/from16 v0, p0

    iget v3, v0, Lcom/iLoong/launcher/Desktop3D/bs;->o:F

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-gez v3, :cond_a

    const/4 v1, 0x0

    move v13, v1

    goto/16 :goto_2

    :cond_a
    move-object/from16 v0, p0

    iget v3, v0, Lcom/iLoong/launcher/Desktop3D/bs;->l:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/iLoong/launcher/Desktop3D/bs;->o:F

    float-to-double v4, v4

    const-wide/high16 v6, 0x3ff0

    int-to-double v8, v1

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-int v1, v4

    sub-int v1, v3, v1

    move v13, v1

    goto/16 :goto_2

    :pswitch_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iLoong/launcher/Desktop3D/bs;->u:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iLoong/launcher/Desktop3D/bs;->t:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget v1, v0, Lcom/iLoong/launcher/Desktop3D/bs;->k:I

    int-to-float v5, v1

    move/from16 v0, v17

    int-to-float v1, v0

    div-float v1, v5, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/iLoong/launcher/Desktop3D/bs;->f:F

    move-object/from16 v0, p0

    iget v1, v0, Lcom/iLoong/launcher/Desktop3D/bs;->x:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/iLoong/launcher/Desktop3D/bs;->width:F

    sub-float/2addr v2, v5

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    add-float v3, v1, v2

    move-object/from16 v0, p0

    iget v1, v0, Lcom/iLoong/launcher/Desktop3D/bs;->i:I

    int-to-float v6, v1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/iLoong/launcher/Desktop3D/bs;->y:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/iLoong/launcher/Desktop3D/bs;->height:F

    sub-float/2addr v2, v6

    const/high16 v4, 0x4000

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/iLoong/launcher/Desktop3D/bs;->y:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/iLoong/launcher/Desktop3D/bs;->height:F

    sub-float/2addr v4, v6

    const/high16 v7, 0x4000

    div-float/2addr v4, v7

    add-float v13, v2, v4

    move/from16 v0, v16

    iput v0, v15, Lcom/badlogic/gdx/graphics/Color;->a:F

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/Desktop3D/bs;->t:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    float-to-int v1, v1

    int-to-float v4, v1

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    move-object/from16 v0, p0

    iget v1, v0, Lcom/iLoong/launcher/Desktop3D/bs;->f:F

    neg-float v1, v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/iLoong/launcher/Desktop3D/bs;->o:F

    mul-float v5, v1, v2

    move-object/from16 v0, p0

    iget v1, v0, Lcom/iLoong/launcher/Desktop3D/bs;->r:F

    mul-float v1, v1, v16

    iput v1, v15, Lcom/badlogic/gdx/graphics/Color;->a:F

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    move-object/from16 v0, p0

    iget v1, v0, Lcom/iLoong/launcher/Desktop3D/bs;->l:I

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/iLoong/launcher/Desktop3D/bs;->f:F

    mul-float/2addr v1, v2

    add-float/2addr v1, v5

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_b

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/iLoong/launcher/Desktop3D/bs;->u:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-object/from16 v0, p0

    iget v1, v0, Lcom/iLoong/launcher/Desktop3D/bs;->l:I

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/iLoong/launcher/Desktop3D/bs;->f:F

    mul-float/2addr v1, v2

    add-float v9, v3, v1

    float-to-int v1, v13

    int-to-float v10, v1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/iLoong/launcher/Desktop3D/bs;->f:F

    add-float v11, v1, v5

    move-object/from16 v7, p1

    move v12, v6

    invoke-virtual/range {v7 .. v12}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/Desktop3D/bs;->u:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-object/from16 v0, p0

    iget v1, v0, Lcom/iLoong/launcher/Desktop3D/bs;->width:F

    sub-float/2addr v1, v3

    add-float v3, v1, v5

    float-to-int v1, v13

    int-to-float v4, v1

    neg-float v5, v5

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    goto/16 :goto_4

    :cond_b
    move-object/from16 v0, p0

    iget v1, v0, Lcom/iLoong/launcher/Desktop3D/bs;->l:I

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/iLoong/launcher/Desktop3D/bs;->f:F

    mul-float/2addr v1, v2

    add-float/2addr v1, v3

    add-float/2addr v1, v5

    move-object/from16 v0, p0

    iget v2, v0, Lcom/iLoong/launcher/Desktop3D/bs;->width:F

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/iLoong/launcher/Desktop3D/bs;->f:F

    sub-float/2addr v2, v4

    cmpl-float v1, v1, v2

    if-lez v1, :cond_c

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/iLoong/launcher/Desktop3D/bs;->u:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-object/from16 v0, p0

    iget v1, v0, Lcom/iLoong/launcher/Desktop3D/bs;->l:I

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/iLoong/launcher/Desktop3D/bs;->f:F

    mul-float/2addr v1, v2

    add-float/2addr v1, v3

    add-float v9, v1, v5

    float-to-int v1, v13

    int-to-float v10, v1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/iLoong/launcher/Desktop3D/bs;->f:F

    sub-float v11, v1, v5

    move-object/from16 v7, p1

    move v12, v6

    invoke-virtual/range {v7 .. v12}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/Desktop3D/bs;->u:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    float-to-int v1, v13

    int-to-float v4, v1

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    goto/16 :goto_4

    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/Desktop3D/bs;->u:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-object/from16 v0, p0

    iget v1, v0, Lcom/iLoong/launcher/Desktop3D/bs;->l:I

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/iLoong/launcher/Desktop3D/bs;->f:F

    mul-float/2addr v1, v4

    add-float/2addr v1, v3

    add-float v3, v1, v5

    float-to-int v1, v13

    int-to-float v4, v1

    move-object/from16 v0, p0

    iget v5, v0, Lcom/iLoong/launcher/Desktop3D/bs;->f:F

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    goto/16 :goto_4

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iLoong/launcher/Desktop3D/bs;->v:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget v1, v0, Lcom/iLoong/launcher/Desktop3D/bs;->i:I

    int-to-float v6, v1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/iLoong/launcher/Desktop3D/bs;->y:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/iLoong/launcher/Desktop3D/bs;->height:F

    sub-float/2addr v2, v6

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    add-float v10, v1, v2

    move-object/from16 v0, p0

    iget v1, v0, Lcom/iLoong/launcher/Desktop3D/bs;->y:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/iLoong/launcher/Desktop3D/bs;->height:F

    sub-float/2addr v2, v6

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    add-float v4, v1, v2

    const/4 v1, 0x0

    move v14, v1

    :goto_7
    move/from16 v0, v17

    if-ge v14, v0, :cond_2

    move-object/from16 v0, p0

    iget v1, v0, Lcom/iLoong/launcher/Desktop3D/bs;->l:I

    if-ne v14, v1, :cond_d

    move/from16 v0, v16

    iput v0, v15, Lcom/badlogic/gdx/graphics/Color;->a:F

    iget v1, v15, Lcom/badlogic/gdx/graphics/Color;->a:F

    float-to-double v1, v1

    const-wide/high16 v7, 0x3ff0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/iLoong/launcher/Desktop3D/bs;->o:F

    float-to-double v11, v3

    const-wide/high16 v19, 0x3fe0

    mul-double v11, v11, v19

    invoke-static {v11, v12}, Ljava/lang/Math;->abs(D)D

    move-result-wide v11

    sub-double/2addr v7, v11

    mul-double/2addr v1, v7

    double-to-float v1, v1

    iput v1, v15, Lcom/badlogic/gdx/graphics/Color;->a:F

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    move-object/from16 v0, p0

    iget v1, v0, Lcom/iLoong/launcher/Desktop3D/bs;->i:I

    int-to-float v1, v1

    const/high16 v2, 0x3f80

    move-object/from16 v0, p0

    iget v3, v0, Lcom/iLoong/launcher/Desktop3D/bs;->o:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/iLoong/launcher/Desktop3D/bs;->h:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/iLoong/launcher/Desktop3D/bs;->i:I

    sub-int/2addr v3, v5

    int-to-float v3, v3

    mul-float/2addr v2, v3

    add-float v5, v1, v2

    move-object/from16 v0, p0

    iget v1, v0, Lcom/iLoong/launcher/Desktop3D/bs;->f:F

    sub-float/2addr v1, v5

    const/high16 v2, 0x4000

    div-float v2, v1, v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iLoong/launcher/Desktop3D/bs;->v:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    int-to-float v3, v14

    move-object/from16 v0, p0

    iget v7, v0, Lcom/iLoong/launcher/Desktop3D/bs;->f:F

    mul-float/2addr v3, v7

    add-float v3, v3, v18

    add-float/2addr v3, v2

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFF)V

    :goto_8
    add-int/lit8 v1, v14, 0x1

    move v14, v1

    goto :goto_7

    :cond_d
    if-ne v14, v13, :cond_e

    move/from16 v0, v16

    iput v0, v15, Lcom/badlogic/gdx/graphics/Color;->a:F

    iget v1, v15, Lcom/badlogic/gdx/graphics/Color;->a:F

    float-to-double v1, v1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/iLoong/launcher/Desktop3D/bs;->o:F

    float-to-double v7, v3

    const-wide/high16 v11, 0x3fe0

    mul-double/2addr v7, v11

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    const-wide/high16 v11, 0x3fe0

    add-double/2addr v7, v11

    mul-double/2addr v1, v7

    double-to-float v1, v1

    iput v1, v15, Lcom/badlogic/gdx/graphics/Color;->a:F

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    move-object/from16 v0, p0

    iget v1, v0, Lcom/iLoong/launcher/Desktop3D/bs;->i:I

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/iLoong/launcher/Desktop3D/bs;->o:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/iLoong/launcher/Desktop3D/bs;->h:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/iLoong/launcher/Desktop3D/bs;->i:I

    sub-int/2addr v3, v5

    int-to-float v3, v3

    mul-float/2addr v2, v3

    add-float v5, v1, v2

    move-object/from16 v0, p0

    iget v1, v0, Lcom/iLoong/launcher/Desktop3D/bs;->f:F

    sub-float/2addr v1, v5

    const/high16 v2, 0x4000

    div-float v2, v1, v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iLoong/launcher/Desktop3D/bs;->v:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    int-to-float v3, v14

    move-object/from16 v0, p0

    iget v7, v0, Lcom/iLoong/launcher/Desktop3D/bs;->f:F

    mul-float/2addr v3, v7

    add-float v3, v3, v18

    add-float/2addr v3, v2

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFF)V

    goto :goto_8

    :cond_e
    const/high16 v1, 0x3f00

    mul-float v1, v1, v16

    iput v1, v15, Lcom/badlogic/gdx/graphics/Color;->a:F

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    move-object/from16 v0, p0

    iget v1, v0, Lcom/iLoong/launcher/Desktop3D/bs;->f:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/iLoong/launcher/Desktop3D/bs;->i:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/iLoong/launcher/Desktop3D/bs;->v:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    int-to-float v2, v14

    move-object/from16 v0, p0

    iget v3, v0, Lcom/iLoong/launcher/Desktop3D/bs;->f:F

    mul-float/2addr v2, v3

    add-float v2, v2, v18

    add-float v9, v2, v1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/iLoong/launcher/Desktop3D/bs;->i:I

    int-to-float v11, v1

    move-object/from16 v8, p1

    move v12, v6

    invoke-virtual/range {v7 .. v12}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFF)V

    goto/16 :goto_8

    :pswitch_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iLoong/launcher/Desktop3D/bs;->u:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget v1, v0, Lcom/iLoong/launcher/Desktop3D/bs;->i:I

    int-to-float v8, v1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/iLoong/launcher/Desktop3D/bs;->h:I

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/iLoong/launcher/Desktop3D/bs;->y:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/iLoong/launcher/Desktop3D/bs;->height:F

    sub-float/2addr v2, v8

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    add-float v9, v1, v2

    move/from16 v0, v16

    iput v0, v15, Lcom/badlogic/gdx/graphics/Color;->a:F

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    const/4 v1, 0x0

    move v7, v1

    :goto_9
    move/from16 v0, v17

    if-ge v7, v0, :cond_2

    move-object/from16 v0, p0

    iget v1, v0, Lcom/iLoong/launcher/Desktop3D/bs;->l:I

    if-ne v7, v1, :cond_f

    move-object/from16 v0, p0

    iget v1, v0, Lcom/iLoong/launcher/Desktop3D/bs;->i:I

    int-to-float v1, v1

    const/high16 v2, 0x3f80

    move-object/from16 v0, p0

    iget v3, v0, Lcom/iLoong/launcher/Desktop3D/bs;->o:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/iLoong/launcher/Desktop3D/bs;->h:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/iLoong/launcher/Desktop3D/bs;->i:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v2, v3

    add-float v5, v1, v2

    move-object/from16 v0, p0

    iget v1, v0, Lcom/iLoong/launcher/Desktop3D/bs;->f:F

    sub-float/2addr v1, v5

    const/high16 v2, 0x4000

    div-float v10, v1, v2

    move-object/from16 v0, p0

    iget v1, v0, Lcom/iLoong/launcher/Desktop3D/bs;->y:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/iLoong/launcher/Desktop3D/bs;->height:F

    sub-float/2addr v2, v5

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    add-float v4, v1, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/Desktop3D/bs;->u:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    int-to-float v1, v7

    move-object/from16 v0, p0

    iget v3, v0, Lcom/iLoong/launcher/Desktop3D/bs;->f:F

    mul-float/2addr v1, v3

    add-float v1, v1, v18

    add-float v3, v1, v10

    move-object/from16 v1, p1

    move v6, v5

    invoke-virtual/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iLoong/launcher/Desktop3D/bs;->w:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    aget-object v2, v1, v7

    int-to-float v1, v7

    move-object/from16 v0, p0

    iget v3, v0, Lcom/iLoong/launcher/Desktop3D/bs;->f:F

    mul-float/2addr v1, v3

    add-float v1, v1, v18

    add-float/2addr v1, v10

    const/high16 v3, 0x40a0

    div-float v3, v5, v3

    add-float/2addr v3, v1

    const/high16 v1, 0x40a0

    div-float v1, v5, v1

    add-float/2addr v4, v1

    const/high16 v1, 0x4040

    mul-float/2addr v1, v5

    const/high16 v6, 0x40a0

    div-float v10, v1, v6

    const/high16 v1, 0x4040

    mul-float/2addr v1, v5

    const/high16 v5, 0x40a0

    div-float v6, v1, v5

    move-object/from16 v1, p1

    move v5, v10

    invoke-virtual/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    :goto_a
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    goto/16 :goto_9

    :cond_f
    if-ne v7, v13, :cond_10

    move-object/from16 v0, p0

    iget v1, v0, Lcom/iLoong/launcher/Desktop3D/bs;->i:I

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/iLoong/launcher/Desktop3D/bs;->o:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/iLoong/launcher/Desktop3D/bs;->h:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/iLoong/launcher/Desktop3D/bs;->i:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v2, v3

    add-float v5, v1, v2

    move-object/from16 v0, p0

    iget v1, v0, Lcom/iLoong/launcher/Desktop3D/bs;->f:F

    sub-float/2addr v1, v5

    const/high16 v2, 0x4000

    div-float v10, v1, v2

    move-object/from16 v0, p0

    iget v1, v0, Lcom/iLoong/launcher/Desktop3D/bs;->y:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/iLoong/launcher/Desktop3D/bs;->height:F

    sub-float/2addr v2, v5

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    add-float v4, v1, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/Desktop3D/bs;->u:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    int-to-float v1, v7

    move-object/from16 v0, p0

    iget v3, v0, Lcom/iLoong/launcher/Desktop3D/bs;->f:F

    mul-float/2addr v1, v3

    add-float v1, v1, v18

    add-float v3, v1, v10

    move-object/from16 v1, p1

    move v6, v5

    invoke-virtual/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iLoong/launcher/Desktop3D/bs;->w:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    aget-object v2, v1, v7

    int-to-float v1, v7

    move-object/from16 v0, p0

    iget v3, v0, Lcom/iLoong/launcher/Desktop3D/bs;->f:F

    mul-float/2addr v1, v3

    add-float v1, v1, v18

    add-float/2addr v1, v10

    const/high16 v3, 0x40a0

    div-float v3, v5, v3

    add-float/2addr v3, v1

    const/high16 v1, 0x40a0

    div-float v1, v5, v1

    add-float/2addr v4, v1

    const/high16 v1, 0x4040

    mul-float/2addr v1, v5

    const/high16 v6, 0x40a0

    div-float v10, v1, v6

    const/high16 v1, 0x4040

    mul-float/2addr v1, v5

    const/high16 v5, 0x40a0

    div-float v6, v1, v5

    move-object/from16 v1, p1

    move v5, v10

    invoke-virtual/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    goto :goto_a

    :cond_10
    move-object/from16 v0, p0

    iget v1, v0, Lcom/iLoong/launcher/Desktop3D/bs;->f:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/iLoong/launcher/Desktop3D/bs;->i:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/Desktop3D/bs;->u:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    int-to-float v3, v7

    move-object/from16 v0, p0

    iget v4, v0, Lcom/iLoong/launcher/Desktop3D/bs;->f:F

    mul-float/2addr v3, v4

    add-float v3, v3, v18

    add-float/2addr v3, v1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/iLoong/launcher/Desktop3D/bs;->i:I

    int-to-float v5, v1

    move-object/from16 v1, p1

    move v4, v9

    move v6, v8

    invoke-virtual/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    goto/16 :goto_a

    :cond_11
    move-object/from16 v0, p0

    iget v1, v0, Lcom/iLoong/launcher/Desktop3D/bs;->l:I

    if-ne v14, v1, :cond_13

    move/from16 v0, v16

    iput v0, v15, Lcom/badlogic/gdx/graphics/Color;->a:F

    iget v1, v15, Lcom/badlogic/gdx/graphics/Color;->a:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/iLoong/launcher/Desktop3D/bs;->o:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    mul-float/2addr v1, v2

    iput v1, v15, Lcom/badlogic/gdx/graphics/Color;->a:F

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :goto_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iLoong/launcher/Desktop3D/bs;->t:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    int-to-float v1, v14

    move-object/from16 v0, p0

    iget v3, v0, Lcom/iLoong/launcher/Desktop3D/bs;->f:F

    mul-float/2addr v1, v3

    add-float v1, v1, v18

    add-float v3, v1, v19

    move-object/from16 v0, p0

    iget v1, v0, Lcom/iLoong/launcher/Desktop3D/bs;->i:I

    int-to-float v5, v1

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    move-object/from16 v0, p0

    iget v1, v0, Lcom/iLoong/launcher/Desktop3D/bs;->l:I

    if-ne v14, v1, :cond_15

    move/from16 v0, v16

    iput v0, v15, Lcom/badlogic/gdx/graphics/Color;->a:F

    iget v1, v15, Lcom/badlogic/gdx/graphics/Color;->a:F

    const/high16 v2, 0x3f80

    move-object/from16 v0, p0

    iget v3, v0, Lcom/iLoong/launcher/Desktop3D/bs;->o:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    iput v1, v15, Lcom/badlogic/gdx/graphics/Color;->a:F

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/iLoong/launcher/Desktop3D/bs;->u:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    int-to-float v1, v14

    move-object/from16 v0, p0

    iget v2, v0, Lcom/iLoong/launcher/Desktop3D/bs;->f:F

    mul-float/2addr v1, v2

    add-float v1, v1, v18

    add-float v9, v1, v20

    move-object/from16 v0, p0

    iget v1, v0, Lcom/iLoong/launcher/Desktop3D/bs;->h:I

    int-to-float v11, v1

    move-object/from16 v7, p1

    invoke-virtual/range {v7 .. v12}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    :cond_12
    :goto_c
    add-int/lit8 v1, v14, 0x1

    move v14, v1

    goto/16 :goto_3

    :cond_13
    if-ne v14, v13, :cond_14

    move/from16 v0, v16

    iput v0, v15, Lcom/badlogic/gdx/graphics/Color;->a:F

    iget v1, v15, Lcom/badlogic/gdx/graphics/Color;->a:F

    const/high16 v2, 0x3f80

    move-object/from16 v0, p0

    iget v3, v0, Lcom/iLoong/launcher/Desktop3D/bs;->o:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    iput v1, v15, Lcom/badlogic/gdx/graphics/Color;->a:F

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_b

    :cond_14
    move/from16 v0, v16

    iput v0, v15, Lcom/badlogic/gdx/graphics/Color;->a:F

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_b

    :cond_15
    if-ne v14, v13, :cond_12

    move/from16 v0, v16

    iput v0, v15, Lcom/badlogic/gdx/graphics/Color;->a:F

    iget v1, v15, Lcom/badlogic/gdx/graphics/Color;->a:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/iLoong/launcher/Desktop3D/bs;->o:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    mul-float/2addr v1, v2

    iput v1, v15, Lcom/badlogic/gdx/graphics/Color;->a:F

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/iLoong/launcher/Desktop3D/bs;->u:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    int-to-float v1, v14

    move-object/from16 v0, p0

    iget v2, v0, Lcom/iLoong/launcher/Desktop3D/bs;->f:F

    mul-float/2addr v1, v2

    add-float v1, v1, v18

    add-float v9, v1, v20

    move-object/from16 v0, p0

    iget v1, v0, Lcom/iLoong/launcher/Desktop3D/bs;->h:I

    int-to-float v11, v1

    move-object/from16 v7, p1

    invoke-virtual/range {v7 .. v12}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    goto :goto_c

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public e()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public f()V
    .locals 1

    sget v0, Lcom/iLoong/launcher/cling/i;->e:I

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/bs;->D:I

    return-void
.end method

.method public fling(FF)Z
    .locals 3

    const/4 v0, 0x1

    sget-boolean v1, Lcom/iLoong/launcher/Desktop3D/g;->c:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/bs;->o:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_2

    sget-boolean v1, Lcom/iLoong/launcher/Desktop3D/cb;->aI:Z

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()V
    .locals 7

    const/4 v4, 0x0

    const-string v0, "PageIndicator3D"

    const-string v1, "finishAutoEffect"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/bs;->r:F

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bs;->q:Laurelienribon/tweenengine/Tween;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bs;->q:Laurelienribon/tweenengine/Tween;

    invoke-virtual {v0}, Laurelienribon/tweenengine/Tween;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bs;->q:Laurelienribon/tweenengine/Tween;

    invoke-virtual {v0}, Laurelienribon/tweenengine/Tween;->free()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bs;->q:Laurelienribon/tweenengine/Tween;

    :cond_0
    const/4 v1, 0x7

    sget-object v2, Laurelienribon/tweenengine/equations/Cubic;->OUT:Laurelienribon/tweenengine/equations/Cubic;

    sget v3, Lcom/iLoong/launcher/Desktop3D/bs;->s:F

    move-object v0, p0

    move v5, v4

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Lcom/iLoong/launcher/Desktop3D/bs;->startTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    move-result-object v0

    invoke-virtual {v0, p0}, Laurelienribon/tweenengine/Tween;->setCallback(Laurelienribon/tweenengine/TweenCallback;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/Tween;

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bs;->q:Laurelienribon/tweenengine/Tween;

    return-void
.end method

.method public getUser()F
    .locals 1

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/bs;->r:F

    return v0
.end method

.method public hide()V
    .locals 8

    const/4 v7, 0x0

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/bs;->touchable:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean v7, p0, Lcom/iLoong/launcher/Desktop3D/bs;->touchable:Z

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/bs;->stopTween()V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/iLoong/launcher/Desktop3D/bs;->e:Z

    const-string v0, "PageIndicator3D"

    const-string v1, "TweenStart hide"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x5

    sget-object v2, Laurelienribon/tweenengine/equations/Cubic;->OUT:Laurelienribon/tweenengine/equations/Cubic;

    const v3, 0x3ecccccd

    move-object v0, p0

    move v5, v4

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Lcom/iLoong/launcher/Desktop3D/bs;->startTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    move-result-object v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Laurelienribon/tweenengine/Tween;->setUserData(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/Tween;

    invoke-virtual {v0, p0}, Laurelienribon/tweenengine/Tween;->setCallback(Laurelienribon/tweenengine/TweenCallback;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/Tween;

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bs;->p:Laurelienribon/tweenengine/Tween;

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/bs;->D:I

    sget v1, Lcom/iLoong/launcher/cling/i;->g:I

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->sendRefreshClingStateMsg()V

    goto :goto_0
.end method

.method public onEvent(ILaurelienribon/tweenengine/BaseTween;)V
    .locals 4

    const/4 v3, 0x0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-ne p1, v1, :cond_2

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bs;->p:Laurelienribon/tweenengine/Tween;

    if-ne p2, v0, :cond_2

    iput-object v3, p0, Lcom/iLoong/launcher/Desktop3D/bs;->p:Laurelienribon/tweenengine/Tween;

    invoke-virtual {p2}, Laurelienribon/tweenengine/BaseTween;->getUserData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "PageIndicator3D"

    const-string v1, "TweenComplete hide"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bs;->color:Lcom/badlogic/gdx/graphics/Color;

    iput v2, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    iget-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/bs;->touchable:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/iLoong/launcher/UI3DEngine/View3D;->hide()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "PageIndicator3D"

    const-string v1, "TweenComplete show"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bs;->color:Lcom/badlogic/gdx/graphics/Color;

    const/high16 v1, 0x3f80

    iput v1, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-super {p0}, Lcom/iLoong/launcher/UI3DEngine/View3D;->show()V

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/bs;->g()V

    goto :goto_0

    :cond_2
    if-ne p1, v1, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bs;->q:Laurelienribon/tweenengine/Tween;

    if-ne p2, v0, :cond_0

    iput-object v3, p0, Lcom/iLoong/launcher/Desktop3D/bs;->q:Laurelienribon/tweenengine/Tween;

    iput v2, p0, Lcom/iLoong/launcher/Desktop3D/bs;->r:F

    goto :goto_0
.end method

.method public onLongClick(FF)Z
    .locals 3

    const/4 v0, 0x1

    sget-boolean v1, Lcom/iLoong/launcher/Desktop3D/g;->c:Z

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/bs;->o:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/iLoong/launcher/Desktop3D/cb;->aI:Z

    if-nez v1, :cond_2

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/iLoong/launcher/Desktop3D/bs;->A:J

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/bs;->viewParent:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    const/4 v2, 0x3

    invoke-virtual {v1, p0, v2}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->onCtrlEvent(Lcom/iLoong/launcher/UI3DEngine/View3D;I)Z

    goto :goto_0
.end method

.method public onTouchDown(FFI)Z
    .locals 3

    const/4 v0, 0x1

    sget-boolean v1, Lcom/iLoong/launcher/Desktop3D/g;->c:Z

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/bs;->o:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/iLoong/launcher/Desktop3D/cb;->aI:Z

    if-nez v1, :cond_2

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/iLoong/launcher/Desktop3D/bs;->A:J

    iput p1, p0, Lcom/iLoong/launcher/Desktop3D/bs;->B:F

    iput p2, p0, Lcom/iLoong/launcher/Desktop3D/bs;->C:F

    invoke-static {}, Lcom/iLoong/launcher/cling/i;->a()Lcom/iLoong/launcher/cling/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iLoong/launcher/cling/i;->h()V

    goto :goto_0
.end method

.method public onTouchUp(FFI)Z
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/high16 v6, 0x4220

    sget-boolean v2, Lcom/iLoong/launcher/Desktop3D/g;->c:Z

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/bs;->o:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    sget-boolean v2, Lcom/iLoong/launcher/Desktop3D/cb;->aI:Z

    if-nez v2, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/iLoong/launcher/Desktop3D/bs;->A:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1f4

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/bs;->B:F

    sub-float v2, p1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v2, v6

    if-gez v2, :cond_0

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/bs;->C:F

    sub-float v2, p2, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v2, v6

    if-gez v2, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bs;->viewParent:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    invoke-virtual {v0, p0, v1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->onCtrlEvent(Lcom/iLoong/launcher/UI3DEngine/View3D;I)Z

    move-result v0

    goto :goto_0
.end method

.method public scroll(FFFF)Z
    .locals 4

    const/4 v0, 0x1

    const/high16 v3, 0x4220

    sget-boolean v1, Lcom/iLoong/launcher/Desktop3D/g;->c:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/bs;->o:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_2

    sget-boolean v1, Lcom/iLoong/launcher/Desktop3D/cb;->aI:Z

    if-nez v1, :cond_3

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/bs;->B:F

    sub-float v1, p1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v3

    if-gtz v1, :cond_4

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/bs;->C:F

    sub-float v1, p2, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v3

    if-lez v1, :cond_0

    :cond_4
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/iLoong/launcher/Desktop3D/bs;->A:J

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/bs;->viewParent:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    const/4 v2, 0x3

    invoke-virtual {v1, p0, v2}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->onCtrlEvent(Lcom/iLoong/launcher/UI3DEngine/View3D;I)Z

    goto :goto_0
.end method

.method public setCurrentPage(I)V
    .locals 2

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/bs;->l:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iput p1, p0, Lcom/iLoong/launcher/Desktop3D/bs;->l:I

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/bs;->l:I

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/bs;->m:I

    :cond_0
    return-void
.end method

.method public setUser(F)V
    .locals 0

    iput p1, p0, Lcom/iLoong/launcher/Desktop3D/bs;->r:F

    return-void
.end method

.method public show()V
    .locals 8

    const/4 v7, 0x1

    const/high16 v4, 0x3f80

    const/4 v5, 0x0

    iget-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/bs;->touchable:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-super {p0}, Lcom/iLoong/launcher/UI3DEngine/View3D;->show()V

    iput v4, p0, Lcom/iLoong/launcher/Desktop3D/bs;->r:F

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/bs;->stopTween()V

    sput-boolean v7, Lcom/iLoong/launcher/Desktop3D/bs;->e:Z

    const-string v0, "PageIndicator3D"

    const-string v1, "TweenStart show"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x5

    sget-object v2, Laurelienribon/tweenengine/equations/Cubic;->OUT:Laurelienribon/tweenengine/equations/Cubic;

    const v3, 0x3ecccccd

    move-object v0, p0

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/iLoong/launcher/Desktop3D/bs;->startTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    move-result-object v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Laurelienribon/tweenengine/Tween;->setUserData(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/Tween;

    invoke-virtual {v0, p0}, Laurelienribon/tweenengine/Tween;->setCallback(Laurelienribon/tweenengine/TweenCallback;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/Tween;

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bs;->p:Laurelienribon/tweenengine/Tween;

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/bs;->D:I

    sget v1, Lcom/iLoong/launcher/cling/i;->g:I

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->sendRefreshClingStateMsg()V

    goto :goto_0
.end method
