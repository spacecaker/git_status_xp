.class public Lcom/iLoong/launcher/Desktop3D/f;
.super Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

# interfaces
.implements Lcom/iLoong/launcher/Desktop3D/bd;
.implements Lcom/iLoong/launcher/Desktop3D/bm;


# static fields
.field public static b:F

.field public static c:I

.field public static final d:I


# instance fields
.field private A:F

.field private B:F

.field private C:F

.field private D:F

.field private E:F

.field private F:I

.field private G:Laurelienribon/tweenengine/Timeline;

.field private H:F

.field private I:Z

.field private J:Z

.field private K:J

.field private L:Z

.field private M:Z

.field private N:Z

.field private O:Z

.field private P:I

.field public a:I

.field private e:Lcom/iLoong/launcher/desktop/iLoongLauncher;

.field private f:Landroid/app/WallpaperManager;

.field private h:Lcom/iLoong/launcher/Desktop3D/v;

.field private i:Ljava/util/List;

.field private j:Ljava/util/ArrayList;

.field private k:Lcom/iLoong/launcher/UI3DEngine/View3D;

.field private l:Lcom/iLoong/launcher/UI3DEngine/View3D;

.field private m:Lcom/iLoong/launcher/UI3DEngine/View3D;

.field private n:I

.field private o:Z

.field private p:I

.field private q:I

.field private r:F

.field private s:F

.field private t:F

.field private u:F

.field private v:F

.field private w:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/high16 v0, 0x4190

    sput v0, Lcom/iLoong/launcher/Desktop3D/f;->b:F

    const/16 v0, 0x9

    sput v0, Lcom/iLoong/launcher/Desktop3D/f;->c:I

    sget v0, Lcom/iLoong/launcher/Desktop3D/cb;->Q:I

    sput v0, Lcom/iLoong/launcher/Desktop3D/f;->d:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 5

    const/high16 v0, 0x3f80

    const/4 v1, -0x1

    const/high16 v4, 0x4000

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;-><init>(Ljava/lang/String;)V

    iput v1, p0, Lcom/iLoong/launcher/Desktop3D/f;->n:I

    iput-boolean v3, p0, Lcom/iLoong/launcher/Desktop3D/f;->o:Z

    iput v1, p0, Lcom/iLoong/launcher/Desktop3D/f;->p:I

    iput v1, p0, Lcom/iLoong/launcher/Desktop3D/f;->q:I

    iput v3, p0, Lcom/iLoong/launcher/Desktop3D/f;->a:I

    const/high16 v1, 0x4170

    iput v1, p0, Lcom/iLoong/launcher/Desktop3D/f;->r:F

    const/high16 v1, 0x42a0

    iput v1, p0, Lcom/iLoong/launcher/Desktop3D/f;->s:F

    iput v2, p0, Lcom/iLoong/launcher/Desktop3D/f;->t:F

    iput v2, p0, Lcom/iLoong/launcher/Desktop3D/f;->w:F

    const/high16 v1, 0x40a0

    iput v1, p0, Lcom/iLoong/launcher/Desktop3D/f;->A:F

    iput v2, p0, Lcom/iLoong/launcher/Desktop3D/f;->H:F

    iput-boolean v3, p0, Lcom/iLoong/launcher/Desktop3D/f;->I:Z

    iput-boolean v3, p0, Lcom/iLoong/launcher/Desktop3D/f;->J:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/iLoong/launcher/Desktop3D/f;->K:J

    iput-boolean v3, p0, Lcom/iLoong/launcher/Desktop3D/f;->L:Z

    iput-boolean v3, p0, Lcom/iLoong/launcher/Desktop3D/f;->M:Z

    iput-boolean v3, p0, Lcom/iLoong/launcher/Desktop3D/f;->N:Z

    iput-boolean v3, p0, Lcom/iLoong/launcher/Desktop3D/f;->O:Z

    const/4 v1, 0x1

    iput v1, p0, Lcom/iLoong/launcher/Desktop3D/f;->P:I

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x43f0

    div-float v2, v1, v2

    cmpg-float v2, v2, v0

    if-gez v2, :cond_0

    const/high16 v0, 0x43f0

    div-float v0, v1, v0

    :cond_0
    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/f;->s:F

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/iLoong/launcher/Desktop3D/f;->s:F

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/f;->width:F

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/f;->t:F

    mul-float/2addr v2, v4

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/f;->w:F

    mul-float/2addr v2, v4

    sub-float/2addr v1, v2

    const/high16 v2, 0x4040

    div-float/2addr v1, v2

    iput v1, p0, Lcom/iLoong/launcher/Desktop3D/f;->u:F

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/f;->height:F

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/f;->r:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/f;->s:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/f;->A:F

    mul-float/2addr v2, v4

    sub-float/2addr v1, v2

    const/high16 v2, 0x4040

    div-float/2addr v1, v2

    iput v1, p0, Lcom/iLoong/launcher/Desktop3D/f;->v:F

    sget v1, Lcom/iLoong/launcher/Desktop3D/f;->b:F

    mul-float/2addr v0, v1

    sput v0, Lcom/iLoong/launcher/Desktop3D/f;->b:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/f;->transform:Z

    sget v0, Lcom/iLoong/launcher/Desktop3D/cb;->R:I

    sput v0, Lcom/iLoong/launcher/Desktop3D/f;->c:I

    return-void
.end method

.method static synthetic a(Lcom/iLoong/launcher/Desktop3D/f;)F
    .locals 1

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/f;->D:F

    return v0
.end method

