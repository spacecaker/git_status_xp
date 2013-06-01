.class public Lcom/iLoong/launcher/Desktop3D/cd;
.super Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;


# static fields
.field private static b:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

.field private static c:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;


# instance fields
.field private A:Laurelienribon/tweenengine/Timeline;

.field private B:Laurelienribon/tweenengine/Tween;

.field a:Z

.field private d:F

.field private e:F

.field private f:F

.field private h:I

.field private i:Lcom/iLoong/launcher/UI3DEngine/d;

.field private j:Lcom/iLoong/launcher/UI3DEngine/d;

.field private k:Lcom/iLoong/launcher/UI3DEngine/d;

.field private l:Lcom/iLoong/launcher/UI3DEngine/d;

.field private m:Lcom/iLoong/launcher/UI3DEngine/d;

.field private n:Lcom/iLoong/launcher/UI3DEngine/d;

.field private o:Lcom/iLoong/launcher/UI3DEngine/d;

.field private p:Lcom/iLoong/launcher/UI3DEngine/d;

.field private q:Lcom/iLoong/launcher/UI3DEngine/d;

.field private r:Lcom/iLoong/launcher/UI3DEngine/d;

.field private s:Lcom/iLoong/launcher/UI3DEngine/d;

.field private t:Lcom/iLoong/launcher/UI3DEngine/d;

.field private u:F

.field private v:I

.field private final w:I


