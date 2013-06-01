.class public Lcom/iLoong/launcher/HotSeat3D/a;
.super Lcom/iLoong/launcher/UI3DEngine/p;

# interfaces
.implements Lcom/iLoong/launcher/Desktop3D/bd;
.implements Lcom/iLoong/launcher/Desktop3D/bm;


# static fields
.field public static a:Ljava/lang/Object;

.field public static b:Z

.field public static c:Z

.field public static d:Z

.field public static h:Z

.field public static i:Z

.field public static j:I

.field public static l:F


# instance fields
.field private A:Ljava/lang/Object;

.field private B:Z

.field private C:Z

.field private D:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field private E:Ljava/util/ArrayList;

.field private F:[I

.field private G:F

.field private H:F

.field public e:I

.field public f:I

.field public k:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

.field m:Z

.field private n:I

.field private o:Laurelienribon/tweenengine/Timeline;

.field private p:Laurelienribon/tweenengine/Tween;

.field private q:Z

.field private r:Lcom/iLoong/launcher/UI3DEngine/View3D;

.field private s:I

.field private t:Lcom/iLoong/launcher/HotSeat3D/g;

.field private u:Lcom/iLoong/launcher/HotSeat3D/d;

.field private v:Lcom/iLoong/launcher/HotSeat3D/b;

.field private w:Lcom/iLoong/launcher/app/ak;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/iLoong/launcher/HotSeat3D/a;->a:Ljava/lang/Object;

    sput-boolean v1, Lcom/iLoong/launcher/HotSeat3D/a;->b:Z

    sput-boolean v1, Lcom/iLoong/launcher/HotSeat3D/a;->c:Z

    sput-boolean v1, Lcom/iLoong/launcher/HotSeat3D/a;->d:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/iLoong/launcher/HotSeat3D/a;->h:Z

    sput-boolean v1, Lcom/iLoong/launcher/HotSeat3D/a;->i:Z

    sput v1, Lcom/iLoong/launcher/HotSeat3D/a;->j:I

    const/4 v0, 0x0

    sput v0, Lcom/iLoong/launcher/HotSeat3D/a;->l:F

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 6

    const/4 v4, 0x0

    const/16 v2, 0x14

    const/4 v3, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/iLoong/launcher/UI3DEngine/p;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/iLoong/launcher/HotSeat3D/a;->o:Laurelienribon/tweenengine/Timeline;

    iput-boolean v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->q:Z

    iput-boolean v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->B:Z

    iput-boolean v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->C:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/iLoong/launcher/HotSeat3D/a;->E:Ljava/util/ArrayList;

    const/4 v1, 0x4

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/iLoong/launcher/HotSeat3D/a;->F:[I

    iput v3, p0, Lcom/iLoong/launcher/HotSeat3D/a;->G:F

    iput v3, p0, Lcom/iLoong/launcher/HotSeat3D/a;->H:F

    iput v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->e:I

    iput v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->f:I

    iput-object v4, p0, Lcom/iLoong/launcher/HotSeat3D/a;->k:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    iput-boolean v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->m:Z

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenWidth()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/iLoong/launcher/HotSeat3D/a;->width:F

    sget v1, Lcom/iLoong/launcher/Desktop3D/at;->bL:I

    int-to-float v1, v1

    iput v1, p0, Lcom/iLoong/launcher/HotSeat3D/a;->height:F

    iput v3, p0, Lcom/iLoong/launcher/HotSeat3D/a;->x:F

    iput v3, p0, Lcom/iLoong/launcher/HotSeat3D/a;->y:F

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v3, p0, Lcom/iLoong/launcher/HotSeat3D/a;->height:F

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    invoke-virtual {p0, v1, v3}, Lcom/iLoong/launcher/HotSeat3D/a;->setOrigin(FF)V

    const/4 v1, 0x1

    iput v1, p0, Lcom/iLoong/launcher/HotSeat3D/a;->s:I

    sget-boolean v1, Lcom/iLoong/launcher/Desktop3D/cb;->aw:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/iLoong/launcher/HotSeat3D/a;->b:Z

    if-eqz v1, :cond_0

    const-string v1, "hotseat-bg"

    invoke-static {v1}, Lcom/iLoong/launcher/Desktop3D/at;->b(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    move-result-object v1

    iput-object v1, p0, Lcom/iLoong/launcher/HotSeat3D/a;->D:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    :cond_0
    sget-boolean v1, Lcom/iLoong/launcher/Desktop3D/cb;->aS:Z

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/iLoong/launcher/HotSeat3D/a;->b:Z

    if-eqz v1, :cond_1

    const-string v1, "hotseat-bg-ex"

    invoke-static {v1}, Lcom/iLoong/launcher/Desktop3D/at;->b(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    move-result-object v1

    iput-object v1, p0, Lcom/iLoong/launcher/HotSeat3D/a;->D:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    :goto_0
    sget v1, Lcom/iLoong/launcher/Desktop3D/at;->bW:I

    if-lt v0, v1, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/iLoong/launcher/HotSeat3D/a;->w()V

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    const-string v1, "icon_focus"

    invoke-static {v1}, Lcom/iLoong/launcher/Desktop3D/at;->b(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    move-result-object v1

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IIII)V

    iput-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->k:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    iget v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->y:F

    sput v0, Lcom/iLoong/launcher/HotSeat3D/a;->l:F

    return-void

    :cond_2
    iget-object v1, p0, Lcom/iLoong/launcher/HotSeat3D/a;->E:Ljava/util/ArrayList;

    new-instance v3, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const-string v4, "hotseat-ex-panel"

    invoke-static {v4}, Lcom/iLoong/launcher/Desktop3D/at;->b(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :array_0
    .array-data 0x4
        0x19t 0x0t 0x0t 0x0t
        0x7at 0x0t 0x0t 0x0t
        0x31t 0x1t 0x0t 0x0t
        0x8ct 0x1t 0x0t 0x0t
    .end array-data
.end method

.method private b(F)V
    .locals 9

    const/4 v8, 0x4

    const/4 v2, 0x3

    const/4 v7, 0x1

    const/high16 v6, 0x4170

    const/4 v5, 0x0

    const/high16 v3, 0x3f00

    const-string v0, "hotobj"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "startAutoEffect scaleY="

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v0, -0x4000

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    move v1, v0

    :goto_0
    if-ne v1, v2, :cond_1

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->o:Laurelienribon/tweenengine/Timeline;

    iget-object v2, p0, Lcom/iLoong/launcher/HotSeat3D/a;->u:Lcom/iLoong/launcher/HotSeat3D/d;

    invoke-static {v2, v8, v3}, Laurelienribon/tweenengine/Tween;->to(Ljava/lang/Object;IF)Laurelienribon/tweenengine/Tween;

    move-result-object v2

    invoke-virtual {v2, v5, v5, v5}, Laurelienribon/tweenengine/Tween;->target(FFF)Laurelienribon/tweenengine/Tween;

    move-result-object v2

    sget-object v4, Laurelienribon/tweenengine/equations/Cubic;->OUT:Laurelienribon/tweenengine/equations/Cubic;

    invoke-virtual {v2, v4}, Laurelienribon/tweenengine/Tween;->ease(Laurelienribon/tweenengine/TweenEquation;)Laurelienribon/tweenengine/Tween;

    move-result-object v2

    invoke-virtual {v0, v2}, Laurelienribon/tweenengine/Timeline;->push(Laurelienribon/tweenengine/Tween;)Laurelienribon/tweenengine/Timeline;

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->o:Laurelienribon/tweenengine/Timeline;

    iget-object v2, p0, Lcom/iLoong/launcher/HotSeat3D/a;->v:Lcom/iLoong/launcher/HotSeat3D/b;

    invoke-static {v2, v8, v3}, Laurelienribon/tweenengine/Tween;->to(Ljava/lang/Object;IF)Laurelienribon/tweenengine/Tween;

    move-result-object v2

    invoke-virtual {v2, v5, v5, v5}, Laurelienribon/tweenengine/Tween;->target(FFF)Laurelienribon/tweenengine/Tween;

    move-result-object v2

    sget-object v4, Laurelienribon/tweenengine/equations/Cubic;->OUT:Laurelienribon/tweenengine/equations/Cubic;

    invoke-virtual {v2, v4}, Laurelienribon/tweenengine/Tween;->ease(Laurelienribon/tweenengine/TweenEquation;)Laurelienribon/tweenengine/Tween;

    move-result-object v2

    invoke-virtual {v0, v2}, Laurelienribon/tweenengine/Timeline;->push(Laurelienribon/tweenengine/Tween;)Laurelienribon/tweenengine/Timeline;

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->o:Laurelienribon/tweenengine/Timeline;

    iget-object v2, p0, Lcom/iLoong/launcher/HotSeat3D/a;->u:Lcom/iLoong/launcher/HotSeat3D/d;

    invoke-static {v2, v7, v3}, Laurelienribon/tweenengine/Tween;->to(Ljava/lang/Object;IF)Laurelienribon/tweenengine/Tween;

    move-result-object v2

    sget v4, Lcom/iLoong/launcher/Desktop3D/at;->bO:I

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v2, v5, v5, v4}, Laurelienribon/tweenengine/Tween;->target(FFF)Laurelienribon/tweenengine/Tween;

    move-result-object v2

    sget-object v4, Laurelienribon/tweenengine/equations/Cubic;->OUT:Laurelienribon/tweenengine/equations/Cubic;

    invoke-virtual {v2, v4}, Laurelienribon/tweenengine/Tween;->ease(Laurelienribon/tweenengine/TweenEquation;)Laurelienribon/tweenengine/Tween;

    move-result-object v2

    invoke-virtual {v0, v2}, Laurelienribon/tweenengine/Timeline;->push(Laurelienribon/tweenengine/Tween;)Laurelienribon/tweenengine/Timeline;

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->o:Laurelienribon/tweenengine/Timeline;

    iget-object v2, p0, Lcom/iLoong/launcher/HotSeat3D/a;->v:Lcom/iLoong/launcher/HotSeat3D/b;

    invoke-static {v2, v7, v3}, Laurelienribon/tweenengine/Tween;->to(Ljava/lang/Object;IF)Laurelienribon/tweenengine/Tween;

    move-result-object v2

    invoke-virtual {v2, v5, v5, v5}, Laurelienribon/tweenengine/Tween;->target(FFF)Laurelienribon/tweenengine/Tween;

    move-result-object v2

    sget-object v3, Laurelienribon/tweenengine/equations/Cubic;->OUT:Laurelienribon/tweenengine/equations/Cubic;

    invoke-virtual {v2, v3}, Laurelienribon/tweenengine/Tween;->ease(Laurelienribon/tweenengine/TweenEquation;)Laurelienribon/tweenengine/Tween;

    move-result-object v2

    invoke-virtual {v0, v2}, Laurelienribon/tweenengine/Timeline;->push(Laurelienribon/tweenengine/Tween;)Laurelienribon/tweenengine/Timeline;

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->o:Laurelienribon/tweenengine/Timeline;

    sget-object v2, Lcom/iLoong/launcher/tween/View3DTweenAccessor;->manager:Laurelienribon/tweenengine/TweenManager;

    invoke-virtual {v0, v2}, Laurelienribon/tweenengine/Timeline;->start(Laurelienribon/tweenengine/TweenManager;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/Timeline;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Laurelienribon/tweenengine/Timeline;->setUserData(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/Timeline;

    invoke-virtual {v0, p0}, Laurelienribon/tweenengine/Timeline;->setCallback(Laurelienribon/tweenengine/TweenCallback;)Ljava/lang/Object;

    iput-boolean v7, p0, Lcom/iLoong/launcher/HotSeat3D/a;->q:Z

    :goto_1
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/iLoong/launcher/HotSeat3D/a;->z()V

    invoke-static {}, Laurelienribon/tweenengine/Timeline;->createParallel()Laurelienribon/tweenengine/Timeline;

    move-result-object v0

    iput-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->o:Laurelienribon/tweenengine/Timeline;

    move v1, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->q:Z

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->u:Lcom/iLoong/launcher/HotSeat3D/d;

    mul-float v1, v6, p1

    add-float/2addr v1, v6

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/HotSeat3D/d;->setRotation(F)V

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->v:Lcom/iLoong/launcher/HotSeat3D/b;

    mul-float v1, v6, p1

    add-float/2addr v1, v6

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/HotSeat3D/b;->setRotation(F)V

    goto :goto_1
.end method

.method public static d()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/iLoong/launcher/HotSeat3D/a;->d:Z

    sput-boolean v0, Lcom/iLoong/launcher/HotSeat3D/a;->c:Z

    sput-boolean v0, Lcom/iLoong/launcher/HotSeat3D/a;->i:Z

    invoke-static {}, Lcom/iLoong/launcher/HotSeat3D/c;->a()V

    return-void
.end method

.method private d(Ljava/util/ArrayList;)V
    .locals 7

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    add-int/lit8 v0, v4, -0x1

    if-le v2, v0, :cond_0

    return-void

    :cond_0
    move v3, v2

    :goto_1
    if-lt v3, v4, :cond_1

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/a/j;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iLoong/launcher/a/j;

    iget v5, v0, Lcom/iLoong/launcher/a/j;->r:I

    if-nez v5, :cond_2

    iget v5, v0, Lcom/iLoong/launcher/a/j;->r:I

    iget v6, v1, Lcom/iLoong/launcher/a/j;->r:I

    if-ne v5, v6, :cond_2

    iget v5, v0, Lcom/iLoong/launcher/a/j;->n:I

    iget v6, v1, Lcom/iLoong/launcher/a/j;->n:I

    if-le v5, v6, :cond_2

    invoke-virtual {p1, v2, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v3, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1
.end method

.method private w()V
    .locals 4

    new-instance v0, Lcom/iLoong/launcher/HotSeat3D/g;

    const-string v1, "HotSeatMainGroup"

    iget v2, p0, Lcom/iLoong/launcher/HotSeat3D/a;->width:F

    float-to-int v2, v2

    iget v3, p0, Lcom/iLoong/launcher/HotSeat3D/a;->height:F

    float-to-int v3, v3

    invoke-direct {v0, v1, v2, v3}, Lcom/iLoong/launcher/HotSeat3D/g;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->t:Lcom/iLoong/launcher/HotSeat3D/g;

    new-instance v0, Lcom/iLoong/launcher/HotSeat3D/b;

    const-string v1, "dockGroup"

    iget v2, p0, Lcom/iLoong/launcher/HotSeat3D/a;->width:F

    float-to-int v2, v2

    iget v3, p0, Lcom/iLoong/launcher/HotSeat3D/a;->height:F

    float-to-int v3, v3

    invoke-direct {v0, v1, v2, v3}, Lcom/iLoong/launcher/HotSeat3D/b;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->v:Lcom/iLoong/launcher/HotSeat3D/b;

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->v:Lcom/iLoong/launcher/HotSeat3D/b;

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/HotSeat3D/a;->addView(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/HotSeat3D/a;->a(I)V

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->t:Lcom/iLoong/launcher/HotSeat3D/g;

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/HotSeat3D/a;->addView(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->t:Lcom/iLoong/launcher/HotSeat3D/g;

    invoke-virtual {v0}, Lcom/iLoong/launcher/HotSeat3D/g;->hide()V

    new-instance v0, Lcom/iLoong/launcher/HotSeat3D/d;

    const-string v1, "Model3DGroup"

    iget v2, p0, Lcom/iLoong/launcher/HotSeat3D/a;->width:F

    float-to-int v2, v2

    iget v3, p0, Lcom/iLoong/launcher/HotSeat3D/a;->height:F

    float-to-int v3, v3

    invoke-direct {v0, v1, v2, v3}, Lcom/iLoong/launcher/HotSeat3D/d;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->u:Lcom/iLoong/launcher/HotSeat3D/d;

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->u:Lcom/iLoong/launcher/HotSeat3D/d;

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/HotSeat3D/a;->addView(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->u:Lcom/iLoong/launcher/HotSeat3D/d;

    invoke-virtual {v0}, Lcom/iLoong/launcher/HotSeat3D/d;->hide()V

    return-void
.end method

.method private x()V
    .locals 2

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->v:Lcom/iLoong/launcher/HotSeat3D/b;

    invoke-virtual {v0}, Lcom/iLoong/launcher/HotSeat3D/b;->d()Lcom/iLoong/launcher/HotSeat3D/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iLoong/launcher/HotSeat3D/i;->c()I

    move-result v0

    iget-object v1, p0, Lcom/iLoong/launcher/HotSeat3D/a;->u:Lcom/iLoong/launcher/HotSeat3D/d;

    invoke-virtual {v1, v0}, Lcom/iLoong/launcher/HotSeat3D/d;->a(I)V

    return-void
.end method

.method private y()V
    .locals 10

    const/4 v2, 0x0

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->v:Lcom/iLoong/launcher/HotSeat3D/b;

    invoke-virtual {v0}, Lcom/iLoong/launcher/HotSeat3D/b;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->v:Lcom/iLoong/launcher/HotSeat3D/b;

    invoke-virtual {v0}, Lcom/iLoong/launcher/HotSeat3D/b;->d()Lcom/iLoong/launcher/HotSeat3D/i;

    move-result-object v8

    invoke-virtual {v8}, Lcom/iLoong/launcher/HotSeat3D/i;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->u:Lcom/iLoong/launcher/HotSeat3D/d;

    invoke-virtual {v0, v4, v4, v4, v4}, Lcom/iLoong/launcher/HotSeat3D/d;->a(ZZZZ)V

    goto :goto_0

    :cond_1
    move v1, v2

    move v3, v4

    move v5, v4

    move v6, v4

    move v7, v4

    :goto_1
    invoke-virtual {v8}, Lcom/iLoong/launcher/HotSeat3D/i;->getChildCount()I

    move-result v0

    if-lt v1, v0, :cond_2

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->u:Lcom/iLoong/launcher/HotSeat3D/d;

    invoke-virtual {v0, v7, v6, v5, v3}, Lcom/iLoong/launcher/HotSeat3D/d;->a(ZZZZ)V

    goto :goto_0

    :cond_2
    invoke-virtual {v8, v1}, Lcom/iLoong/launcher/HotSeat3D/i;->getChildAt(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/Desktop3D/u;

    invoke-interface {v0}, Lcom/iLoong/launcher/Desktop3D/u;->b()Lcom/iLoong/launcher/a/j;

    move-result-object v0

    iget v0, v0, Lcom/iLoong/launcher/a/j;->n:I

    if-nez v0, :cond_4

    move v7, v2

    :cond_3
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_4
    if-ne v0, v4, :cond_5

    move v6, v2

    goto :goto_2

    :cond_5
    const/4 v9, 0x2

    if-ne v0, v9, :cond_6

    move v5, v2

    goto :goto_2

    :cond_6
    const/4 v9, 0x3

    if-ne v0, v9, :cond_3

    move v3, v2

    goto :goto_2
.end method

.method private z()V
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->o:Laurelienribon/tweenengine/Timeline;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->o:Laurelienribon/tweenengine/Timeline;

    invoke-virtual {v0}, Laurelienribon/tweenengine/Timeline;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->o:Laurelienribon/tweenengine/Timeline;

    invoke-virtual {v0}, Laurelienribon/tweenengine/Timeline;->free()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->o:Laurelienribon/tweenengine/Timeline;

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/util/ArrayList;)I
    .locals 4

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/4 v0, 0x1

    move v3, v2

    move v2, v1

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    const-string v0, "focus"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "returnProperPosition index :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    move v3, v1

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public a([F)I
    .locals 6

    const/4 v1, 0x0

    aget v2, p1, v1

    const/4 v0, 0x1

    :goto_0
    array-length v3, p1

    if-lt v0, v3, :cond_0

    const-string v0, "focus"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "returnProperPosition index :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    const-string v3, "focus"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "x :"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v5, p1, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    aget v3, p1, v0

    cmpg-float v3, v3, v2

    if-gez v3, :cond_1

    aget v2, p1, v0

    move v1, v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public a(F)V
    .locals 7

    const/4 v1, 0x1

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->touchable:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-super {p0}, Lcom/iLoong/launcher/UI3DEngine/p;->show()V

    invoke-virtual {p0}, Lcom/iLoong/launcher/HotSeat3D/a;->stopTween()V

    const-string v0, "HotSeat3D"

    const-string v2, "TweenStart showDelay"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Laurelienribon/tweenengine/equations/Cubic;->OUT:Laurelienribon/tweenengine/equations/Cubic;

    const v3, 0x3e99999a

    move-object v0, p0

    move v5, v4

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Lcom/iLoong/launcher/HotSeat3D/a;->startTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Laurelienribon/tweenengine/Tween;->setUserData(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/Tween;

    invoke-virtual {v0, p0}, Laurelienribon/tweenengine/Tween;->setCallback(Laurelienribon/tweenengine/TweenCallback;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/Tween;

    invoke-virtual {v0, p1}, Laurelienribon/tweenengine/Tween;->delay(F)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/Tween;

    iput-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->p:Laurelienribon/tweenengine/Tween;

    goto :goto_0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/iLoong/launcher/HotSeat3D/a;->n:I

    return-void
.end method

.method public a(Lcom/iLoong/launcher/UI3DEngine/View3D;)V
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->v:Lcom/iLoong/launcher/HotSeat3D/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->v:Lcom/iLoong/launcher/HotSeat3D/b;

    invoke-virtual {v0, p1}, Lcom/iLoong/launcher/HotSeat3D/b;->a(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    :cond_0
    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->t:Lcom/iLoong/launcher/HotSeat3D/g;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->t:Lcom/iLoong/launcher/HotSeat3D/g;

    invoke-virtual {v0, p1}, Lcom/iLoong/launcher/HotSeat3D/g;->a(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    :cond_1
    return-void
.end method

.method public a(Lcom/iLoong/launcher/app/ak;)V
    .locals 0

    iput-object p1, p0, Lcom/iLoong/launcher/HotSeat3D/a;->w:Lcom/iLoong/launcher/app/ak;

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/iLoong/launcher/HotSeat3D/a;->A:Ljava/lang/Object;

    return-void
.end method

.method public a()Z
    .locals 5

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->v:Lcom/iLoong/launcher/HotSeat3D/b;

    invoke-virtual {v0, v2}, Lcom/iLoong/launcher/HotSeat3D/b;->getChildAt(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v0

    instance-of v1, v0, Lcom/iLoong/launcher/HotSeat3D/i;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/iLoong/launcher/HotSeat3D/i;

    invoke-virtual {v0}, Lcom/iLoong/launcher/HotSeat3D/i;->getChildCount()I

    move-result v1

    iput v1, p0, Lcom/iLoong/launcher/HotSeat3D/a;->f:I

    iget v1, p0, Lcom/iLoong/launcher/HotSeat3D/a;->e:I

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/HotSeat3D/i;->getChildAt(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v1

    iget v3, v1, Lcom/iLoong/launcher/UI3DEngine/View3D;->x:F

    move v1, v2

    :goto_0
    iget v4, p0, Lcom/iLoong/launcher/HotSeat3D/a;->f:I

    if-lt v1, v4, :cond_1

    const/4 v2, 0x1

    :cond_0
    return v2

    :cond_1
    iget v4, p0, Lcom/iLoong/launcher/HotSeat3D/a;->e:I

    if-eq v1, v4, :cond_2

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/HotSeat3D/i;->getChildAt(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v4

    iget v4, v4, Lcom/iLoong/launcher/UI3DEngine/View3D;->x:F

    cmpl-float v4, v3, v4

    if-gtz v4, :cond_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public a(Ljava/util/ArrayList;FF)Z
    .locals 7

    const/4 v0, 0x0

    const/4 v2, 0x1

    sget-boolean v1, Lcom/iLoong/launcher/Desktop3D/cb;->aK:Z

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->v:Lcom/iLoong/launcher/HotSeat3D/b;

    invoke-virtual {v0, p1}, Lcom/iLoong/launcher/HotSeat3D/b;->a(Ljava/util/ArrayList;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    move v0, v2

    :cond_0
    :goto_0
    return v0

    :cond_1
    iput-boolean v2, p0, Lcom/iLoong/launcher/HotSeat3D/a;->m:Z

    iget v1, p0, Lcom/iLoong/launcher/HotSeat3D/a;->y:F

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-nez v1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/UI3DEngine/View3D;

    instance-of v1, v0, Lcom/iLoong/launcher/Desktop3D/aj;

    if-nez v1, :cond_3

    instance-of v1, v0, Lcom/iLoong/launcher/d/a;

    if-nez v1, :cond_3

    instance-of v1, v0, Lcom/iLoong/launcher/Widget3D/f;

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v2, :cond_2

    move-object v1, v0

    check-cast v1, Lcom/iLoong/launcher/Widget3D/f;

    invoke-virtual {v1}, Lcom/iLoong/launcher/Widget3D/f;->c()Lcom/iLoong/launcher/a/d;

    move-result-object v1

    iget-wide v3, v1, Lcom/iLoong/launcher/a/d;->m:J

    const-wide/16 v5, -0x1

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    move-object v1, v0

    check-cast v1, Lcom/iLoong/launcher/Widget3D/f;

    invoke-virtual {v1}, Lcom/iLoong/launcher/Widget3D/f;->c()Lcom/iLoong/launcher/a/d;

    move-result-object v1

    invoke-static {v1}, Lcom/iLoong/launcher/Desktop3D/e;->b(Lcom/iLoong/launcher/a/j;)V

    check-cast v0, Lcom/iLoong/launcher/Widget3D/f;

    invoke-static {}, Lcom/iLoong/launcher/Widget3D/g;->a()Lcom/iLoong/launcher/Widget3D/g;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/iLoong/launcher/Widget3D/g;->a(Lcom/iLoong/launcher/Widget3D/f;)V

    :goto_1
    const v0, 0x7f0c00a9

    invoke-static {v0}, Lcom/iLoong/launcher/Desktop3D/at;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->sendOurToastMsg(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    move v0, v2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->v:Lcom/iLoong/launcher/HotSeat3D/b;

    invoke-virtual {v0, p1}, Lcom/iLoong/launcher/HotSeat3D/b;->a(Ljava/util/ArrayList;)V

    goto :goto_1

    :cond_3
    iget v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->s:I

    if-nez v0, :cond_4

    invoke-virtual {p0, p1, p2, p3}, Lcom/iLoong/launcher/HotSeat3D/a;->c(Ljava/util/ArrayList;FF)Z

    move-result v0

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->s:I

    if-ne v0, v2, :cond_5

    invoke-virtual {p0, p1, p2, p3}, Lcom/iLoong/launcher/HotSeat3D/a;->d(Ljava/util/ArrayList;FF)Z

    move-result v0

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    move v0, v2

    goto :goto_0
.end method

.method public b(Ljava/util/ArrayList;)I
    .locals 4

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/4 v0, 0x1

    move v3, v2

    move v2, v1

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    const-string v0, "focus"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "returnProperPosition index :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    move v3, v1

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public b(I)Lcom/iLoong/launcher/UI3DEngine/View3D;
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->v:Lcom/iLoong/launcher/HotSeat3D/b;

    invoke-virtual {v0}, Lcom/iLoong/launcher/HotSeat3D/b;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->v:Lcom/iLoong/launcher/HotSeat3D/b;

    invoke-virtual {v0}, Lcom/iLoong/launcher/HotSeat3D/b;->d()Lcom/iLoong/launcher/HotSeat3D/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/iLoong/launcher/HotSeat3D/i;->a(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v0

    goto :goto_0
.end method

.method public b([F)V
    .locals 5

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    array-length v2, p1

    if-lt v0, v2, :cond_0

    return-void

    :cond_0
    move v2, v1

    :goto_1
    array-length v3, p1

    if-lt v2, v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    aget v3, p1, v0

    aget v4, p1, v2

    cmpg-float v3, v3, v4

    if-gez v3, :cond_2

    aget v3, p1, v2

    aget v4, p1, v0

    aput v4, p1, v2

    aput v3, p1, v0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public b()Z
    .locals 5

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->v:Lcom/iLoong/launcher/HotSeat3D/b;

    invoke-virtual {v0, v2}, Lcom/iLoong/launcher/HotSeat3D/b;->getChildAt(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v0

    instance-of v1, v0, Lcom/iLoong/launcher/HotSeat3D/i;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/iLoong/launcher/HotSeat3D/i;

    invoke-virtual {v0}, Lcom/iLoong/launcher/HotSeat3D/i;->getChildCount()I

    move-result v1

    iput v1, p0, Lcom/iLoong/launcher/HotSeat3D/a;->f:I

    iget v1, p0, Lcom/iLoong/launcher/HotSeat3D/a;->e:I

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/HotSeat3D/i;->getChildAt(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v1

    iget v3, v1, Lcom/iLoong/launcher/UI3DEngine/View3D;->x:F

    move v1, v2

    :goto_0
    iget v4, p0, Lcom/iLoong/launcher/HotSeat3D/a;->f:I

    if-lt v1, v4, :cond_1

    const/4 v2, 0x1

    :cond_0
    return v2

    :cond_1
    iget v4, p0, Lcom/iLoong/launcher/HotSeat3D/a;->e:I

    if-eq v1, v4, :cond_2

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/HotSeat3D/i;->getChildAt(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v4

    iget v4, v4, Lcom/iLoong/launcher/UI3DEngine/View3D;->x:F

    cmpg-float v4, v3, v4

    if-ltz v4, :cond_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public b(Ljava/util/ArrayList;FF)Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    sget-boolean v2, Lcom/iLoong/launcher/Desktop3D/cb;->aK:Z

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v2, p0, Lcom/iLoong/launcher/HotSeat3D/a;->s:I

    if-ne v2, v1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/iLoong/launcher/Desktop3D/aj;

    if-nez v2, :cond_2

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/iLoong/launcher/d/a;

    if-eqz v2, :cond_0

    :cond_2
    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->v:Lcom/iLoong/launcher/HotSeat3D/b;

    invoke-virtual {v0, p1, p2, p3}, Lcom/iLoong/launcher/HotSeat3D/b;->a(Ljava/util/ArrayList;FF)V

    move v0, v1

    goto :goto_0
.end method

.method public c()Ljava/util/ArrayList;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/iLoong/launcher/HotSeat3D/a;->r:Lcom/iLoong/launcher/UI3DEngine/View3D;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public c(Ljava/util/ArrayList;)V
    .locals 9

    const/4 v1, 0x0

    const/4 v8, 0x1

    invoke-direct {p0, p1}, Lcom/iLoong/launcher/HotSeat3D/a;->d(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->t:Lcom/iLoong/launcher/HotSeat3D/g;

    invoke-virtual {v0}, Lcom/iLoong/launcher/HotSeat3D/g;->e()Lcom/iLoong/launcher/Desktop3D/c;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/iLoong/launcher/Desktop3D/c;->a(Z)V

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->v:Lcom/iLoong/launcher/HotSeat3D/b;

    invoke-virtual {v0}, Lcom/iLoong/launcher/HotSeat3D/b;->d()Lcom/iLoong/launcher/HotSeat3D/i;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/iLoong/launcher/HotSeat3D/i;->a(Z)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v2, v8}, Lcom/iLoong/launcher/Desktop3D/c;->a(Z)V

    invoke-virtual {v3, v8}, Lcom/iLoong/launcher/HotSeat3D/i;->a(Z)V

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->viewParent:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    const/16 v1, 0xa

    invoke-virtual {v0, p0, v1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->onCtrlEvent(Lcom/iLoong/launcher/UI3DEngine/View3D;I)Z

    iput-boolean v8, p0, Lcom/iLoong/launcher/HotSeat3D/a;->C:Z

    return-void

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/a/j;

    iget v1, v0, Lcom/iLoong/launcher/a/j;->l:I

    if-eq v1, v8, :cond_2

    iget v1, v0, Lcom/iLoong/launcher/a/j;->l:I

    if-nez v1, :cond_5

    :cond_2
    move-object v1, v0

    check-cast v1, Lcom/iLoong/launcher/a/f;

    new-instance v5, Lcom/iLoong/launcher/Desktop3D/aj;

    iget-object v6, v1, Lcom/iLoong/launcher/a/f;->o:Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1}, Lcom/iLoong/launcher/Desktop3D/at;->c(Lcom/iLoong/launcher/a/f;)Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/iLoong/launcher/Desktop3D/aj;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    sget-boolean v6, Lcom/iLoong/launcher/Desktop3D/cb;->aT:Z

    if-eqz v6, :cond_3

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getIconBmpHeight()F

    move-result v6

    invoke-static {v5, v6, v8}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->changeTextureRegion(Lcom/iLoong/launcher/UI3DEngine/View3D;FZ)V

    :cond_3
    invoke-virtual {v5, v1}, Lcom/iLoong/launcher/Desktop3D/aj;->a(Lcom/iLoong/launcher/a/j;)V

    iget v0, v0, Lcom/iLoong/launcher/a/j;->r:I

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->t:Lcom/iLoong/launcher/HotSeat3D/g;

    invoke-virtual {v0, v5}, Lcom/iLoong/launcher/HotSeat3D/g;->b(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->v:Lcom/iLoong/launcher/HotSeat3D/b;

    iget v1, v1, Lcom/iLoong/launcher/a/f;->n:I

    invoke-virtual {v0, v5, v1}, Lcom/iLoong/launcher/HotSeat3D/b;->a(Lcom/iLoong/launcher/UI3DEngine/View3D;I)V

    goto :goto_0

    :cond_5
    iget v1, v0, Lcom/iLoong/launcher/a/j;->l:I

    const/4 v5, 0x7

    if-ne v1, v5, :cond_9

    move-object v1, v0

    check-cast v1, Lcom/iLoong/launcher/a/f;

    invoke-static {v1}, Lcom/iLoong/launcher/Desktop3D/cb;->a(Lcom/iLoong/launcher/a/f;)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v1

    if-eqz v1, :cond_8

    sget-boolean v5, Lcom/iLoong/launcher/Desktop3D/cb;->aT:Z

    if-eqz v5, :cond_6

    sget v5, Lcom/iLoong/launcher/Desktop3D/at;->c:I

    int-to-float v5, v5

    invoke-static {v1, v5, v8}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->changeTextureRegion(Lcom/iLoong/launcher/UI3DEngine/View3D;FZ)V

    :cond_6
    iget v0, v0, Lcom/iLoong/launcher/a/j;->r:I

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->t:Lcom/iLoong/launcher/HotSeat3D/g;

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/HotSeat3D/g;->b(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->v:Lcom/iLoong/launcher/HotSeat3D/b;

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/HotSeat3D/b;->b(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    goto :goto_0

    :cond_8
    const-string v1, "sidebar"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "add virture ICON error! name = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/iLoong/launcher/a/j;->o:Ljava/lang/CharSequence;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_9
    iget v1, v0, Lcom/iLoong/launcher/a/j;->l:I

    const/4 v5, 0x2

    if-ne v1, v5, :cond_0

    check-cast v0, Lcom/iLoong/launcher/a/h;

    iget-object v1, v0, Lcom/iLoong/launcher/a/h;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_b

    new-instance v1, Lcom/iLoong/launcher/d/a;

    invoke-direct {v1, v0}, Lcom/iLoong/launcher/d/a;-><init>(Lcom/iLoong/launcher/a/h;)V

    sget-boolean v5, Lcom/iLoong/launcher/Desktop3D/cb;->aT:Z

    if-eqz v5, :cond_a

    invoke-virtual {v1, v8}, Lcom/iLoong/launcher/d/a;->b(Z)V

    :cond_a
    iget-object v5, p0, Lcom/iLoong/launcher/HotSeat3D/a;->v:Lcom/iLoong/launcher/HotSeat3D/b;

    invoke-virtual {v5, v1}, Lcom/iLoong/launcher/HotSeat3D/b;->b(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    iget-object v5, p0, Lcom/iLoong/launcher/HotSeat3D/a;->w:Lcom/iLoong/launcher/app/ak;

    invoke-virtual {v1, v5, v0}, Lcom/iLoong/launcher/d/a;->a(Lcom/iLoong/launcher/app/ak;Lcom/iLoong/launcher/a/h;)V

    goto/16 :goto_0

    :cond_b
    new-instance v1, Lcom/iLoong/launcher/d/a;

    invoke-direct {v1, v0}, Lcom/iLoong/launcher/d/a;-><init>(Lcom/iLoong/launcher/a/h;)V

    sget-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->aT:Z

    if-eqz v0, :cond_c

    invoke-virtual {v1, v8}, Lcom/iLoong/launcher/d/a;->b(Z)V

    :cond_c
    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->v:Lcom/iLoong/launcher/HotSeat3D/b;

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/HotSeat3D/b;->b(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    goto/16 :goto_0
.end method

.method public c(Ljava/util/ArrayList;FF)Z
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->t:Lcom/iLoong/launcher/HotSeat3D/g;

    invoke-virtual {v0}, Lcom/iLoong/launcher/HotSeat3D/g;->d()I

    move-result v0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0x14

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->t:Lcom/iLoong/launcher/HotSeat3D/g;

    invoke-virtual {v0, p1}, Lcom/iLoong/launcher/HotSeat3D/g;->a(Ljava/util/ArrayList;)V

    const v0, 0x7f0c00a8

    invoke-static {v0}, Lcom/iLoong/launcher/Desktop3D/at;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->sendOurToastMsg(Ljava/lang/String;)V

    const-string v0, "sidebar"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ondrop X:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/iLoong/launcher/HotSeat3D/a;->x:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Y:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    :goto_0
    return v3

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/UI3DEngine/View3D;

    instance-of v0, v0, Lcom/iLoong/launcher/Desktop3D/aj;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->t:Lcom/iLoong/launcher/HotSeat3D/g;

    invoke-virtual {v0, p1}, Lcom/iLoong/launcher/HotSeat3D/g;->a(Ljava/util/ArrayList;)V

    const v0, 0x7f0c00a9

    invoke-static {v0}, Lcom/iLoong/launcher/Desktop3D/at;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->sendOurToastMsg(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getIconBmpHeight()F

    move-result v0

    invoke-static {p1, v0, v3}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->changeTextureRegion(Ljava/util/ArrayList;FZ)V

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->t:Lcom/iLoong/launcher/HotSeat3D/g;

    invoke-virtual {v0, p1}, Lcom/iLoong/launcher/HotSeat3D/g;->a(Ljava/util/List;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method public d(Ljava/util/ArrayList;FF)Z
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->v:Lcom/iLoong/launcher/HotSeat3D/b;

    invoke-virtual {v0, p1}, Lcom/iLoong/launcher/HotSeat3D/b;->b(Ljava/util/ArrayList;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x1

    return v0
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 9

    const/4 v7, 0x0

    sget-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->aw:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/iLoong/launcher/HotSeat3D/a;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v1, p0, Lcom/iLoong/launcher/HotSeat3D/a;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v2, p0, Lcom/iLoong/launcher/HotSeat3D/a;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget-object v3, p0, Lcom/iLoong/launcher/HotSeat3D/a;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v3, p2

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    sget-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->aS:Z

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/iLoong/launcher/HotSeat3D/a;->D:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget v2, p0, Lcom/iLoong/launcher/HotSeat3D/a;->x:F

    iget v3, p0, Lcom/iLoong/launcher/HotSeat3D/a;->y:F

    iget v4, p0, Lcom/iLoong/launcher/HotSeat3D/a;->width:F

    iget v5, p0, Lcom/iLoong/launcher/HotSeat3D/a;->height:F

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    :cond_0
    sget-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->aS:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/iLoong/launcher/HotSeat3D/a;->b:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v1, p0, Lcom/iLoong/launcher/HotSeat3D/a;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v2, p0, Lcom/iLoong/launcher/HotSeat3D/a;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget-object v3, p0, Lcom/iLoong/launcher/HotSeat3D/a;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v3, p2

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    iget-object v1, p0, Lcom/iLoong/launcher/HotSeat3D/a;->D:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget v2, p0, Lcom/iLoong/launcher/HotSeat3D/a;->x:F

    iget v3, p0, Lcom/iLoong/launcher/HotSeat3D/a;->y:F

    iget v4, p0, Lcom/iLoong/launcher/HotSeat3D/a;->width:F

    sget v0, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->mScale:F

    iget-object v5, p0, Lcom/iLoong/launcher/HotSeat3D/a;->D:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v5}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    sget v0, Lcom/iLoong/launcher/Desktop3D/at;->d:I

    int-to-float v0, v0

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getIconBmpHeight()F

    move-result v1

    sub-float v8, v0, v1

    move v6, v7

    :goto_0
    sget v0, Lcom/iLoong/launcher/Desktop3D/at;->bW:I

    if-lt v6, v0, :cond_4

    :cond_1
    invoke-virtual {p0}, Lcom/iLoong/launcher/HotSeat3D/a;->k()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/iLoong/launcher/HotSeat3D/a;->d:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/iLoong/launcher/HotSeat3D/c;->b:Z

    if-nez v0, :cond_2

    sget-object v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->s:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    iget v2, p0, Lcom/iLoong/launcher/HotSeat3D/a;->G:F

    iget v3, p0, Lcom/iLoong/launcher/HotSeat3D/a;->H:F

    sget v1, Lcom/iLoong/launcher/Desktop3D/at;->c:I

    int-to-float v4, v1

    sget v1, Lcom/iLoong/launcher/Desktop3D/at;->d:I

    int-to-float v5, v1

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFF)V

    :cond_2
    invoke-super {p0, p1, p2}, Lcom/iLoong/launcher/UI3DEngine/p;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    sget-boolean v0, Lcom/iLoong/launcher/app/LauncherModel;->g:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->C:Z

    if-eqz v0, :cond_3

    sput-boolean v7, Lcom/iLoong/launcher/app/LauncherModel;->g:Z

    const-string v0, "finish bind sidebar"

    invoke-static {v0}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->showTimeFromStart(Ljava/lang/String;)V

    sget-object v1, Lcom/iLoong/launcher/HotSeat3D/a;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/iLoong/launcher/HotSeat3D/a;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-boolean v0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->o:Z

    if-eqz v0, :cond_3

    invoke-super {p0}, Lcom/iLoong/launcher/UI3DEngine/p;->hide()V

    :cond_3
    return-void

    :cond_4
    invoke-virtual {p0, v6}, Lcom/iLoong/launcher/HotSeat3D/a;->b(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->F:[I

    array-length v0, v0

    if-ge v6, v0, :cond_5

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->E:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sget-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->bj:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->F:[I

    aget v0, v0, v6

    int-to-float v0, v0

    sget v2, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->mScale:F

    mul-float/2addr v2, v0

    iget v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->y:F

    add-float v3, v0, v8

    sget v0, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->mScale:F

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v0

    sget v0, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->mScale:F

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    :cond_5
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public e()V
    .locals 6

    const/4 v1, 0x0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/iLoong/launcher/HotSeat3D/a;->c:Z

    const-string v0, "focus"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setFocusState size:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/iLoong/launcher/HotSeat3D/a;->v:Lcom/iLoong/launcher/HotSeat3D/b;

    invoke-virtual {v3}, Lcom/iLoong/launcher/HotSeat3D/b;->getChildCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "pre x:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->a:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->v:Lcom/iLoong/launcher/HotSeat3D/b;

    invoke-virtual {v0}, Lcom/iLoong/launcher/HotSeat3D/b;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->v:Lcom/iLoong/launcher/HotSeat3D/b;

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/HotSeat3D/b;->getChildAt(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v0

    instance-of v2, v0, Lcom/iLoong/launcher/HotSeat3D/i;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/iLoong/launcher/HotSeat3D/i;

    invoke-virtual {v0}, Lcom/iLoong/launcher/HotSeat3D/i;->getChildCount()I

    move-result v2

    iput v2, p0, Lcom/iLoong/launcher/HotSeat3D/a;->f:I

    iget v2, p0, Lcom/iLoong/launcher/HotSeat3D/a;->f:I

    new-array v2, v2, [F

    const-string v3, "focus"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "here here size :"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/iLoong/launcher/HotSeat3D/a;->f:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  cl x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->a:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget v3, p0, Lcom/iLoong/launcher/HotSeat3D/a;->f:I

    if-lt v1, v3, :cond_1

    const-string v1, "focus"

    const-string v3, "setFocusState"

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v2}, Lcom/iLoong/launcher/HotSeat3D/a;->a([F)I

    move-result v1

    iput v1, p0, Lcom/iLoong/launcher/HotSeat3D/a;->e:I

    iget v1, p0, Lcom/iLoong/launcher/HotSeat3D/a;->e:I

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/HotSeat3D/i;->getChildAt(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v1

    iget v1, v1, Lcom/iLoong/launcher/UI3DEngine/View3D;->x:F

    iput v1, p0, Lcom/iLoong/launcher/HotSeat3D/a;->G:F

    iget v1, p0, Lcom/iLoong/launcher/HotSeat3D/a;->e:I

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/HotSeat3D/i;->getChildAt(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v0

    iget v0, v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->y:F

    iput v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->H:F

    const-string v0, "focus"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "index :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/iLoong/launcher/HotSeat3D/a;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "focusX :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/iLoong/launcher/HotSeat3D/a;->G:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  focusY:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/iLoong/launcher/HotSeat3D/a;->H:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    sget v3, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->a:F

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/HotSeat3D/i;->getChildAt(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v4

    iget v4, v4, Lcom/iLoong/launcher/UI3DEngine/View3D;->x:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public f()V
    .locals 6

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/iLoong/launcher/HotSeat3D/a;->k()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/iLoong/launcher/HotSeat3D/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->v:Lcom/iLoong/launcher/HotSeat3D/b;

    invoke-virtual {v0, v2}, Lcom/iLoong/launcher/HotSeat3D/b;->getChildAt(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/HotSeat3D/i;

    invoke-virtual {v0}, Lcom/iLoong/launcher/HotSeat3D/i;->getChildCount()I

    move-result v1

    iput v1, p0, Lcom/iLoong/launcher/HotSeat3D/a;->f:I

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    :goto_1
    iget v4, p0, Lcom/iLoong/launcher/HotSeat3D/a;->f:I

    if-lt v1, v4, :cond_2

    invoke-virtual {p0, v3}, Lcom/iLoong/launcher/HotSeat3D/a;->a(Ljava/util/ArrayList;)I

    move-result v4

    :goto_2
    iget v1, p0, Lcom/iLoong/launcher/HotSeat3D/a;->f:I

    if-lt v2, v1, :cond_4

    :goto_3
    iget v1, p0, Lcom/iLoong/launcher/HotSeat3D/a;->e:I

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/HotSeat3D/i;->getChildAt(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v1

    iget v1, v1, Lcom/iLoong/launcher/UI3DEngine/View3D;->x:F

    iput v1, p0, Lcom/iLoong/launcher/HotSeat3D/a;->G:F

    iget v1, p0, Lcom/iLoong/launcher/HotSeat3D/a;->e:I

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/HotSeat3D/i;->getChildAt(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v0

    iget v0, v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->y:F

    iput v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->H:F

    goto :goto_0

    :cond_2
    iget v4, p0, Lcom/iLoong/launcher/HotSeat3D/a;->e:I

    if-eq v4, v1, :cond_3

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/HotSeat3D/i;->getChildAt(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v4

    iget v4, v4, Lcom/iLoong/launcher/UI3DEngine/View3D;->x:F

    iget v5, p0, Lcom/iLoong/launcher/HotSeat3D/a;->e:I

    invoke-virtual {v0, v5}, Lcom/iLoong/launcher/HotSeat3D/i;->getChildAt(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v5

    iget v5, v5, Lcom/iLoong/launcher/UI3DEngine/View3D;->x:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_3

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/HotSeat3D/i;->getChildAt(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v4

    iget v4, v4, Lcom/iLoong/launcher/UI3DEngine/View3D;->x:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v0, v2}, Lcom/iLoong/launcher/HotSeat3D/i;->getChildAt(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v1

    iget v5, v1, Lcom/iLoong/launcher/UI3DEngine/View3D;->x:F

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    cmpl-float v1, v5, v1

    if-nez v1, :cond_5

    iput v2, p0, Lcom/iLoong/launcher/HotSeat3D/a;->e:I

    goto :goto_3

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method public g()V
    .locals 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v0, "focus"

    const-string v1, "cellMoveToNext"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/iLoong/launcher/HotSeat3D/a;->k()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/iLoong/launcher/HotSeat3D/a;->b()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->v:Lcom/iLoong/launcher/HotSeat3D/b;

    invoke-virtual {v0, v2}, Lcom/iLoong/launcher/HotSeat3D/b;->getChildAt(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/HotSeat3D/i;

    invoke-virtual {v0}, Lcom/iLoong/launcher/HotSeat3D/i;->getChildCount()I

    move-result v1

    iput v1, p0, Lcom/iLoong/launcher/HotSeat3D/a;->f:I

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    :goto_1
    iget v4, p0, Lcom/iLoong/launcher/HotSeat3D/a;->f:I

    if-lt v1, v4, :cond_1

    invoke-virtual {p0, v3}, Lcom/iLoong/launcher/HotSeat3D/a;->b(Ljava/util/ArrayList;)I

    move-result v4

    :goto_2
    iget v1, p0, Lcom/iLoong/launcher/HotSeat3D/a;->f:I

    if-lt v2, v1, :cond_3

    :goto_3
    iget v1, p0, Lcom/iLoong/launcher/HotSeat3D/a;->e:I

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/HotSeat3D/i;->getChildAt(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v1

    iget v1, v1, Lcom/iLoong/launcher/UI3DEngine/View3D;->x:F

    iput v1, p0, Lcom/iLoong/launcher/HotSeat3D/a;->G:F

    iget v1, p0, Lcom/iLoong/launcher/HotSeat3D/a;->e:I

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/HotSeat3D/i;->getChildAt(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v0

    iget v0, v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->y:F

    iput v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->H:F

    goto :goto_0

    :cond_1
    iget v4, p0, Lcom/iLoong/launcher/HotSeat3D/a;->e:I

    if-eq v4, v1, :cond_2

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/HotSeat3D/i;->getChildAt(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v4

    iget v4, v4, Lcom/iLoong/launcher/UI3DEngine/View3D;->x:F

    iget v5, p0, Lcom/iLoong/launcher/HotSeat3D/a;->e:I

    invoke-virtual {v0, v5}, Lcom/iLoong/launcher/HotSeat3D/i;->getChildAt(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v5

    iget v5, v5, Lcom/iLoong/launcher/UI3DEngine/View3D;->x:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_2

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/HotSeat3D/i;->getChildAt(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v4

    iget v4, v4, Lcom/iLoong/launcher/UI3DEngine/View3D;->x:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v0, v2}, Lcom/iLoong/launcher/HotSeat3D/i;->getChildAt(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v1

    iget v5, v1, Lcom/iLoong/launcher/UI3DEngine/View3D;->x:F

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    cmpl-float v1, v5, v1

    if-nez v1, :cond_4

    iput v2, p0, Lcom/iLoong/launcher/HotSeat3D/a;->e:I

    goto :goto_3

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    sput-boolean v2, Lcom/iLoong/launcher/HotSeat3D/a;->h:Z

    sput-boolean v2, Lcom/iLoong/launcher/HotSeat3D/a;->c:Z

    sput-boolean v3, Lcom/iLoong/launcher/HotSeat3D/c;->b:Z

    sput-boolean v3, Lcom/iLoong/launcher/HotSeat3D/a;->i:Z

    goto/16 :goto_0
.end method

.method public h()V
    .locals 6

    const/4 v2, 0x0

    sget-boolean v0, Lcom/iLoong/launcher/HotSeat3D/a;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->v:Lcom/iLoong/launcher/HotSeat3D/b;

    invoke-virtual {v0, v2}, Lcom/iLoong/launcher/HotSeat3D/b;->getChildAt(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/HotSeat3D/i;

    invoke-virtual {v0}, Lcom/iLoong/launcher/HotSeat3D/i;->getChildCount()I

    move-result v1

    iput v1, p0, Lcom/iLoong/launcher/HotSeat3D/a;->f:I

    iget v1, p0, Lcom/iLoong/launcher/HotSeat3D/a;->f:I

    new-array v3, v1, [F

    move v1, v2

    :goto_0
    iget v4, p0, Lcom/iLoong/launcher/HotSeat3D/a;->f:I

    if-lt v1, v4, :cond_1

    invoke-virtual {p0, v3}, Lcom/iLoong/launcher/HotSeat3D/a;->b([F)V

    move v1, v2

    :goto_1
    iget v4, p0, Lcom/iLoong/launcher/HotSeat3D/a;->f:I

    if-lt v1, v4, :cond_2

    :goto_2
    sput-boolean v2, Lcom/iLoong/launcher/HotSeat3D/a;->c:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/iLoong/launcher/HotSeat3D/a;->i:Z

    sput-boolean v2, Lcom/iLoong/launcher/HotSeat3D/a;->d:Z

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/HotSeat3D/i;->getChildAt(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v4

    iget v4, v4, Lcom/iLoong/launcher/UI3DEngine/View3D;->x:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    aput v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget v4, p0, Lcom/iLoong/launcher/HotSeat3D/a;->e:I

    invoke-virtual {v0, v4}, Lcom/iLoong/launcher/HotSeat3D/i;->getChildAt(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v4

    iget v4, v4, Lcom/iLoong/launcher/UI3DEngine/View3D;->x:F

    aget v5, v3, v1

    cmpl-float v4, v4, v5

    if-nez v4, :cond_3

    sput v1, Lcom/iLoong/launcher/HotSeat3D/a;->j:I

    goto :goto_2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public hide()V
    .locals 8

    const/4 v7, 0x0

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->touchable:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean v7, p0, Lcom/iLoong/launcher/HotSeat3D/a;->touchable:Z

    invoke-virtual {p0}, Lcom/iLoong/launcher/HotSeat3D/a;->stopTween()V

    const-string v0, "HotSeat3D"

    const-string v1, "TweenStart hide"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    sget-object v2, Laurelienribon/tweenengine/equations/Cubic;->OUT:Laurelienribon/tweenengine/equations/Cubic;

    const v3, 0x3e99999a

    iget v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->height:F

    neg-float v0, v0

    const/high16 v5, 0x3fc0

    mul-float/2addr v5, v0

    move-object v0, p0

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Lcom/iLoong/launcher/HotSeat3D/a;->startTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    move-result-object v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Laurelienribon/tweenengine/Tween;->setUserData(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/Tween;

    invoke-virtual {v0, p0}, Laurelienribon/tweenengine/Tween;->setCallback(Laurelienribon/tweenengine/TweenCallback;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/Tween;

    iput-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->p:Laurelienribon/tweenengine/Tween;

    goto :goto_0
.end method

.method public i()V
    .locals 5

    const/4 v2, 0x0

    const-string v0, "focus"

    const-string v1, "cellMoveToLast"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/iLoong/launcher/HotSeat3D/a;->c:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->v:Lcom/iLoong/launcher/HotSeat3D/b;

    invoke-virtual {v0}, Lcom/iLoong/launcher/HotSeat3D/b;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->v:Lcom/iLoong/launcher/HotSeat3D/b;

    invoke-virtual {v0, v2}, Lcom/iLoong/launcher/HotSeat3D/b;->getChildAt(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/HotSeat3D/i;

    invoke-virtual {v0}, Lcom/iLoong/launcher/HotSeat3D/i;->getChildCount()I

    move-result v1

    iput v1, p0, Lcom/iLoong/launcher/HotSeat3D/a;->f:I

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    :goto_1
    iget v4, p0, Lcom/iLoong/launcher/HotSeat3D/a;->f:I

    if-lt v1, v4, :cond_2

    invoke-virtual {p0, v3}, Lcom/iLoong/launcher/HotSeat3D/a;->b(Ljava/util/ArrayList;)I

    move-result v1

    iput v1, p0, Lcom/iLoong/launcher/HotSeat3D/a;->e:I

    iget v1, p0, Lcom/iLoong/launcher/HotSeat3D/a;->e:I

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/HotSeat3D/i;->getChildAt(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v1

    iget v1, v1, Lcom/iLoong/launcher/UI3DEngine/View3D;->x:F

    iput v1, p0, Lcom/iLoong/launcher/HotSeat3D/a;->G:F

    iget v1, p0, Lcom/iLoong/launcher/HotSeat3D/a;->e:I

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/HotSeat3D/i;->getChildAt(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v0

    iget v0, v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->y:F

    iput v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->H:F

    const/4 v0, 0x1

    sput-boolean v0, Lcom/iLoong/launcher/HotSeat3D/a;->c:Z

    sput-boolean v2, Lcom/iLoong/launcher/HotSeat3D/a;->h:Z

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/HotSeat3D/i;->getChildAt(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v4

    iget v4, v4, Lcom/iLoong/launcher/UI3DEngine/View3D;->x:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public j()V
    .locals 5

    const/4 v2, 0x0

    const-string v0, "focus"

    const-string v1, "cellMoveToLast"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/iLoong/launcher/HotSeat3D/a;->c:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->v:Lcom/iLoong/launcher/HotSeat3D/b;

    invoke-virtual {v0}, Lcom/iLoong/launcher/HotSeat3D/b;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->v:Lcom/iLoong/launcher/HotSeat3D/b;

    invoke-virtual {v0, v2}, Lcom/iLoong/launcher/HotSeat3D/b;->getChildAt(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/HotSeat3D/i;

    invoke-virtual {v0}, Lcom/iLoong/launcher/HotSeat3D/i;->getChildCount()I

    move-result v1

    iput v1, p0, Lcom/iLoong/launcher/HotSeat3D/a;->f:I

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    :goto_1
    iget v4, p0, Lcom/iLoong/launcher/HotSeat3D/a;->f:I

    if-lt v1, v4, :cond_2

    invoke-virtual {p0, v3}, Lcom/iLoong/launcher/HotSeat3D/a;->a(Ljava/util/ArrayList;)I

    move-result v1

    iput v1, p0, Lcom/iLoong/launcher/HotSeat3D/a;->e:I

    iget v1, p0, Lcom/iLoong/launcher/HotSeat3D/a;->e:I

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/HotSeat3D/i;->getChildAt(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v1

    iget v1, v1, Lcom/iLoong/launcher/UI3DEngine/View3D;->x:F

    iput v1, p0, Lcom/iLoong/launcher/HotSeat3D/a;->G:F

    iget v1, p0, Lcom/iLoong/launcher/HotSeat3D/a;->e:I

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/HotSeat3D/i;->getChildAt(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v0

    iget v0, v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->y:F

    iput v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->H:F

    const/4 v0, 0x1

    sput-boolean v0, Lcom/iLoong/launcher/HotSeat3D/a;->c:Z

    sput-boolean v2, Lcom/iLoong/launcher/HotSeat3D/a;->h:Z

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/HotSeat3D/i;->getChildAt(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v4

    iget v4, v4, Lcom/iLoong/launcher/UI3DEngine/View3D;->x:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public k()Z
    .locals 1

    sget-boolean v0, Lcom/iLoong/launcher/HotSeat3D/a;->c:Z

    return v0
.end method

.method public keyDown(I)Z
    .locals 2

    const/4 v0, 0x1

    sget-boolean v1, Lcom/iLoong/launcher/Desktop3D/g;->c:Z

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    sget-boolean v1, Lcom/iLoong/launcher/Desktop3D/cb;->bl:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    invoke-super {p0, p1}, Lcom/iLoong/launcher/UI3DEngine/p;->keyDown(I)Z

    move-result v0

    goto :goto_0

    :cond_1
    sget-boolean v1, Lcom/iLoong/launcher/HotSeat3D/a;->h:Z

    if-nez v1, :cond_2

    sput-boolean v0, Lcom/iLoong/launcher/HotSeat3D/a;->h:Z

    invoke-super {p0, p1}, Lcom/iLoong/launcher/UI3DEngine/p;->keyDown(I)Z

    move-result v0

    goto :goto_0

    :cond_2
    const/16 v1, 0x16

    if-ne p1, v1, :cond_4

    invoke-virtual {p0}, Lcom/iLoong/launcher/HotSeat3D/a;->g()V

    :cond_3
    :goto_1
    invoke-super {p0, p1}, Lcom/iLoong/launcher/UI3DEngine/p;->keyDown(I)Z

    move-result v0

    goto :goto_0

    :cond_4
    const/16 v1, 0x15

    if-ne p1, v1, :cond_5

    invoke-virtual {p0}, Lcom/iLoong/launcher/HotSeat3D/a;->f()V

    goto :goto_1

    :cond_5
    const/16 v1, 0x13

    if-ne p1, v1, :cond_6

    invoke-virtual {p0}, Lcom/iLoong/launcher/HotSeat3D/a;->h()V

    goto :goto_1

    :cond_6
    const/16 v1, 0x14

    if-ne p1, v1, :cond_8

    sget v1, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->D:I

    if-ne v1, v0, :cond_7

    sget-boolean v1, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->B:Z

    if-eqz v1, :cond_7

    sget-boolean v1, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->A:Z

    if-nez v1, :cond_7

    invoke-virtual {p0}, Lcom/iLoong/launcher/HotSeat3D/a;->e()V

    goto :goto_1

    :cond_7
    sget v1, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->D:I

    if-ne v1, v0, :cond_3

    sget-boolean v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->A:Z

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/iLoong/launcher/HotSeat3D/a;->i()V

    goto :goto_1

    :cond_8
    const/16 v0, 0x17

    if-ne p1, v0, :cond_3

    sget-boolean v0, Lcom/iLoong/launcher/HotSeat3D/a;->c:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/iLoong/launcher/HotSeat3D/a;->q()V

    goto :goto_1
.end method

.method public l()V
    .locals 7

    const/4 v1, 0x1

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->touchable:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-super {p0}, Lcom/iLoong/launcher/UI3DEngine/p;->show()V

    invoke-virtual {p0}, Lcom/iLoong/launcher/HotSeat3D/a;->stopTween()V

    const-string v0, "HotSeat3D"

    const-string v2, "TweenStart show"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Laurelienribon/tweenengine/equations/Cubic;->OUT:Laurelienribon/tweenengine/equations/Cubic;

    move-object v0, p0

    move v4, v3

    move v5, v3

    move v6, v3

    invoke-virtual/range {v0 .. v6}, Lcom/iLoong/launcher/HotSeat3D/a;->startTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Laurelienribon/tweenengine/Tween;->setUserData(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/Tween;

    invoke-virtual {v0, p0}, Laurelienribon/tweenengine/Tween;->setCallback(Laurelienribon/tweenengine/TweenCallback;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/Tween;

    iput-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->p:Laurelienribon/tweenengine/Tween;

    goto :goto_0
.end method

.method public m()V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->touchable:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, v1, v1}, Lcom/iLoong/launcher/HotSeat3D/a;->setPosition(FF)V

    invoke-super {p0}, Lcom/iLoong/launcher/UI3DEngine/p;->show()V

    invoke-virtual {p0}, Lcom/iLoong/launcher/HotSeat3D/a;->stopTween()V

    goto :goto_0
.end method

.method public n()V
    .locals 8

    const/4 v7, 0x0

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->touchable:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean v7, p0, Lcom/iLoong/launcher/HotSeat3D/a;->touchable:Z

    invoke-virtual {p0}, Lcom/iLoong/launcher/HotSeat3D/a;->stopTween()V

    const-string v0, "HotSeat3D"

    const-string v1, "TweenStart hide"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    sget-object v2, Laurelienribon/tweenengine/equations/Cubic;->OUT:Laurelienribon/tweenengine/equations/Cubic;

    iget v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->height:F

    neg-float v0, v0

    const/high16 v4, 0x3fc0

    mul-float v5, v0, v4

    move-object v0, p0

    move v4, v3

    move v6, v3

    invoke-virtual/range {v0 .. v6}, Lcom/iLoong/launcher/HotSeat3D/a;->startTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    move-result-object v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Laurelienribon/tweenengine/Tween;->setUserData(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/Tween;

    invoke-virtual {v0, p0}, Laurelienribon/tweenengine/Tween;->setCallback(Laurelienribon/tweenengine/TweenCallback;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/Tween;

    iput-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->p:Laurelienribon/tweenengine/Tween;

    goto :goto_0
.end method

.method public o()Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->t:Lcom/iLoong/launcher/HotSeat3D/g;

    return-object v0
.end method

.method public onCtrlEvent(Lcom/iLoong/launcher/UI3DEngine/View3D;I)Z
    .locals 9

    const/4 v8, 0x2

    const/16 v7, -0x2710

    const/high16 v6, 0x4000

    const/4 v5, 0x0

    const/4 v2, 0x1

    instance-of v0, p1, Lcom/iLoong/launcher/Desktop3D/aj;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/iLoong/launcher/Desktop3D/aj;

    const/4 v1, 0x0

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/aj;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/badlogic/gdx/math/Vector2;

    if-eqz v3, :cond_10

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/aj;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/math/Vector2;

    iget v3, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v4, v0, Lcom/iLoong/launcher/Desktop3D/aj;->height:F

    div-float/2addr v4, v6

    add-float/2addr v3, v4

    iput v3, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    move-object v3, v1

    :goto_0
    packed-switch p2, :pswitch_data_0

    :cond_0
    instance-of v0, p1, Lcom/iLoong/launcher/HotSeat3D/g;

    if-eqz v0, :cond_1

    packed-switch p2, :pswitch_data_1

    :cond_1
    instance-of v0, p1, Lcom/iLoong/launcher/HotSeat3D/b;

    if-eqz v0, :cond_2

    packed-switch p2, :pswitch_data_2

    :cond_2
    :pswitch_0
    instance-of v0, p1, Lcom/iLoong/launcher/HotSeat3D/i;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Lcom/iLoong/launcher/HotSeat3D/i;

    sparse-switch p2, :sswitch_data_0

    :cond_3
    instance-of v0, p1, Lcom/iLoong/launcher/Desktop3D/c;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/iLoong/launcher/Desktop3D/c;

    packed-switch p2, :pswitch_data_3

    :cond_4
    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->viewParent:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    invoke-virtual {v0, p1, p2}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->onCtrlEvent(Lcom/iLoong/launcher/UI3DEngine/View3D;I)Z

    move-result v0

    :goto_1
    return v0

    :pswitch_1
    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/aj;->getParent()Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    move-result-object v1

    instance-of v1, v1, Lcom/iLoong/launcher/Widget3D/o;

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/aj;->getParent()Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    move-result-object v1

    check-cast v1, Lcom/iLoong/launcher/Widget3D/o;

    invoke-virtual {v1}, Lcom/iLoong/launcher/Widget3D/o;->c()Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v1

    iput-object v1, p0, Lcom/iLoong/launcher/HotSeat3D/a;->r:Lcom/iLoong/launcher/UI3DEngine/View3D;

    iget-object v1, p0, Lcom/iLoong/launcher/HotSeat3D/a;->point:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/Desktop3D/aj;->toAbsoluteCoords(Lcom/badlogic/gdx/math/Vector2;)V

    iget-object v1, p0, Lcom/iLoong/launcher/HotSeat3D/a;->r:Lcom/iLoong/launcher/UI3DEngine/View3D;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/iLoong/launcher/HotSeat3D/a;->r:Lcom/iLoong/launcher/UI3DEngine/View3D;

    iget-object v2, p0, Lcom/iLoong/launcher/HotSeat3D/a;->point:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v4, p0, Lcom/iLoong/launcher/HotSeat3D/a;->point:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v1, v2, v4}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setPosition(FF)V

    :goto_2
    iget v1, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v0, v0, Lcom/iLoong/launcher/Desktop3D/aj;->width:F

    div-float/2addr v0, v6

    iget-object v2, p0, Lcom/iLoong/launcher/HotSeat3D/a;->r:Lcom/iLoong/launcher/UI3DEngine/View3D;

    iget v2, v2, Lcom/iLoong/launcher/UI3DEngine/View3D;->width:F

    div-float/2addr v2, v6

    sub-float/2addr v0, v2

    add-float/2addr v0, v1

    iput v0, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-virtual {p0, v3}, Lcom/iLoong/launcher/HotSeat3D/a;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->t:Lcom/iLoong/launcher/HotSeat3D/g;

    invoke-virtual {v0}, Lcom/iLoong/launcher/HotSeat3D/g;->releaseFocus()V

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->viewParent:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    invoke-virtual {v0, p0, v7}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->onCtrlEvent(Lcom/iLoong/launcher/UI3DEngine/View3D;I)Z

    move-result v0

    goto :goto_1

    :cond_5
    move v0, v2

    goto :goto_1

    :cond_6
    iput-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->r:Lcom/iLoong/launcher/UI3DEngine/View3D;

    goto :goto_2

    :pswitch_2
    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->t:Lcom/iLoong/launcher/HotSeat3D/g;

    invoke-virtual {v0}, Lcom/iLoong/launcher/HotSeat3D/g;->b()Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v0

    sget v1, Lcom/iLoong/launcher/Desktop3D/at;->d:I

    int-to-float v1, v1

    invoke-static {v0, v1, v2}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->changeTextureRegion(Lcom/iLoong/launcher/UI3DEngine/View3D;FZ)V

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/HotSeat3D/a;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->viewParent:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    invoke-virtual {v0, p0, v8}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->onCtrlEvent(Lcom/iLoong/launcher/UI3DEngine/View3D;I)Z

    move-result v0

    goto :goto_1

    :pswitch_3
    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->viewParent:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    invoke-virtual {v0, p0, p2}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->onCtrlEvent(Lcom/iLoong/launcher/UI3DEngine/View3D;I)Z

    move-result v0

    goto :goto_1

    :pswitch_4
    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->t:Lcom/iLoong/launcher/HotSeat3D/g;

    invoke-virtual {v0}, Lcom/iLoong/launcher/HotSeat3D/g;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_7

    iget v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->n:I

    if-ne v8, v0, :cond_7

    iput v2, p0, Lcom/iLoong/launcher/HotSeat3D/a;->s:I

    invoke-virtual {p0}, Lcom/iLoong/launcher/HotSeat3D/a;->u()V

    :cond_7
    move v0, v2

    goto/16 :goto_1

    :pswitch_5
    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->v:Lcom/iLoong/launcher/HotSeat3D/b;

    invoke-virtual {v0}, Lcom/iLoong/launcher/HotSeat3D/b;->b()Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v1

    sget-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->aT:Z

    if-eqz v0, :cond_8

    instance-of v0, v1, Lcom/iLoong/launcher/d/a;

    if-eqz v0, :cond_9

    move-object v0, v1

    check-cast v0, Lcom/iLoong/launcher/d/a;

    invoke-virtual {v0, v5}, Lcom/iLoong/launcher/d/a;->b(Z)V

    :cond_8
    :goto_3
    invoke-virtual {p0, v1}, Lcom/iLoong/launcher/HotSeat3D/a;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->viewParent:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    invoke-virtual {v0, p0, v8}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->onCtrlEvent(Lcom/iLoong/launcher/UI3DEngine/View3D;I)Z

    move-result v0

    goto/16 :goto_1

    :cond_9
    sget v0, Lcom/iLoong/launcher/Desktop3D/at;->d:I

    int-to-float v0, v0

    invoke-static {v1, v0, v2}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->changeTextureRegion(Lcom/iLoong/launcher/UI3DEngine/View3D;FZ)V

    goto :goto_3

    :pswitch_6
    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->viewParent:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    invoke-virtual {v0, p0, p2}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->onCtrlEvent(Lcom/iLoong/launcher/UI3DEngine/View3D;I)Z

    move-result v0

    goto/16 :goto_1

    :pswitch_7
    iget v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->n:I

    if-ne v2, v0, :cond_a

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->v:Lcom/iLoong/launcher/HotSeat3D/b;

    invoke-virtual {v0}, Lcom/iLoong/launcher/HotSeat3D/b;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v2, p0, Lcom/iLoong/launcher/HotSeat3D/a;->s:I

    invoke-direct {p0, v0}, Lcom/iLoong/launcher/HotSeat3D/a;->b(F)V

    :cond_a
    move v0, v2

    goto/16 :goto_1

    :pswitch_8
    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->v:Lcom/iLoong/launcher/HotSeat3D/b;

    invoke-virtual {v0}, Lcom/iLoong/launcher/HotSeat3D/b;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_b

    iget v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->n:I

    if-ne v2, v0, :cond_b

    iget-boolean v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->q:Z

    if-nez v0, :cond_b

    iput v5, p0, Lcom/iLoong/launcher/HotSeat3D/a;->s:I

    invoke-virtual {p0}, Lcom/iLoong/launcher/HotSeat3D/a;->u()V

    :cond_b
    move v0, v2

    goto/16 :goto_1

    :pswitch_9
    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->viewParent:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    invoke-virtual {v0, p0, p2}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->onCtrlEvent(Lcom/iLoong/launcher/UI3DEngine/View3D;I)Z

    move v0, v2

    goto/16 :goto_1

    :pswitch_a
    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->v:Lcom/iLoong/launcher/HotSeat3D/b;

    invoke-virtual {v0}, Lcom/iLoong/launcher/HotSeat3D/b;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/HotSeat3D/a;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->viewParent:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    invoke-virtual {v0, p0, p2}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->onCtrlEvent(Lcom/iLoong/launcher/UI3DEngine/View3D;I)Z

    move v0, v2

    goto/16 :goto_1

    :sswitch_0
    invoke-direct {p0}, Lcom/iLoong/launcher/HotSeat3D/a;->y()V

    move v0, v2

    goto/16 :goto_1

    :sswitch_1
    invoke-direct {p0}, Lcom/iLoong/launcher/HotSeat3D/a;->x()V

    move v0, v2

    goto/16 :goto_1

    :sswitch_2
    invoke-virtual {v0}, Lcom/iLoong/launcher/HotSeat3D/i;->b()Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v1

    invoke-virtual {v0}, Lcom/iLoong/launcher/HotSeat3D/i;->releaseFocus()V

    iput-boolean v5, p0, Lcom/iLoong/launcher/HotSeat3D/a;->B:Z

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->point:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v1, v0}, Lcom/iLoong/launcher/UI3DEngine/View3D;->toAbsoluteCoords(Lcom/badlogic/gdx/math/Vector2;)V

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    iget-object v3, p0, Lcom/iLoong/launcher/HotSeat3D/a;->point:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v4, p0, Lcom/iLoong/launcher/HotSeat3D/a;->point:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-direct {v0, v3, v4}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/HotSeat3D/a;->setTag(Ljava/lang/Object;)V

    instance-of v0, v1, Lcom/iLoong/launcher/d/a;

    if-eqz v0, :cond_e

    sget-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->aT:Z

    if-eqz v0, :cond_c

    move-object v0, v1

    check-cast v0, Lcom/iLoong/launcher/d/a;

    invoke-virtual {v0, v5}, Lcom/iLoong/launcher/d/a;->b(Z)V

    :cond_c
    move-object v0, v1

    check-cast v0, Lcom/iLoong/launcher/d/a;

    invoke-virtual {v0, v2}, Lcom/iLoong/launcher/d/a;->c(Z)V

    :cond_d
    :goto_4
    iput-object v1, p0, Lcom/iLoong/launcher/HotSeat3D/a;->r:Lcom/iLoong/launcher/UI3DEngine/View3D;

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->r:Lcom/iLoong/launcher/UI3DEngine/View3D;

    iget v2, v1, Lcom/iLoong/launcher/UI3DEngine/View3D;->x:F

    iput v2, v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->x:F

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->r:Lcom/iLoong/launcher/UI3DEngine/View3D;

    iget v1, v1, Lcom/iLoong/launcher/UI3DEngine/View3D;->y:F

    iput v1, v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->y:F

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->viewParent:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    invoke-virtual {v0, p0, v7}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->onCtrlEvent(Lcom/iLoong/launcher/UI3DEngine/View3D;I)Z

    move-result v0

    goto/16 :goto_1

    :cond_e
    sget-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->aT:Z

    if-eqz v0, :cond_d

    sget v0, Lcom/iLoong/launcher/Desktop3D/at;->d:I

    int-to-float v0, v0

    invoke-static {v1, v0, v2}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->changeTextureRegion(Lcom/iLoong/launcher/UI3DEngine/View3D;FZ)V

    goto :goto_4

    :pswitch_b
    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/c;->f()Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v1

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/c;->releaseFocus()V

    iput-boolean v2, p0, Lcom/iLoong/launcher/HotSeat3D/a;->B:Z

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->point:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v1, v0}, Lcom/iLoong/launcher/UI3DEngine/View3D;->toAbsoluteCoords(Lcom/badlogic/gdx/math/Vector2;)V

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    iget-object v3, p0, Lcom/iLoong/launcher/HotSeat3D/a;->point:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v4, p0, Lcom/iLoong/launcher/HotSeat3D/a;->point:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-direct {v0, v3, v4}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/HotSeat3D/a;->setTag(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/iLoong/launcher/HotSeat3D/a;->r:Lcom/iLoong/launcher/UI3DEngine/View3D;

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->r:Lcom/iLoong/launcher/UI3DEngine/View3D;

    iget v3, v1, Lcom/iLoong/launcher/UI3DEngine/View3D;->x:F

    iput v3, v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->x:F

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->r:Lcom/iLoong/launcher/UI3DEngine/View3D;

    iget v3, v1, Lcom/iLoong/launcher/UI3DEngine/View3D;->y:F

    iput v3, v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->y:F

    sget-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->aT:Z

    if-eqz v0, :cond_f

    sget v0, Lcom/iLoong/launcher/Desktop3D/at;->d:I

    int-to-float v0, v0

    invoke-static {v1, v0, v2}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->changeTextureRegion(Lcom/iLoong/launcher/UI3DEngine/View3D;FZ)V

    :cond_f
    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->viewParent:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    invoke-virtual {v0, p0, v7}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->onCtrlEvent(Lcom/iLoong/launcher/UI3DEngine/View3D;I)Z

    move-result v0

    goto/16 :goto_1

    :cond_10
    move-object v3, v1

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_7
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_2
        0x8 -> :sswitch_0
        0x9 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_3
    .packed-switch 0x3
        :pswitch_b
    .end packed-switch
.end method

.method public onEvent(ILaurelienribon/tweenengine/BaseTween;)V
    .locals 5

    const/4 v4, 0x0

    const/16 v1, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-ne p1, v1, :cond_3

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->o:Laurelienribon/tweenengine/Timeline;

    if-ne p2, v0, :cond_3

    invoke-virtual {p2}, Laurelienribon/tweenengine/BaseTween;->getUserData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput-object v4, p0, Lcom/iLoong/launcher/HotSeat3D/a;->o:Laurelienribon/tweenengine/Timeline;

    if-nez v0, :cond_1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/HotSeat3D/a;->a(I)V

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->v:Lcom/iLoong/launcher/HotSeat3D/b;

    invoke-virtual {v0}, Lcom/iLoong/launcher/HotSeat3D/b;->hide()V

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->t:Lcom/iLoong/launcher/HotSeat3D/g;

    invoke-virtual {v0}, Lcom/iLoong/launcher/HotSeat3D/g;->bringToFront()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-ne v0, v3, :cond_2

    invoke-virtual {p0, v3}, Lcom/iLoong/launcher/HotSeat3D/a;->a(I)V

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->t:Lcom/iLoong/launcher/HotSeat3D/g;

    invoke-virtual {v0}, Lcom/iLoong/launcher/HotSeat3D/g;->hide()V

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->t:Lcom/iLoong/launcher/HotSeat3D/g;

    invoke-virtual {v0}, Lcom/iLoong/launcher/HotSeat3D/g;->a()V

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->v:Lcom/iLoong/launcher/HotSeat3D/b;

    invoke-virtual {v0}, Lcom/iLoong/launcher/HotSeat3D/b;->bringToFront()V

    goto :goto_0

    :cond_2
    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, v3}, Lcom/iLoong/launcher/HotSeat3D/a;->a(I)V

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->t:Lcom/iLoong/launcher/HotSeat3D/g;

    invoke-virtual {v0}, Lcom/iLoong/launcher/HotSeat3D/g;->hide()V

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->v:Lcom/iLoong/launcher/HotSeat3D/b;

    invoke-virtual {v0}, Lcom/iLoong/launcher/HotSeat3D/b;->bringToFront()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->q:Z

    goto :goto_0

    :cond_3
    if-ne p1, v1, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->p:Laurelienribon/tweenengine/Tween;

    if-ne p2, v0, :cond_0

    invoke-virtual {p2}, Laurelienribon/tweenengine/BaseTween;->getUserData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "HotSeat3D"

    const-string v1, "TweenComplete hide"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->v:Lcom/iLoong/launcher/HotSeat3D/b;

    invoke-virtual {v0}, Lcom/iLoong/launcher/HotSeat3D/b;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->v:Lcom/iLoong/launcher/HotSeat3D/b;

    invoke-virtual {v0, v2}, Lcom/iLoong/launcher/HotSeat3D/b;->setRotation(F)V

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->v:Lcom/iLoong/launcher/HotSeat3D/b;

    invoke-virtual {v0, v2, v2}, Lcom/iLoong/launcher/HotSeat3D/b;->setPosition(FF)V

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->v:Lcom/iLoong/launcher/HotSeat3D/b;

    invoke-virtual {v0, v2}, Lcom/iLoong/launcher/HotSeat3D/b;->setZ(F)V

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->u:Lcom/iLoong/launcher/HotSeat3D/d;

    invoke-virtual {v0, v2}, Lcom/iLoong/launcher/HotSeat3D/d;->setRotation(F)V

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->u:Lcom/iLoong/launcher/HotSeat3D/d;

    invoke-virtual {v0, v2, v2}, Lcom/iLoong/launcher/HotSeat3D/d;->setPosition(FF)V

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->u:Lcom/iLoong/launcher/HotSeat3D/d;

    invoke-virtual {v0, v2}, Lcom/iLoong/launcher/HotSeat3D/d;->setZ(F)V

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->v:Lcom/iLoong/launcher/HotSeat3D/b;

    invoke-virtual {v0}, Lcom/iLoong/launcher/HotSeat3D/b;->a()V

    :cond_4
    iget-boolean v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->touchable:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/iLoong/launcher/UI3DEngine/p;->hide()V

    goto :goto_0

    :cond_5
    if-ne v0, v3, :cond_0

    const-string v0, "HotSeat3D"

    const-string v1, "TweenComplete show"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/iLoong/launcher/HotSeat3D/a;->v()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    instance-of v1, v0, Lcom/iLoong/launcher/d/a;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/iLoong/launcher/HotSeat3D/a;->v:Lcom/iLoong/launcher/HotSeat3D/b;

    check-cast v0, Lcom/iLoong/launcher/d/a;

    invoke-virtual {v1, v0}, Lcom/iLoong/launcher/HotSeat3D/b;->a(Lcom/iLoong/launcher/d/a;)V

    :cond_6
    invoke-virtual {p0, v4}, Lcom/iLoong/launcher/HotSeat3D/a;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->viewParent:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    const/16 v1, 0xb

    invoke-virtual {v0, p0, v1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->onCtrlEvent(Lcom/iLoong/launcher/UI3DEngine/View3D;I)Z

    goto/16 :goto_0
.end method

.method public onLongClick(FF)Z
    .locals 2

    const/4 v0, 0x1

    sget-boolean v1, Lcom/iLoong/launcher/Desktop3D/g;->c:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-boolean v1, Lcom/iLoong/launcher/Desktop3D/cb;->aK:Z

    if-nez v1, :cond_0

    invoke-super {p0, p1, p2}, Lcom/iLoong/launcher/UI3DEngine/p;->onLongClick(FF)Z

    move-result v0

    goto :goto_0
.end method

.method public onTouchDown(FFI)Z
    .locals 4

    const/4 v0, 0x1

    sget-boolean v1, Lcom/iLoong/launcher/Desktop3D/g;->c:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/iLoong/launcher/HotSeat3D/a;->d()V

    iget-object v1, p0, Lcom/iLoong/launcher/HotSeat3D/a;->viewParent:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    const/16 v2, 0xe

    invoke-virtual {v1, p0, v2}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->onCtrlEvent(Lcom/iLoong/launcher/UI3DEngine/View3D;I)Z

    if-ne p3, v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/iLoong/launcher/HotSeat3D/a;->v:Lcom/iLoong/launcher/HotSeat3D/b;

    invoke-virtual {v1}, Lcom/iLoong/launcher/HotSeat3D/b;->d()Lcom/iLoong/launcher/HotSeat3D/i;

    move-result-object v1

    float-to-int v2, p1

    float-to-int v3, p2

    invoke-virtual {v1, v2, v3}, Lcom/iLoong/launcher/HotSeat3D/i;->a(II)I

    move-result v1

    if-ltz v1, :cond_3

    sget v2, Lcom/iLoong/launcher/Desktop3D/at;->bW:I

    if-lt v1, v2, :cond_4

    :cond_3
    invoke-super {p0, p1, p2, p3}, Lcom/iLoong/launcher/UI3DEngine/p;->onTouchDown(FFI)Z

    move-result v0

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/iLoong/launcher/HotSeat3D/a;->v:Lcom/iLoong/launcher/HotSeat3D/b;

    invoke-virtual {v2}, Lcom/iLoong/launcher/HotSeat3D/b;->d()Lcom/iLoong/launcher/HotSeat3D/i;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/iLoong/launcher/HotSeat3D/i;->a(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-super {p0, p1, p2, p3}, Lcom/iLoong/launcher/UI3DEngine/p;->onTouchDown(FFI)Z

    move-result v0

    goto :goto_0
.end method

.method public p()Lcom/iLoong/launcher/HotSeat3D/b;
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->v:Lcom/iLoong/launcher/HotSeat3D/b;

    return-object v0
.end method

.method public pointerInAbs(FF)Z
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->point:Lcom/badlogic/gdx/math/Vector2;

    iput p1, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->point:Lcom/badlogic/gdx/math/Vector2;

    iput p2, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->point:Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->point:Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, p0, Lcom/iLoong/launcher/HotSeat3D/a;->width:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->point:Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->point:Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v1, p0, Lcom/iLoong/launcher/HotSeat3D/a;->height:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public q()V
    .locals 5

    const/high16 v4, 0x4000

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->v:Lcom/iLoong/launcher/HotSeat3D/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/HotSeat3D/b;->getChildAt(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/HotSeat3D/i;

    iget v1, p0, Lcom/iLoong/launcher/HotSeat3D/a;->e:I

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/HotSeat3D/i;->getChildAt(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v1

    iget v2, p0, Lcom/iLoong/launcher/HotSeat3D/a;->e:I

    invoke-virtual {v0, v2}, Lcom/iLoong/launcher/HotSeat3D/i;->getChildAt(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v2

    iget v2, v2, Lcom/iLoong/launcher/UI3DEngine/View3D;->width:F

    div-float/2addr v2, v4

    iget v3, p0, Lcom/iLoong/launcher/HotSeat3D/a;->e:I

    invoke-virtual {v0, v3}, Lcom/iLoong/launcher/HotSeat3D/i;->getChildAt(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v0

    iget v0, v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->height:F

    div-float/2addr v0, v4

    invoke-virtual {v1, v2, v0}, Lcom/iLoong/launcher/UI3DEngine/View3D;->onClick(FF)Z

    return-void
.end method

.method public r()V
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->v:Lcom/iLoong/launcher/HotSeat3D/b;

    invoke-virtual {v0}, Lcom/iLoong/launcher/HotSeat3D/b;->c()V

    return-void
.end method

.method public s()V
    .locals 1

    iget-boolean v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->B:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->t:Lcom/iLoong/launcher/HotSeat3D/g;

    invoke-virtual {v0}, Lcom/iLoong/launcher/HotSeat3D/g;->c()V

    :cond_0
    return-void
.end method

.method public show()V
    .locals 7

    const/4 v1, 0x1

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->touchable:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-super {p0}, Lcom/iLoong/launcher/UI3DEngine/p;->show()V

    invoke-virtual {p0}, Lcom/iLoong/launcher/HotSeat3D/a;->stopTween()V

    const-string v0, "HotSeat3D"

    const-string v2, "TweenStart show"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Laurelienribon/tweenengine/equations/Cubic;->OUT:Laurelienribon/tweenengine/equations/Cubic;

    const v3, 0x3e99999a

    move-object v0, p0

    move v5, v4

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Lcom/iLoong/launcher/HotSeat3D/a;->startTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Laurelienribon/tweenengine/Tween;->setUserData(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/Tween;

    invoke-virtual {v0, p0}, Laurelienribon/tweenengine/Tween;->setCallback(Laurelienribon/tweenengine/TweenCallback;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/Tween;

    iput-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->p:Laurelienribon/tweenengine/Tween;

    goto :goto_0
.end method

.method public t()I
    .locals 1

    iget v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->n:I

    return v0
.end method

.method public u()V
    .locals 9

    const/high16 v8, 0x3f80

    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v0, 0x3

    iget v1, p0, Lcom/iLoong/launcher/HotSeat3D/a;->n:I

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->o:Laurelienribon/tweenengine/Timeline;

    if-nez v0, :cond_0

    invoke-static {}, Laurelienribon/tweenengine/Timeline;->createParallel()Laurelienribon/tweenengine/Timeline;

    move-result-object v0

    iput-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->o:Laurelienribon/tweenengine/Timeline;

    invoke-virtual {p0}, Lcom/iLoong/launcher/HotSeat3D/a;->t()I

    move-result v0

    if-ne v5, v0, :cond_2

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->t:Lcom/iLoong/launcher/HotSeat3D/g;

    invoke-virtual {v0}, Lcom/iLoong/launcher/HotSeat3D/g;->show()V

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->t:Lcom/iLoong/launcher/HotSeat3D/g;

    invoke-virtual {v0}, Lcom/iLoong/launcher/HotSeat3D/g;->bringToFront()V

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->o:Laurelienribon/tweenengine/Timeline;

    iget-object v1, p0, Lcom/iLoong/launcher/HotSeat3D/a;->u:Lcom/iLoong/launcher/HotSeat3D/d;

    invoke-static {v1, v6, v8}, Laurelienribon/tweenengine/Tween;->to(Ljava/lang/Object;IF)Laurelienribon/tweenengine/Tween;

    move-result-object v1

    sget v2, Lcom/iLoong/launcher/Desktop3D/at;->bM:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v2, v4, v4}, Laurelienribon/tweenengine/Tween;->target(FFF)Laurelienribon/tweenengine/Tween;

    move-result-object v1

    sget-object v2, Laurelienribon/tweenengine/equations/Bounce;->OUT:Laurelienribon/tweenengine/equations/Bounce;

    invoke-virtual {v1, v2}, Laurelienribon/tweenengine/Tween;->ease(Laurelienribon/tweenengine/TweenEquation;)Laurelienribon/tweenengine/Tween;

    move-result-object v1

    invoke-virtual {v0, v1}, Laurelienribon/tweenengine/Timeline;->push(Laurelienribon/tweenengine/Tween;)Laurelienribon/tweenengine/Timeline;

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->o:Laurelienribon/tweenengine/Timeline;

    iget-object v1, p0, Lcom/iLoong/launcher/HotSeat3D/a;->u:Lcom/iLoong/launcher/HotSeat3D/d;

    invoke-static {v1, v5, v8}, Laurelienribon/tweenengine/Tween;->to(Ljava/lang/Object;IF)Laurelienribon/tweenengine/Tween;

    move-result-object v1

    sget v2, Lcom/iLoong/launcher/Desktop3D/at;->bN:I

    neg-int v2, v2

    int-to-float v2, v2

    sget v3, Lcom/iLoong/launcher/Desktop3D/at;->bO:I

    int-to-float v3, v3

    invoke-virtual {v1, v4, v2, v3}, Laurelienribon/tweenengine/Tween;->target(FFF)Laurelienribon/tweenengine/Tween;

    move-result-object v1

    sget-object v2, Laurelienribon/tweenengine/equations/Bounce;->OUT:Laurelienribon/tweenengine/equations/Bounce;

    invoke-virtual {v1, v2}, Laurelienribon/tweenengine/Tween;->ease(Laurelienribon/tweenengine/TweenEquation;)Laurelienribon/tweenengine/Tween;

    move-result-object v1

    invoke-virtual {v0, v1}, Laurelienribon/tweenengine/Timeline;->push(Laurelienribon/tweenengine/Tween;)Laurelienribon/tweenengine/Timeline;

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->o:Laurelienribon/tweenengine/Timeline;

    iget-object v1, p0, Lcom/iLoong/launcher/HotSeat3D/a;->t:Lcom/iLoong/launcher/HotSeat3D/g;

    invoke-static {v1, v6, v8}, Laurelienribon/tweenengine/Tween;->to(Ljava/lang/Object;IF)Laurelienribon/tweenengine/Tween;

    move-result-object v1

    invoke-virtual {v1, v4, v4, v4}, Laurelienribon/tweenengine/Tween;->target(FFF)Laurelienribon/tweenengine/Tween;

    move-result-object v1

    sget-object v2, Laurelienribon/tweenengine/equations/Bounce;->OUT:Laurelienribon/tweenengine/equations/Bounce;

    invoke-virtual {v1, v2}, Laurelienribon/tweenengine/Tween;->ease(Laurelienribon/tweenengine/TweenEquation;)Laurelienribon/tweenengine/Tween;

    move-result-object v1

    invoke-virtual {v0, v1}, Laurelienribon/tweenengine/Timeline;->push(Laurelienribon/tweenengine/Tween;)Laurelienribon/tweenengine/Timeline;

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->o:Laurelienribon/tweenengine/Timeline;

    iget-object v1, p0, Lcom/iLoong/launcher/HotSeat3D/a;->t:Lcom/iLoong/launcher/HotSeat3D/g;

    invoke-static {v1, v7, v8}, Laurelienribon/tweenengine/Tween;->to(Ljava/lang/Object;IF)Laurelienribon/tweenengine/Tween;

    move-result-object v1

    invoke-virtual {v1, v8, v4, v4}, Laurelienribon/tweenengine/Tween;->target(FFF)Laurelienribon/tweenengine/Tween;

    move-result-object v1

    sget-object v2, Laurelienribon/tweenengine/equations/Bounce;->OUT:Laurelienribon/tweenengine/equations/Bounce;

    invoke-virtual {v1, v2}, Laurelienribon/tweenengine/Tween;->ease(Laurelienribon/tweenengine/TweenEquation;)Laurelienribon/tweenengine/Tween;

    move-result-object v1

    invoke-virtual {v0, v1}, Laurelienribon/tweenengine/Timeline;->push(Laurelienribon/tweenengine/Tween;)Laurelienribon/tweenengine/Timeline;

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->o:Laurelienribon/tweenengine/Timeline;

    iget-object v1, p0, Lcom/iLoong/launcher/HotSeat3D/a;->v:Lcom/iLoong/launcher/HotSeat3D/b;

    invoke-static {v1, v5, v8}, Laurelienribon/tweenengine/Tween;->to(Ljava/lang/Object;IF)Laurelienribon/tweenengine/Tween;

    move-result-object v1

    sget v2, Lcom/iLoong/launcher/Desktop3D/at;->bS:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v4, v2, v4}, Laurelienribon/tweenengine/Tween;->target(FFF)Laurelienribon/tweenengine/Tween;

    move-result-object v1

    sget-object v2, Laurelienribon/tweenengine/equations/Bounce;->OUT:Laurelienribon/tweenengine/equations/Bounce;

    invoke-virtual {v1, v2}, Laurelienribon/tweenengine/Tween;->ease(Laurelienribon/tweenengine/TweenEquation;)Laurelienribon/tweenengine/Tween;

    move-result-object v1

    invoke-virtual {v0, v1}, Laurelienribon/tweenengine/Timeline;->push(Laurelienribon/tweenengine/Tween;)Laurelienribon/tweenengine/Timeline;

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->o:Laurelienribon/tweenengine/Timeline;

    iget-object v1, p0, Lcom/iLoong/launcher/HotSeat3D/a;->v:Lcom/iLoong/launcher/HotSeat3D/b;

    invoke-static {v1, v7, v8}, Laurelienribon/tweenengine/Tween;->to(Ljava/lang/Object;IF)Laurelienribon/tweenengine/Tween;

    move-result-object v1

    invoke-virtual {v1, v4, v4, v4}, Laurelienribon/tweenengine/Tween;->target(FFF)Laurelienribon/tweenengine/Tween;

    move-result-object v1

    sget-object v2, Laurelienribon/tweenengine/equations/Bounce;->OUT:Laurelienribon/tweenengine/equations/Bounce;

    invoke-virtual {v1, v2}, Laurelienribon/tweenengine/Tween;->ease(Laurelienribon/tweenengine/TweenEquation;)Laurelienribon/tweenengine/Tween;

    move-result-object v1

    invoke-virtual {v0, v1}, Laurelienribon/tweenengine/Timeline;->push(Laurelienribon/tweenengine/Tween;)Laurelienribon/tweenengine/Timeline;

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->o:Laurelienribon/tweenengine/Timeline;

    iget-object v1, p0, Lcom/iLoong/launcher/HotSeat3D/a;->v:Lcom/iLoong/launcher/HotSeat3D/b;

    invoke-static {v1, v6, v8}, Laurelienribon/tweenengine/Tween;->to(Ljava/lang/Object;IF)Laurelienribon/tweenengine/Tween;

    move-result-object v1

    sget v2, Lcom/iLoong/launcher/Desktop3D/at;->bM:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v2, v4, v4}, Laurelienribon/tweenengine/Tween;->target(FFF)Laurelienribon/tweenengine/Tween;

    move-result-object v1

    sget-object v2, Laurelienribon/tweenengine/equations/Bounce;->OUT:Laurelienribon/tweenengine/equations/Bounce;

    invoke-virtual {v1, v2}, Laurelienribon/tweenengine/Tween;->ease(Laurelienribon/tweenengine/TweenEquation;)Laurelienribon/tweenengine/Tween;

    move-result-object v1

    invoke-virtual {v0, v1}, Laurelienribon/tweenengine/Timeline;->push(Laurelienribon/tweenengine/Tween;)Laurelienribon/tweenengine/Timeline;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/HotSeat3D/a;->a(I)V

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->o:Laurelienribon/tweenengine/Timeline;

    sget-object v1, Lcom/iLoong/launcher/tween/View3DTweenAccessor;->manager:Laurelienribon/tweenengine/TweenManager;

    invoke-virtual {v0, v1}, Laurelienribon/tweenengine/Timeline;->start(Laurelienribon/tweenengine/TweenManager;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/Timeline;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Laurelienribon/tweenengine/Timeline;->setUserData(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/Timeline;

    invoke-virtual {v0, p0}, Laurelienribon/tweenengine/Timeline;->setCallback(Laurelienribon/tweenengine/TweenCallback;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_2
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/iLoong/launcher/HotSeat3D/a;->t()I

    move-result v1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->v:Lcom/iLoong/launcher/HotSeat3D/b;

    invoke-virtual {v0}, Lcom/iLoong/launcher/HotSeat3D/b;->show()V

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->v:Lcom/iLoong/launcher/HotSeat3D/b;

    invoke-virtual {v0}, Lcom/iLoong/launcher/HotSeat3D/b;->bringToFront()V

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->o:Laurelienribon/tweenengine/Timeline;

    iget-object v1, p0, Lcom/iLoong/launcher/HotSeat3D/a;->u:Lcom/iLoong/launcher/HotSeat3D/d;

    invoke-static {v1, v6, v8}, Laurelienribon/tweenengine/Tween;->to(Ljava/lang/Object;IF)Laurelienribon/tweenengine/Tween;

    move-result-object v1

    invoke-virtual {v1, v4, v4, v4}, Laurelienribon/tweenengine/Tween;->target(FFF)Laurelienribon/tweenengine/Tween;

    move-result-object v1

    sget-object v2, Laurelienribon/tweenengine/equations/Bounce;->OUT:Laurelienribon/tweenengine/equations/Bounce;

    invoke-virtual {v1, v2}, Laurelienribon/tweenengine/Tween;->ease(Laurelienribon/tweenengine/TweenEquation;)Laurelienribon/tweenengine/Tween;

    move-result-object v1

    invoke-virtual {v0, v1}, Laurelienribon/tweenengine/Timeline;->push(Laurelienribon/tweenengine/Tween;)Laurelienribon/tweenengine/Timeline;

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->o:Laurelienribon/tweenengine/Timeline;

    iget-object v1, p0, Lcom/iLoong/launcher/HotSeat3D/a;->u:Lcom/iLoong/launcher/HotSeat3D/d;

    invoke-static {v1, v5, v8}, Laurelienribon/tweenengine/Tween;->to(Ljava/lang/Object;IF)Laurelienribon/tweenengine/Tween;

    move-result-object v1

    sget v2, Lcom/iLoong/launcher/Desktop3D/at;->bO:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v4, v4, v2}, Laurelienribon/tweenengine/Tween;->target(FFF)Laurelienribon/tweenengine/Tween;

    move-result-object v1

    sget-object v2, Laurelienribon/tweenengine/equations/Bounce;->OUT:Laurelienribon/tweenengine/equations/Bounce;

    invoke-virtual {v1, v2}, Laurelienribon/tweenengine/Tween;->ease(Laurelienribon/tweenengine/TweenEquation;)Laurelienribon/tweenengine/Tween;

    move-result-object v1

    invoke-virtual {v0, v1}, Laurelienribon/tweenengine/Timeline;->push(Laurelienribon/tweenengine/Tween;)Laurelienribon/tweenengine/Timeline;

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->o:Laurelienribon/tweenengine/Timeline;

    iget-object v1, p0, Lcom/iLoong/launcher/HotSeat3D/a;->t:Lcom/iLoong/launcher/HotSeat3D/g;

    invoke-static {v1, v6, v8}, Laurelienribon/tweenengine/Tween;->to(Ljava/lang/Object;IF)Laurelienribon/tweenengine/Tween;

    move-result-object v1

    sget v2, Lcom/iLoong/launcher/Desktop3D/at;->bM:I

    int-to-float v2, v2

    invoke-virtual {v1, v2, v4, v4}, Laurelienribon/tweenengine/Tween;->target(FFF)Laurelienribon/tweenengine/Tween;

    move-result-object v1

    sget-object v2, Laurelienribon/tweenengine/equations/Bounce;->OUT:Laurelienribon/tweenengine/equations/Bounce;

    invoke-virtual {v1, v2}, Laurelienribon/tweenengine/Tween;->ease(Laurelienribon/tweenengine/TweenEquation;)Laurelienribon/tweenengine/Tween;

    move-result-object v1

    invoke-virtual {v0, v1}, Laurelienribon/tweenengine/Timeline;->push(Laurelienribon/tweenengine/Tween;)Laurelienribon/tweenengine/Timeline;

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->o:Laurelienribon/tweenengine/Timeline;

    iget-object v1, p0, Lcom/iLoong/launcher/HotSeat3D/a;->t:Lcom/iLoong/launcher/HotSeat3D/g;

    invoke-static {v1, v7, v8}, Laurelienribon/tweenengine/Tween;->to(Ljava/lang/Object;IF)Laurelienribon/tweenengine/Tween;

    move-result-object v1

    invoke-virtual {v1, v4, v4, v4}, Laurelienribon/tweenengine/Tween;->target(FFF)Laurelienribon/tweenengine/Tween;

    move-result-object v1

    sget-object v2, Laurelienribon/tweenengine/equations/Bounce;->OUT:Laurelienribon/tweenengine/equations/Bounce;

    invoke-virtual {v1, v2}, Laurelienribon/tweenengine/Tween;->ease(Laurelienribon/tweenengine/TweenEquation;)Laurelienribon/tweenengine/Tween;

    move-result-object v1

    invoke-virtual {v0, v1}, Laurelienribon/tweenengine/Timeline;->push(Laurelienribon/tweenengine/Tween;)Laurelienribon/tweenengine/Timeline;

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->o:Laurelienribon/tweenengine/Timeline;

    iget-object v1, p0, Lcom/iLoong/launcher/HotSeat3D/a;->t:Lcom/iLoong/launcher/HotSeat3D/g;

    invoke-static {v1, v5, v8}, Laurelienribon/tweenengine/Tween;->to(Ljava/lang/Object;IF)Laurelienribon/tweenengine/Tween;

    move-result-object v1

    sget v2, Lcom/iLoong/launcher/Desktop3D/at;->bO:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v4, v4, v2}, Laurelienribon/tweenengine/Tween;->target(FFF)Laurelienribon/tweenengine/Tween;

    move-result-object v1

    sget-object v2, Laurelienribon/tweenengine/equations/Bounce;->OUT:Laurelienribon/tweenengine/equations/Bounce;

    invoke-virtual {v1, v2}, Laurelienribon/tweenengine/Tween;->ease(Laurelienribon/tweenengine/TweenEquation;)Laurelienribon/tweenengine/Tween;

    move-result-object v1

    invoke-virtual {v0, v1}, Laurelienribon/tweenengine/Timeline;->push(Laurelienribon/tweenengine/Tween;)Laurelienribon/tweenengine/Timeline;

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->o:Laurelienribon/tweenengine/Timeline;

    iget-object v1, p0, Lcom/iLoong/launcher/HotSeat3D/a;->v:Lcom/iLoong/launcher/HotSeat3D/b;

    invoke-static {v1, v7, v8}, Laurelienribon/tweenengine/Tween;->to(Ljava/lang/Object;IF)Laurelienribon/tweenengine/Tween;

    move-result-object v1

    invoke-virtual {v1, v8, v4, v4}, Laurelienribon/tweenengine/Tween;->target(FFF)Laurelienribon/tweenengine/Tween;

    move-result-object v1

    sget-object v2, Laurelienribon/tweenengine/equations/Bounce;->OUT:Laurelienribon/tweenengine/equations/Bounce;

    invoke-virtual {v1, v2}, Laurelienribon/tweenengine/Tween;->ease(Laurelienribon/tweenengine/TweenEquation;)Laurelienribon/tweenengine/Tween;

    move-result-object v1

    invoke-virtual {v0, v1}, Laurelienribon/tweenengine/Timeline;->push(Laurelienribon/tweenengine/Tween;)Laurelienribon/tweenengine/Timeline;

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->o:Laurelienribon/tweenengine/Timeline;

    iget-object v1, p0, Lcom/iLoong/launcher/HotSeat3D/a;->v:Lcom/iLoong/launcher/HotSeat3D/b;

    invoke-static {v1, v6, v8}, Laurelienribon/tweenengine/Tween;->to(Ljava/lang/Object;IF)Laurelienribon/tweenengine/Tween;

    move-result-object v1

    invoke-virtual {v1, v4, v4, v4}, Laurelienribon/tweenengine/Tween;->target(FFF)Laurelienribon/tweenengine/Tween;

    move-result-object v1

    sget-object v2, Laurelienribon/tweenengine/equations/Bounce;->OUT:Laurelienribon/tweenengine/equations/Bounce;

    invoke-virtual {v1, v2}, Laurelienribon/tweenengine/Tween;->ease(Laurelienribon/tweenengine/TweenEquation;)Laurelienribon/tweenengine/Tween;

    move-result-object v1

    invoke-virtual {v0, v1}, Laurelienribon/tweenengine/Timeline;->push(Laurelienribon/tweenengine/Tween;)Laurelienribon/tweenengine/Timeline;

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->o:Laurelienribon/tweenengine/Timeline;

    iget-object v1, p0, Lcom/iLoong/launcher/HotSeat3D/a;->v:Lcom/iLoong/launcher/HotSeat3D/b;

    invoke-static {v1, v5, v8}, Laurelienribon/tweenengine/Tween;->to(Ljava/lang/Object;IF)Laurelienribon/tweenengine/Tween;

    move-result-object v1

    invoke-virtual {v1, v4, v4, v4}, Laurelienribon/tweenengine/Tween;->target(FFF)Laurelienribon/tweenengine/Tween;

    move-result-object v1

    sget-object v2, Laurelienribon/tweenengine/equations/Bounce;->OUT:Laurelienribon/tweenengine/equations/Bounce;

    invoke-virtual {v1, v2}, Laurelienribon/tweenengine/Tween;->ease(Laurelienribon/tweenengine/TweenEquation;)Laurelienribon/tweenengine/Tween;

    move-result-object v1

    invoke-virtual {v0, v1}, Laurelienribon/tweenengine/Timeline;->push(Laurelienribon/tweenengine/Tween;)Laurelienribon/tweenengine/Timeline;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/HotSeat3D/a;->a(I)V

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->o:Laurelienribon/tweenengine/Timeline;

    sget-object v1, Lcom/iLoong/launcher/tween/View3DTweenAccessor;->manager:Laurelienribon/tweenengine/TweenManager;

    invoke-virtual {v0, v1}, Laurelienribon/tweenengine/Timeline;->start(Laurelienribon/tweenengine/TweenManager;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/Timeline;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Laurelienribon/tweenengine/Timeline;->setUserData(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/Timeline;

    invoke-virtual {v0, p0}, Laurelienribon/tweenengine/Timeline;->setCallback(Laurelienribon/tweenengine/TweenCallback;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->o:Laurelienribon/tweenengine/Timeline;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->o:Laurelienribon/tweenengine/Timeline;

    goto/16 :goto_0
.end method

.method public v()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/a;->A:Ljava/lang/Object;

    return-object v0
.end method