.method private a(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/f;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/f;->F:I

    sget v1, Lcom/iLoong/launcher/Desktop3D/f;->d:I

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/iLoong/launcher/Desktop3D/at;->aw:Ljava/lang/String;

    invoke-static {v0}, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->sendOurToastMsg(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iput p1, p0, Lcom/iLoong/launcher/Desktop3D/f;->n:I

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/f;->h:Lcom/iLoong/launcher/Desktop3D/v;

    iget-object v0, v0, Lcom/iLoong/launcher/Desktop3D/v;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    invoke-virtual {v0}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->getChildCount()I

    move-result v0

    if-lez v0, :cond_2

    invoke-static {}, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->sendDeletePageMsg()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/f;->a()V

    goto :goto_0
.end method

.method private a(ILcom/iLoong/launcher/UI3DEngine/View3D;Z)V
    .locals 7

    const/high16 v2, 0x4000

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/f;->u:F

    iput v0, p2, Lcom/iLoong/launcher/UI3DEngine/View3D;->width:F

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/f;->v:F

    iput v0, p2, Lcom/iLoong/launcher/UI3DEngine/View3D;->height:F

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/f;->u:F

    div-float/2addr v0, v2

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/f;->v:F

    div-float/2addr v1, v2

    invoke-virtual {p2, v0, v1}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setOrigin(FF)V

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/f;->t:F

    rem-int/lit8 v1, p1, 0x3

    int-to-float v1, v1

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/f;->u:F

    iget v3, p0, Lcom/iLoong/launcher/Desktop3D/f;->w:F

    add-float/2addr v2, v3

    mul-float/2addr v1, v2

    add-float v4, v0, v1

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/f;->r:F

    div-int/lit8 v2, p1, 0x3

    int-to-float v2, v2

    iget v3, p0, Lcom/iLoong/launcher/Desktop3D/f;->v:F

    iget v5, p0, Lcom/iLoong/launcher/Desktop3D/f;->A:F

    add-float/2addr v3, v5

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/f;->v:F

    add-float/2addr v1, v2

    sub-float v5, v0, v1

    if-eqz p3, :cond_0

    invoke-virtual {p2}, Lcom/iLoong/launcher/UI3DEngine/View3D;->stopTween()V

    const/4 v1, 0x1

    sget-object v2, Laurelienribon/tweenengine/equations/Cubic;->OUT:Laurelienribon/tweenengine/equations/Cubic;

    const/high16 v3, 0x3f00

    const/4 v6, 0x0

    move-object v0, p2

    invoke-virtual/range {v0 .. v6}, Lcom/iLoong/launcher/UI3DEngine/View3D;->startTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    move-result-object v0

    invoke-virtual {v0, p0}, Laurelienribon/tweenengine/Tween;->setCallback(Laurelienribon/tweenengine/TweenCallback;)Ljava/lang/Object;

    :goto_0
    return-void

    :cond_0
    iput v4, p2, Lcom/iLoong/launcher/UI3DEngine/View3D;->x:F

    iput v5, p2, Lcom/iLoong/launcher/UI3DEngine/View3D;->y:F

    goto :goto_0
.end method

.method private a(Lcom/iLoong/launcher/UI3DEngine/View3D;II)V
    .locals 11

    new-instance v0, Lcom/iLoong/launcher/Desktop3D/w;

    const-string v1, "edit_page"

    invoke-direct {v0, p0, v1}, Lcom/iLoong/launcher/Desktop3D/w;-><init>(Lcom/iLoong/launcher/Desktop3D/f;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-direct {p0, p2, v0, v1}, Lcom/iLoong/launcher/Desktop3D/f;->a(ILcom/iLoong/launcher/UI3DEngine/View3D;Z)V

    if-nez p1, :cond_1

    new-instance v1, Lcom/iLoong/launcher/UI3DEngine/View3D;

    const-string v2, "add_page"

    invoke-direct {v1, v2}, Lcom/iLoong/launcher/UI3DEngine/View3D;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/iLoong/launcher/Desktop3D/v;->i:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    invoke-virtual {v1, v2}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setBackgroud(Lcom/badlogic/gdx/graphics/g2d/NinePatch;)V

    sget-object v2, Lcom/badlogic/gdx/graphics/Color;->DARK_GRAY:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v1, v2}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/f;->B:F

    iget v3, p0, Lcom/iLoong/launcher/Desktop3D/f;->C:F

    invoke-virtual {v1, v2, v3}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setSize(FF)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setOrigin(FF)V

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/f;->u:F

    iget v3, v1, Lcom/iLoong/launcher/UI3DEngine/View3D;->width:F

    div-float/2addr v2, v3

    iget v3, p0, Lcom/iLoong/launcher/Desktop3D/f;->v:F

    iget v4, v1, Lcom/iLoong/launcher/UI3DEngine/View3D;->height:F

    div-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setScale(FF)V

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->addView(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    invoke-virtual {v1}, Lcom/iLoong/launcher/UI3DEngine/View3D;->show()V

    new-instance v1, Lcom/iLoong/launcher/UI3DEngine/View3D;

    const-string v2, "add_icon"

    const-string v3, "page-add-icon"

    invoke-static {v3}, Lcom/iLoong/launcher/Desktop3D/at;->c(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/iLoong/launcher/UI3DEngine/View3D;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/f;->u:F

    iget v3, v1, Lcom/iLoong/launcher/UI3DEngine/View3D;->width:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    iput v2, v1, Lcom/iLoong/launcher/UI3DEngine/View3D;->x:F

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/f;->v:F

    iget v3, v1, Lcom/iLoong/launcher/UI3DEngine/View3D;->height:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    iput v2, v1, Lcom/iLoong/launcher/UI3DEngine/View3D;->y:F

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setOrigin(FF)V

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->addView(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    invoke-virtual {v1}, Lcom/iLoong/launcher/UI3DEngine/View3D;->show()V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v2, 0x3f80

    const/high16 v3, 0x3f80

    const/high16 v4, 0x3f80

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v7, p0, Lcom/iLoong/launcher/Desktop3D/f;->G:Laurelienribon/tweenengine/Timeline;

    const/4 v1, 0x5

    sget-object v2, Laurelienribon/tweenengine/equations/Linear;->INOUT:Laurelienribon/tweenengine/equations/Linear;

    const v3, 0x3e99999a

    const/high16 v4, 0x3f80

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->obtainTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    move-result-object v1

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/f;->F:I

    int-to-float v2, v2

    iget v3, p0, Lcom/iLoong/launcher/Desktop3D/f;->H:F

    mul-float/2addr v2, v3

    const v3, 0x3e99999a

    add-float/2addr v2, v3

    invoke-virtual {v1, v2}, Laurelienribon/tweenengine/Tween;->delay(F)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laurelienribon/tweenengine/Tween;

    invoke-virtual {v7, v1}, Laurelienribon/tweenengine/Timeline;->push(Laurelienribon/tweenengine/Tween;)Laurelienribon/tweenengine/Timeline;

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/f;->l:Lcom/iLoong/launcher/UI3DEngine/View3D;

    :goto_0
    sget v1, Lcom/iLoong/launcher/Desktop3D/f;->c:I

    if-ge p2, v1, :cond_0

    invoke-virtual {p0, p2, v0}, Lcom/iLoong/launcher/Desktop3D/f;->addViewAt(ILcom/iLoong/launcher/UI3DEngine/View3D;)V

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x1

    if-ne p3, v1, :cond_4

    int-to-float v1, p2

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/f;->H:F

    mul-float v8, v1, v2

    iget v4, v0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->x:F

    iget v5, v0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->y:F

    iget v1, p1, Lcom/iLoong/launcher/UI3DEngine/View3D;->x:F

    invoke-virtual {p1}, Lcom/iLoong/launcher/UI3DEngine/View3D;->getParent()Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    move-result-object v2

    iget v2, v2, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->x:F

    add-float/2addr v1, v2

    iput v1, v0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->x:F

    iget v1, p1, Lcom/iLoong/launcher/UI3DEngine/View3D;->y:F

    invoke-virtual {p1}, Lcom/iLoong/launcher/UI3DEngine/View3D;->getParent()Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    move-result-object v2

    iget v2, v2, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->y:F

    add-float/2addr v1, v2

    iput v1, v0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->y:F

    iget v1, p1, Lcom/iLoong/launcher/UI3DEngine/View3D;->rotation:F

    iput v1, v0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->rotation:F

    iget v1, p1, Lcom/iLoong/launcher/UI3DEngine/View3D;->originX:F

    iget v2, p1, Lcom/iLoong/launcher/UI3DEngine/View3D;->originY:F

    invoke-virtual {v0, v1, v2}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->setOrigin(FF)V

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->setRotationVector(FFF)V

    iget-object v7, p0, Lcom/iLoong/launcher/Desktop3D/f;->G:Laurelienribon/tweenengine/Timeline;

    const/4 v1, 0x1

    sget-object v2, Laurelienribon/tweenengine/equations/Cubic;->OUT:Laurelienribon/tweenengine/equations/Cubic;

    const/high16 v3, 0x3f00

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->obtainTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    move-result-object v1

    invoke-virtual {v1, v8}, Laurelienribon/tweenengine/Tween;->delay(F)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laurelienribon/tweenengine/Tween;

    invoke-virtual {v7, v1}, Laurelienribon/tweenengine/Timeline;->push(Laurelienribon/tweenengine/Tween;)Laurelienribon/tweenengine/Timeline;

    iget-object v7, p0, Lcom/iLoong/launcher/Desktop3D/f;->G:Laurelienribon/tweenengine/Timeline;

    const/4 v1, 0x4

    sget-object v2, Laurelienribon/tweenengine/equations/Cubic;->OUT:Laurelienribon/tweenengine/equations/Cubic;

    const/high16 v3, 0x3f00

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->obtainTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    move-result-object v1

    invoke-virtual {v1, v8}, Laurelienribon/tweenengine/Tween;->delay(F)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laurelienribon/tweenengine/Tween;

    invoke-virtual {v7, v1}, Laurelienribon/tweenengine/Timeline;->push(Laurelienribon/tweenengine/Tween;)Laurelienribon/tweenengine/Timeline;

    iget-object v9, p0, Lcom/iLoong/launcher/Desktop3D/f;->G:Laurelienribon/tweenengine/Timeline;

    const/4 v2, 0x3

    sget-object v3, Laurelienribon/tweenengine/equations/Cubic;->OUT:Laurelienribon/tweenengine/equations/Cubic;

    const/high16 v4, 0x3f00

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/f;->u:F

    iget v5, p1, Lcom/iLoong/launcher/UI3DEngine/View3D;->width:F

    div-float v5, v1, v5

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/f;->v:F

    iget v6, p1, Lcom/iLoong/launcher/UI3DEngine/View3D;->height:F

    div-float v6, v1, v6

    const/4 v7, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v7}, Lcom/iLoong/launcher/UI3DEngine/View3D;->obtainTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    move-result-object v1

    invoke-virtual {v1, v8}, Laurelienribon/tweenengine/Tween;->delay(F)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laurelienribon/tweenengine/Tween;

    invoke-virtual {v9, v1}, Laurelienribon/tweenengine/Timeline;->push(Laurelienribon/tweenengine/Tween;)Laurelienribon/tweenengine/Timeline;

    :cond_2
    :goto_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setOrigin(FF)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setRotation(F)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setPosition(FF)V

    invoke-virtual {p1}, Lcom/iLoong/launcher/UI3DEngine/View3D;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iLoong/launcher/Desktop3D/au;

    invoke-virtual {p1}, Lcom/iLoong/launcher/UI3DEngine/View3D;->getParent()Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    move-result-object v2

    iput-object v2, v1, Lcom/iLoong/launcher/Desktop3D/au;->a:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    invoke-virtual {v0, p1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->addView(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    invoke-virtual {p1}, Lcom/iLoong/launcher/UI3DEngine/View3D;->show()V

    const/4 v1, 0x0

    iput-boolean v1, p1, Lcom/iLoong/launcher/UI3DEngine/View3D;->touchable:Z

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x43f0

    div-float v2, v1, v2

    const/high16 v3, 0x3f80

    cmpg-float v2, v2, v3

    if-gez v2, :cond_7

    const/high16 v2, 0x43f0

    div-float/2addr v1, v2

    move v2, v1

    :goto_2
    new-instance v1, Lcom/iLoong/launcher/UI3DEngine/View3D;

    const-string v3, "delete_icon"

    const-string v4, "page-edit3"

    invoke-static {v4}, Lcom/iLoong/launcher/Desktop3D/at;->c(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lcom/iLoong/launcher/UI3DEngine/View3D;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    iget v3, v1, Lcom/iLoong/launcher/UI3DEngine/View3D;->width:F

    mul-float/2addr v3, v2

    iget v4, v1, Lcom/iLoong/launcher/UI3DEngine/View3D;->height:F

    mul-float/2addr v4, v2

    invoke-virtual {v1, v3, v4}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setSize(FF)V

    iget v3, p0, Lcom/iLoong/launcher/Desktop3D/f;->u:F

    iget v4, v1, Lcom/iLoong/launcher/UI3DEngine/View3D;->width:F

    const v5, 0x3f8ccccd

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, v1, Lcom/iLoong/launcher/UI3DEngine/View3D;->x:F

    iget v3, p0, Lcom/iLoong/launcher/Desktop3D/f;->v:F

    iget v4, v1, Lcom/iLoong/launcher/UI3DEngine/View3D;->height:F

    const v5, 0x3f933333

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, v1, Lcom/iLoong/launcher/UI3DEngine/View3D;->y:F

    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v4, 0x3f80

    const/high16 v5, 0x3f80

    const/high16 v6, 0x3f80

    const v7, 0x3f19999a

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v1, v3}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->addView(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    iget v3, p0, Lcom/iLoong/launcher/Desktop3D/f;->F:I

    sget v4, Lcom/iLoong/launcher/Desktop3D/f;->d:I

    if-gt v3, v4, :cond_8

    invoke-virtual {v1}, Lcom/iLoong/launcher/UI3DEngine/View3D;->hide()V

    :goto_3
    iget v3, p0, Lcom/iLoong/launcher/Desktop3D/f;->a:I

    if-ne p2, v3, :cond_9

    new-instance v3, Lcom/iLoong/launcher/UI3DEngine/View3D;

    const-string v4, "home_icon"

    const-string v5, "page-edit2b"

    invoke-static {v5}, Lcom/iLoong/launcher/Desktop3D/at;->c(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/iLoong/launcher/UI3DEngine/View3D;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    move-object v8, v3

    :goto_4
    iget v3, v8, Lcom/iLoong/launcher/UI3DEngine/View3D;->width:F

    mul-float/2addr v3, v2

    iget v4, v8, Lcom/iLoong/launcher/UI3DEngine/View3D;->height:F

    mul-float/2addr v4, v2

    invoke-virtual {v8, v3, v4}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setSize(FF)V

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenWidth()I

    move-result v3

    const/16 v4, 0x1e0

    if-ge v3, v4, :cond_a

    sget v3, Lcom/iLoong/launcher/Desktop3D/f;->b:F

    const/high16 v4, 0x40a0

    mul-float/2addr v2, v4

    add-float/2addr v2, v3

    iput v2, v8, Lcom/iLoong/launcher/UI3DEngine/View3D;->y:F

    :goto_5
    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/f;->u:F

    iget v3, v8, Lcom/iLoong/launcher/UI3DEngine/View3D;->width:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    iput v2, v8, Lcom/iLoong/launcher/UI3DEngine/View3D;->x:F

    invoke-virtual {v8}, Lcom/iLoong/launcher/UI3DEngine/View3D;->show()V

    invoke-virtual {v0, v8}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->addView(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    if-eqz p3, :cond_3

    new-instance v2, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v3, 0x3f80

    const/high16 v4, 0x3f80

    const/high16 v5, 0x3f80

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v1, v2}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    new-instance v2, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v3, 0x3f80

    const/high16 v4, 0x3f80

    const/high16 v5, 0x3f80

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v8, v2}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v9, p0, Lcom/iLoong/launcher/Desktop3D/f;->G:Laurelienribon/tweenengine/Timeline;

    const/4 v2, 0x5

    sget-object v3, Laurelienribon/tweenengine/equations/Cubic;->IN:Laurelienribon/tweenengine/equations/Cubic;

    const/high16 v4, 0x3f00

    const v5, 0x3f19999a

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/iLoong/launcher/UI3DEngine/View3D;->obtainTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    move-result-object v1

    invoke-virtual {v9, v1}, Laurelienribon/tweenengine/Timeline;->push(Laurelienribon/tweenengine/Tween;)Laurelienribon/tweenengine/Timeline;

    iget-object v9, p0, Lcom/iLoong/launcher/Desktop3D/f;->G:Laurelienribon/tweenengine/Timeline;

    const/4 v2, 0x5

    sget-object v3, Laurelienribon/tweenengine/equations/Cubic;->IN:Laurelienribon/tweenengine/equations/Cubic;

    const/high16 v4, 0x3f00

    const/high16 v5, 0x3f80

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v8

    invoke-virtual/range {v1 .. v7}, Lcom/iLoong/launcher/UI3DEngine/View3D;->obtainTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    move-result-object v1

    invoke-virtual {v9, v1}, Laurelienribon/tweenengine/Timeline;->push(Laurelienribon/tweenengine/Tween;)Laurelienribon/tweenengine/Timeline;

    :cond_3
    iget v1, p1, Lcom/iLoong/launcher/UI3DEngine/View3D;->width:F

    iput v1, p0, Lcom/iLoong/launcher/Desktop3D/f;->B:F

    iget v1, p1, Lcom/iLoong/launcher/UI3DEngine/View3D;->height:F

    iput v1, p0, Lcom/iLoong/launcher/Desktop3D/f;->C:F

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/f;->u:F

    iget v2, p1, Lcom/iLoong/launcher/UI3DEngine/View3D;->width:F

    div-float/2addr v1, v2

    iput v1, p0, Lcom/iLoong/launcher/Desktop3D/f;->D:F

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/f;->v:F

    iget v2, p1, Lcom/iLoong/launcher/UI3DEngine/View3D;->height:F

    div-float/2addr v1, v2

    iput v1, p0, Lcom/iLoong/launcher/Desktop3D/f;->E:F

    goto/16 :goto_0

    :cond_4
    const/4 v1, 0x2

    if-ne p3, v1, :cond_6

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/f;->h:Lcom/iLoong/launcher/Desktop3D/v;

    invoke-virtual {v1}, Lcom/iLoong/launcher/Desktop3D/v;->b()I

    move-result v1

    if-ne p2, v1, :cond_5

    iget-object v8, p0, Lcom/iLoong/launcher/Desktop3D/f;->G:Laurelienribon/tweenengine/Timeline;

    const/4 v2, 0x3

    sget-object v3, Laurelienribon/tweenengine/equations/Cubic;->OUT:Laurelienribon/tweenengine/equations/Cubic;

    const v4, 0x3e99999a

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/f;->u:F

    iget v5, p1, Lcom/iLoong/launcher/UI3DEngine/View3D;->width:F

    div-float v5, v1, v5

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/f;->v:F

    iget v6, p1, Lcom/iLoong/launcher/UI3DEngine/View3D;->height:F

    div-float v6, v1, v6

    const/4 v7, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v7}, Lcom/iLoong/launcher/UI3DEngine/View3D;->obtainTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    move-result-object v1

    invoke-virtual {v8, v1}, Laurelienribon/tweenengine/Timeline;->push(Laurelienribon/tweenengine/Tween;)Laurelienribon/tweenengine/Timeline;

    move-object v1, p1

    check-cast v1, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    const-string v2, "celllayout"

    invoke-virtual {v1, v2}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->findView(Ljava/lang/String;)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/iLoong/launcher/UI3DEngine/View3D;->getScaleX()F

    move-result v8

    invoke-virtual {v1}, Lcom/iLoong/launcher/UI3DEngine/View3D;->getScaleY()F

    move-result v9

    iget v5, v1, Lcom/iLoong/launcher/UI3DEngine/View3D;->x:F

    iget v6, v1, Lcom/iLoong/launcher/UI3DEngine/View3D;->y:F

    const/high16 v2, 0x3f80

    const/high16 v3, 0x3f80

    invoke-virtual {v1, v2, v3}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setScale(FF)V

    iget v2, v0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->x:F

    neg-float v2, v2

    iput v2, v1, Lcom/iLoong/launcher/UI3DEngine/View3D;->x:F

    iget v2, v0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->y:F

    neg-float v2, v2

    iput v2, v1, Lcom/iLoong/launcher/UI3DEngine/View3D;->y:F

    iget-object v10, p0, Lcom/iLoong/launcher/Desktop3D/f;->G:Laurelienribon/tweenengine/Timeline;

    const/4 v2, 0x1

    sget-object v3, Laurelienribon/tweenengine/equations/Cubic;->OUT:Laurelienribon/tweenengine/equations/Cubic;

    const v4, 0x3e99999a

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/iLoong/launcher/UI3DEngine/View3D;->obtainTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    move-result-object v2

    invoke-virtual {v10, v2}, Laurelienribon/tweenengine/Timeline;->push(Laurelienribon/tweenengine/Tween;)Laurelienribon/tweenengine/Timeline;

    iget-object v10, p0, Lcom/iLoong/launcher/Desktop3D/f;->G:Laurelienribon/tweenengine/Timeline;

    const/4 v2, 0x3

    sget-object v3, Laurelienribon/tweenengine/equations/Cubic;->OUT:Laurelienribon/tweenengine/equations/Cubic;

    const v4, 0x3e99999a

    const/4 v7, 0x0

    move v5, v8

    move v6, v9

    invoke-virtual/range {v1 .. v7}, Lcom/iLoong/launcher/UI3DEngine/View3D;->obtainTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    move-result-object v1

    invoke-virtual {v10, v1}, Laurelienribon/tweenengine/Timeline;->push(Laurelienribon/tweenengine/Tween;)Laurelienribon/tweenengine/Timeline;

    goto/16 :goto_1

    :cond_5
    iget v1, v0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->x:F

    neg-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->setOrigin(FF)V

    const/high16 v1, -0x3d4c

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->setRotation(F)V

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->setRotationVector(FFF)V

    iget-object v7, p0, Lcom/iLoong/launcher/Desktop3D/f;->G:Laurelienribon/tweenengine/Timeline;

    const/4 v1, 0x4

    sget-object v2, Laurelienribon/tweenengine/equations/Cubic;->OUT:Laurelienribon/tweenengine/equations/Cubic;

    const v3, 0x3e99999a

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->obtainTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    move-result-object v1

    const v2, 0x3d4ccccd

    int-to-float v3, p2

    mul-float/2addr v2, v3

    invoke-virtual {v1, v2}, Laurelienribon/tweenengine/Tween;->delay(F)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laurelienribon/tweenengine/Tween;

    invoke-virtual {v7, v1}, Laurelienribon/tweenengine/Timeline;->push(Laurelienribon/tweenengine/Tween;)Laurelienribon/tweenengine/Timeline;

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/f;->u:F

    iget v2, p1, Lcom/iLoong/launcher/UI3DEngine/View3D;->width:F

    div-float/2addr v1, v2

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/f;->v:F

    iget v3, p1, Lcom/iLoong/launcher/UI3DEngine/View3D;->height:F

    div-float/2addr v2, v3

    invoke-virtual {p1, v1, v2}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setScale(FF)V

    goto/16 :goto_1

    :cond_6
    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/f;->u:F

    iget v2, p1, Lcom/iLoong/launcher/UI3DEngine/View3D;->width:F

    div-float/2addr v1, v2

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/f;->v:F

    iget v3, p1, Lcom/iLoong/launcher/UI3DEngine/View3D;->height:F

    div-float/2addr v2, v3

    invoke-virtual {p1, v1, v2}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setScale(FF)V

    goto/16 :goto_1

    :cond_7
    const/high16 v1, 0x3f80

    move v2, v1

    goto/16 :goto_2

    :cond_8
    invoke-virtual {v1}, Lcom/iLoong/launcher/UI3DEngine/View3D;->show()V

    goto/16 :goto_3

    :cond_9
    new-instance v3, Lcom/iLoong/launcher/UI3DEngine/View3D;

    const-string v4, "home_icon"

    const-string v5, "page-edit2"

    invoke-static {v5}, Lcom/iLoong/launcher/Desktop3D/at;->c(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/iLoong/launcher/UI3DEngine/View3D;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    move-object v8, v3

    goto/16 :goto_4

    :cond_a
    sget v2, Lcom/iLoong/launcher/Desktop3D/f;->b:F

    iput v2, v8, Lcom/iLoong/launcher/UI3DEngine/View3D;->y:F

    goto/16 :goto_5
.end method

.method private a(Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;)V
    .locals 9

    const-string v0, "page_select"

    invoke-virtual {p1, v0}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->findView(Ljava/lang/String;)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    if-eqz v7, :cond_0

    const-string v0, "celllayout"

    invoke-virtual {v7, v0}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->findView(Ljava/lang/String;)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->setBackgroud(Lcom/badlogic/gdx/graphics/g2d/NinePatch;)V

    const-string v1, "home_icon"

    invoke-virtual {p1, v1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->findView(Ljava/lang/String;)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1, v1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->removeView(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    :cond_2
    const-string v1, "delete_icon"

    invoke-virtual {p1, v1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->findView(Ljava/lang/String;)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p1, v1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->removeView(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    :cond_3
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/iLoong/launcher/Desktop3D/f;->N:Z

    invoke-static {}, Laurelienribon/tweenengine/Timeline;->createParallel()Laurelienribon/tweenengine/Timeline;

    move-result-object v1

    iput-object v1, p0, Lcom/iLoong/launcher/Desktop3D/f;->G:Laurelienribon/tweenengine/Timeline;

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/f;->h:Lcom/iLoong/launcher/Desktop3D/v;

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/f;->h:Lcom/iLoong/launcher/Desktop3D/v;

    iget-object v2, v2, Lcom/iLoong/launcher/Desktop3D/v;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/iLoong/launcher/Desktop3D/v;->b(I)V

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/f;->h:Lcom/iLoong/launcher/Desktop3D/v;

    iget-object v1, v1, Lcom/iLoong/launcher/Desktop3D/v;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/f;->h:Lcom/iLoong/launcher/Desktop3D/v;

    iget-object v2, v2, Lcom/iLoong/launcher/Desktop3D/v;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/f;->e:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    invoke-virtual {v2}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v3, p0, Lcom/iLoong/launcher/Desktop3D/f;->f:Landroid/app/WallpaperManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v1, v4}, Landroid/app/WallpaperManager;->setWallpaperOffsets(Landroid/os/IBinder;FF)V

    :cond_4
    iget v1, v7, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->scaleX:F

    iget v2, v7, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->scaleY:F

    const/high16 v3, 0x3f80

    const/high16 v4, 0x3f80

    invoke-virtual {v7, v3, v4}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->setScale(FF)V

    iget v3, v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->x:F

    const/high16 v4, 0x3f80

    sub-float/2addr v4, v1

    iget v5, v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->x:F

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->x:F

    iget v3, v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->y:F

    const/high16 v4, 0x3f80

    sub-float/2addr v4, v2

    iget v5, v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->y:F

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->y:F

    iget v3, v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->scaleX:F

    mul-float/2addr v1, v3

    iget v3, v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->scaleY:F

    mul-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setScale(FF)V

    iget-object v8, p0, Lcom/iLoong/launcher/Desktop3D/f;->G:Laurelienribon/tweenengine/Timeline;

    const/4 v1, 0x3

    sget-object v2, Laurelienribon/tweenengine/equations/Cubic;->OUT:Laurelienribon/tweenengine/equations/Cubic;

    const/high16 v3, 0x3f00

    const/high16 v4, 0x3f80

    const/high16 v5, 0x3f80

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/iLoong/launcher/UI3DEngine/View3D;->obtainTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    move-result-object v1

    const v2, 0x3e99999a

    invoke-virtual {v1, v2}, Laurelienribon/tweenengine/Tween;->delay(F)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laurelienribon/tweenengine/Tween;

    invoke-virtual {v8, v1}, Laurelienribon/tweenengine/Timeline;->push(Laurelienribon/tweenengine/Tween;)Laurelienribon/tweenengine/Timeline;

    iget-object v8, p0, Lcom/iLoong/launcher/Desktop3D/f;->G:Laurelienribon/tweenengine/Timeline;

    const/4 v1, 0x1

    sget-object v2, Laurelienribon/tweenengine/equations/Cubic;->OUT:Laurelienribon/tweenengine/equations/Cubic;

    const/high16 v3, 0x3f00

    iget v4, p1, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->x:F

    neg-float v4, v4

    iget v5, v7, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->x:F

    sub-float/2addr v4, v5

    iget v5, p1, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->y:F

    neg-float v5, v5

    iget v6, v7, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->y:F

    sub-float/2addr v5, v6

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/iLoong/launcher/UI3DEngine/View3D;->obtainTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    move-result-object v0

    const v1, 0x3e99999a

    invoke-virtual {v0, v1}, Laurelienribon/tweenengine/Tween;->delay(F)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/Tween;

    invoke-virtual {v8, v0}, Laurelienribon/tweenengine/Timeline;->push(Laurelienribon/tweenengine/Tween;)Laurelienribon/tweenengine/Timeline;

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/f;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v7, v0

    :goto_1
    if-gez v7, :cond_5

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/f;->G:Laurelienribon/tweenengine/Timeline;

    invoke-virtual {v0, p0}, Laurelienribon/tweenengine/Timeline;->setCallback(Laurelienribon/tweenengine/TweenCallback;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/Timeline;

    sget-object v1, Lcom/iLoong/launcher/tween/View3DTweenAccessor;->manager:Laurelienribon/tweenengine/TweenManager;

    invoke-virtual {v0, v1}, Laurelienribon/tweenengine/Timeline;->start(Laurelienribon/tweenengine/TweenManager;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p0, v7}, Lcom/iLoong/launcher/Desktop3D/f;->getChildAt(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    if-eq v0, p1, :cond_6

    iget v1, v0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->x:F

    neg-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->setOrigin(FF)V

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->setRotationVector(FFF)V

    iget-object v8, p0, Lcom/iLoong/launcher/Desktop3D/f;->G:Laurelienribon/tweenengine/Timeline;

    const/4 v1, 0x4

    sget-object v2, Laurelienribon/tweenengine/equations/Cubic;->OUT:Laurelienribon/tweenengine/equations/Cubic;

    const v3, 0x3e99999a

    const/high16 v4, -0x3d4c

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->obtainTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    move-result-object v0

    const v1, 0x3d4ccccd

    int-to-float v2, v7

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Laurelienribon/tweenengine/Tween;->delay(F)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/Tween;

    invoke-virtual {v8, v0}, Laurelienribon/tweenengine/Timeline;->push(Laurelienribon/tweenengine/Tween;)Laurelienribon/tweenengine/Timeline;

    :cond_6
    add-int/lit8 v0, v7, -0x1

    move v7, v0

    goto :goto_1
.end method

.method private a(Lcom/iLoong/launcher/UI3DEngine/View3D;FF)Z
    .locals 12

    const/4 v11, 0x0

    const-wide/high16 v9, 0x4000

    const-wide/high16 v7, 0x3ff8

    const-wide/high16 v5, 0x3fe0

    iget v0, p1, Lcom/iLoong/launcher/UI3DEngine/View3D;->x:F

    float-to-double v0, v0

    iget v2, p1, Lcom/iLoong/launcher/UI3DEngine/View3D;->width:F

    float-to-double v2, v2

    mul-double/2addr v2, v5

    div-double/2addr v2, v9

    sub-double/2addr v0, v2

    double-to-float v0, v0

    iget v1, p1, Lcom/iLoong/launcher/UI3DEngine/View3D;->y:F

    float-to-double v1, v1

    iget v3, p1, Lcom/iLoong/launcher/UI3DEngine/View3D;->height:F

    float-to-double v3, v3

    mul-double/2addr v3, v5

    div-double/2addr v3, v9

    sub-double/2addr v1, v3

    double-to-float v1, v1

    sub-float v2, p2, v0

    cmpl-float v2, v2, v11

    if-lez v2, :cond_0

    sub-float v0, p2, v0

    float-to-double v2, v0

    iget v0, p1, Lcom/iLoong/launcher/UI3DEngine/View3D;->width:F

    float-to-double v4, v0

    mul-double/2addr v4, v7

    cmpg-double v0, v2, v4

    if-gez v0, :cond_0

    sub-float v0, p3, v1

    cmpl-float v0, v0, v11

    if-lez v0, :cond_0

    sub-float v0, p3, v1

    float-to-double v0, v0

    iget v2, p1, Lcom/iLoong/launcher/UI3DEngine/View3D;->height:F

    float-to-double v2, v2

    mul-double/2addr v2, v7

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/iLoong/launcher/Desktop3D/f;)F
    .locals 1

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/f;->E:F

    return v0
.end method

.method private b(FF)I
    .locals 4

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/f;->t:F

    sub-float v0, p1, v0

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenHeight()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, p2

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/f;->r:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/f;->u:F

    iget v3, p0, Lcom/iLoong/launcher/Desktop3D/f;->w:F

    add-float/2addr v2, v3

    div-float/2addr v0, v2

    float-to-int v0, v0

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/f;->v:F

    iget v3, p0, Lcom/iLoong/launcher/Desktop3D/f;->A:F

    add-float/2addr v2, v3

    div-float/2addr v1, v2

    float-to-int v1, v1

    mul-int/lit8 v1, v1, 0x3

    add-int/2addr v0, v1

    return v0
.end method

.method private b(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/f;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/iLoong/launcher/Desktop3D/f;->a:I

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/f;->getChildCount()I

    move-result v0

    if-lt v1, v0, :cond_1

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/f;->h:Lcom/iLoong/launcher/Desktop3D/v;

    invoke-virtual {v0, p1}, Lcom/iLoong/launcher/Desktop3D/v;->c(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1}, Lcom/iLoong/launcher/Desktop3D/f;->getChildAt(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    const-string v2, "home_icon"

    invoke-virtual {v0, v2}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->findView(Ljava/lang/String;)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v0

    if-eqz v0, :cond_2

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/f;->a:I

    if-ne v1, v2, :cond_3

    const-string v2, "page-edit2b"

    invoke-static {v2}, Lcom/iLoong/launcher/Desktop3D/at;->c(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    move-result-object v2

    iput-object v2, v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    :cond_2
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    const-string v2, "page-edit2"

    invoke-static {v2}, Lcom/iLoong/launcher/Desktop3D/at;->c(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    move-result-object v2

    iput-object v2, v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    goto :goto_2
.end method

.method private c(I)V
    .locals 4

    const/4 v3, 0x1

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/f;->q:I

    if-le p1, v0, :cond_2

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/f;->q:I

    :goto_0
    if-lt v0, p1, :cond_1

    :cond_0
    iput p1, p0, Lcom/iLoong/launcher/Desktop3D/f;->q:I

    return-void

    :cond_1
    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/Desktop3D/f;->getChildAt(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v1

    invoke-direct {p0, v0, v1, v3}, Lcom/iLoong/launcher/Desktop3D/f;->a(ILcom/iLoong/launcher/UI3DEngine/View3D;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/f;->q:I

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-lt v0, p1, :cond_0

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/Desktop3D/f;->getChildAt(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v2

    invoke-direct {p0, v1, v2, v3}, Lcom/iLoong/launcher/Desktop3D/f;->a(ILcom/iLoong/launcher/UI3DEngine/View3D;Z)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method private d(I)I
    .locals 1

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/f;->q:I

    if-gt p1, v0, :cond_1

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/f;->p:I

    if-le p1, v0, :cond_1

    add-int/lit8 p1, p1, -0x1

    :cond_0
    :goto_0
    return p1

    :cond_1
    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/f;->q:I

    if-lt p1, v0, :cond_2

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/f;->p:I

    if-ge p1, v0, :cond_2

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/f;->p:I

    if-ne p1, v0, :cond_0

    iget p1, p0, Lcom/iLoong/launcher/Desktop3D/f;->q:I

    goto :goto_0
.end method

.method private e()V
    .locals 11

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/f;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/f;->h:Lcom/iLoong/launcher/Desktop3D/v;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/v;->d()Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v0

    new-instance v1, Lcom/iLoong/launcher/Desktop3D/au;

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/f;->h:Lcom/iLoong/launcher/Desktop3D/v;

    iget-object v2, v2, Lcom/iLoong/launcher/Desktop3D/v;->b:Lcom/iLoong/launcher/Desktop3D/ah;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v2}, Lcom/iLoong/launcher/Desktop3D/au;-><init>(Lcom/iLoong/launcher/Desktop3D/ah;)V

    invoke-virtual {v1, v0}, Lcom/iLoong/launcher/Desktop3D/au;->a(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setTag(Ljava/lang/Object;)V

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/f;->F:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/iLoong/launcher/Desktop3D/f;->F:I

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/f;->i:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/f;->F:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/iLoong/launcher/Desktop3D/f;->a(Lcom/iLoong/launcher/UI3DEngine/View3D;II)V

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/f;->F:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/Desktop3D/f;->getChildAt(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v7

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {v7, v0, v1}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setScale(FF)V

    invoke-static {}, Laurelienribon/tweenengine/Timeline;->createSequence()Laurelienribon/tweenengine/Timeline;

    move-result-object v0

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/f;->G:Laurelienribon/tweenengine/Timeline;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/f;->L:Z

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/f;->F:I

    sget v1, Lcom/iLoong/launcher/Desktop3D/f;->c:I

    if-ne v0, v1, :cond_3

    iget-object v8, p0, Lcom/iLoong/launcher/Desktop3D/f;->G:Laurelienribon/tweenengine/Timeline;

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/f;->l:Lcom/iLoong/launcher/UI3DEngine/View3D;

    const/4 v1, 0x3

    sget-object v2, Laurelienribon/tweenengine/equations/Cubic;->OUT:Laurelienribon/tweenengine/equations/Cubic;

    const v3, 0x3e99999a

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/iLoong/launcher/UI3DEngine/View3D;->obtainTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    move-result-object v0

    invoke-virtual {v0, p0}, Laurelienribon/tweenengine/Tween;->setCallback(Laurelienribon/tweenengine/TweenCallback;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/Tween;

    invoke-virtual {v8, v0}, Laurelienribon/tweenengine/Timeline;->push(Laurelienribon/tweenengine/Tween;)Laurelienribon/tweenengine/Timeline;

    iget-object v8, p0, Lcom/iLoong/launcher/Desktop3D/f;->G:Laurelienribon/tweenengine/Timeline;

    const/4 v1, 0x3

    sget-object v2, Laurelienribon/tweenengine/equations/Back;->OUT:Laurelienribon/tweenengine/equations/Back;

    const v3, 0x3e99999a

    const/high16 v4, 0x3f80

    const/high16 v5, 0x3f80

    const/4 v6, 0x0

    move-object v0, v7

    invoke-virtual/range {v0 .. v6}, Lcom/iLoong/launcher/UI3DEngine/View3D;->obtainTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    move-result-object v0

    invoke-virtual {v8, v0}, Laurelienribon/tweenengine/Timeline;->push(Laurelienribon/tweenengine/Tween;)Laurelienribon/tweenengine/Timeline;

    :goto_0
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/f;->G:Laurelienribon/tweenengine/Timeline;

    invoke-virtual {v0, p0}, Laurelienribon/tweenengine/Timeline;->setCallback(Laurelienribon/tweenengine/TweenCallback;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/Timeline;

    sget-object v1, Lcom/iLoong/launcher/tween/View3DTweenAccessor;->manager:Laurelienribon/tweenengine/TweenManager;

    invoke-virtual {v0, v1}, Laurelienribon/tweenengine/Timeline;->start(Laurelienribon/tweenengine/TweenManager;)Ljava/lang/Object;

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/f;->F:I

    sget v1, Lcom/iLoong/launcher/Desktop3D/f;->d:I

    add-int/lit8 v1, v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/f;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/iLoong/launcher/Desktop3D/f;->getChildAt(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    const-string v2, "delete_icon"

    invoke-virtual {v0, v2}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->findView(Ljava/lang/String;)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/iLoong/launcher/UI3DEngine/View3D;->show()V

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/f;->l:Lcom/iLoong/launcher/UI3DEngine/View3D;

    iget v8, v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->x:F

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/f;->l:Lcom/iLoong/launcher/UI3DEngine/View3D;

    iget v9, v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->y:F

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/f;->F:I

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/f;->l:Lcom/iLoong/launcher/UI3DEngine/View3D;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/iLoong/launcher/Desktop3D/f;->a(ILcom/iLoong/launcher/UI3DEngine/View3D;Z)V

    iget-object v10, p0, Lcom/iLoong/launcher/Desktop3D/f;->G:Laurelienribon/tweenengine/Timeline;

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/f;->l:Lcom/iLoong/launcher/UI3DEngine/View3D;

    const/4 v1, 0x1

    sget-object v2, Laurelienribon/tweenengine/equations/Cubic;->OUT:Laurelienribon/tweenengine/equations/Cubic;

    const v3, 0x3e99999a

    iget-object v4, p0, Lcom/iLoong/launcher/Desktop3D/f;->l:Lcom/iLoong/launcher/UI3DEngine/View3D;

    iget v4, v4, Lcom/iLoong/launcher/UI3DEngine/View3D;->x:F

    iget-object v5, p0, Lcom/iLoong/launcher/Desktop3D/f;->l:Lcom/iLoong/launcher/UI3DEngine/View3D;

    iget v5, v5, Lcom/iLoong/launcher/UI3DEngine/View3D;->y:F

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/iLoong/launcher/UI3DEngine/View3D;->obtainTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    move-result-object v0

    invoke-virtual {v10, v0}, Laurelienribon/tweenengine/Timeline;->push(Laurelienribon/tweenengine/Tween;)Laurelienribon/tweenengine/Timeline;

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/f;->l:Lcom/iLoong/launcher/UI3DEngine/View3D;

    iput v8, v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->x:F

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/f;->l:Lcom/iLoong/launcher/UI3DEngine/View3D;

    iput v9, v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->y:F

    iget-object v8, p0, Lcom/iLoong/launcher/Desktop3D/f;->G:Laurelienribon/tweenengine/Timeline;

    const/4 v1, 0x3

    sget-object v2, Laurelienribon/tweenengine/equations/Back;->OUT:Laurelienribon/tweenengine/equations/Back;

    const v3, 0x3e99999a

    const/high16 v4, 0x3f80

    const/high16 v5, 0x3f80

    const/4 v6, 0x0

    move-object v0, v7

    invoke-virtual/range {v0 .. v6}, Lcom/iLoong/launcher/UI3DEngine/View3D;->obtainTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    move-result-object v0

    invoke-virtual {v8, v0}, Laurelienribon/tweenengine/Timeline;->push(Laurelienribon/tweenengine/Tween;)Laurelienribon/tweenengine/Timeline;

    goto :goto_0
.end method

.method private f()V
    .locals 4

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/f;->i:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/f;->i:Ljava/util/List;

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/f;->h:Lcom/iLoong/launcher/Desktop3D/v;

    invoke-virtual {v1}, Lcom/iLoong/launcher/Desktop3D/v;->b()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/UI3DEngine/View3D;

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/f;->i:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/f;->i:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/f;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v2, v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/f;->removeAllViews()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/f;->i:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/UI3DEngine/View3D;

    invoke-virtual {v0}, Lcom/iLoong/launcher/UI3DEngine/View3D;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iLoong/launcher/Desktop3D/au;

    iget-object v3, v1, Lcom/iLoong/launcher/Desktop3D/au;->a:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    invoke-virtual {v3, v2, v0}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->addViewAt(ILcom/iLoong/launcher/UI3DEngine/View3D;)V

    invoke-virtual {v1, v0}, Lcom/iLoong/launcher/Desktop3D/au;->b(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 13

    const/high16 v9, 0x3f80

    const v3, 0x3e4ccccd

    const/4 v7, 0x1

    const/4 v12, 0x0

    const/4 v4, 0x0

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/f;->F:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/f;->F:I

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/f;->n:I

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/f;->h:Lcom/iLoong/launcher/Desktop3D/v;

    invoke-virtual {v1}, Lcom/iLoong/launcher/Desktop3D/v;->b()I

    move-result v1

    if-gt v0, v1, :cond_2

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/f;->n:I

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/f;->h:Lcom/iLoong/launcher/Desktop3D/v;

    invoke-virtual {v1}, Lcom/iLoong/launcher/Desktop3D/v;->b()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/f;->n:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/f;->n:I

    if-nez v1, :cond_0

    move v0, v7

    :cond_0
    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/f;->i:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/UI3DEngine/View3D;

    sget-object v1, Lcom/iLoong/launcher/Desktop3D/v;->j:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setBackgroud(Lcom/badlogic/gdx/graphics/g2d/NinePatch;)V

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :cond_1
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/f;->h:Lcom/iLoong/launcher/Desktop3D/v;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/v;->b()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/f;->h:Lcom/iLoong/launcher/Desktop3D/v;

    iget-object v0, v0, Lcom/iLoong/launcher/Desktop3D/v;->b:Lcom/iLoong/launcher/Desktop3D/ah;

    iget v1, v0, Lcom/iLoong/launcher/Desktop3D/ah;->a:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/iLoong/launcher/Desktop3D/ah;->a:I

    :cond_2
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/f;->h:Lcom/iLoong/launcher/Desktop3D/v;

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/f;->n:I

    invoke-virtual {v0, v1, v12}, Lcom/iLoong/launcher/Desktop3D/v;->a(IZ)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/f;->i:Ljava/util/List;

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/f;->n:I

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/f;->n:I

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/Desktop3D/f;->getChildAt(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v0

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/f;->m:Lcom/iLoong/launcher/UI3DEngine/View3D;

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/f;->m:Lcom/iLoong/launcher/UI3DEngine/View3D;

    invoke-virtual {v0}, Lcom/iLoong/launcher/UI3DEngine/View3D;->stopTween()V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/f;->m:Lcom/iLoong/launcher/UI3DEngine/View3D;

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/f;->m:Lcom/iLoong/launcher/UI3DEngine/View3D;

    iget v1, v1, Lcom/iLoong/launcher/UI3DEngine/View3D;->width:F

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/f;->m:Lcom/iLoong/launcher/UI3DEngine/View3D;

    iget v2, v2, Lcom/iLoong/launcher/UI3DEngine/View3D;->height:F

    const/high16 v5, 0x4000

    div-float/2addr v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setOrigin(FF)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/f;->m:Lcom/iLoong/launcher/UI3DEngine/View3D;

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/Desktop3D/f;->removeView(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/f;->n:I

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/f;->a:I

    if-gt v0, v1, :cond_3

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/f;->a:I

    if-lez v0, :cond_6

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/f;->a:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/iLoong/launcher/Desktop3D/f;->b(I)V

    :cond_3
    :goto_0
    iput-boolean v7, p0, Lcom/iLoong/launcher/Desktop3D/f;->L:Z

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/f;->m:Lcom/iLoong/launcher/UI3DEngine/View3D;

    const/4 v1, 0x3

    sget-object v2, Laurelienribon/tweenengine/equations/Cubic;->OUT:Laurelienribon/tweenengine/equations/Cubic;

    move v5, v4

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Lcom/iLoong/launcher/UI3DEngine/View3D;->startTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    move-result-object v0

    invoke-virtual {v0, p0}, Laurelienribon/tweenengine/Tween;->setCallback(Laurelienribon/tweenengine/TweenCallback;)Ljava/lang/Object;

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/f;->n:I

    :goto_1
    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/f;->getChildCount()I

    move-result v1

    if-lt v0, v1, :cond_7

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/f;->F:I

    sget v1, Lcom/iLoong/launcher/Desktop3D/f;->c:I

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/f;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/f;->l:Lcom/iLoong/launcher/UI3DEngine/View3D;

    invoke-direct {p0, v0, v1, v12}, Lcom/iLoong/launcher/Desktop3D/f;->a(ILcom/iLoong/launcher/UI3DEngine/View3D;Z)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/f;->l:Lcom/iLoong/launcher/UI3DEngine/View3D;

    iput v4, v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->scaleX:F

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/f;->l:Lcom/iLoong/launcher/UI3DEngine/View3D;

    iput v4, v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->scaleY:F

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/f;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/f;->l:Lcom/iLoong/launcher/UI3DEngine/View3D;

    invoke-virtual {p0, v0, v1}, Lcom/iLoong/launcher/Desktop3D/f;->addViewAt(ILcom/iLoong/launcher/UI3DEngine/View3D;)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/f;->l:Lcom/iLoong/launcher/UI3DEngine/View3D;

    invoke-virtual {v0}, Lcom/iLoong/launcher/UI3DEngine/View3D;->stopTween()V

    iget-object v5, p0, Lcom/iLoong/launcher/Desktop3D/f;->l:Lcom/iLoong/launcher/UI3DEngine/View3D;

    const/4 v6, 0x3

    sget-object v7, Laurelienribon/tweenengine/equations/Cubic;->OUT:Laurelienribon/tweenengine/equations/Cubic;

    move v8, v3

    move v10, v9

    move v11, v4

    invoke-virtual/range {v5 .. v11}, Lcom/iLoong/launcher/UI3DEngine/View3D;->startTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    :cond_4
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/f;->m:Lcom/iLoong/launcher/UI3DEngine/View3D;

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/Desktop3D/f;->addView(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/f;->F:I

    sget v1, Lcom/iLoong/launcher/Desktop3D/f;->d:I

    if-ne v0, v1, :cond_5

    move v1, v12

    :goto_2
    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/f;->getChildCount()I

    move-result v0

    if-lt v1, v0, :cond_8

    :cond_5
    const/4 v0, -0x1

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/f;->n:I

    return-void

    :cond_6
    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/f;->a:I

    invoke-direct {p0, v0}, Lcom/iLoong/launcher/Desktop3D/f;->b(I)V

    goto :goto_0

    :cond_7
    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/Desktop3D/f;->getChildAt(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v1

    invoke-direct {p0, v0, v1, v7}, Lcom/iLoong/launcher/Desktop3D/f;->a(ILcom/iLoong/launcher/UI3DEngine/View3D;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_8
    invoke-virtual {p0, v1}, Lcom/iLoong/launcher/Desktop3D/f;->getChildAt(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    const-string v2, "delete_icon"

    invoke-virtual {v0, v2}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->findView(Ljava/lang/String;)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/iLoong/launcher/UI3DEngine/View3D;->hide()V

    :cond_9
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2
.end method

.method public a(Lcom/iLoong/launcher/Desktop3D/v;)V
    .locals 0

    iput-object p1, p0, Lcom/iLoong/launcher/Desktop3D/f;->h:Lcom/iLoong/launcher/Desktop3D/v;

    return-void
.end method

.method public a(Lcom/iLoong/launcher/desktop/iLoongLauncher;)V
    .locals 1

    iput-object p1, p0, Lcom/iLoong/launcher/Desktop3D/f;->e:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/f;->f:Landroid/app/WallpaperManager;

    return-void
.end method

.method public a(Ljava/util/List;I)V
    .locals 3

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/iLoong/launcher/Desktop3D/f;->i:Ljava/util/List;

    iput p2, p0, Lcom/iLoong/launcher/Desktop3D/f;->P:I

    invoke-static {}, Laurelienribon/tweenengine/Timeline;->createParallel()Laurelienribon/tweenengine/Timeline;

    move-result-object v0

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/f;->G:Laurelienribon/tweenengine/Timeline;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/f;->I:Z

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/f;->F:I

    move v1, v2

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {p0, v0, v1, p2}, Lcom/iLoong/launcher/Desktop3D/f;->a(Lcom/iLoong/launcher/UI3DEngine/View3D;II)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/f;->G:Laurelienribon/tweenengine/Timeline;

    invoke-virtual {v0, p0}, Laurelienribon/tweenengine/Timeline;->setCallback(Laurelienribon/tweenengine/TweenCallback;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/Timeline;

    sget-object v1, Lcom/iLoong/launcher/tween/View3DTweenAccessor;->manager:Laurelienribon/tweenengine/TweenManager;

    invoke-virtual {v0, v1}, Laurelienribon/tweenengine/Timeline;->start(Laurelienribon/tweenengine/TweenManager;)Ljava/lang/Object;

    iput-boolean v2, p0, Lcom/iLoong/launcher/Desktop3D/f;->O:Z

    return-void

    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/UI3DEngine/View3D;

    invoke-direct {p0, v0, v1, p2}, Lcom/iLoong/launcher/Desktop3D/f;->a(Lcom/iLoong/launcher/UI3DEngine/View3D;II)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public a(Z)V
    .locals 2

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/f;->removeAllViews()V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/f;->h:Lcom/iLoong/launcher/Desktop3D/v;

    iget-object v0, v0, Lcom/iLoong/launcher/Desktop3D/v;->b:Lcom/iLoong/launcher/Desktop3D/ah;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/ah;->d()V

    invoke-super {p0}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->hide()V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/f;->h:Lcom/iLoong/launcher/Desktop3D/v;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/v;->g()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/f;->d()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/f;->a:I

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/f;->getChildCount()I

    move-result v1

    if-lt v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/f;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :cond_2
    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/Desktop3D/f;->getChildAt(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    invoke-direct {p0, v0}, Lcom/iLoong/launcher/Desktop3D/f;->a(Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;)V

    goto :goto_0
.end method

.method public a(FF)Z
    .locals 7

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/f;->touchable:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/f;->visible:Z

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/f;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_1
    if-gez v2, :cond_2

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/f;->b()V

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v2}, Lcom/iLoong/launcher/Desktop3D/f;->getChildAt(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    iget-boolean v3, v0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->touchable:Z

    if-eqz v3, :cond_3

    iget-boolean v3, v0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->visible:Z

    if-nez v3, :cond_4

    :cond_3
    :goto_2
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lcom/iLoong/launcher/Desktop3D/f;->point:Lcom/badlogic/gdx/math/Vector2;

    iput p1, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v3, p0, Lcom/iLoong/launcher/Desktop3D/f;->point:Lcom/badlogic/gdx/math/Vector2;

    iput p2, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v3, p0, Lcom/iLoong/launcher/Desktop3D/f;->point:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v4, p0, Lcom/iLoong/launcher/Desktop3D/f;->point:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v0, v3, v4}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->pointerInParent(FF)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/iLoong/launcher/Desktop3D/f;->l:Lcom/iLoong/launcher/UI3DEngine/View3D;

    if-ne v0, v3, :cond_5

    invoke-direct {p0}, Lcom/iLoong/launcher/Desktop3D/f;->e()V

    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v3, p0, Lcom/iLoong/launcher/Desktop3D/f;->point:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p0, v0, v3}, Lcom/iLoong/launcher/Desktop3D/f;->toLocalCoordinates(Lcom/iLoong/launcher/UI3DEngine/View3D;Lcom/badlogic/gdx/math/Vector2;)V

    const-string v3, "delete_icon"

    invoke-virtual {v0, v3}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->findView(Ljava/lang/String;)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v3

    const-string v4, "home_icon"

    invoke-virtual {v0, v4}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->findView(Ljava/lang/String;)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v4

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lcom/iLoong/launcher/UI3DEngine/View3D;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/iLoong/launcher/Desktop3D/f;->point:Lcom/badlogic/gdx/math/Vector2;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v6, p0, Lcom/iLoong/launcher/Desktop3D/f;->point:Lcom/badlogic/gdx/math/Vector2;

    iget v6, v6, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-direct {p0, v3, v5, v6}, Lcom/iLoong/launcher/Desktop3D/f;->a(Lcom/iLoong/launcher/UI3DEngine/View3D;FF)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-direct {p0, v2}, Lcom/iLoong/launcher/Desktop3D/f;->a(I)V

    move v0, v1

    goto :goto_0

    :cond_6
    if-eqz v4, :cond_8

    invoke-virtual {v4}, Lcom/iLoong/launcher/UI3DEngine/View3D;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/iLoong/launcher/Desktop3D/f;->point:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v5, p0, Lcom/iLoong/launcher/Desktop3D/f;->point:Lcom/badlogic/gdx/math/Vector2;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-direct {p0, v4, v3, v5}, Lcom/iLoong/launcher/Desktop3D/f;->a(Lcom/iLoong/launcher/UI3DEngine/View3D;FF)Z

    move-result v3

    if-eqz v3, :cond_8

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/f;->a:I

    if-eq v0, v2, :cond_7

    invoke-direct {p0, v2}, Lcom/iLoong/launcher/Desktop3D/f;->b(I)V

    :cond_7
    move v0, v1

    goto/16 :goto_0

    :cond_8
    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/f;->d()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-direct {p0, v0}, Lcom/iLoong/launcher/Desktop3D/f;->a(Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;)V

    goto :goto_2
.end method

.method public a(Ljava/util/ArrayList;FF)Z
    .locals 9

    const/4 v8, 0x0

    const/high16 v4, 0x3f80

    const/4 v7, 0x1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v0, v7, :cond_0

    :goto_0
    return v7

    :cond_0
    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/UI3DEngine/View3D;

    invoke-virtual {v0}, Lcom/iLoong/launcher/UI3DEngine/View3D;->getParent()Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    move-result-object v1

    iget v1, v1, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->x:F

    iput v1, v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->x:F

    invoke-virtual {v0}, Lcom/iLoong/launcher/UI3DEngine/View3D;->getParent()Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    move-result-object v1

    iget v1, v1, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->y:F

    iput v1, v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->y:F

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/f;->q:I

    invoke-direct {p0, v1, v0, v7}, Lcom/iLoong/launcher/Desktop3D/f;->a(ILcom/iLoong/launcher/UI3DEngine/View3D;Z)V

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/f;->q:I

    invoke-virtual {p0, v1, v0}, Lcom/iLoong/launcher/Desktop3D/f;->addViewAt(ILcom/iLoong/launcher/UI3DEngine/View3D;)V

    check-cast v0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    const-string v1, "page_select"

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->findView(Ljava/lang/String;)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/f;->i:Ljava/util/List;

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/f;->q:I

    invoke-interface {v1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    check-cast v0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    const-string v1, "celllayout"

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->findView(Ljava/lang/String;)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/f;->h:Lcom/iLoong/launcher/Desktop3D/v;

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/f;->q:I

    invoke-virtual {v1, v2, v0}, Lcom/iLoong/launcher/Desktop3D/v;->a(ILcom/iLoong/launcher/Desktop3D/CellLayout3D;)V

    :cond_1
    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/f;->a:I

    invoke-direct {p0, v0}, Lcom/iLoong/launcher/Desktop3D/f;->d(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/iLoong/launcher/Desktop3D/f;->b(I)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/f;->h:Lcom/iLoong/launcher/Desktop3D/v;

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/f;->h:Lcom/iLoong/launcher/Desktop3D/v;

    invoke-virtual {v1}, Lcom/iLoong/launcher/Desktop3D/v;->b()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/iLoong/launcher/Desktop3D/f;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/Desktop3D/v;->b(I)V

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/f;->F:I

    sget v1, Lcom/iLoong/launcher/Desktop3D/f;->c:I

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/f;->l:Lcom/iLoong/launcher/UI3DEngine/View3D;

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/Desktop3D/f;->addView(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/f;->l:Lcom/iLoong/launcher/UI3DEngine/View3D;

    invoke-virtual {v0}, Lcom/iLoong/launcher/UI3DEngine/View3D;->stopTween()V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/f;->l:Lcom/iLoong/launcher/UI3DEngine/View3D;

    const/4 v1, 0x3

    sget-object v2, Laurelienribon/tweenengine/equations/Cubic;->OUT:Laurelienribon/tweenengine/equations/Cubic;

    const v3, 0x3ecccccd

    const/4 v6, 0x0

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/iLoong/launcher/UI3DEngine/View3D;->startTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    :cond_2
    iput-boolean v7, p0, Lcom/iLoong/launcher/Desktop3D/f;->M:Z

    iput-boolean v8, p0, Lcom/iLoong/launcher/Desktop3D/f;->o:Z

    goto :goto_0
.end method

.method public b()V
    .locals 2

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/f;->d()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/f;->P:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/f;->h:Lcom/iLoong/launcher/Desktop3D/v;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/v;->a()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/f;->h:Lcom/iLoong/launcher/Desktop3D/v;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/v;->b()I

    move-result v0

    if-gez v0, :cond_2

    const/4 v0, 0x0

    :cond_2
    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/f;->getChildCount()I

    move-result v1

    if-lt v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/f;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :cond_3
    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/Desktop3D/f;->getChildAt(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    invoke-direct {p0, v0}, Lcom/iLoong/launcher/Desktop3D/f;->a(Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;)V

    goto :goto_0
.end method

.method public b(Ljava/util/ArrayList;FF)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b(Z)Z
    .locals 12

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/f;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/iLoong/launcher/Desktop3D/f;->f()V

    invoke-super {p0}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->hide()V

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/f;->J:Z

    invoke-static {}, Laurelienribon/tweenengine/Timeline;->createParallel()Laurelienribon/tweenengine/Timeline;

    move-result-object v0

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/f;->G:Laurelienribon/tweenengine/Timeline;

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/f;->h:Lcom/iLoong/launcher/Desktop3D/v;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/v;->b()I

    move-result v0

    if-ltz v0, :cond_2

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/f;->h:Lcom/iLoong/launcher/Desktop3D/v;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/v;->b()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/Desktop3D/f;->getChildAt(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iLoong/launcher/UI3DEngine/View3D;->bringToFront()V

    :cond_2
    const/4 v0, 0x0

    move v9, v0

    :goto_1
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/f;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v9, v0, :cond_4

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/f;->F:I

    sget v1, Lcom/iLoong/launcher/Desktop3D/f;->c:I

    if-ge v0, v1, :cond_3

    iget-object v7, p0, Lcom/iLoong/launcher/Desktop3D/f;->G:Laurelienribon/tweenengine/Timeline;

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/f;->l:Lcom/iLoong/launcher/UI3DEngine/View3D;

    const/4 v1, 0x5

    sget-object v2, Laurelienribon/tweenengine/equations/Cubic;->OUT:Laurelienribon/tweenengine/equations/Cubic;

    const v3, 0x3e99999a

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/iLoong/launcher/UI3DEngine/View3D;->obtainTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    move-result-object v0

    invoke-virtual {v7, v0}, Laurelienribon/tweenengine/Timeline;->push(Laurelienribon/tweenengine/Tween;)Laurelienribon/tweenengine/Timeline;

    :cond_3
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/f;->G:Laurelienribon/tweenengine/Timeline;

    invoke-virtual {v0, p0}, Laurelienribon/tweenengine/Timeline;->setCallback(Laurelienribon/tweenengine/TweenCallback;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/Timeline;

    sget-object v1, Lcom/iLoong/launcher/tween/View3DTweenAccessor;->manager:Laurelienribon/tweenengine/TweenManager;

    invoke-virtual {v0, v1}, Laurelienribon/tweenengine/Timeline;->start(Laurelienribon/tweenengine/TweenManager;)Ljava/lang/Object;

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/f;->i:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/iLoong/launcher/UI3DEngine/View3D;

    invoke-virtual {v7}, Lcom/iLoong/launcher/UI3DEngine/View3D;->getParent()Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    move-result-object v0

    invoke-virtual {v7}, Lcom/iLoong/launcher/UI3DEngine/View3D;->getTag()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/iLoong/launcher/Desktop3D/au;

    iget-object v5, v8, Lcom/iLoong/launcher/Desktop3D/au;->a:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    const-string v1, "delete_icon"

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->findView(Ljava/lang/String;)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v1

    const-string v2, "home_icon"

    invoke-virtual {v0, v2}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->findView(Ljava/lang/String;)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v2

    if-eqz v1, :cond_5

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->removeView(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    :cond_5
    if-eqz v2, :cond_6

    invoke-virtual {v0, v2}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->removeView(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    :cond_6
    int-to-float v1, v9

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/f;->H:F

    mul-float v10, v1, v2

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->setRotationVector(FFF)V

    iget v1, v8, Lcom/iLoong/launcher/Desktop3D/au;->e:F

    iget v2, v8, Lcom/iLoong/launcher/Desktop3D/au;->f:F

    invoke-virtual {v0, v1, v2}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->setOrigin(FF)V

    iget-object v11, p0, Lcom/iLoong/launcher/Desktop3D/f;->G:Laurelienribon/tweenengine/Timeline;

    const/4 v1, 0x1

    sget-object v2, Laurelienribon/tweenengine/equations/Cubic;->OUT:Laurelienribon/tweenengine/equations/Cubic;

    const/high16 v3, 0x3f00

    iget v4, v8, Lcom/iLoong/launcher/Desktop3D/au;->g:F

    iget v6, v5, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->x:F

    add-float/2addr v4, v6

    iget v6, v8, Lcom/iLoong/launcher/Desktop3D/au;->h:F

    iget v5, v5, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->y:F

    add-float/2addr v5, v6

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->obtainTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    move-result-object v1

    invoke-virtual {v1, v10}, Laurelienribon/tweenengine/Tween;->delay(F)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laurelienribon/tweenengine/Tween;

    invoke-virtual {v11, v1}, Laurelienribon/tweenengine/Timeline;->push(Laurelienribon/tweenengine/Tween;)Laurelienribon/tweenengine/Timeline;

    iget-object v11, p0, Lcom/iLoong/launcher/Desktop3D/f;->G:Laurelienribon/tweenengine/Timeline;

    const/4 v1, 0x4

    sget-object v2, Laurelienribon/tweenengine/equations/Cubic;->OUT:Laurelienribon/tweenengine/equations/Cubic;

    const/high16 v3, 0x3f00

    iget v4, v8, Lcom/iLoong/launcher/Desktop3D/au;->b:F

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->obtainTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    move-result-object v0

    invoke-virtual {v0, v10}, Laurelienribon/tweenengine/Tween;->delay(F)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/Tween;

    invoke-virtual {v11, v0}, Laurelienribon/tweenengine/Timeline;->push(Laurelienribon/tweenengine/Tween;)Laurelienribon/tweenengine/Timeline;

    iget-object v11, p0, Lcom/iLoong/launcher/Desktop3D/f;->G:Laurelienribon/tweenengine/Timeline;

    const/4 v1, 0x3

    sget-object v2, Laurelienribon/tweenengine/equations/Cubic;->OUT:Laurelienribon/tweenengine/equations/Cubic;

    const/high16 v3, 0x3f00

    iget v4, v8, Lcom/iLoong/launcher/Desktop3D/au;->c:F

    iget v5, v8, Lcom/iLoong/launcher/Desktop3D/au;->d:F

    const/4 v6, 0x0

    move-object v0, v7

    invoke-virtual/range {v0 .. v6}, Lcom/iLoong/launcher/UI3DEngine/View3D;->obtainTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    move-result-object v0

    invoke-virtual {v0, v10}, Laurelienribon/tweenengine/Tween;->delay(F)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/Tween;

    invoke-virtual {v11, v0}, Laurelienribon/tweenengine/Timeline;->push(Laurelienribon/tweenengine/Tween;)Laurelienribon/tweenengine/Timeline;

    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto/16 :goto_1
.end method

.method public c()Ljava/util/ArrayList;
    .locals 2

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/f;->j:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/f;->j:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/f;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/f;->j:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/f;->k:Lcom/iLoong/launcher/UI3DEngine/View3D;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/f;->j:Ljava/util/ArrayList;

    return-object v0
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/f;->L:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/f;->J:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/f;->I:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/f;->M:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/f;->N:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected drawChildren(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 11

    const/high16 v10, 0x3f80

    const/4 v9, 0x0

    iget-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/f;->transform:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move v7, v0

    :goto_0
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/f;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v7, v0, :cond_1

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/f;->children:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/iLoong/launcher/UI3DEngine/View3D;

    iget-boolean v0, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->visible:Z

    if-nez v0, :cond_2

    :goto_1
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_0

    :cond_2
    invoke-virtual {v6, p1}, Lcom/iLoong/launcher/UI3DEngine/View3D;->applyTransformChild(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    iget-object v0, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->background9:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    if-eqz v0, :cond_3

    iget-object v0, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v1, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v2, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget-object v3, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v3, p2

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->getTransformMatrix()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v8

    iget v0, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->x:F

    iget v1, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->y:F

    invoke-virtual {v8, v0, v1, v9}, Lcom/badlogic/gdx/math/Matrix4;->translate(FFF)Lcom/badlogic/gdx/math/Matrix4;

    sget v0, Lcom/iLoong/launcher/Desktop3D/ah;->h:F

    sget v1, Lcom/iLoong/launcher/Desktop3D/ah;->i:F

    invoke-virtual {v8, v0, v1, v10}, Lcom/badlogic/gdx/math/Matrix4;->scale(FFF)Lcom/badlogic/gdx/math/Matrix4;

    iget v0, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->x:F

    neg-float v0, v0

    iget v1, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->y:F

    neg-float v1, v1

    invoke-virtual {v8, v0, v1, v9}, Lcom/badlogic/gdx/math/Matrix4;->translate(FFF)Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {p1, v8}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setTransformMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    iget-object v0, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->background9:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    iget v2, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->x:F

    iget v3, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->y:F

    iget v1, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->width:F

    sget v4, Lcom/iLoong/launcher/Desktop3D/ah;->h:F

    div-float v4, v1, v4

    iget v1, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->height:F

    sget v5, Lcom/iLoong/launcher/Desktop3D/ah;->i:F

    div-float v5, v1, v5

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFF)V

    iget v0, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->x:F

    iget v1, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->y:F

    invoke-virtual {v8, v0, v1, v9}, Lcom/badlogic/gdx/math/Matrix4;->translate(FFF)Lcom/badlogic/gdx/math/Matrix4;

    sget v0, Lcom/iLoong/launcher/Desktop3D/ah;->h:F

    div-float v0, v10, v0

    sget v1, Lcom/iLoong/launcher/Desktop3D/ah;->i:F

    div-float v1, v10, v1

    invoke-virtual {v8, v0, v1, v10}, Lcom/badlogic/gdx/math/Matrix4;->scale(FFF)Lcom/badlogic/gdx/math/Matrix4;

    iget v0, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->x:F

    neg-float v0, v0

    iget v1, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->y:F

    neg-float v1, v1

    invoke-virtual {v8, v0, v1, v9}, Lcom/badlogic/gdx/math/Matrix4;->translate(FFF)Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {p1, v8}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setTransformMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    :cond_3
    invoke-virtual {v6, p1, p2}, Lcom/iLoong/launcher/UI3DEngine/View3D;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    invoke-virtual {v6, p1}, Lcom/iLoong/launcher/UI3DEngine/View3D;->resetTransformChild(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    goto :goto_1
.end method

.method public keyUp(I)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/f;->o:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/f;->b()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public multiTouch2(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onEvent(ILaurelienribon/tweenengine/BaseTween;)V
    .locals 4

    const/4 v2, 0x0

    const/4 v3, 0x0

    instance-of v0, p2, Laurelienribon/tweenengine/Tween;

    if-eqz v0, :cond_3

    check-cast p2, Laurelienribon/tweenengine/Tween;

    invoke-virtual {p2}, Laurelienribon/tweenengine/Tween;->getTarget()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/f;->l:Lcom/iLoong/launcher/UI3DEngine/View3D;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/f;->l:Lcom/iLoong/launcher/UI3DEngine/View3D;

    iget v0, v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->scaleX:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/f;->l:Lcom/iLoong/launcher/UI3DEngine/View3D;

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/Desktop3D/f;->removeView(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Laurelienribon/tweenengine/Tween;->getTarget()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/f;->m:Lcom/iLoong/launcher/UI3DEngine/View3D;

    if-ne v0, v1, :cond_2

    iput-boolean v3, p0, Lcom/iLoong/launcher/Desktop3D/f;->L:Z

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/f;->m:Lcom/iLoong/launcher/UI3DEngine/View3D;

    iget v0, v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->scaleX:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/f;->m:Lcom/iLoong/launcher/UI3DEngine/View3D;

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/Desktop3D/f;->removeView(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/f;->M:Z

    if-eqz v0, :cond_0

    const-string v0, "page"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "draging="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/iLoong/launcher/Desktop3D/f;->o:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, p0, Lcom/iLoong/launcher/Desktop3D/f;->M:Z

    goto :goto_0

    :cond_3
    instance-of v0, p2, Laurelienribon/tweenengine/Timeline;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/f;->I:Z

    if-eqz v0, :cond_4

    iput-boolean v3, p0, Lcom/iLoong/launcher/Desktop3D/f;->I:Z

    :cond_4
    iget-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/f;->J:Z

    if-eqz v0, :cond_5

    const-string v0, "page"

    const-string v1, "editpage hide anim complete"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/iLoong/launcher/Desktop3D/f;->f()V

    invoke-super {p0}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->hide()V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/f;->h:Lcom/iLoong/launcher/Desktop3D/v;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/v;->h()V

    iput-boolean v3, p0, Lcom/iLoong/launcher/Desktop3D/f;->J:Z

    :cond_5
    iget-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/f;->N:Z

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/f;->removeAllViews()V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/f;->h:Lcom/iLoong/launcher/Desktop3D/v;

    iget-object v0, v0, Lcom/iLoong/launcher/Desktop3D/v;->b:Lcom/iLoong/launcher/Desktop3D/ah;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/ah;->d()V

    invoke-super {p0}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->hide()V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/f;->h:Lcom/iLoong/launcher/Desktop3D/v;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/v;->g()V

    iput-boolean v3, p0, Lcom/iLoong/launcher/Desktop3D/f;->N:Z

    :cond_6
    iget-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/f;->L:Z

    if-eqz v0, :cond_0

    iput-boolean v3, p0, Lcom/iLoong/launcher/Desktop3D/f;->L:Z

    goto :goto_0
.end method

.method public onLongClick(FF)Z
    .locals 9

    const/4 v4, 0x0

    const/4 v7, 0x1

    iget-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/f;->touchable:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/f;->visible:Z

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/f;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v7

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/f;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v8, v0

    :goto_1
    if-gez v8, :cond_3

    move v0, v7

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v8}, Lcom/iLoong/launcher/Desktop3D/f;->getChildAt(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    iget-boolean v1, v0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->touchable:Z

    if-eqz v1, :cond_4

    iget-boolean v1, v0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->visible:Z

    if-nez v1, :cond_5

    :cond_4
    add-int/lit8 v0, v8, -0x1

    move v8, v0

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/f;->point:Lcom/badlogic/gdx/math/Vector2;

    iput p1, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/f;->point:Lcom/badlogic/gdx/math/Vector2;

    iput p2, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/f;->point:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/f;->point:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v0, v1, v2}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->pointerInParent(FF)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/f;->l:Lcom/iLoong/launcher/UI3DEngine/View3D;

    if-ne v0, v1, :cond_6

    move v0, v7

    goto :goto_0

    :cond_6
    iput-boolean v7, p0, Lcom/iLoong/launcher/Desktop3D/f;->o:Z

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/f;->point:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->toAbsoluteCoords(Lcom/badlogic/gdx/math/Vector2;)V

    new-instance v1, Lcom/badlogic/gdx/math/Vector2;

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/f;->point:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v3, p0, Lcom/iLoong/launcher/Desktop3D/f;->point:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-direct {v1, v2, v3}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    invoke-virtual {p0, v1}, Lcom/iLoong/launcher/Desktop3D/f;->setTag(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/f;->k:Lcom/iLoong/launcher/UI3DEngine/View3D;

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/f;->F:I

    sget v1, Lcom/iLoong/launcher/Desktop3D/f;->c:I

    if-ge v0, v1, :cond_7

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/f;->l:Lcom/iLoong/launcher/UI3DEngine/View3D;

    invoke-virtual {v0}, Lcom/iLoong/launcher/UI3DEngine/View3D;->stopTween()V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/f;->l:Lcom/iLoong/launcher/UI3DEngine/View3D;

    const/4 v1, 0x3

    sget-object v2, Laurelienribon/tweenengine/equations/Cubic;->OUT:Laurelienribon/tweenengine/equations/Cubic;

    const v3, 0x3ecccccd

    move v5, v4

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Lcom/iLoong/launcher/UI3DEngine/View3D;->startTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    move-result-object v0

    invoke-virtual {v0, p0}, Laurelienribon/tweenengine/Tween;->setCallback(Laurelienribon/tweenengine/TweenCallback;)Ljava/lang/Object;

    :cond_7
    iput v8, p0, Lcom/iLoong/launcher/Desktop3D/f;->p:I

    iput v8, p0, Lcom/iLoong/launcher/Desktop3D/f;->q:I

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/f;->i:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/f;->h:Lcom/iLoong/launcher/Desktop3D/v;

    invoke-virtual {v0, v8, v7}, Lcom/iLoong/launcher/Desktop3D/v;->a(IZ)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/f;->point:Lcom/badlogic/gdx/math/Vector2;

    iput p1, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/f;->point:Lcom/badlogic/gdx/math/Vector2;

    iput p2, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/f;->point:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/Desktop3D/f;->toAbsolute(Lcom/badlogic/gdx/math/Vector2;)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/f;->point:Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    sput v0, Lcom/iLoong/launcher/Desktop3D/x;->a:F

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/f;->point:Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    sput v0, Lcom/iLoong/launcher/Desktop3D/x;->b:F

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/f;->viewParent:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    const/16 v1, -0x2710

    invoke-virtual {v0, p0, v1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->onCtrlEvent(Lcom/iLoong/launcher/UI3DEngine/View3D;I)Z

    move-result v0

    goto/16 :goto_0
.end method

.method public onTouchDown(FFI)Z
    .locals 3

    const-string v0, "page"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onTouchDown:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/f;->name:Ljava/lang/String;

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

    const-string v2, " pointer:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p3, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/iLoong/launcher/Desktop3D/f;->K:J

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onTouchDragged(FFI)Z
    .locals 3

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/f;->o:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    if-eqz p3, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/iLoong/launcher/Desktop3D/f;->b(FF)I

    move-result v0

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/f;->F:I

    if-lt v0, v2, :cond_2

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/f;->F:I

    add-int/lit8 v0, v0, -0x1

    :cond_2
    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/f;->q:I

    if-ne v0, v2, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-direct {p0, v0}, Lcom/iLoong/launcher/Desktop3D/f;->c(I)V

    move v0, v1

    goto :goto_0
.end method

.method public onTouchUp(FFI)Z
    .locals 5

    const/4 v4, 0x1

    const-string v0, "page"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onTouchUp:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/f;->name:Ljava/lang/String;

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

    const-string v2, " pointer:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/iLoong/launcher/Desktop3D/f;->K:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/iLoong/launcher/Desktop3D/f;->a(FF)Z

    goto :goto_0
.end method

.method public zoom(FF)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