# direct methods
.method public constructor <init>(Ljava/lang/String;FF)V
    .locals 2

    const/4 v0, -0x1

    invoke-direct {p0, p1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;-><init>(Ljava/lang/String;)V

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/cd;->h:I

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/cd;->v:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/cd;->w:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/cd;->A:Laurelienribon/tweenengine/Timeline;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/cd;->a:Z

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/cd;->d:F

    sget v0, Lcom/iLoong/launcher/Desktop3D/at;->aC:I

    div-int/lit8 v0, v0, 0x2

    sget v1, Lcom/iLoong/launcher/Desktop3D/at;->d:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float v0, p3, v0

    if-gez v0, :cond_0

    sget v0, Lcom/iLoong/launcher/Desktop3D/at;->aC:I

    div-int/lit8 v0, v0, 0x2

    sget v1, Lcom/iLoong/launcher/Desktop3D/at;->d:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/cd;->e:F

    :goto_0
    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/cd;->d:F

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/cd;->e:F

    invoke-virtual {p0, v0, v1}, Lcom/iLoong/launcher/Desktop3D/cd;->setOrigin(FF)V

    return-void

    :cond_0
    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenHeight()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    int-to-float v0, v0

    cmpl-float v0, p3, v0

    if-lez v0, :cond_1

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenHeight()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    int-to-float v0, v0

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/cd;->e:F

    goto :goto_0

    :cond_1
    iput p3, p0, Lcom/iLoong/launcher/Desktop3D/cd;->e:F

    goto :goto_0
.end method

.method private a(FF)V
    .locals 4

    const/16 v3, 0x2d

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/cd;->d:F

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/cd;->e:F

    invoke-static {p1, p2, v0, v1}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getRotDegrees(FFFF)F

    move-result v0

    const/16 v1, 0x5a

    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-lez v2, :cond_0

    int-to-float v2, v3

    cmpg-float v2, v0, v2

    if-gtz v2, :cond_0

    const/4 v0, 0x3

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/cd;->h:I

    :goto_0
    return-void

    :cond_0
    int-to-float v2, v3

    sub-float/2addr v0, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/cd;->h:I

    goto :goto_0
.end method

.method private a(FII)V
    .locals 7

    const/high16 v4, 0x43b4

    const/4 v1, 0x4

    const/4 v5, 0x0

    int-to-float v0, p2

    int-to-float v2, p3

    invoke-direct {p0, v0, v2}, Lcom/iLoong/launcher/Desktop3D/cd;->a(FF)V

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/cd;->v:I

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/cd;->h:I

    if-ne v0, v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/cd;->h:I

    packed-switch v0, :pswitch_data_0

    :goto_1
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/cd;->s:Lcom/iLoong/launcher/UI3DEngine/d;

    invoke-virtual {v0}, Lcom/iLoong/launcher/UI3DEngine/d;->stopTween()V

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/cd;->h:I

    if-nez v0, :cond_2

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/cd;->v:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/cd;->s:Lcom/iLoong/launcher/UI3DEngine/d;

    sget-object v2, Laurelienribon/tweenengine/equations/Linear;->INOUT:Laurelienribon/tweenengine/equations/Linear;

    move v3, p1

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/iLoong/launcher/UI3DEngine/d;->startTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    move-result-object v0

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/cd;->B:Laurelienribon/tweenengine/Tween;

    :goto_2
    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/cd;->h:I

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/cd;->v:I

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/cd;->q:Lcom/iLoong/launcher/UI3DEngine/d;

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/cd;->r:Lcom/iLoong/launcher/UI3DEngine/d;

    iget v2, v2, Lcom/iLoong/launcher/UI3DEngine/d;->x:F

    iget-object v3, p0, Lcom/iLoong/launcher/Desktop3D/cd;->r:Lcom/iLoong/launcher/UI3DEngine/d;

    iget v3, v3, Lcom/iLoong/launcher/UI3DEngine/d;->y:F

    invoke-virtual {v0, v2, v3}, Lcom/iLoong/launcher/UI3DEngine/d;->setPosition(FF)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/cd;->q:Lcom/iLoong/launcher/UI3DEngine/d;

    invoke-direct {p0, v0}, Lcom/iLoong/launcher/Desktop3D/cd;->a(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/cd;->o:Lcom/iLoong/launcher/UI3DEngine/d;

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/cd;->p:Lcom/iLoong/launcher/UI3DEngine/d;

    iget v2, v2, Lcom/iLoong/launcher/UI3DEngine/d;->x:F

    iget-object v3, p0, Lcom/iLoong/launcher/Desktop3D/cd;->p:Lcom/iLoong/launcher/UI3DEngine/d;

    iget v3, v3, Lcom/iLoong/launcher/UI3DEngine/d;->y:F

    invoke-virtual {v0, v2, v3}, Lcom/iLoong/launcher/UI3DEngine/d;->setPosition(FF)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/cd;->o:Lcom/iLoong/launcher/UI3DEngine/d;

    invoke-direct {p0, v0}, Lcom/iLoong/launcher/Desktop3D/cd;->a(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/cd;->m:Lcom/iLoong/launcher/UI3DEngine/d;

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/cd;->n:Lcom/iLoong/launcher/UI3DEngine/d;

    iget v2, v2, Lcom/iLoong/launcher/UI3DEngine/d;->x:F

    iget-object v3, p0, Lcom/iLoong/launcher/Desktop3D/cd;->n:Lcom/iLoong/launcher/UI3DEngine/d;

    iget v3, v3, Lcom/iLoong/launcher/UI3DEngine/d;->y:F

    invoke-virtual {v0, v2, v3}, Lcom/iLoong/launcher/UI3DEngine/d;->setPosition(FF)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/cd;->m:Lcom/iLoong/launcher/UI3DEngine/d;

    invoke-direct {p0, v0}, Lcom/iLoong/launcher/Desktop3D/cd;->a(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    goto :goto_1

    :pswitch_3
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/cd;->k:Lcom/iLoong/launcher/UI3DEngine/d;

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/cd;->l:Lcom/iLoong/launcher/UI3DEngine/d;

    iget v2, v2, Lcom/iLoong/launcher/UI3DEngine/d;->x:F

    iget-object v3, p0, Lcom/iLoong/launcher/Desktop3D/cd;->l:Lcom/iLoong/launcher/UI3DEngine/d;

    iget v3, v3, Lcom/iLoong/launcher/UI3DEngine/d;->y:F

    invoke-virtual {v0, v2, v3}, Lcom/iLoong/launcher/UI3DEngine/d;->setPosition(FF)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/cd;->k:Lcom/iLoong/launcher/UI3DEngine/d;

    invoke-direct {p0, v0}, Lcom/iLoong/launcher/Desktop3D/cd;->a(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    goto :goto_1

    :pswitch_4
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/cd;->i:Lcom/iLoong/launcher/UI3DEngine/d;

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/cd;->j:Lcom/iLoong/launcher/UI3DEngine/d;

    iget v2, v2, Lcom/iLoong/launcher/UI3DEngine/d;->x:F

    iget-object v3, p0, Lcom/iLoong/launcher/Desktop3D/cd;->j:Lcom/iLoong/launcher/UI3DEngine/d;

    iget v3, v3, Lcom/iLoong/launcher/UI3DEngine/d;->y:F

    invoke-virtual {v0, v2, v3}, Lcom/iLoong/launcher/UI3DEngine/d;->setPosition(FF)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/cd;->i:Lcom/iLoong/launcher/UI3DEngine/d;

    invoke-direct {p0, v0}, Lcom/iLoong/launcher/Desktop3D/cd;->a(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/cd;->s:Lcom/iLoong/launcher/UI3DEngine/d;

    sget-object v2, Laurelienribon/tweenengine/equations/Linear;->INOUT:Laurelienribon/tweenengine/equations/Linear;

    move v3, p1

    move v4, v5

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/iLoong/launcher/UI3DEngine/d;->startTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    move-result-object v0

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/cd;->B:Laurelienribon/tweenengine/Tween;

    goto :goto_2

    :cond_2
    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/cd;->h:I

    rsub-int/lit8 v0, v0, 0x4

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/cd;->h:I

    if-le v0, v2, :cond_4

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/cd;->v:I

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/cd;->s:Lcom/iLoong/launcher/UI3DEngine/d;

    invoke-virtual {v0, v5}, Lcom/iLoong/launcher/UI3DEngine/d;->setRotation(F)V

    :cond_3
    :goto_3
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/cd;->s:Lcom/iLoong/launcher/UI3DEngine/d;

    sget-object v2, Laurelienribon/tweenengine/equations/Linear;->INOUT:Laurelienribon/tweenengine/equations/Linear;

    iget v3, p0, Lcom/iLoong/launcher/Desktop3D/cd;->h:I

    mul-int/lit16 v3, v3, 0x168

    div-int/lit8 v3, v3, 0x4

    int-to-float v4, v3

    move v3, p1

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/iLoong/launcher/UI3DEngine/d;->startTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    move-result-object v0

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/cd;->B:Laurelienribon/tweenengine/Tween;

    goto/16 :goto_2

    :cond_4
    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/cd;->v:I

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/cd;->v:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_3

    :cond_5
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/cd;->s:Lcom/iLoong/launcher/UI3DEngine/d;

    invoke-virtual {v0, v4}, Lcom/iLoong/launcher/UI3DEngine/d;->setRotation(F)V

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private a(Lcom/iLoong/launcher/UI3DEngine/View3D;)V
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/cd;->q:Lcom/iLoong/launcher/UI3DEngine/d;

    iget-object v0, v0, Lcom/iLoong/launcher/UI3DEngine/d;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/Desktop3D/cd;->findView(Ljava/lang/String;)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/cd;->q:Lcom/iLoong/launcher/UI3DEngine/d;

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/Desktop3D/cd;->removeView(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    :cond_0
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/cd;->o:Lcom/iLoong/launcher/UI3DEngine/d;

    iget-object v0, v0, Lcom/iLoong/launcher/UI3DEngine/d;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/Desktop3D/cd;->findView(Ljava/lang/String;)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/cd;->o:Lcom/iLoong/launcher/UI3DEngine/d;

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/Desktop3D/cd;->removeView(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    :cond_1
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/cd;->m:Lcom/iLoong/launcher/UI3DEngine/d;

    iget-object v0, v0, Lcom/iLoong/launcher/UI3DEngine/d;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/Desktop3D/cd;->findView(Ljava/lang/String;)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/cd;->m:Lcom/iLoong/launcher/UI3DEngine/d;

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/Desktop3D/cd;->removeView(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    :cond_2
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/cd;->k:Lcom/iLoong/launcher/UI3DEngine/d;

    iget-object v0, v0, Lcom/iLoong/launcher/UI3DEngine/d;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/Desktop3D/cd;->findView(Ljava/lang/String;)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/cd;->k:Lcom/iLoong/launcher/UI3DEngine/d;

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/Desktop3D/cd;->removeView(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    :cond_3
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/cd;->i:Lcom/iLoong/launcher/UI3DEngine/d;

    iget-object v0, v0, Lcom/iLoong/launcher/UI3DEngine/d;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/Desktop3D/cd;->findView(Ljava/lang/String;)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/cd;->i:Lcom/iLoong/launcher/UI3DEngine/d;

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/Desktop3D/cd;->removeView(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    :cond_4
    invoke-virtual {p0, p1}, Lcom/iLoong/launcher/Desktop3D/cd;->addView(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    return-void
.end method

.method private b()V
    .locals 6

    const/high16 v5, 0x4000

    sget v0, Lcom/iLoong/launcher/Desktop3D/at;->aC:I

    int-to-float v0, v0

    div-float/2addr v0, v5

    div-float/2addr v0, v5

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/cd;->p:Lcom/iLoong/launcher/UI3DEngine/d;

    invoke-virtual {p0, v1}, Lcom/iLoong/launcher/Desktop3D/cd;->addView(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/cd;->n:Lcom/iLoong/launcher/UI3DEngine/d;

    invoke-virtual {p0, v1}, Lcom/iLoong/launcher/Desktop3D/cd;->addView(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/cd;->r:Lcom/iLoong/launcher/UI3DEngine/d;

    invoke-virtual {p0, v1}, Lcom/iLoong/launcher/Desktop3D/cd;->addView(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/cd;->l:Lcom/iLoong/launcher/UI3DEngine/d;

    invoke-virtual {p0, v1}, Lcom/iLoong/launcher/Desktop3D/cd;->addView(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/cd;->p:Lcom/iLoong/launcher/UI3DEngine/d;

    invoke-virtual {v1}, Lcom/iLoong/launcher/UI3DEngine/d;->hide()V

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/cd;->p:Lcom/iLoong/launcher/UI3DEngine/d;

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/cd;->d:F

    iget v3, p0, Lcom/iLoong/launcher/Desktop3D/cd;->e:F

    invoke-virtual {v1, v2, v3}, Lcom/iLoong/launcher/UI3DEngine/d;->setPosition(FF)V

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/cd;->n:Lcom/iLoong/launcher/UI3DEngine/d;

    invoke-virtual {v1}, Lcom/iLoong/launcher/UI3DEngine/d;->hide()V

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/cd;->n:Lcom/iLoong/launcher/UI3DEngine/d;

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/cd;->d:F

    iget v3, p0, Lcom/iLoong/launcher/Desktop3D/cd;->e:F

    invoke-virtual {v1, v2, v3}, Lcom/iLoong/launcher/UI3DEngine/d;->setPosition(FF)V

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/cd;->r:Lcom/iLoong/launcher/UI3DEngine/d;

    invoke-virtual {v1}, Lcom/iLoong/launcher/UI3DEngine/d;->hide()V

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/cd;->r:Lcom/iLoong/launcher/UI3DEngine/d;

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/cd;->d:F

    iget v3, p0, Lcom/iLoong/launcher/Desktop3D/cd;->e:F

    invoke-virtual {v1, v2, v3}, Lcom/iLoong/launcher/UI3DEngine/d;->setPosition(FF)V

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/cd;->l:Lcom/iLoong/launcher/UI3DEngine/d;

    invoke-virtual {v1}, Lcom/iLoong/launcher/UI3DEngine/d;->hide()V

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/cd;->l:Lcom/iLoong/launcher/UI3DEngine/d;

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/cd;->d:F

    iget v3, p0, Lcom/iLoong/launcher/Desktop3D/cd;->e:F

    invoke-virtual {v1, v2, v3}, Lcom/iLoong/launcher/UI3DEngine/d;->setPosition(FF)V

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/cd;->s:Lcom/iLoong/launcher/UI3DEngine/d;

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/cd;->d:F

    iget-object v3, p0, Lcom/iLoong/launcher/Desktop3D/cd;->s:Lcom/iLoong/launcher/UI3DEngine/d;

    invoke-virtual {v3}, Lcom/iLoong/launcher/UI3DEngine/d;->getWidth()F

    move-result v3

    div-float/2addr v3, v5

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/iLoong/launcher/Desktop3D/cd;->e:F

    div-float v4, v0, v5

    add-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/iLoong/launcher/UI3DEngine/d;->setPosition(FF)V

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/cd;->s:Lcom/iLoong/launcher/UI3DEngine/d;

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/cd;->s:Lcom/iLoong/launcher/UI3DEngine/d;

    invoke-virtual {v2}, Lcom/iLoong/launcher/UI3DEngine/d;->getWidth()F

    move-result v2

    div-float/2addr v2, v5

    neg-float v0, v0

    div-float/2addr v0, v5

    invoke-virtual {v1, v2, v0}, Lcom/iLoong/launcher/UI3DEngine/d;->setOrigin(FF)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/cd;->s:Lcom/iLoong/launcher/UI3DEngine/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/UI3DEngine/d;->setRotation(F)V

    invoke-direct {p0}, Lcom/iLoong/launcher/Desktop3D/cd;->c()V

    return-void
.end method

.method private c()V
    .locals 13

    const/4 v12, 0x3

    const/4 v11, 0x1

    const/high16 v10, 0x3f80

    const/4 v9, 0x0

    const/high16 v8, 0x4000

    sget v0, Lcom/iLoong/launcher/Desktop3D/at;->aC:I

    int-to-float v0, v0

    div-float/2addr v0, v8

    div-float/2addr v0, v8

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/iLoong/launcher/Desktop3D/cd;->A:Laurelienribon/tweenengine/Timeline;

    const/high16 v1, 0x3f00

    invoke-static {}, Laurelienribon/tweenengine/Timeline;->createParallel()Laurelienribon/tweenengine/Timeline;

    move-result-object v2

    iput-object v2, p0, Lcom/iLoong/launcher/Desktop3D/cd;->A:Laurelienribon/tweenengine/Timeline;

    sget-object v2, Laurelienribon/tweenengine/equations/Back;->OUT:Laurelienribon/tweenengine/equations/Back;

    iget-object v3, p0, Lcom/iLoong/launcher/Desktop3D/cd;->r:Lcom/iLoong/launcher/UI3DEngine/d;

    invoke-virtual {v3}, Lcom/iLoong/launcher/UI3DEngine/d;->show()V

    iget-object v3, p0, Lcom/iLoong/launcher/Desktop3D/cd;->r:Lcom/iLoong/launcher/UI3DEngine/d;

    invoke-virtual {v3, v9, v9}, Lcom/iLoong/launcher/UI3DEngine/d;->setScale(FF)V

    iget-object v3, p0, Lcom/iLoong/launcher/Desktop3D/cd;->A:Laurelienribon/tweenengine/Timeline;

    iget-object v4, p0, Lcom/iLoong/launcher/Desktop3D/cd;->r:Lcom/iLoong/launcher/UI3DEngine/d;

    invoke-static {v4, v11, v1}, Laurelienribon/tweenengine/Tween;->to(Ljava/lang/Object;IF)Laurelienribon/tweenengine/Tween;

    move-result-object v4

    iget v5, p0, Lcom/iLoong/launcher/Desktop3D/cd;->d:F

    iget-object v6, p0, Lcom/iLoong/launcher/Desktop3D/cd;->r:Lcom/iLoong/launcher/UI3DEngine/d;

    invoke-virtual {v6}, Lcom/iLoong/launcher/UI3DEngine/d;->getWidth()F

    move-result v6

    div-float/2addr v6, v8

    sub-float/2addr v5, v6

    iget v6, p0, Lcom/iLoong/launcher/Desktop3D/cd;->e:F

    add-float/2addr v6, v0

    div-float v7, v0, v8

    add-float/2addr v6, v7

    sget v7, Lcom/iLoong/launcher/Desktop3D/at;->aS:I

    int-to-float v7, v7

    sub-float/2addr v6, v7

    iget-object v7, p0, Lcom/iLoong/launcher/Desktop3D/cd;->r:Lcom/iLoong/launcher/UI3DEngine/d;

    invoke-virtual {v7}, Lcom/iLoong/launcher/UI3DEngine/d;->getHeight()F

    move-result v7

    div-float/2addr v7, v8

    sub-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Laurelienribon/tweenengine/Tween;->target(FF)Laurelienribon/tweenengine/Tween;

    move-result-object v4

    invoke-virtual {v4, v2}, Laurelienribon/tweenengine/Tween;->ease(Laurelienribon/tweenengine/TweenEquation;)Laurelienribon/tweenengine/Tween;

    move-result-object v4

    invoke-virtual {v3, v4}, Laurelienribon/tweenengine/Timeline;->push(Laurelienribon/tweenengine/Tween;)Laurelienribon/tweenengine/Timeline;

    iget-object v3, p0, Lcom/iLoong/launcher/Desktop3D/cd;->A:Laurelienribon/tweenengine/Timeline;

    iget-object v4, p0, Lcom/iLoong/launcher/Desktop3D/cd;->r:Lcom/iLoong/launcher/UI3DEngine/d;

    invoke-static {v4, v12, v1}, Laurelienribon/tweenengine/Tween;->to(Ljava/lang/Object;IF)Laurelienribon/tweenengine/Tween;

    move-result-object v4

    invoke-virtual {v4, v10, v10}, Laurelienribon/tweenengine/Tween;->target(FF)Laurelienribon/tweenengine/Tween;

    move-result-object v4

    sget-object v5, Laurelienribon/tweenengine/equations/Linear;->INOUT:Laurelienribon/tweenengine/equations/Linear;

    invoke-virtual {v4, v5}, Laurelienribon/tweenengine/Tween;->ease(Laurelienribon/tweenengine/TweenEquation;)Laurelienribon/tweenengine/Tween;

    move-result-object v4

    invoke-virtual {v3, v4}, Laurelienribon/tweenengine/Timeline;->push(Laurelienribon/tweenengine/Tween;)Laurelienribon/tweenengine/Timeline;

    iget-object v3, p0, Lcom/iLoong/launcher/Desktop3D/cd;->p:Lcom/iLoong/launcher/UI3DEngine/d;

    invoke-virtual {v3}, Lcom/iLoong/launcher/UI3DEngine/d;->show()V

    iget-object v3, p0, Lcom/iLoong/launcher/Desktop3D/cd;->p:Lcom/iLoong/launcher/UI3DEngine/d;

    invoke-virtual {v3, v9, v9}, Lcom/iLoong/launcher/UI3DEngine/d;->setScale(FF)V

    iget-object v3, p0, Lcom/iLoong/launcher/Desktop3D/cd;->A:Laurelienribon/tweenengine/Timeline;

    iget-object v4, p0, Lcom/iLoong/launcher/Desktop3D/cd;->p:Lcom/iLoong/launcher/UI3DEngine/d;

    invoke-static {v4, v11, v1}, Laurelienribon/tweenengine/Tween;->to(Ljava/lang/Object;IF)Laurelienribon/tweenengine/Tween;

    move-result-object v4

    iget v5, p0, Lcom/iLoong/launcher/Desktop3D/cd;->d:F

    sub-float/2addr v5, v0

    div-float v6, v0, v8

    sub-float/2addr v5, v6

    iget-object v6, p0, Lcom/iLoong/launcher/Desktop3D/cd;->p:Lcom/iLoong/launcher/UI3DEngine/d;

    invoke-virtual {v6}, Lcom/iLoong/launcher/UI3DEngine/d;->getWidth()F

    move-result v6

    div-float/2addr v6, v8

    sub-float/2addr v5, v6

    iget v6, p0, Lcom/iLoong/launcher/Desktop3D/cd;->e:F

    iget-object v7, p0, Lcom/iLoong/launcher/Desktop3D/cd;->p:Lcom/iLoong/launcher/UI3DEngine/d;

    invoke-virtual {v7}, Lcom/iLoong/launcher/UI3DEngine/d;->getHeight()F

    move-result v7

    div-float/2addr v7, v8

    sub-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Laurelienribon/tweenengine/Tween;->target(FF)Laurelienribon/tweenengine/Tween;

    move-result-object v4

    invoke-virtual {v4, v2}, Laurelienribon/tweenengine/Tween;->ease(Laurelienribon/tweenengine/TweenEquation;)Laurelienribon/tweenengine/Tween;

    move-result-object v4

    invoke-virtual {v3, v4}, Laurelienribon/tweenengine/Timeline;->push(Laurelienribon/tweenengine/Tween;)Laurelienribon/tweenengine/Timeline;

    iget-object v3, p0, Lcom/iLoong/launcher/Desktop3D/cd;->A:Laurelienribon/tweenengine/Timeline;

    iget-object v4, p0, Lcom/iLoong/launcher/Desktop3D/cd;->p:Lcom/iLoong/launcher/UI3DEngine/d;

    invoke-static {v4, v12, v1}, Laurelienribon/tweenengine/Tween;->to(Ljava/lang/Object;IF)Laurelienribon/tweenengine/Tween;

    move-result-object v4

    invoke-virtual {v4, v10, v10}, Laurelienribon/tweenengine/Tween;->target(FF)Laurelienribon/tweenengine/Tween;

    move-result-object v4

    sget-object v5, Laurelienribon/tweenengine/equations/Linear;->INOUT:Laurelienribon/tweenengine/equations/Linear;

    invoke-virtual {v4, v5}, Laurelienribon/tweenengine/Tween;->ease(Laurelienribon/tweenengine/TweenEquation;)Laurelienribon/tweenengine/Tween;

    move-result-object v4

    invoke-virtual {v3, v4}, Laurelienribon/tweenengine/Timeline;->push(Laurelienribon/tweenengine/Tween;)Laurelienribon/tweenengine/Timeline;

    iget-object v3, p0, Lcom/iLoong/launcher/Desktop3D/cd;->n:Lcom/iLoong/launcher/UI3DEngine/d;

    invoke-virtual {v3}, Lcom/iLoong/launcher/UI3DEngine/d;->show()V

    iget-object v3, p0, Lcom/iLoong/launcher/Desktop3D/cd;->n:Lcom/iLoong/launcher/UI3DEngine/d;

    invoke-virtual {v3, v9, v9}, Lcom/iLoong/launcher/UI3DEngine/d;->setScale(FF)V

    iget-object v3, p0, Lcom/iLoong/launcher/Desktop3D/cd;->A:Laurelienribon/tweenengine/Timeline;

    iget-object v4, p0, Lcom/iLoong/launcher/Desktop3D/cd;->n:Lcom/iLoong/launcher/UI3DEngine/d;

    invoke-static {v4, v11, v1}, Laurelienribon/tweenengine/Tween;->to(Ljava/lang/Object;IF)Laurelienribon/tweenengine/Tween;

    move-result-object v4

    iget v5, p0, Lcom/iLoong/launcher/Desktop3D/cd;->d:F

    iget-object v6, p0, Lcom/iLoong/launcher/Desktop3D/cd;->n:Lcom/iLoong/launcher/UI3DEngine/d;

    invoke-virtual {v6}, Lcom/iLoong/launcher/UI3DEngine/d;->getWidth()F

    move-result v6

    div-float/2addr v6, v8

    sub-float/2addr v5, v6

    iget v6, p0, Lcom/iLoong/launcher/Desktop3D/cd;->e:F

    sub-float/2addr v6, v0

    div-float v7, v0, v8

    sub-float/2addr v6, v7

    sget v7, Lcom/iLoong/launcher/Desktop3D/at;->aS:I

    int-to-float v7, v7

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/iLoong/launcher/Desktop3D/cd;->n:Lcom/iLoong/launcher/UI3DEngine/d;

    invoke-virtual {v7}, Lcom/iLoong/launcher/UI3DEngine/d;->getHeight()F

    move-result v7

    div-float/2addr v7, v8

    sub-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Laurelienribon/tweenengine/Tween;->target(FF)Laurelienribon/tweenengine/Tween;

    move-result-object v4

    invoke-virtual {v4, v2}, Laurelienribon/tweenengine/Tween;->ease(Laurelienribon/tweenengine/TweenEquation;)Laurelienribon/tweenengine/Tween;

    move-result-object v4

    invoke-virtual {v3, v4}, Laurelienribon/tweenengine/Timeline;->push(Laurelienribon/tweenengine/Tween;)Laurelienribon/tweenengine/Timeline;

    iget-object v3, p0, Lcom/iLoong/launcher/Desktop3D/cd;->A:Laurelienribon/tweenengine/Timeline;

    iget-object v4, p0, Lcom/iLoong/launcher/Desktop3D/cd;->n:Lcom/iLoong/launcher/UI3DEngine/d;

    invoke-static {v4, v12, v1}, Laurelienribon/tweenengine/Tween;->to(Ljava/lang/Object;IF)Laurelienribon/tweenengine/Tween;

    move-result-object v4

    invoke-virtual {v4, v10, v10}, Laurelienribon/tweenengine/Tween;->target(FF)Laurelienribon/tweenengine/Tween;

    move-result-object v4

    sget-object v5, Laurelienribon/tweenengine/equations/Linear;->INOUT:Laurelienribon/tweenengine/equations/Linear;

    invoke-virtual {v4, v5}, Laurelienribon/tweenengine/Tween;->ease(Laurelienribon/tweenengine/TweenEquation;)Laurelienribon/tweenengine/Tween;

    move-result-object v4

    invoke-virtual {v3, v4}, Laurelienribon/tweenengine/Timeline;->push(Laurelienribon/tweenengine/Tween;)Laurelienribon/tweenengine/Timeline;

    iget-object v3, p0, Lcom/iLoong/launcher/Desktop3D/cd;->l:Lcom/iLoong/launcher/UI3DEngine/d;

    invoke-virtual {v3}, Lcom/iLoong/launcher/UI3DEngine/d;->show()V

    iget-object v3, p0, Lcom/iLoong/launcher/Desktop3D/cd;->l:Lcom/iLoong/launcher/UI3DEngine/d;

    invoke-virtual {v3, v9, v9}, Lcom/iLoong/launcher/UI3DEngine/d;->setScale(FF)V

    iget-object v3, p0, Lcom/iLoong/launcher/Desktop3D/cd;->A:Laurelienribon/tweenengine/Timeline;

    iget-object v4, p0, Lcom/iLoong/launcher/Desktop3D/cd;->l:Lcom/iLoong/launcher/UI3DEngine/d;

    invoke-static {v4, v11, v1}, Laurelienribon/tweenengine/Tween;->to(Ljava/lang/Object;IF)Laurelienribon/tweenengine/Tween;

    move-result-object v4

    iget v5, p0, Lcom/iLoong/launcher/Desktop3D/cd;->d:F

    div-float v6, v0, v8

    add-float/2addr v5, v6

    add-float/2addr v0, v5

    iget-object v5, p0, Lcom/iLoong/launcher/Desktop3D/cd;->l:Lcom/iLoong/launcher/UI3DEngine/d;

    invoke-virtual {v5}, Lcom/iLoong/launcher/UI3DEngine/d;->getWidth()F

    move-result v5

    div-float/2addr v5, v8

    sub-float/2addr v0, v5

    iget v5, p0, Lcom/iLoong/launcher/Desktop3D/cd;->e:F

    iget-object v6, p0, Lcom/iLoong/launcher/Desktop3D/cd;->l:Lcom/iLoong/launcher/UI3DEngine/d;

    invoke-virtual {v6}, Lcom/iLoong/launcher/UI3DEngine/d;->getHeight()F

    move-result v6

    div-float/2addr v6, v8

    sub-float/2addr v5, v6

    invoke-virtual {v4, v0, v5}, Laurelienribon/tweenengine/Tween;->target(FF)Laurelienribon/tweenengine/Tween;

    move-result-object v0

    invoke-virtual {v0, v2}, Laurelienribon/tweenengine/Tween;->ease(Laurelienribon/tweenengine/TweenEquation;)Laurelienribon/tweenengine/Tween;

    move-result-object v0

    invoke-virtual {v3, v0}, Laurelienribon/tweenengine/Timeline;->push(Laurelienribon/tweenengine/Tween;)Laurelienribon/tweenengine/Timeline;

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/cd;->A:Laurelienribon/tweenengine/Timeline;

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/cd;->l:Lcom/iLoong/launcher/UI3DEngine/d;

    invoke-static {v2, v12, v1}, Laurelienribon/tweenengine/Tween;->to(Ljava/lang/Object;IF)Laurelienribon/tweenengine/Tween;

    move-result-object v1

    invoke-virtual {v1, v10, v10}, Laurelienribon/tweenengine/Tween;->target(FF)Laurelienribon/tweenengine/Tween;

    move-result-object v1

    sget-object v2, Laurelienribon/tweenengine/equations/Linear;->INOUT:Laurelienribon/tweenengine/equations/Linear;

    invoke-virtual {v1, v2}, Laurelienribon/tweenengine/Tween;->ease(Laurelienribon/tweenengine/TweenEquation;)Laurelienribon/tweenengine/Tween;

    move-result-object v1

    invoke-virtual {v0, v1}, Laurelienribon/tweenengine/Timeline;->push(Laurelienribon/tweenengine/Tween;)Laurelienribon/tweenengine/Timeline;

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/cd;->A:Laurelienribon/tweenengine/Timeline;

    sget-object v1, Lcom/iLoong/launcher/tween/View3DTweenAccessor;->manager:Laurelienribon/tweenengine/TweenManager;

    invoke-virtual {v0, v1}, Laurelienribon/tweenengine/Timeline;->start(Laurelienribon/tweenengine/TweenManager;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    const/high16 v3, 0x4000

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/cd;->requestFocus()V

    const-string v0, "shell-picker-menu-item1"

    invoke-static {v0}, Lcom/iLoong/launcher/Desktop3D/at;->c(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    move-result-object v0

    sput-object v0, Lcom/iLoong/launcher/Desktop3D/cd;->c:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    const-string v0, "shell-picker-menu-item2"

    invoke-static {v0}, Lcom/iLoong/launcher/Desktop3D/at;->c(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    move-result-object v0

    sput-object v0, Lcom/iLoong/launcher/Desktop3D/cd;->b:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    new-instance v0, Lcom/iLoong/launcher/UI3DEngine/d;

    const-string v1, "backgroudImgFocus"

    sget-object v2, Lcom/iLoong/launcher/Desktop3D/cd;->b:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    invoke-direct {v0, v1, v2}, Lcom/iLoong/launcher/UI3DEngine/d;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/cd;->s:Lcom/iLoong/launcher/UI3DEngine/d;

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/cd;->s:Lcom/iLoong/launcher/UI3DEngine/d;

    sget v1, Lcom/iLoong/launcher/Desktop3D/at;->aE:I

    int-to-float v1, v1

    sget v2, Lcom/iLoong/launcher/Desktop3D/at;->aF:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/iLoong/launcher/UI3DEngine/d;->setSize(FF)V

    new-instance v0, Lcom/iLoong/launcher/UI3DEngine/d;

    const-string v1, "overLapImgFocus"

    const-string v2, "shell-picker-menu-item5b"

    invoke-static {v2}, Lcom/iLoong/launcher/Desktop3D/at;->c(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/iLoong/launcher/UI3DEngine/d;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/cd;->i:Lcom/iLoong/launcher/UI3DEngine/d;

    new-instance v0, Lcom/iLoong/launcher/UI3DEngine/d;

    const-string v1, "overLapImgUnFocus"

    const-string v2, "shell-picker-menu-item5a"

    invoke-static {v2}, Lcom/iLoong/launcher/Desktop3D/at;->c(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/iLoong/launcher/UI3DEngine/d;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/cd;->j:Lcom/iLoong/launcher/UI3DEngine/d;

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/cd;->i:Lcom/iLoong/launcher/UI3DEngine/d;

    sget v1, Lcom/iLoong/launcher/Desktop3D/at;->aJ:I

    int-to-float v1, v1

    sget v2, Lcom/iLoong/launcher/Desktop3D/at;->aK:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/iLoong/launcher/UI3DEngine/d;->setSize(FF)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/cd;->j:Lcom/iLoong/launcher/UI3DEngine/d;

    sget v1, Lcom/iLoong/launcher/Desktop3D/at;->aJ:I

    int-to-float v1, v1

    sget v2, Lcom/iLoong/launcher/Desktop3D/at;->aK:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/iLoong/launcher/UI3DEngine/d;->setSize(FF)V

    new-instance v0, Lcom/iLoong/launcher/UI3DEngine/d;

    const-string v1, "deleteAllImgFocus"

    const-string v2, "shell-picker-menu-item4b"

    invoke-static {v2}, Lcom/iLoong/launcher/Desktop3D/at;->c(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/iLoong/launcher/UI3DEngine/d;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/cd;->k:Lcom/iLoong/launcher/UI3DEngine/d;

    new-instance v0, Lcom/iLoong/launcher/UI3DEngine/d;

    const-string v1, "deleteAllImgUnFocus"

    const-string v2, "shell-picker-menu-item4a"

    invoke-static {v2}, Lcom/iLoong/launcher/Desktop3D/at;->c(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/iLoong/launcher/UI3DEngine/d;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/cd;->l:Lcom/iLoong/launcher/UI3DEngine/d;

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/cd;->k:Lcom/iLoong/launcher/UI3DEngine/d;

    sget v1, Lcom/iLoong/launcher/Desktop3D/at;->aN:I

    int-to-float v1, v1

    sget v2, Lcom/iLoong/launcher/Desktop3D/at;->aO:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/iLoong/launcher/UI3DEngine/d;->setSize(FF)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/cd;->l:Lcom/iLoong/launcher/UI3DEngine/d;

    sget v1, Lcom/iLoong/launcher/Desktop3D/at;->aN:I

    int-to-float v1, v1

    sget v2, Lcom/iLoong/launcher/Desktop3D/at;->aO:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/iLoong/launcher/UI3DEngine/d;->setSize(FF)V

    new-instance v0, Lcom/iLoong/launcher/UI3DEngine/d;

    const-string v1, "CreateFolderImgFocus"

    const-string v2, "shell-picker-menu-item6b"

    invoke-static {v2}, Lcom/iLoong/launcher/Desktop3D/at;->c(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/iLoong/launcher/UI3DEngine/d;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/cd;->m:Lcom/iLoong/launcher/UI3DEngine/d;

    new-instance v0, Lcom/iLoong/launcher/UI3DEngine/d;

    const-string v1, "CreateFolderImgUnFocus"

    const-string v2, "shell-picker-menu-item6a"

    invoke-static {v2}, Lcom/iLoong/launcher/Desktop3D/at;->c(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/iLoong/launcher/UI3DEngine/d;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/cd;->n:Lcom/iLoong/launcher/UI3DEngine/d;

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/cd;->m:Lcom/iLoong/launcher/UI3DEngine/d;

    sget v1, Lcom/iLoong/launcher/Desktop3D/at;->aP:I

    int-to-float v1, v1

    sget v2, Lcom/iLoong/launcher/Desktop3D/at;->aQ:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/iLoong/launcher/UI3DEngine/d;->setSize(FF)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/cd;->n:Lcom/iLoong/launcher/UI3DEngine/d;

    sget v1, Lcom/iLoong/launcher/Desktop3D/at;->aP:I

    int-to-float v1, v1

    sget v2, Lcom/iLoong/launcher/Desktop3D/at;->aQ:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/iLoong/launcher/UI3DEngine/d;->setSize(FF)V

    new-instance v0, Lcom/iLoong/launcher/UI3DEngine/d;

    const-string v1, "multiSelectImgFocus"

    const-string v2, "shell-picker-menu-item3b"

    invoke-static {v2}, Lcom/iLoong/launcher/Desktop3D/at;->c(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/iLoong/launcher/UI3DEngine/d;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/cd;->o:Lcom/iLoong/launcher/UI3DEngine/d;

    new-instance v0, Lcom/iLoong/launcher/UI3DEngine/d;

    const-string v1, "multiSelectImgUnFocus"

    const-string v2, "shell-picker-menu-item3a"

    invoke-static {v2}, Lcom/iLoong/launcher/Desktop3D/at;->c(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/iLoong/launcher/UI3DEngine/d;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/cd;->p:Lcom/iLoong/launcher/UI3DEngine/d;

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/cd;->o:Lcom/iLoong/launcher/UI3DEngine/d;

    sget v1, Lcom/iLoong/launcher/Desktop3D/at;->aL:I

    int-to-float v1, v1

    sget v2, Lcom/iLoong/launcher/Desktop3D/at;->aM:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/iLoong/launcher/UI3DEngine/d;->setSize(FF)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/cd;->p:Lcom/iLoong/launcher/UI3DEngine/d;

    sget v1, Lcom/iLoong/launcher/Desktop3D/at;->aL:I

    int-to-float v1, v1

    sget v2, Lcom/iLoong/launcher/Desktop3D/at;->aM:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/iLoong/launcher/UI3DEngine/d;->setSize(FF)V

    new-instance v0, Lcom/iLoong/launcher/UI3DEngine/d;

    const-string v1, "autoSortImgFocus"

    const-string v2, "shell-picker-menu-item7b"

    invoke-static {v2}, Lcom/iLoong/launcher/Desktop3D/at;->c(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/iLoong/launcher/UI3DEngine/d;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/cd;->q:Lcom/iLoong/launcher/UI3DEngine/d;

    new-instance v0, Lcom/iLoong/launcher/UI3DEngine/d;

    const-string v1, "autoSortImgUnFocus"

    const-string v2, "shell-picker-menu-item7a"

    invoke-static {v2}, Lcom/iLoong/launcher/Desktop3D/at;->c(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/iLoong/launcher/UI3DEngine/d;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/cd;->r:Lcom/iLoong/launcher/UI3DEngine/d;

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/cd;->q:Lcom/iLoong/launcher/UI3DEngine/d;

    sget v1, Lcom/iLoong/launcher/Desktop3D/at;->aH:I

    int-to-float v1, v1

    sget v2, Lcom/iLoong/launcher/Desktop3D/at;->aI:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/iLoong/launcher/UI3DEngine/d;->setSize(FF)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/cd;->r:Lcom/iLoong/launcher/UI3DEngine/d;

    sget v1, Lcom/iLoong/launcher/Desktop3D/at;->aH:I

    int-to-float v1, v1

    sget v2, Lcom/iLoong/launcher/Desktop3D/at;->aI:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/iLoong/launcher/UI3DEngine/d;->setSize(FF)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/cd;->s:Lcom/iLoong/launcher/UI3DEngine/d;

    invoke-virtual {v0}, Lcom/iLoong/launcher/UI3DEngine/d;->getWidth()F

    move-result v0

    div-float/2addr v0, v3

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/cd;->f:F

    new-instance v0, Lcom/iLoong/launcher/UI3DEngine/d;

    const-string v1, "backgroudImgUnFocus"

    sget-object v2, Lcom/iLoong/launcher/Desktop3D/cd;->c:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    invoke-direct {v0, v1, v2}, Lcom/iLoong/launcher/UI3DEngine/d;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/cd;->t:Lcom/iLoong/launcher/UI3DEngine/d;

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/cd;->t:Lcom/iLoong/launcher/UI3DEngine/d;

    sget v1, Lcom/iLoong/launcher/Desktop3D/at;->aC:I

    int-to-float v1, v1

    sget v2, Lcom/iLoong/launcher/Desktop3D/at;->aD:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/iLoong/launcher/UI3DEngine/d;->setSize(FF)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/cd;->t:Lcom/iLoong/launcher/UI3DEngine/d;

    invoke-virtual {v0}, Lcom/iLoong/launcher/UI3DEngine/d;->getWidth()F

    move-result v0

    div-float/2addr v0, v3

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/cd;->u:F

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/cd;->t:Lcom/iLoong/launcher/UI3DEngine/d;

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/cd;->d:F

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/cd;->u:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/cd;->e:F

    iget v3, p0, Lcom/iLoong/launcher/Desktop3D/cd;->u:F

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/iLoong/launcher/UI3DEngine/d;->setPosition(FF)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/cd;->t:Lcom/iLoong/launcher/UI3DEngine/d;

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/Desktop3D/cd;->addView(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    invoke-direct {p0}, Lcom/iLoong/launcher/Desktop3D/cd;->b()V

    return-void
.end method

.method public keyDown(I)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->keyDown(I)Z

    move-result v0

    goto :goto_0
.end method

.method public keyUp(I)Z
    .locals 2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/4 v0, 0x5

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/cd;->h:I

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/cd;->releaseFocus()V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/cd;->viewParent:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/cd;->h:I

    invoke-virtual {v0, p0, v1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->onCtrlEvent(Lcom/iLoong/launcher/UI3DEngine/View3D;I)Z

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->keyUp(I)Z

    move-result v0

    goto :goto_0
.end method

.method public onClick(FF)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onDoubleClick(FF)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onLongClick(FF)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onTouchDown(FFI)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/iLoong/launcher/Desktop3D/cd;->hit(FF)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iput-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/cd;->a:Z

    invoke-virtual {p0, p1, p2}, Lcom/iLoong/launcher/Desktop3D/cd;->hit(FF)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v1

    iget-object v1, v1, Lcom/iLoong/launcher/UI3DEngine/View3D;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/cd;->name:Ljava/lang/String;

    if-ne v1, v2, :cond_2

    const/4 v1, 0x5

    iput v1, p0, Lcom/iLoong/launcher/Desktop3D/cd;->h:I

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/cd;->s:Lcom/iLoong/launcher/UI3DEngine/d;

    iget-object v1, v1, Lcom/iLoong/launcher/UI3DEngine/d;->name:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/iLoong/launcher/Desktop3D/cd;->findView(Ljava/lang/String;)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/cd;->s:Lcom/iLoong/launcher/UI3DEngine/d;

    invoke-virtual {p0, v1}, Lcom/iLoong/launcher/Desktop3D/cd;->removeView(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/cd;->s:Lcom/iLoong/launcher/UI3DEngine/d;

    invoke-virtual {p0, v1}, Lcom/iLoong/launcher/Desktop3D/cd;->addView(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    :goto_1
    const v1, 0x3e99999a

    float-to-int v2, p1

    float-to-int v3, p2

    invoke-direct {p0, v1, v2, v3}, Lcom/iLoong/launcher/Desktop3D/cd;->a(FII)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/cd;->s:Lcom/iLoong/launcher/UI3DEngine/d;

    invoke-virtual {p0, v1}, Lcom/iLoong/launcher/Desktop3D/cd;->addView(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    goto :goto_1
.end method

.method public onTouchUp(FFI)Z
    .locals 3

    const/4 v2, 0x1

    if-ne p3, v2, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/cd;->releaseFocus()V

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/cd;->h:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/cd;->viewParent:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/cd;->h:I

    invoke-virtual {v0, p0, v1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->onCtrlEvent(Lcom/iLoong/launcher/UI3DEngine/View3D;I)Z

    goto :goto_0
.end method

.method public scroll(FFFF)Z
    .locals 4

    const/4 v3, 0x1

    iget-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/cd;->a:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/cd;->h:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const v0, 0x3e4ccccd

    float-to-int v1, p1

    float-to-int v2, p2

    invoke-direct {p0, v0, v1, v2}, Lcom/iLoong/launcher/Desktop3D/cd;->a(FII)V

    goto :goto_0
.end method
