.class public Lcom/iLoong/launcher/Desktop3D/e;
.super Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;


# static fields
.field public static c:Lcom/iLoong/launcher/desktop/iLoongLauncher;

.field private static s:F


# instance fields
.field private A:F

.field private B:Lcom/iLoong/launcher/UI3DEngine/View3D;

.field private C:Lcom/iLoong/launcher/Desktop3D/am;

.field private D:I

.field private E:F

.field public a:Lcom/iLoong/launcher/HotSeat3D/c;

.field public b:Z

.field public d:Z

.field private e:Landroid/app/WallpaperManager;

.field private f:Lcom/iLoong/launcher/Desktop3D/x;

.field private h:Lcom/iLoong/launcher/Desktop3D/v;

.field private i:Lcom/iLoong/launcher/Desktop3D/br;

.field private j:Lcom/iLoong/launcher/Desktop3D/bq;

.field private k:Lcom/iLoong/launcher/Desktop3D/y;

.field private l:Lcom/iLoong/launcher/Desktop3D/bs;

.field private m:Lcom/iLoong/launcher/HotSeat3D/a;

.field private n:Laurelienribon/tweenengine/Timeline;

.field private o:Lcom/iLoong/launcher/d/a;

.field private p:Z

.field private q:Ljava/util/Timer;

.field private r:Lcom/iLoong/launcher/Desktop3D/as;

.field private t:Laurelienribon/tweenengine/Timeline;

.field private u:Laurelienribon/tweenengine/Tween;

.field private v:Lcom/iLoong/launcher/UI3DEngine/View3D;

.field private w:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x3dcccccd

    sput v0, Lcom/iLoong/launcher/Desktop3D/e;->s:F

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;-><init>(Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/iLoong/launcher/Desktop3D/e;->b:Z

    iput-boolean v1, p0, Lcom/iLoong/launcher/Desktop3D/e;->p:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->q:Ljava/util/Timer;

    iput-boolean v1, p0, Lcom/iLoong/launcher/Desktop3D/e;->d:Z

    const v0, 0x3f4ccccd

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->E:F

    new-instance v0, Lcom/iLoong/launcher/HotSeat3D/a;

    const-string v1, "HotSeat3DBar"

    invoke-direct {v0, v1}, Lcom/iLoong/launcher/HotSeat3D/a;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->m:Lcom/iLoong/launcher/HotSeat3D/a;

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->m:Lcom/iLoong/launcher/HotSeat3D/a;

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/Desktop3D/e;->addView(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    return-void
.end method

.method private a(J)V
    .locals 2

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->q:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->q:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_0
    new-instance v0, Lcom/iLoong/launcher/Desktop3D/as;

    invoke-direct {v0, p0}, Lcom/iLoong/launcher/Desktop3D/as;-><init>(Lcom/iLoong/launcher/Desktop3D/e;)V

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->r:Lcom/iLoong/launcher/Desktop3D/as;

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->q:Ljava/util/Timer;

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->q:Ljava/util/Timer;

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/e;->r:Lcom/iLoong/launcher/Desktop3D/as;

    invoke-virtual {v0, v1, p1, p2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method static synthetic a(Lcom/iLoong/launcher/Desktop3D/e;)V
    .locals 0

    invoke-direct {p0}, Lcom/iLoong/launcher/Desktop3D/e;->o()V

    return-void
.end method

.method public static a(Lcom/iLoong/launcher/a/j;)V
    .locals 7

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongApplication;->b()Lcom/iLoong/launcher/desktop/iLoongApplication;

    move-result-object v0

    const-wide/16 v2, -0x64

    iget v4, p0, Lcom/iLoong/launcher/a/j;->n:I

    iget v5, p0, Lcom/iLoong/launcher/a/j;->p:I

    iget v6, p0, Lcom/iLoong/launcher/a/j;->q:I

    move-object v1, p0

    invoke-static/range {v0 .. v6}, Lcom/iLoong/launcher/app/LauncherModel;->a(Landroid/content/Context;Lcom/iLoong/launcher/a/j;JIII)V

    return-void
.end method

.method public static a(Lcom/iLoong/launcher/a/j;J)V
    .locals 7

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongApplication;->b()Lcom/iLoong/launcher/desktop/iLoongApplication;

    move-result-object v0

    iget v4, p0, Lcom/iLoong/launcher/a/j;->n:I

    iget v5, p0, Lcom/iLoong/launcher/a/j;->p:I

    iget v6, p0, Lcom/iLoong/launcher/a/j;->q:I

    move-object v1, p0

    move-wide v2, p1

    invoke-static/range {v0 .. v6}, Lcom/iLoong/launcher/app/LauncherModel;->a(Landroid/content/Context;Lcom/iLoong/launcher/a/j;JIII)V

    return-void
.end method

.method private a(Ljava/util/ArrayList;)V
    .locals 7

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/UI3DEngine/View3D;

    instance-of v1, v0, Lcom/iLoong/launcher/Desktop3D/u;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/iLoong/launcher/Desktop3D/u;

    invoke-interface {v1}, Lcom/iLoong/launcher/Desktop3D/u;->b()Lcom/iLoong/launcher/a/j;

    move-result-object v1

    iget-wide v3, v1, Lcom/iLoong/launcher/a/j;->m:J

    const-wide/16 v5, -0x65

    cmp-long v1, v3, v5

    if-nez v1, :cond_1

    invoke-direct {p0, p1}, Lcom/iLoong/launcher/Desktop3D/e;->b(Ljava/util/ArrayList;)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/iLoong/launcher/UI3DEngine/View3D;->getParent()Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    const/4 v1, 0x0

    instance-of v3, v0, Lcom/iLoong/launcher/Desktop3D/u;

    if-eqz v3, :cond_2

    check-cast v0, Lcom/iLoong/launcher/Desktop3D/u;

    invoke-interface {v0}, Lcom/iLoong/launcher/Desktop3D/u;->b()Lcom/iLoong/launcher/a/j;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    iget-wide v0, v0, Lcom/iLoong/launcher/a/j;->m:J

    const-wide/16 v3, -0x64

    cmp-long v0, v0, v3

    if-nez v0, :cond_0

    move v1, v2

    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/UI3DEngine/View3D;

    iget-object v3, p0, Lcom/iLoong/launcher/Desktop3D/e;->j:Lcom/iLoong/launcher/Desktop3D/bq;

    invoke-virtual {v3, v0, v2, v2}, Lcom/iLoong/launcher/Desktop3D/bq;->b(Lcom/iLoong/launcher/UI3DEngine/View3D;II)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method private a(I)Z
    .locals 9

    const/4 v0, 0x0

    const/high16 v8, 0x3fc0

    const v3, 0x3e99999a

    const/4 v1, 0x1

    const/4 v6, 0x0

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/e;->h:Lcom/iLoong/launcher/Desktop3D/v;

    invoke-virtual {v2}, Lcom/iLoong/launcher/Desktop3D/v;->isVisible()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/e;->h:Lcom/iLoong/launcher/Desktop3D/v;

    iget-object v2, v2, Lcom/iLoong/launcher/Desktop3D/v;->b:Lcom/iLoong/launcher/Desktop3D/ah;

    invoke-virtual {v2}, Lcom/iLoong/launcher/Desktop3D/ah;->c()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/e;->j:Lcom/iLoong/launcher/Desktop3D/bq;

    const v4, 0x3dcccccd

    invoke-virtual {v2, v4}, Lcom/iLoong/launcher/Desktop3D/bq;->setScaleZ(F)V

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/e;->j:Lcom/iLoong/launcher/Desktop3D/bq;

    invoke-virtual {v2}, Lcom/iLoong/launcher/Desktop3D/bq;->y()I

    move-result v2

    iget-object v4, p0, Lcom/iLoong/launcher/Desktop3D/e;->m:Lcom/iLoong/launcher/HotSeat3D/a;

    invoke-virtual {v4}, Lcom/iLoong/launcher/HotSeat3D/a;->hide()V

    iget-object v4, p0, Lcom/iLoong/launcher/Desktop3D/e;->i:Lcom/iLoong/launcher/Desktop3D/br;

    invoke-virtual {v4}, Lcom/iLoong/launcher/Desktop3D/br;->hide()V

    iget-object v4, p0, Lcom/iLoong/launcher/Desktop3D/e;->j:Lcom/iLoong/launcher/Desktop3D/bq;

    invoke-virtual {v4}, Lcom/iLoong/launcher/Desktop3D/bq;->hide()V

    iget-object v4, p0, Lcom/iLoong/launcher/Desktop3D/e;->l:Lcom/iLoong/launcher/Desktop3D/bs;

    invoke-virtual {v4}, Lcom/iLoong/launcher/Desktop3D/bs;->hide()V

    iget-object v4, p0, Lcom/iLoong/launcher/Desktop3D/e;->h:Lcom/iLoong/launcher/Desktop3D/v;

    invoke-virtual {v4}, Lcom/iLoong/launcher/Desktop3D/v;->show()V

    iget-object v4, p0, Lcom/iLoong/launcher/Desktop3D/e;->h:Lcom/iLoong/launcher/Desktop3D/v;

    invoke-virtual {v4, v2}, Lcom/iLoong/launcher/Desktop3D/v;->a(I)V

    iget-object v4, p0, Lcom/iLoong/launcher/Desktop3D/e;->h:Lcom/iLoong/launcher/Desktop3D/v;

    iget-object v5, p0, Lcom/iLoong/launcher/Desktop3D/e;->j:Lcom/iLoong/launcher/Desktop3D/bq;

    invoke-virtual {v5}, Lcom/iLoong/launcher/Desktop3D/bq;->t()Ljava/util/ArrayList;

    move-result-object v5

    iget-object v7, p0, Lcom/iLoong/launcher/Desktop3D/e;->j:Lcom/iLoong/launcher/Desktop3D/bq;

    invoke-virtual {v7}, Lcom/iLoong/launcher/Desktop3D/bq;->A()I

    move-result v7

    invoke-virtual {v4, v5, v2, v7}, Lcom/iLoong/launcher/Desktop3D/v;->b(Ljava/util/ArrayList;II)V

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/e;->h:Lcom/iLoong/launcher/Desktop3D/v;

    iget-object v2, v2, Lcom/iLoong/launcher/Desktop3D/v;->b:Lcom/iLoong/launcher/Desktop3D/ah;

    iget-object v4, p0, Lcom/iLoong/launcher/Desktop3D/e;->j:Lcom/iLoong/launcher/Desktop3D/bq;

    invoke-virtual {v4}, Lcom/iLoong/launcher/Desktop3D/bq;->y()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/iLoong/launcher/Desktop3D/ah;->c(I)V

    sget v2, Lcom/iLoong/launcher/Desktop3D/cb;->aF:I

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/e;->k:Lcom/iLoong/launcher/Desktop3D/y;

    iput-boolean v0, v2, Lcom/iLoong/launcher/Desktop3D/y;->touchable:Z

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->k:Lcom/iLoong/launcher/Desktop3D/y;

    sget-object v2, Laurelienribon/tweenengine/equations/Cubic;->OUT:Laurelienribon/tweenengine/equations/Cubic;

    iget-object v4, p0, Lcom/iLoong/launcher/Desktop3D/e;->k:Lcom/iLoong/launcher/Desktop3D/y;

    iget v4, v4, Lcom/iLoong/launcher/Desktop3D/y;->x:F

    iget-object v5, p0, Lcom/iLoong/launcher/Desktop3D/e;->k:Lcom/iLoong/launcher/Desktop3D/y;

    iget v5, v5, Lcom/iLoong/launcher/Desktop3D/y;->height:F

    neg-float v5, v5

    mul-float/2addr v5, v8

    invoke-virtual/range {v0 .. v6}, Lcom/iLoong/launcher/Desktop3D/y;->startTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    :goto_0
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->a:Lcom/iLoong/launcher/HotSeat3D/c;

    invoke-virtual {v0}, Lcom/iLoong/launcher/HotSeat3D/c;->hide()V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->C:Lcom/iLoong/launcher/Desktop3D/am;

    sget-object v2, Laurelienribon/tweenengine/equations/Cubic;->OUT:Laurelienribon/tweenengine/equations/Cubic;

    iget v4, p0, Lcom/iLoong/launcher/Desktop3D/e;->D:I

    neg-int v4, v4

    int-to-float v4, v4

    mul-float v5, v4, v8

    move v4, v6

    invoke-virtual/range {v0 .. v6}, Lcom/iLoong/launcher/Desktop3D/am;->startTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    :goto_1
    return v1

    :cond_0
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->k:Lcom/iLoong/launcher/Desktop3D/y;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/y;->hide()V

    goto :goto_0

    :cond_1
    move v1, v0

    goto :goto_1
.end method

.method static synthetic b(Lcom/iLoong/launcher/Desktop3D/e;)I
    .locals 1

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->D:I

    return v0
.end method

.method public static b(Lcom/iLoong/launcher/a/j;)V
    .locals 1

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongApplication;->b()Lcom/iLoong/launcher/desktop/iLoongApplication;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/iLoong/launcher/app/LauncherModel;->b(Landroid/content/Context;Lcom/iLoong/launcher/a/j;)V

    return-void
.end method

.method private b(Ljava/util/ArrayList;)V
    .locals 2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/UI3DEngine/View3D;

    check-cast v0, Lcom/iLoong/launcher/Desktop3D/u;

    invoke-interface {v0}, Lcom/iLoong/launcher/Desktop3D/u;->b()Lcom/iLoong/launcher/a/j;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->m:Lcom/iLoong/launcher/HotSeat3D/a;

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/HotSeat3D/a;->c(Ljava/util/ArrayList;)V

    return-void
.end method

.method private b(Z)V
    .locals 14

    const/4 v1, 0x3

    const/4 v6, 0x0

    const/high16 v4, 0x3f80

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->j:Lcom/iLoong/launcher/Desktop3D/bq;

    sget-object v2, Laurelienribon/tweenengine/equations/Cubic;->OUT:Laurelienribon/tweenengine/equations/Cubic;

    sget v3, Lcom/iLoong/launcher/Desktop3D/e;->s:F

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/iLoong/launcher/Desktop3D/bq;->startTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->j:Lcom/iLoong/launcher/Desktop3D/bq;

    invoke-virtual {v0, v4}, Lcom/iLoong/launcher/Desktop3D/bq;->setUser(F)V

    iget-object v7, p0, Lcom/iLoong/launcher/Desktop3D/e;->j:Lcom/iLoong/launcher/Desktop3D/bq;

    const/4 v8, 0x7

    sget-object v9, Laurelienribon/tweenengine/equations/Cubic;->OUT:Laurelienribon/tweenengine/equations/Cubic;

    sget v10, Lcom/iLoong/launcher/Desktop3D/e;->s:F

    move v11, v6

    move v12, v6

    move v13, v6

    invoke-virtual/range {v7 .. v13}, Lcom/iLoong/launcher/Desktop3D/bq;->startTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    move-result-object v0

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Laurelienribon/tweenengine/Tween;->setUserData(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/Tween;

    invoke-virtual {v0, p0}, Laurelienribon/tweenengine/Tween;->setCallback(Laurelienribon/tweenengine/TweenCallback;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/Tween;

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->u:Laurelienribon/tweenengine/Tween;

    sget-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->aS:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->m:Lcom/iLoong/launcher/HotSeat3D/a;

    sget-object v2, Laurelienribon/tweenengine/equations/Cubic;->OUT:Laurelienribon/tweenengine/equations/Cubic;

    sget v3, Lcom/iLoong/launcher/Desktop3D/e;->s:F

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/iLoong/launcher/HotSeat3D/a;->startTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    iget-object v7, p0, Lcom/iLoong/launcher/Desktop3D/e;->C:Lcom/iLoong/launcher/Desktop3D/am;

    const/4 v8, 0x1

    sget-object v9, Laurelienribon/tweenengine/equations/Cubic;->OUT:Laurelienribon/tweenengine/equations/Cubic;

    sget v10, Lcom/iLoong/launcher/Desktop3D/e;->s:F

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->D:I

    neg-int v0, v0

    int-to-float v0, v0

    const/high16 v2, 0x3fc0

    mul-float v12, v0, v2

    move v11, v6

    move v13, v6

    invoke-virtual/range {v7 .. v13}, Lcom/iLoong/launcher/Desktop3D/am;->startTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    move-result-object v0

    invoke-virtual {v0, p0}, Laurelienribon/tweenengine/Tween;->setCallback(Laurelienribon/tweenengine/TweenCallback;)Ljava/lang/Object;

    if-eqz p1, :cond_2

    sget v0, Lcom/iLoong/launcher/Desktop3D/cb;->aF:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->a:Lcom/iLoong/launcher/HotSeat3D/c;

    invoke-virtual {v0}, Lcom/iLoong/launcher/HotSeat3D/c;->c()V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->a:Lcom/iLoong/launcher/HotSeat3D/c;

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/e;->E:F

    iget v3, p0, Lcom/iLoong/launcher/Desktop3D/e;->E:F

    invoke-virtual {v0, v2, v3}, Lcom/iLoong/launcher/HotSeat3D/c;->setScale(FF)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->a:Lcom/iLoong/launcher/HotSeat3D/c;

    sget-object v2, Laurelienribon/tweenengine/equations/Cubic;->OUT:Laurelienribon/tweenengine/equations/Cubic;

    sget v3, Lcom/iLoong/launcher/Desktop3D/e;->s:F

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/iLoong/launcher/HotSeat3D/c;->startTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->k:Lcom/iLoong/launcher/Desktop3D/y;

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/e;->E:F

    iget v3, p0, Lcom/iLoong/launcher/Desktop3D/e;->E:F

    invoke-virtual {v0, v2, v3}, Lcom/iLoong/launcher/Desktop3D/y;->setScale(FF)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->k:Lcom/iLoong/launcher/Desktop3D/y;

    sget-object v2, Laurelienribon/tweenengine/equations/Cubic;->OUT:Laurelienribon/tweenengine/equations/Cubic;

    sget v3, Lcom/iLoong/launcher/Desktop3D/e;->s:F

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/iLoong/launcher/Desktop3D/y;->startTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    goto :goto_0

    :cond_2
    sget v0, Lcom/iLoong/launcher/Desktop3D/cb;->aF:I

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->k:Lcom/iLoong/launcher/Desktop3D/y;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/y;->hide()V

    :cond_3
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->a:Lcom/iLoong/launcher/HotSeat3D/c;

    invoke-virtual {v0}, Lcom/iLoong/launcher/HotSeat3D/c;->c()V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->a:Lcom/iLoong/launcher/HotSeat3D/c;

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/e;->E:F

    iget v3, p0, Lcom/iLoong/launcher/Desktop3D/e;->E:F

    invoke-virtual {v0, v2, v3}, Lcom/iLoong/launcher/HotSeat3D/c;->setScale(FF)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->a:Lcom/iLoong/launcher/HotSeat3D/c;

    sget-object v2, Laurelienribon/tweenengine/equations/Cubic;->OUT:Laurelienribon/tweenengine/equations/Cubic;

    sget v3, Lcom/iLoong/launcher/Desktop3D/e;->s:F

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/iLoong/launcher/HotSeat3D/c;->startTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    goto :goto_0
.end method

.method static synthetic c(Lcom/iLoong/launcher/Desktop3D/e;)Landroid/app/WallpaperManager;
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->e:Landroid/app/WallpaperManager;

    return-object v0
.end method

.method private c(Ljava/util/ArrayList;)V
    .locals 14

    const-wide/16 v12, -0x64

    const-wide/16 v10, -0x65

    const/4 v9, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/UI3DEngine/View3D;

    instance-of v1, v0, Lcom/iLoong/launcher/Desktop3D/u;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/iLoong/launcher/Desktop3D/u;

    invoke-interface {v1}, Lcom/iLoong/launcher/Desktop3D/u;->b()Lcom/iLoong/launcher/a/j;

    move-result-object v4

    instance-of v1, v0, Lcom/iLoong/launcher/Widget3D/f;

    if-eqz v1, :cond_2

    iget-wide v5, v4, Lcom/iLoong/launcher/a/j;->m:J

    const-wide/16 v7, -0x1

    cmp-long v1, v5, v7

    if-nez v1, :cond_2

    invoke-static {v4}, Lcom/iLoong/launcher/Desktop3D/e;->b(Lcom/iLoong/launcher/a/j;)V

    move-object v1, v0

    check-cast v1, Lcom/iLoong/launcher/Widget3D/f;

    invoke-static {}, Lcom/iLoong/launcher/Widget3D/g;->a()Lcom/iLoong/launcher/Widget3D/g;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/iLoong/launcher/Widget3D/g;->a(Lcom/iLoong/launcher/Widget3D/f;)V

    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v5, 0x1

    if-ne v1, v5, :cond_6

    instance-of v0, v0, Lcom/iLoong/launcher/Desktop3D/u;

    if-eqz v0, :cond_6

    iget-wide v0, v4, Lcom/iLoong/launcher/a/j;->m:J

    cmp-long v0, v0, v10

    if-nez v0, :cond_3

    invoke-direct {p0, p1}, Lcom/iLoong/launcher/Desktop3D/e;->b(Ljava/util/ArrayList;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    :cond_3
    iget-wide v0, v4, Lcom/iLoong/launcher/a/j;->m:J

    const-wide/16 v5, 0x0

    cmp-long v0, v0, v5

    if-ltz v0, :cond_6

    sget-object v0, Lcom/iLoong/launcher/Desktop3D/e;->c:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    iget-wide v1, v4, Lcom/iLoong/launcher/a/j;->m:J

    invoke-virtual {v0, v1, v2}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->a(J)Lcom/iLoong/launcher/a/h;

    move-result-object v0

    iget-wide v1, v0, Lcom/iLoong/launcher/a/h;->m:J

    cmp-long v1, v1, v10

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/e;->m:Lcom/iLoong/launcher/HotSeat3D/a;

    iget v0, v0, Lcom/iLoong/launcher/a/h;->n:I

    invoke-virtual {v1, v0}, Lcom/iLoong/launcher/HotSeat3D/a;->b(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_4

    instance-of v1, v0, Lcom/iLoong/launcher/d/a;

    if-eqz v1, :cond_4

    check-cast v0, Lcom/iLoong/launcher/d/a;

    invoke-virtual {v0, p1, v9, v9}, Lcom/iLoong/launcher/d/a;->a(Ljava/util/ArrayList;FF)Z

    :cond_4
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    :cond_5
    iget-wide v1, v0, Lcom/iLoong/launcher/a/h;->m:J

    cmp-long v1, v1, v12

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/e;->j:Lcom/iLoong/launcher/Desktop3D/bq;

    invoke-virtual {v1, v0}, Lcom/iLoong/launcher/Desktop3D/bq;->a(Lcom/iLoong/launcher/a/j;)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v0

    goto :goto_1

    :cond_6
    iget-wide v0, v4, Lcom/iLoong/launcher/a/j;->m:J

    cmp-long v0, v0, v12

    if-nez v0, :cond_7

    move v1, v2

    :goto_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_8

    :cond_7
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_0

    :cond_8
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/UI3DEngine/View3D;

    iget-object v3, p0, Lcom/iLoong/launcher/Desktop3D/e;->j:Lcom/iLoong/launcher/Desktop3D/bq;

    invoke-virtual {v3, v0, v2, v2}, Lcom/iLoong/launcher/Desktop3D/bq;->b(Lcom/iLoong/launcher/UI3DEngine/View3D;II)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_9
    move-object v0, v3

    goto :goto_1
.end method

.method static synthetic d(Lcom/iLoong/launcher/Desktop3D/e;)Lcom/badlogic/gdx/math/Vector2;
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->point:Lcom/badlogic/gdx/math/Vector2;

    return-object v0
.end method

.method static synthetic e(Lcom/iLoong/launcher/Desktop3D/e;)[F
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->w:[F

    return-object v0
.end method

.method static synthetic f(Lcom/iLoong/launcher/Desktop3D/e;)Lcom/iLoong/launcher/UI3DEngine/View3D;
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->B:Lcom/iLoong/launcher/UI3DEngine/View3D;

    return-object v0
.end method

.method private j()V
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->q:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->r:Lcom/iLoong/launcher/Desktop3D/as;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/as;->cancel()Z

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->q:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->q:Ljava/util/Timer;

    :cond_0
    return-void
.end method

.method private k()V
    .locals 2

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenHeight()I

    move-result v0

    const/16 v1, 0x2bc

    if-ge v0, v1, :cond_0

    const-string v0, "test123"

    const-string v1, "0.95f"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x3f666666

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->E:F

    :goto_0
    return-void

    :cond_0
    const-string v0, "test123"

    const-string v1, "0.8f"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x3f4ccccd

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->E:F

    goto :goto_0
.end method

.method private l()V
    .locals 15

    const/4 v14, 0x1

    const/4 v1, 0x3

    const/high16 v11, 0x3f80

    const/4 v6, 0x0

    sput-boolean v14, Lcom/iLoong/launcher/Desktop3D/bq;->B:Z

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->j:Lcom/iLoong/launcher/Desktop3D/bq;

    sget-object v2, Laurelienribon/tweenengine/equations/Cubic;->OUT:Laurelienribon/tweenengine/equations/Cubic;

    sget v3, Lcom/iLoong/launcher/Desktop3D/e;->s:F

    iget v4, p0, Lcom/iLoong/launcher/Desktop3D/e;->E:F

    iget v5, p0, Lcom/iLoong/launcher/Desktop3D/e;->E:F

    invoke-virtual/range {v0 .. v6}, Lcom/iLoong/launcher/Desktop3D/bq;->startTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->j:Lcom/iLoong/launcher/Desktop3D/bq;

    invoke-virtual {v0, v6}, Lcom/iLoong/launcher/Desktop3D/bq;->setUser(F)V

    iget-object v7, p0, Lcom/iLoong/launcher/Desktop3D/e;->j:Lcom/iLoong/launcher/Desktop3D/bq;

    const/4 v8, 0x7

    sget-object v9, Laurelienribon/tweenengine/equations/Cubic;->OUT:Laurelienribon/tweenengine/equations/Cubic;

    sget v10, Lcom/iLoong/launcher/Desktop3D/e;->s:F

    move v12, v6

    move v13, v6

    invoke-virtual/range {v7 .. v13}, Lcom/iLoong/launcher/Desktop3D/bq;->startTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    sget-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->aS:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->m:Lcom/iLoong/launcher/HotSeat3D/a;

    sget-object v2, Laurelienribon/tweenengine/equations/Cubic;->OUT:Laurelienribon/tweenengine/equations/Cubic;

    sget v3, Lcom/iLoong/launcher/Desktop3D/e;->s:F

    iget v4, p0, Lcom/iLoong/launcher/Desktop3D/e;->E:F

    iget v5, p0, Lcom/iLoong/launcher/Desktop3D/e;->E:F

    invoke-virtual/range {v0 .. v6}, Lcom/iLoong/launcher/HotSeat3D/a;->startTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    sget v0, Lcom/iLoong/launcher/Desktop3D/cb;->aF:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->a:Lcom/iLoong/launcher/HotSeat3D/c;

    invoke-virtual {v0}, Lcom/iLoong/launcher/HotSeat3D/c;->d()V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->k:Lcom/iLoong/launcher/Desktop3D/y;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/y;->show()V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->k:Lcom/iLoong/launcher/Desktop3D/y;

    invoke-virtual {v0, v11, v11}, Lcom/iLoong/launcher/Desktop3D/y;->setScale(FF)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->k:Lcom/iLoong/launcher/Desktop3D/y;

    sget-object v2, Laurelienribon/tweenengine/equations/Cubic;->OUT:Laurelienribon/tweenengine/equations/Cubic;

    sget v3, Lcom/iLoong/launcher/Desktop3D/e;->s:F

    iget v4, p0, Lcom/iLoong/launcher/Desktop3D/e;->E:F

    iget v5, p0, Lcom/iLoong/launcher/Desktop3D/e;->E:F

    invoke-virtual/range {v0 .. v6}, Lcom/iLoong/launcher/Desktop3D/y;->startTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    :goto_0
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->C:Lcom/iLoong/launcher/Desktop3D/am;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/am;->show()V

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/e;->C:Lcom/iLoong/launcher/Desktop3D/am;

    sget-object v4, Laurelienribon/tweenengine/equations/Cubic;->OUT:Laurelienribon/tweenengine/equations/Cubic;

    sget v5, Lcom/iLoong/launcher/Desktop3D/e;->s:F

    move v3, v14

    move v7, v6

    move v8, v6

    invoke-virtual/range {v2 .. v8}, Lcom/iLoong/launcher/Desktop3D/am;->startTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->a:Lcom/iLoong/launcher/HotSeat3D/c;

    invoke-virtual {v0}, Lcom/iLoong/launcher/HotSeat3D/c;->show()V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->a:Lcom/iLoong/launcher/HotSeat3D/c;

    invoke-virtual {v0, v11, v11}, Lcom/iLoong/launcher/HotSeat3D/c;->setScale(FF)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->a:Lcom/iLoong/launcher/HotSeat3D/c;

    sget-object v2, Laurelienribon/tweenengine/equations/Cubic;->OUT:Laurelienribon/tweenengine/equations/Cubic;

    sget v3, Lcom/iLoong/launcher/Desktop3D/e;->s:F

    iget v4, p0, Lcom/iLoong/launcher/Desktop3D/e;->E:F

    iget v5, p0, Lcom/iLoong/launcher/Desktop3D/e;->E:F

    invoke-virtual/range {v0 .. v6}, Lcom/iLoong/launcher/HotSeat3D/c;->startTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    goto :goto_0
.end method

.method private m()V
    .locals 5

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v0, "android.search.action.GLOBAL_SEARCH"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v0, Lcom/iLoong/launcher/Desktop3D/e;->c:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    invoke-virtual {v0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v2, "com.baidu.searchbox"

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    :goto_1
    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_1
.end method

.method private n()Z
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->h:Lcom/iLoong/launcher/Desktop3D/v;

    iget-object v0, v0, Lcom/iLoong/launcher/Desktop3D/v;->a:Lcom/iLoong/launcher/Desktop3D/f;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->h:Lcom/iLoong/launcher/Desktop3D/v;

    iget-object v0, v0, Lcom/iLoong/launcher/Desktop3D/v;->a:Lcom/iLoong/launcher/Desktop3D/f;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/f;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->h:Lcom/iLoong/launcher/Desktop3D/v;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/v;->isVisible()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->j:Lcom/iLoong/launcher/Desktop3D/bq;

    const v1, 0x3dcccccd

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/Desktop3D/bq;->setScaleZ(F)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->j:Lcom/iLoong/launcher/Desktop3D/bq;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/bq;->y()I

    move-result v0

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/e;->i:Lcom/iLoong/launcher/Desktop3D/br;

    invoke-virtual {v1}, Lcom/iLoong/launcher/Desktop3D/br;->hide()V

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/e;->m:Lcom/iLoong/launcher/HotSeat3D/a;

    invoke-virtual {v1}, Lcom/iLoong/launcher/HotSeat3D/a;->hide()V

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/e;->a:Lcom/iLoong/launcher/HotSeat3D/c;

    invoke-virtual {v1}, Lcom/iLoong/launcher/HotSeat3D/c;->hide()V

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/e;->j:Lcom/iLoong/launcher/Desktop3D/bq;

    invoke-virtual {v1}, Lcom/iLoong/launcher/Desktop3D/bq;->hide()V

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/e;->l:Lcom/iLoong/launcher/Desktop3D/bs;

    invoke-virtual {v1}, Lcom/iLoong/launcher/Desktop3D/bs;->hide()V

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/e;->k:Lcom/iLoong/launcher/Desktop3D/y;

    invoke-virtual {v1}, Lcom/iLoong/launcher/Desktop3D/y;->hide()V

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/e;->h:Lcom/iLoong/launcher/Desktop3D/v;

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/e;->j:Lcom/iLoong/launcher/Desktop3D/bq;

    invoke-virtual {v2}, Lcom/iLoong/launcher/Desktop3D/bq;->t()Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/iLoong/launcher/Desktop3D/e;->j:Lcom/iLoong/launcher/Desktop3D/bq;

    invoke-virtual {v3}, Lcom/iLoong/launcher/Desktop3D/bq;->A()I

    move-result v3

    invoke-virtual {v1, v2, v0, v3}, Lcom/iLoong/launcher/Desktop3D/v;->a(Ljava/util/ArrayList;II)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->h:Lcom/iLoong/launcher/Desktop3D/v;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/v;->show()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->h:Lcom/iLoong/launcher/Desktop3D/v;

    iget v0, v0, Lcom/iLoong/launcher/Desktop3D/v;->h:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->h:Lcom/iLoong/launcher/Desktop3D/v;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/v;->a()V

    goto :goto_0
.end method

.method private o()V
    .locals 6

    const/high16 v3, 0x3f80

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->j:Lcom/iLoong/launcher/Desktop3D/bq;

    iget-boolean v0, v0, Lcom/iLoong/launcher/Desktop3D/bq;->touchable:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->j:Lcom/iLoong/launcher/Desktop3D/bq;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/bq;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0}, Lcom/iLoong/launcher/Desktop3D/e;->j()V

    if-eqz v1, :cond_0

    instance-of v0, v1, Lcom/iLoong/launcher/d/a;

    if-eqz v0, :cond_0

    move-object v0, v1

    check-cast v0, Lcom/iLoong/launcher/d/a;

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/e;->j:Lcom/iLoong/launcher/Desktop3D/bq;

    invoke-virtual {v2, v3, v3}, Lcom/iLoong/launcher/Desktop3D/bq;->setScale(FF)V

    invoke-virtual {v0}, Lcom/iLoong/launcher/d/a;->n()I

    move-result v2

    if-nez v2, :cond_7

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/e;->j:Lcom/iLoong/launcher/Desktop3D/bq;

    iget-object v2, v0, Lcom/iLoong/launcher/d/a;->c:Lcom/iLoong/launcher/a/h;

    iget v2, v2, Lcom/iLoong/launcher/a/h;->p:I

    iget-object v3, v0, Lcom/iLoong/launcher/d/a;->c:Lcom/iLoong/launcher/a/h;

    iget v3, v3, Lcom/iLoong/launcher/a/h;->q:I

    invoke-virtual {v1, v0, v2, v3}, Lcom/iLoong/launcher/Desktop3D/bq;->b(Lcom/iLoong/launcher/UI3DEngine/View3D;II)V

    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/e;->l:Lcom/iLoong/launcher/Desktop3D/bs;

    invoke-virtual {v1}, Lcom/iLoong/launcher/Desktop3D/bs;->show()V

    iput-boolean v5, p0, Lcom/iLoong/launcher/Desktop3D/e;->b:Z

    invoke-virtual {v0}, Lcom/iLoong/launcher/d/a;->getParent()Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    move-result-object v1

    if-ne v1, p0, :cond_3

    invoke-virtual {v0}, Lcom/iLoong/launcher/d/a;->remove()V

    :cond_3
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->f:Lcom/iLoong/launcher/Desktop3D/x;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/x;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->f:Lcom/iLoong/launcher/Desktop3D/x;

    iget-boolean v0, v0, Lcom/iLoong/launcher/Desktop3D/x;->e:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->j:Lcom/iLoong/launcher/Desktop3D/bq;

    iput-boolean v5, v0, Lcom/iLoong/launcher/Desktop3D/bq;->u:Z

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->f:Lcom/iLoong/launcher/Desktop3D/x;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/x;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->f:Lcom/iLoong/launcher/Desktop3D/x;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/x;->b()Lcom/iLoong/launcher/Desktop3D/bd;

    move-result-object v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->f:Lcom/iLoong/launcher/Desktop3D/x;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/x;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/iLoong/launcher/Desktop3D/e;->c(Ljava/util/ArrayList;)V

    :cond_4
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->f:Lcom/iLoong/launcher/Desktop3D/x;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/x;->removeAllViews()V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->f:Lcom/iLoong/launcher/Desktop3D/x;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/x;->hide()V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->j:Lcom/iLoong/launcher/Desktop3D/bq;

    iput-boolean v4, v0, Lcom/iLoong/launcher/Desktop3D/bq;->u:Z

    iget-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->d:Z

    invoke-direct {p0, v0}, Lcom/iLoong/launcher/Desktop3D/e;->b(Z)V

    :cond_5
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->f:Lcom/iLoong/launcher/Desktop3D/x;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/x;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->f:Lcom/iLoong/launcher/Desktop3D/x;

    iget-boolean v0, v0, Lcom/iLoong/launcher/Desktop3D/x;->e:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->k:Lcom/iLoong/launcher/Desktop3D/y;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/y;->show()V

    :goto_2
    iget-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->p:Z

    if-eqz v0, :cond_6

    iput-boolean v5, p0, Lcom/iLoong/launcher/Desktop3D/e;->p:Z

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->j:Lcom/iLoong/launcher/Desktop3D/bq;

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/e;->j:Lcom/iLoong/launcher/Desktop3D/bq;

    invoke-virtual {v1}, Lcom/iLoong/launcher/Desktop3D/bq;->A()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/Desktop3D/bq;->b(I)Z

    :cond_6
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->m:Lcom/iLoong/launcher/HotSeat3D/a;

    iput-boolean v4, v0, Lcom/iLoong/launcher/HotSeat3D/a;->touchable:Z

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->j:Lcom/iLoong/launcher/Desktop3D/bq;

    iput-boolean v4, v0, Lcom/iLoong/launcher/Desktop3D/bq;->touchable:Z

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v0}, Lcom/iLoong/launcher/d/a;->n()I

    move-result v2

    if-ne v2, v4, :cond_2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Lcom/iLoong/launcher/UI3DEngine/View3D;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/e;->m:Lcom/iLoong/launcher/HotSeat3D/a;

    invoke-virtual {v1}, Lcom/iLoong/launcher/HotSeat3D/a;->p()Lcom/iLoong/launcher/HotSeat3D/b;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/iLoong/launcher/HotSeat3D/b;->a(Ljava/util/ArrayList;)V

    goto/16 :goto_1

    :cond_8
    invoke-static {}, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->sendShowWorkspaceMsg()V

    goto :goto_2
.end method

.method private p()Ljava/util/ArrayList;
    .locals 4

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->f:Lcom/iLoong/launcher/Desktop3D/x;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/x;->a()Ljava/util/ArrayList;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    return-object v2

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/UI3DEngine/View3D;

    instance-of v1, v0, Lcom/iLoong/launcher/d/a;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/iLoong/launcher/d/a;

    iget-object v1, v1, Lcom/iLoong/launcher/d/a;->c:Lcom/iLoong/launcher/a/h;

    iget-object v1, v1, Lcom/iLoong/launcher/a/h;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private q()V
    .locals 11

    const/4 v8, 0x0

    const/high16 v10, 0x3f80

    invoke-direct {p0}, Lcom/iLoong/launcher/Desktop3D/e;->p()Ljava/util/ArrayList;

    move-result-object v9

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->i:Lcom/iLoong/launcher/Desktop3D/br;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/br;->hide()V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->j:Lcom/iLoong/launcher/Desktop3D/bq;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/bq;->show()V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->a:Lcom/iLoong/launcher/HotSeat3D/c;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/HotSeat3D/c;->a(I)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->m:Lcom/iLoong/launcher/HotSeat3D/a;

    invoke-virtual {v0}, Lcom/iLoong/launcher/HotSeat3D/a;->show()V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->a:Lcom/iLoong/launcher/HotSeat3D/c;

    invoke-virtual {v0}, Lcom/iLoong/launcher/HotSeat3D/c;->show()V

    move v7, v8

    :goto_0
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v7, v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->f:Lcom/iLoong/launcher/Desktop3D/x;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/x;->removeAllViews()V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->f:Lcom/iLoong/launcher/Desktop3D/x;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/x;->hide()V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->k:Lcom/iLoong/launcher/Desktop3D/y;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/y;->hide()V

    return-void

    :cond_0
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/UI3DEngine/View3D;

    invoke-virtual {v0, v10, v10, v10, v10}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setColor(FFFF)V

    iput-boolean v8, v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->isDragging:Z

    move-object v1, v0

    check-cast v1, Lcom/iLoong/launcher/d/a;

    iget-object v1, v1, Lcom/iLoong/launcher/d/a;->c:Lcom/iLoong/launcher/a/h;

    iget-wide v1, v1, Lcom/iLoong/launcher/a/h;->m:J

    const-wide/16 v3, -0x64

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/e;->j:Lcom/iLoong/launcher/Desktop3D/bq;

    invoke-virtual {v1, v0}, Lcom/iLoong/launcher/Desktop3D/bq;->calcCoordinate(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/e;->j:Lcom/iLoong/launcher/Desktop3D/bq;

    iget v2, v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->x:F

    float-to-int v2, v2

    iget v3, v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->y:F

    float-to-int v3, v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/iLoong/launcher/Desktop3D/bq;->a(Lcom/iLoong/launcher/UI3DEngine/View3D;II)Z

    const/4 v1, 0x1

    sget-object v2, Laurelienribon/tweenengine/equations/Elastic;->OUT:Laurelienribon/tweenengine/equations/Elastic;

    const v3, 0x3e99999a

    move-object v4, v0

    check-cast v4, Lcom/iLoong/launcher/d/a;

    iget-object v4, v4, Lcom/iLoong/launcher/d/a;->c:Lcom/iLoong/launcher/a/h;

    iget v4, v4, Lcom/iLoong/launcher/a/h;->p:I

    int-to-float v4, v4

    move-object v5, v0

    check-cast v5, Lcom/iLoong/launcher/d/a;

    iget-object v5, v5, Lcom/iLoong/launcher/d/a;->c:Lcom/iLoong/launcher/a/h;

    iget v5, v5, Lcom/iLoong/launcher/a/h;->q:I

    int-to-float v5, v5

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/iLoong/launcher/UI3DEngine/View3D;->startTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    :cond_1
    :goto_1
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_0

    :cond_2
    check-cast v0, Lcom/iLoong/launcher/d/a;

    iget-object v0, v0, Lcom/iLoong/launcher/d/a;->c:Lcom/iLoong/launcher/a/h;

    iget-wide v0, v0, Lcom/iLoong/launcher/a/h;->m:J

    const-wide/16 v2, -0x65

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    invoke-direct {p0, v9}, Lcom/iLoong/launcher/Desktop3D/e;->c(Ljava/util/ArrayList;)V

    goto :goto_1
.end method

.method private r()V
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->i:Lcom/iLoong/launcher/Desktop3D/br;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/br;->hide()V

    iget-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->j:Lcom/iLoong/launcher/Desktop3D/bq;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/bq;->show()V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->f:Lcom/iLoong/launcher/Desktop3D/x;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/x;->b()Lcom/iLoong/launcher/Desktop3D/bd;

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->f:Lcom/iLoong/launcher/Desktop3D/x;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/x;->removeAllViews()V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->f:Lcom/iLoong/launcher/Desktop3D/x;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/x;->hide()V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->m:Lcom/iLoong/launcher/HotSeat3D/a;

    invoke-virtual {v0}, Lcom/iLoong/launcher/HotSeat3D/a;->show()V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->a:Lcom/iLoong/launcher/HotSeat3D/c;

    invoke-virtual {v0}, Lcom/iLoong/launcher/HotSeat3D/c;->show()V

    :cond_0
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->k:Lcom/iLoong/launcher/Desktop3D/y;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/y;->hide()V

    return-void
.end method


# virtual methods
.method public a()Lcom/iLoong/launcher/Desktop3D/br;
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->i:Lcom/iLoong/launcher/Desktop3D/br;

    return-object v0
.end method

.method public a(Lcom/iLoong/launcher/UI3DEngine/View3D;)V
    .locals 2

    move-object v0, p1

    check-cast v0, Lcom/iLoong/launcher/Desktop3D/v;

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->h:Lcom/iLoong/launcher/Desktop3D/v;

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->h:Lcom/iLoong/launcher/Desktop3D/v;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/v;->hide()V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->h:Lcom/iLoong/launcher/Desktop3D/v;

    sget-object v1, Lcom/iLoong/launcher/Desktop3D/e;->c:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/Desktop3D/v;->a(Lcom/iLoong/launcher/desktop/iLoongLauncher;)V

    invoke-virtual {p0, p1}, Lcom/iLoong/launcher/Desktop3D/e;->addView(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    return-void
.end method

.method public a(Lcom/iLoong/launcher/Widget3D/WidgetPluginView3D;I)V
    .locals 6

    const/4 v4, 0x1

    const/4 v3, 0x0

    const v2, 0x3f99999a

    const/4 v5, 0x0

    if-nez p2, :cond_2

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->point:Lcom/badlogic/gdx/math/Vector2;

    iput v5, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->point:Lcom/badlogic/gdx/math/Vector2;

    iput v5, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->point:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p1, v0}, Lcom/iLoong/launcher/Widget3D/WidgetPluginView3D;->toAbsolute(Lcom/badlogic/gdx/math/Vector2;)V

    iput-object p1, p0, Lcom/iLoong/launcher/Desktop3D/e;->v:Lcom/iLoong/launcher/UI3DEngine/View3D;

    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->w:[F

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->w:[F

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/e;->v:Lcom/iLoong/launcher/UI3DEngine/View3D;

    iget v1, v1, Lcom/iLoong/launcher/UI3DEngine/View3D;->x:F

    aput v1, v0, v3

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->w:[F

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/e;->v:Lcom/iLoong/launcher/UI3DEngine/View3D;

    iget v1, v1, Lcom/iLoong/launcher/UI3DEngine/View3D;->y:F

    aput v1, v0, v4

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->point:Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/e;->point:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p1, v0, v1}, Lcom/iLoong/launcher/Widget3D/WidgetPluginView3D;->setPosition(FF)V

    iput v5, p0, Lcom/iLoong/launcher/Desktop3D/e;->A:F

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->point:Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v1, p1, Lcom/iLoong/launcher/Widget3D/WidgetPluginView3D;->height:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenHeight()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    sget-object v0, Lcom/iLoong/launcher/Desktop3D/e;->c:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    new-instance v1, Lcom/iLoong/launcher/Desktop3D/bk;

    invoke-direct {v1, p0, p1}, Lcom/iLoong/launcher/Desktop3D/bk;-><init>(Lcom/iLoong/launcher/Desktop3D/e;Lcom/iLoong/launcher/Widget3D/WidgetPluginView3D;)V

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->postRunnable(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p1, Lcom/iLoong/launcher/Widget3D/WidgetPluginView3D;->height:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/e;->point:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->A:F

    :cond_0
    invoke-virtual {p1}, Lcom/iLoong/launcher/Widget3D/WidgetPluginView3D;->getParent()Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/iLoong/launcher/Widget3D/WidgetPluginView3D;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/iLoong/launcher/Desktop3D/e;->addView(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->v:Lcom/iLoong/launcher/UI3DEngine/View3D;

    invoke-virtual {v0}, Lcom/iLoong/launcher/UI3DEngine/View3D;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/e;->v:Lcom/iLoong/launcher/UI3DEngine/View3D;

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/e;->w:[F

    aget v2, v2, v3

    iget-object v3, p0, Lcom/iLoong/launcher/Desktop3D/e;->w:[F

    aget v3, v3, v4

    iget v4, p0, Lcom/iLoong/launcher/Desktop3D/e;->A:F

    add-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setPosition(FF)V

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/e;->A:F

    cmpl-float v1, v1, v5

    if-eqz v1, :cond_3

    sget-object v1, Lcom/iLoong/launcher/Desktop3D/e;->c:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    new-instance v2, Lcom/iLoong/launcher/Desktop3D/bf;

    invoke-direct {v2, p0, p1}, Lcom/iLoong/launcher/Desktop3D/bf;-><init>(Lcom/iLoong/launcher/Desktop3D/e;Lcom/iLoong/launcher/Widget3D/WidgetPluginView3D;)V

    invoke-virtual {v1, v2}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->postRunnable(Ljava/lang/Runnable;)V

    :cond_3
    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/e;->v:Lcom/iLoong/launcher/UI3DEngine/View3D;

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->addView(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->B:Lcom/iLoong/launcher/UI3DEngine/View3D;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/iLoong/launcher/Desktop3D/e;->c:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    new-instance v1, Lcom/iLoong/launcher/Desktop3D/bh;

    invoke-direct {v1, p0}, Lcom/iLoong/launcher/Desktop3D/bh;-><init>(Lcom/iLoong/launcher/Desktop3D/e;)V

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public a(Lcom/iLoong/launcher/desktop/iLoongLauncher;)V
    .locals 1

    sput-object p1, Lcom/iLoong/launcher/Desktop3D/e;->c:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    sget-object v0, Lcom/iLoong/launcher/Desktop3D/e;->c:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    invoke-static {v0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->e:Landroid/app/WallpaperManager;

    return-void
.end method

.method public a(Z)V
    .locals 7

    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v5, 0x0

    const-string v0, "testdrag"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " Root3D onHomeKey hotseatBar.y="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/iLoong/launcher/Desktop3D/e;->m:Lcom/iLoong/launcher/HotSeat3D/a;

    iget v3, v3, Lcom/iLoong/launcher/HotSeat3D/a;->y:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "hotButton.y"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/iLoong/launcher/Desktop3D/e;->a:Lcom/iLoong/launcher/HotSeat3D/c;

    iget v3, v3, Lcom/iLoong/launcher/HotSeat3D/c;->y:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->j:Lcom/iLoong/launcher/Desktop3D/bq;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->j:Lcom/iLoong/launcher/Desktop3D/bq;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/bq;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->a:Lcom/iLoong/launcher/HotSeat3D/c;

    iget v0, v0, Lcom/iLoong/launcher/HotSeat3D/c;->y:F

    cmpg-float v0, v0, v5

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->m:Lcom/iLoong/launcher/HotSeat3D/a;

    iget v0, v0, Lcom/iLoong/launcher/HotSeat3D/a;->y:F

    cmpg-float v0, v0, v5

    if-gez v0, :cond_2

    :cond_0
    const-string v0, "testdrag"

    const-string v1, " Root3D onHomeKey return"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->i:Lcom/iLoong/launcher/Desktop3D/br;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->i:Lcom/iLoong/launcher/Desktop3D/br;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/br;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->i:Lcom/iLoong/launcher/Desktop3D/br;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/br;->hide()V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->j:Lcom/iLoong/launcher/Desktop3D/bq;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/bq;->show()V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->m:Lcom/iLoong/launcher/HotSeat3D/a;

    invoke-virtual {v0}, Lcom/iLoong/launcher/HotSeat3D/a;->m()V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->a:Lcom/iLoong/launcher/HotSeat3D/c;

    invoke-virtual {v0}, Lcom/iLoong/launcher/HotSeat3D/c;->c()V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->a:Lcom/iLoong/launcher/HotSeat3D/c;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/iLoong/launcher/HotSeat3D/c;->a(I)V

    sget v0, Lcom/iLoong/launcher/Desktop3D/cb;->aF:I

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->k:Lcom/iLoong/launcher/Desktop3D/y;

    sget-object v2, Laurelienribon/tweenengine/equations/Cubic;->OUT:Laurelienribon/tweenengine/equations/Cubic;

    const v3, 0x3e99999a

    iget-object v4, p0, Lcom/iLoong/launcher/Desktop3D/e;->k:Lcom/iLoong/launcher/Desktop3D/y;

    iget v4, v4, Lcom/iLoong/launcher/Desktop3D/y;->x:F

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/iLoong/launcher/Desktop3D/y;->startTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    :cond_3
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->j:Lcom/iLoong/launcher/Desktop3D/bq;

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/e;->j:Lcom/iLoong/launcher/Desktop3D/bq;

    invoke-virtual {v1}, Lcom/iLoong/launcher/Desktop3D/bq;->A()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/Desktop3D/bq;->d(I)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->h:Lcom/iLoong/launcher/Desktop3D/v;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->h:Lcom/iLoong/launcher/Desktop3D/v;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/v;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->h:Lcom/iLoong/launcher/Desktop3D/v;

    iget-object v0, v0, Lcom/iLoong/launcher/Desktop3D/v;->b:Lcom/iLoong/launcher/Desktop3D/ah;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/ah;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_6

    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->h:Lcom/iLoong/launcher/Desktop3D/v;

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/e;->j:Lcom/iLoong/launcher/Desktop3D/bq;

    invoke-virtual {v1}, Lcom/iLoong/launcher/Desktop3D/bq;->A()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/Desktop3D/v;->d(I)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->h:Lcom/iLoong/launcher/Desktop3D/v;

    invoke-virtual {v0, v4}, Lcom/iLoong/launcher/Desktop3D/v;->a(Z)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->j:Lcom/iLoong/launcher/Desktop3D/bq;

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/e;->j:Lcom/iLoong/launcher/Desktop3D/bq;

    invoke-virtual {v1}, Lcom/iLoong/launcher/Desktop3D/bq;->A()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/Desktop3D/bq;->d(I)V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->h:Lcom/iLoong/launcher/Desktop3D/v;

    iget-object v0, v0, Lcom/iLoong/launcher/Desktop3D/v;->a:Lcom/iLoong/launcher/Desktop3D/f;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/f;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/iLoong/launcher/Desktop3D/e;->c:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    invoke-virtual {v0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->q()V

    if-eqz p1, :cond_7

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->h:Lcom/iLoong/launcher/Desktop3D/v;

    iget-object v0, v0, Lcom/iLoong/launcher/Desktop3D/v;->a:Lcom/iLoong/launcher/Desktop3D/f;

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/Desktop3D/f;->a(Z)V

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->h:Lcom/iLoong/launcher/Desktop3D/v;

    iget-object v0, v0, Lcom/iLoong/launcher/Desktop3D/v;->a:Lcom/iLoong/launcher/Desktop3D/f;

    invoke-virtual {v0, v4}, Lcom/iLoong/launcher/Desktop3D/f;->a(Z)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->j:Lcom/iLoong/launcher/Desktop3D/bq;

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/e;->j:Lcom/iLoong/launcher/Desktop3D/bq;

    invoke-virtual {v1}, Lcom/iLoong/launcher/Desktop3D/bq;->A()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/Desktop3D/bq;->d(I)V

    goto/16 :goto_0

    :cond_8
    sget-object v0, Lcom/iLoong/launcher/Desktop3D/e;->c:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    iget-object v0, v0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->d:Lcom/iLoong/launcher/d/a;

    if-eqz v0, :cond_9

    sget-object v0, Lcom/iLoong/launcher/Desktop3D/e;->c:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    iget-object v0, v0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->d:Lcom/iLoong/launcher/d/a;

    iget-object v0, v0, Lcom/iLoong/launcher/d/a;->c:Lcom/iLoong/launcher/a/h;

    iget-object v0, v0, Lcom/iLoong/launcher/a/h;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_9

    sget-object v0, Lcom/iLoong/launcher/Desktop3D/e;->c:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    iget-object v0, v0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->d:Lcom/iLoong/launcher/d/a;

    iget-boolean v0, v0, Lcom/iLoong/launcher/d/a;->i:Z

    if-eqz v0, :cond_9

    const-string v0, "testdrag"

    const-string v1, " launcher.folderIcon!=null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/iLoong/launcher/Desktop3D/e;->c:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    invoke-virtual {v0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->n()V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->j:Lcom/iLoong/launcher/Desktop3D/bq;

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/e;->j:Lcom/iLoong/launcher/Desktop3D/bq;

    invoke-virtual {v1}, Lcom/iLoong/launcher/Desktop3D/bq;->A()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/Desktop3D/bq;->b(I)Z

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->o:Lcom/iLoong/launcher/d/a;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->j:Lcom/iLoong/launcher/Desktop3D/bq;

    iget-boolean v0, v0, Lcom/iLoong/launcher/Desktop3D/bq;->p:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->p:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->o:Lcom/iLoong/launcher/d/a;

    iget-boolean v0, v0, Lcom/iLoong/launcher/d/a;->j:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->o:Lcom/iLoong/launcher/d/a;

    invoke-virtual {v0, p1}, Lcom/iLoong/launcher/d/a;->d(Z)Z

    move-result v0

    if-eqz v0, :cond_a

    iput-boolean v1, p0, Lcom/iLoong/launcher/Desktop3D/e;->p:Z

    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->o:Lcom/iLoong/launcher/d/a;

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->j:Lcom/iLoong/launcher/Desktop3D/bq;

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/e;->j:Lcom/iLoong/launcher/Desktop3D/bq;

    invoke-virtual {v1}, Lcom/iLoong/launcher/Desktop3D/bq;->A()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/Desktop3D/bq;->b(I)Z

    goto :goto_1

    :cond_b
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->j:Lcom/iLoong/launcher/Desktop3D/bq;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/iLoong/launcher/Desktop3D/e;->c:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    invoke-virtual {v0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->r()V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->j:Lcom/iLoong/launcher/Desktop3D/bq;

    iget-boolean v0, v0, Lcom/iLoong/launcher/Desktop3D/bq;->p:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->p:Z

    if-nez v0, :cond_1

    const-string v0, "testdrag"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " Root3D onHomeKey workspace visible="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/e;->j:Lcom/iLoong/launcher/Desktop3D/bq;

    invoke-virtual {v2}, Lcom/iLoong/launcher/Desktop3D/bq;->isVisible()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->j:Lcom/iLoong/launcher/Desktop3D/bq;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/bq;->show()V

    if-eqz p1, :cond_c

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->j:Lcom/iLoong/launcher/Desktop3D/bq;

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/e;->j:Lcom/iLoong/launcher/Desktop3D/bq;

    invoke-virtual {v1}, Lcom/iLoong/launcher/Desktop3D/bq;->A()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/Desktop3D/bq;->b(I)Z

    goto/16 :goto_0

    :cond_c
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->j:Lcom/iLoong/launcher/Desktop3D/bq;

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/e;->j:Lcom/iLoong/launcher/Desktop3D/bq;

    invoke-virtual {v1}, Lcom/iLoong/launcher/Desktop3D/bq;->A()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/Desktop3D/bq;->d(I)V

    goto/16 :goto_0
.end method

.method public b()Lcom/iLoong/launcher/HotSeat3D/a;
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->m:Lcom/iLoong/launcher/HotSeat3D/a;

    return-object v0
.end method

.method public b(Lcom/iLoong/launcher/UI3DEngine/View3D;)V
    .locals 1

    move-object v0, p1

    check-cast v0, Lcom/iLoong/launcher/Desktop3D/br;

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->i:Lcom/iLoong/launcher/Desktop3D/br;

    sget-boolean v0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->o:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->i:Lcom/iLoong/launcher/Desktop3D/br;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/br;->hide()V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/iLoong/launcher/Desktop3D/e;->addView(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    return-void
.end method

.method public c()Lcom/iLoong/launcher/HotSeat3D/b;
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->m:Lcom/iLoong/launcher/HotSeat3D/a;

    invoke-virtual {v0}, Lcom/iLoong/launcher/HotSeat3D/a;->p()Lcom/iLoong/launcher/HotSeat3D/b;

    move-result-object v0

    return-object v0
.end method

.method public c(Lcom/iLoong/launcher/UI3DEngine/View3D;)V
    .locals 2

    move-object v0, p1

    check-cast v0, Lcom/iLoong/launcher/Desktop3D/bq;

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->j:Lcom/iLoong/launcher/Desktop3D/bq;

    invoke-virtual {p0, p1}, Lcom/iLoong/launcher/Desktop3D/e;->addView(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->m:Lcom/iLoong/launcher/HotSeat3D/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->m:Lcom/iLoong/launcher/HotSeat3D/a;

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/e;->j:Lcom/iLoong/launcher/Desktop3D/bq;

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/HotSeat3D/a;->a(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    :cond_0
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->j:Lcom/iLoong/launcher/Desktop3D/bq;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/bq;->o()V

    invoke-direct {p0}, Lcom/iLoong/launcher/Desktop3D/e;->k()V

    sget-boolean v0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->o:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->j:Lcom/iLoong/launcher/Desktop3D/bq;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/bq;->hide()V

    :cond_1
    return-void
.end method

.method public d(Lcom/iLoong/launcher/UI3DEngine/View3D;)V
    .locals 1

    move-object v0, p1

    check-cast v0, Lcom/iLoong/launcher/Desktop3D/y;

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->k:Lcom/iLoong/launcher/Desktop3D/y;

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->k:Lcom/iLoong/launcher/Desktop3D/y;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/y;->hide()V

    invoke-virtual {p0, p1}, Lcom/iLoong/launcher/Desktop3D/e;->addView(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    return-void
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->h:Lcom/iLoong/launcher/Desktop3D/v;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/v;->isVisible()Z

    move-result v0

    return v0
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0, p1, p2}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    sget-object v0, Lcom/iLoong/launcher/Desktop3D/e;->c:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    iget v0, v0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->b:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/iLoong/launcher/Desktop3D/e;->c:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    iput v2, v0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->b:I

    invoke-direct {p0}, Lcom/iLoong/launcher/Desktop3D/e;->q()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/iLoong/launcher/Desktop3D/e;->c:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    iget v0, v0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->b:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/iLoong/launcher/Desktop3D/e;->c:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    iput v2, v0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->b:I

    invoke-direct {p0}, Lcom/iLoong/launcher/Desktop3D/e;->r()V

    goto :goto_0
.end method

.method public e()V
    .locals 8

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->t:Laurelienribon/tweenengine/Timeline;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->t:Laurelienribon/tweenengine/Timeline;

    invoke-virtual {v0}, Laurelienribon/tweenengine/Timeline;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->m:Lcom/iLoong/launcher/HotSeat3D/a;

    sget v1, Lcom/iLoong/launcher/Desktop3D/e;->s:F

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/HotSeat3D/a;->a(F)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->a:Lcom/iLoong/launcher/HotSeat3D/c;

    sget v1, Lcom/iLoong/launcher/Desktop3D/e;->s:F

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/HotSeat3D/c;->a(F)V

    sget v0, Lcom/iLoong/launcher/Desktop3D/cb;->aF:I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->k:Lcom/iLoong/launcher/Desktop3D/y;

    const/4 v1, 0x1

    sget-object v2, Laurelienribon/tweenengine/equations/Cubic;->OUT:Laurelienribon/tweenengine/equations/Cubic;

    const v3, 0x3e99999a

    iget-object v4, p0, Lcom/iLoong/launcher/Desktop3D/e;->k:Lcom/iLoong/launcher/Desktop3D/y;

    iget v4, v4, Lcom/iLoong/launcher/Desktop3D/y;->x:F

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/iLoong/launcher/Desktop3D/y;->startTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    :cond_2
    invoke-static {}, Laurelienribon/tweenengine/Timeline;->createParallel()Laurelienribon/tweenengine/Timeline;

    move-result-object v0

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->t:Laurelienribon/tweenengine/Timeline;

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->j:Lcom/iLoong/launcher/Desktop3D/bq;

    iget-object v0, v0, Lcom/iLoong/launcher/Desktop3D/bq;->color:Lcom/badlogic/gdx/graphics/Color;

    const/4 v1, 0x0

    iput v1, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    iget-object v7, p0, Lcom/iLoong/launcher/Desktop3D/e;->t:Laurelienribon/tweenengine/Timeline;

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->j:Lcom/iLoong/launcher/Desktop3D/bq;

    const/4 v1, 0x5

    sget-object v2, Laurelienribon/tweenengine/equations/Cubic;->OUT:Laurelienribon/tweenengine/equations/Cubic;

    sget v3, Lcom/iLoong/launcher/Desktop3D/e;->s:F

    const/high16 v4, 0x3f80

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/iLoong/launcher/Desktop3D/bq;->obtainTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    move-result-object v0

    sget v1, Lcom/iLoong/launcher/Desktop3D/e;->s:F

    invoke-virtual {v0, v1}, Laurelienribon/tweenengine/Tween;->delay(F)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/Tween;

    invoke-virtual {v7, v0}, Laurelienribon/tweenengine/Timeline;->push(Laurelienribon/tweenengine/Tween;)Laurelienribon/tweenengine/Timeline;

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->j:Lcom/iLoong/launcher/Desktop3D/bq;

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x5

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/Desktop3D/bq;->setUser(F)V

    iget-object v7, p0, Lcom/iLoong/launcher/Desktop3D/e;->t:Laurelienribon/tweenengine/Timeline;

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->j:Lcom/iLoong/launcher/Desktop3D/bq;

    const/4 v1, 0x7

    sget-object v2, Laurelienribon/tweenengine/equations/Cubic;->OUT:Laurelienribon/tweenengine/equations/Cubic;

    sget v3, Lcom/iLoong/launcher/Desktop3D/e;->s:F

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/iLoong/launcher/Desktop3D/bq;->obtainTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    move-result-object v0

    sget v1, Lcom/iLoong/launcher/Desktop3D/e;->s:F

    invoke-virtual {v0, v1}, Laurelienribon/tweenengine/Tween;->delay(F)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/Tween;

    invoke-virtual {v7, v0}, Laurelienribon/tweenengine/Timeline;->push(Laurelienribon/tweenengine/Tween;)Laurelienribon/tweenengine/Timeline;

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->j:Lcom/iLoong/launcher/Desktop3D/bq;

    const v1, 0x3f666666

    const v2, 0x3f666666

    invoke-virtual {v0, v1, v2}, Lcom/iLoong/launcher/Desktop3D/bq;->setScale(FF)V

    iget-object v7, p0, Lcom/iLoong/launcher/Desktop3D/e;->t:Laurelienribon/tweenengine/Timeline;

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->j:Lcom/iLoong/launcher/Desktop3D/bq;

    const/4 v1, 0x3

    sget-object v2, Laurelienribon/tweenengine/equations/Cubic;->OUT:Laurelienribon/tweenengine/equations/Cubic;

    sget v3, Lcom/iLoong/launcher/Desktop3D/e;->s:F

    const/high16 v4, 0x3f80

    const/high16 v5, 0x3f80

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/iLoong/launcher/Desktop3D/bq;->obtainTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    move-result-object v0

    sget v1, Lcom/iLoong/launcher/Desktop3D/e;->s:F

    invoke-virtual {v0, v1}, Laurelienribon/tweenengine/Tween;->delay(F)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/Tween;

    invoke-virtual {v7, v0}, Laurelienribon/tweenengine/Timeline;->push(Laurelienribon/tweenengine/Tween;)Laurelienribon/tweenengine/Timeline;

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->j:Lcom/iLoong/launcher/Desktop3D/bq;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/bq;->show()V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->i:Lcom/iLoong/launcher/Desktop3D/br;

    iget-object v1, v0, Lcom/iLoong/launcher/Desktop3D/br;->b:Lcom/iLoong/launcher/Desktop3D/aw;

    sget-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->aw:Z

    if-eqz v0, :cond_4

    sget v0, Lcom/iLoong/launcher/Desktop3D/at;->bL:I

    :goto_1
    int-to-float v0, v0

    invoke-virtual {v1, v0}, Lcom/iLoong/launcher/Desktop3D/aw;->setUser(F)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->i:Lcom/iLoong/launcher/Desktop3D/br;

    iget-object v0, v0, Lcom/iLoong/launcher/Desktop3D/br;->b:Lcom/iLoong/launcher/Desktop3D/aw;

    iget-object v0, v0, Lcom/iLoong/launcher/Desktop3D/aw;->b:Lcom/iLoong/launcher/Desktop3D/h;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/h;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/e;->i:Lcom/iLoong/launcher/Desktop3D/br;

    iget-object v1, v1, Lcom/iLoong/launcher/Desktop3D/br;->b:Lcom/iLoong/launcher/Desktop3D/aw;

    iget-object v1, v1, Lcom/iLoong/launcher/Desktop3D/aw;->b:Lcom/iLoong/launcher/Desktop3D/h;

    iget v2, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v3, v0, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->b:F

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/iLoong/launcher/Desktop3D/h;->setColor(FFFF)V

    iget-object v7, p0, Lcom/iLoong/launcher/Desktop3D/e;->t:Laurelienribon/tweenengine/Timeline;

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->i:Lcom/iLoong/launcher/Desktop3D/br;

    iget-object v0, v0, Lcom/iLoong/launcher/Desktop3D/br;->b:Lcom/iLoong/launcher/Desktop3D/aw;

    const/4 v1, 0x7

    sget-object v2, Laurelienribon/tweenengine/equations/Cubic;->IN:Laurelienribon/tweenengine/equations/Cubic;

    sget v3, Lcom/iLoong/launcher/Desktop3D/e;->s:F

    iget-object v4, p0, Lcom/iLoong/launcher/Desktop3D/e;->i:Lcom/iLoong/launcher/Desktop3D/br;

    iget-object v4, v4, Lcom/iLoong/launcher/Desktop3D/br;->b:Lcom/iLoong/launcher/Desktop3D/aw;

    iget v4, v4, Lcom/iLoong/launcher/Desktop3D/aw;->height:F

    neg-float v4, v4

    const/high16 v5, 0x40a0

    div-float v5, v4, v5

    sget-boolean v4, Lcom/iLoong/launcher/Desktop3D/cb;->aw:Z

    if-eqz v4, :cond_5

    sget v4, Lcom/iLoong/launcher/Desktop3D/at;->bL:I

    :goto_2
    int-to-float v4, v4

    add-float/2addr v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/iLoong/launcher/Desktop3D/aw;->obtainTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    move-result-object v0

    invoke-virtual {v7, v0}, Laurelienribon/tweenengine/Timeline;->push(Laurelienribon/tweenengine/Tween;)Laurelienribon/tweenengine/Timeline;

    iget-object v7, p0, Lcom/iLoong/launcher/Desktop3D/e;->t:Laurelienribon/tweenengine/Timeline;

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->i:Lcom/iLoong/launcher/Desktop3D/br;

    iget-object v0, v0, Lcom/iLoong/launcher/Desktop3D/br;->b:Lcom/iLoong/launcher/Desktop3D/aw;

    const/4 v1, 0x5

    sget-object v2, Laurelienribon/tweenengine/equations/Cubic;->IN:Laurelienribon/tweenengine/equations/Cubic;

    sget v3, Lcom/iLoong/launcher/Desktop3D/e;->s:F

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/iLoong/launcher/Desktop3D/aw;->obtainTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    move-result-object v0

    invoke-virtual {v7, v0}, Laurelienribon/tweenengine/Timeline;->push(Laurelienribon/tweenengine/Tween;)Laurelienribon/tweenengine/Timeline;

    iget-object v7, p0, Lcom/iLoong/launcher/Desktop3D/e;->t:Laurelienribon/tweenengine/Timeline;

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->i:Lcom/iLoong/launcher/Desktop3D/br;

    iget-object v0, v0, Lcom/iLoong/launcher/Desktop3D/br;->b:Lcom/iLoong/launcher/Desktop3D/aw;

    const/4 v1, 0x3

    sget-object v2, Laurelienribon/tweenengine/equations/Cubic;->IN:Laurelienribon/tweenengine/equations/Cubic;

    sget v3, Lcom/iLoong/launcher/Desktop3D/e;->s:F

    const v4, 0x3f666666

    const v5, 0x3f666666

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/iLoong/launcher/Desktop3D/aw;->obtainTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    move-result-object v0

    invoke-virtual {v7, v0}, Laurelienribon/tweenengine/Timeline;->push(Laurelienribon/tweenengine/Tween;)Laurelienribon/tweenengine/Timeline;

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->i:Lcom/iLoong/launcher/Desktop3D/br;

    iget-object v0, v0, Lcom/iLoong/launcher/Desktop3D/br;->a:Lcom/iLoong/launcher/Desktop3D/b;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->i:Lcom/iLoong/launcher/Desktop3D/br;

    iget-object v0, v0, Lcom/iLoong/launcher/Desktop3D/br;->a:Lcom/iLoong/launcher/Desktop3D/b;

    iget-object v0, v0, Lcom/iLoong/launcher/Desktop3D/b;->color:Lcom/badlogic/gdx/graphics/Color;

    const/high16 v1, 0x3f80

    iput v1, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    iget-object v7, p0, Lcom/iLoong/launcher/Desktop3D/e;->t:Laurelienribon/tweenengine/Timeline;

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->i:Lcom/iLoong/launcher/Desktop3D/br;

    iget-object v0, v0, Lcom/iLoong/launcher/Desktop3D/br;->a:Lcom/iLoong/launcher/Desktop3D/b;

    const/4 v1, 0x5

    sget-object v2, Laurelienribon/tweenengine/equations/Cubic;->IN:Laurelienribon/tweenengine/equations/Cubic;

    sget v3, Lcom/iLoong/launcher/Desktop3D/e;->s:F

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/iLoong/launcher/Desktop3D/b;->obtainTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    move-result-object v0

    invoke-virtual {v7, v0}, Laurelienribon/tweenengine/Timeline;->push(Laurelienribon/tweenengine/Tween;)Laurelienribon/tweenengine/Timeline;

    :cond_3
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->t:Laurelienribon/tweenengine/Timeline;

    invoke-virtual {v0, p0}, Laurelienribon/tweenengine/Timeline;->setCallback(Laurelienribon/tweenengine/TweenCallback;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/Timeline;

    sget-object v1, Lcom/iLoong/launcher/tween/View3DTweenAccessor;->manager:Laurelienribon/tweenengine/TweenManager;

    invoke-virtual {v0, v1}, Laurelienribon/tweenengine/Timeline;->start(Laurelienribon/tweenengine/TweenManager;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/Timeline;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Laurelienribon/tweenengine/Timeline;->setUserData(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->a:Lcom/iLoong/launcher/HotSeat3D/c;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/HotSeat3D/c;->a(I)V

    sget-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->av:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.cooee.launcher.action.show_workspace"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_4
    const/4 v0, 0x0

    goto/16 :goto_1

    :cond_5
    const/4 v4, 0x0

    goto/16 :goto_2
.end method

.method public e(Lcom/iLoong/launcher/UI3DEngine/View3D;)V
    .locals 1

    move-object v0, p1

    check-cast v0, Lcom/iLoong/launcher/HotSeat3D/c;

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->a:Lcom/iLoong/launcher/HotSeat3D/c;

    invoke-virtual {p0, p1}, Lcom/iLoong/launcher/Desktop3D/e;->addView(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    sget-boolean v0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->o:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->a:Lcom/iLoong/launcher/HotSeat3D/c;

    invoke-virtual {v0}, Lcom/iLoong/launcher/HotSeat3D/c;->d()V

    :cond_0
    return-void
.end method

.method public f()V
    .locals 12

    const/4 v11, 0x5

    const/4 v7, 0x0

    const/high16 v10, 0x3f80

    const v9, 0x3f666666

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->t:Laurelienribon/tweenengine/Timeline;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->t:Laurelienribon/tweenengine/Timeline;

    invoke-virtual {v0}, Laurelienribon/tweenengine/Timeline;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->m:Lcom/iLoong/launcher/HotSeat3D/a;

    invoke-virtual {v0}, Lcom/iLoong/launcher/HotSeat3D/a;->l()V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->a:Lcom/iLoong/launcher/HotSeat3D/c;

    invoke-virtual {v0}, Lcom/iLoong/launcher/HotSeat3D/c;->b()V

    sget v0, Lcom/iLoong/launcher/Desktop3D/cb;->aF:I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->k:Lcom/iLoong/launcher/Desktop3D/y;

    const/4 v1, 0x1

    sget-object v2, Laurelienribon/tweenengine/equations/Cubic;->OUT:Laurelienribon/tweenengine/equations/Cubic;

    iget-object v4, p0, Lcom/iLoong/launcher/Desktop3D/e;->k:Lcom/iLoong/launcher/Desktop3D/y;

    iget v4, v4, Lcom/iLoong/launcher/Desktop3D/y;->x:F

    move v5, v3

    move v6, v3

    invoke-virtual/range {v0 .. v6}, Lcom/iLoong/launcher/Desktop3D/y;->startTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    :cond_2
    invoke-static {}, Laurelienribon/tweenengine/Timeline;->createParallel()Laurelienribon/tweenengine/Timeline;

    move-result-object v0

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->t:Laurelienribon/tweenengine/Timeline;

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->j:Lcom/iLoong/launcher/Desktop3D/bq;

    iget-object v0, v0, Lcom/iLoong/launcher/Desktop3D/bq;->color:Lcom/badlogic/gdx/graphics/Color;

    iput v3, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    iget-object v8, p0, Lcom/iLoong/launcher/Desktop3D/e;->t:Laurelienribon/tweenengine/Timeline;

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->j:Lcom/iLoong/launcher/Desktop3D/bq;

    sget-object v2, Laurelienribon/tweenengine/equations/Cubic;->OUT:Laurelienribon/tweenengine/equations/Cubic;

    move v1, v11

    move v4, v10

    move v5, v3

    move v6, v3

    invoke-virtual/range {v0 .. v6}, Lcom/iLoong/launcher/Desktop3D/bq;->obtainTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    move-result-object v0

    invoke-virtual {v0, v3}, Laurelienribon/tweenengine/Tween;->delay(F)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/Tween;

    invoke-virtual {v8, v0}, Laurelienribon/tweenengine/Timeline;->push(Laurelienribon/tweenengine/Tween;)Laurelienribon/tweenengine/Timeline;

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->j:Lcom/iLoong/launcher/Desktop3D/bq;

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x5

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/Desktop3D/bq;->setUser(F)V

    iget-object v8, p0, Lcom/iLoong/launcher/Desktop3D/e;->t:Laurelienribon/tweenengine/Timeline;

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->j:Lcom/iLoong/launcher/Desktop3D/bq;

    const/4 v1, 0x7

    sget-object v2, Laurelienribon/tweenengine/equations/Cubic;->OUT:Laurelienribon/tweenengine/equations/Cubic;

    move v4, v3

    move v5, v3

    move v6, v3

    invoke-virtual/range {v0 .. v6}, Lcom/iLoong/launcher/Desktop3D/bq;->obtainTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    move-result-object v0

    invoke-virtual {v0, v3}, Laurelienribon/tweenengine/Tween;->delay(F)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/Tween;

    invoke-virtual {v8, v0}, Laurelienribon/tweenengine/Timeline;->push(Laurelienribon/tweenengine/Tween;)Laurelienribon/tweenengine/Timeline;

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->j:Lcom/iLoong/launcher/Desktop3D/bq;

    invoke-virtual {v0, v9, v9}, Lcom/iLoong/launcher/Desktop3D/bq;->setScale(FF)V

    iget-object v8, p0, Lcom/iLoong/launcher/Desktop3D/e;->t:Laurelienribon/tweenengine/Timeline;

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->j:Lcom/iLoong/launcher/Desktop3D/bq;

    const/4 v1, 0x3

    sget-object v2, Laurelienribon/tweenengine/equations/Cubic;->OUT:Laurelienribon/tweenengine/equations/Cubic;

    move v4, v10

    move v5, v10

    move v6, v3

    invoke-virtual/range {v0 .. v6}, Lcom/iLoong/launcher/Desktop3D/bq;->obtainTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    move-result-object v0

    invoke-virtual {v0, v3}, Laurelienribon/tweenengine/Tween;->delay(F)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/Tween;

    invoke-virtual {v8, v0}, Laurelienribon/tweenengine/Timeline;->push(Laurelienribon/tweenengine/Tween;)Laurelienribon/tweenengine/Timeline;

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->j:Lcom/iLoong/launcher/Desktop3D/bq;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/bq;->show()V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->i:Lcom/iLoong/launcher/Desktop3D/br;

    iget-object v1, v0, Lcom/iLoong/launcher/Desktop3D/br;->b:Lcom/iLoong/launcher/Desktop3D/aw;

    sget-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->aw:Z

    if-eqz v0, :cond_4

    sget v0, Lcom/iLoong/launcher/Desktop3D/at;->bL:I

    :goto_1
    int-to-float v0, v0

    invoke-virtual {v1, v0}, Lcom/iLoong/launcher/Desktop3D/aw;->setUser(F)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->i:Lcom/iLoong/launcher/Desktop3D/br;

    iget-object v0, v0, Lcom/iLoong/launcher/Desktop3D/br;->b:Lcom/iLoong/launcher/Desktop3D/aw;

    iget-object v0, v0, Lcom/iLoong/launcher/Desktop3D/aw;->b:Lcom/iLoong/launcher/Desktop3D/h;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/h;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/e;->i:Lcom/iLoong/launcher/Desktop3D/br;

    iget-object v1, v1, Lcom/iLoong/launcher/Desktop3D/br;->b:Lcom/iLoong/launcher/Desktop3D/aw;

    iget-object v1, v1, Lcom/iLoong/launcher/Desktop3D/aw;->b:Lcom/iLoong/launcher/Desktop3D/h;

    iget v2, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v4, v0, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-virtual {v1, v2, v4, v0, v3}, Lcom/iLoong/launcher/Desktop3D/h;->setColor(FFFF)V

    iget-object v8, p0, Lcom/iLoong/launcher/Desktop3D/e;->t:Laurelienribon/tweenengine/Timeline;

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->i:Lcom/iLoong/launcher/Desktop3D/br;

    iget-object v0, v0, Lcom/iLoong/launcher/Desktop3D/br;->b:Lcom/iLoong/launcher/Desktop3D/aw;

    const/4 v1, 0x7

    sget-object v2, Laurelienribon/tweenengine/equations/Cubic;->IN:Laurelienribon/tweenengine/equations/Cubic;

    iget-object v4, p0, Lcom/iLoong/launcher/Desktop3D/e;->i:Lcom/iLoong/launcher/Desktop3D/br;

    iget-object v4, v4, Lcom/iLoong/launcher/Desktop3D/br;->b:Lcom/iLoong/launcher/Desktop3D/aw;

    iget v4, v4, Lcom/iLoong/launcher/Desktop3D/aw;->height:F

    neg-float v4, v4

    const/high16 v5, 0x40a0

    div-float v5, v4, v5

    sget-boolean v4, Lcom/iLoong/launcher/Desktop3D/cb;->aw:Z

    if-eqz v4, :cond_5

    sget v4, Lcom/iLoong/launcher/Desktop3D/at;->bL:I

    :goto_2
    int-to-float v4, v4

    add-float/2addr v4, v5

    move v5, v3

    move v6, v3

    invoke-virtual/range {v0 .. v6}, Lcom/iLoong/launcher/Desktop3D/aw;->obtainTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    move-result-object v0

    invoke-virtual {v8, v0}, Laurelienribon/tweenengine/Timeline;->push(Laurelienribon/tweenengine/Tween;)Laurelienribon/tweenengine/Timeline;

    iget-object v8, p0, Lcom/iLoong/launcher/Desktop3D/e;->t:Laurelienribon/tweenengine/Timeline;

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->i:Lcom/iLoong/launcher/Desktop3D/br;

    iget-object v0, v0, Lcom/iLoong/launcher/Desktop3D/br;->b:Lcom/iLoong/launcher/Desktop3D/aw;

    sget-object v2, Laurelienribon/tweenengine/equations/Cubic;->IN:Laurelienribon/tweenengine/equations/Cubic;

    move v1, v11

    move v4, v3

    move v5, v3

    move v6, v3

    invoke-virtual/range {v0 .. v6}, Lcom/iLoong/launcher/Desktop3D/aw;->obtainTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    move-result-object v0

    invoke-virtual {v8, v0}, Laurelienribon/tweenengine/Timeline;->push(Laurelienribon/tweenengine/Tween;)Laurelienribon/tweenengine/Timeline;

    iget-object v8, p0, Lcom/iLoong/launcher/Desktop3D/e;->t:Laurelienribon/tweenengine/Timeline;

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->i:Lcom/iLoong/launcher/Desktop3D/br;

    iget-object v0, v0, Lcom/iLoong/launcher/Desktop3D/br;->b:Lcom/iLoong/launcher/Desktop3D/aw;

    const/4 v1, 0x3

    sget-object v2, Laurelienribon/tweenengine/equations/Cubic;->IN:Laurelienribon/tweenengine/equations/Cubic;

    move v4, v9

    move v5, v9

    move v6, v3

    invoke-virtual/range {v0 .. v6}, Lcom/iLoong/launcher/Desktop3D/aw;->obtainTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    move-result-object v0

    invoke-virtual {v8, v0}, Laurelienribon/tweenengine/Timeline;->push(Laurelienribon/tweenengine/Tween;)Laurelienribon/tweenengine/Timeline;

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->i:Lcom/iLoong/launcher/Desktop3D/br;

    iget-object v0, v0, Lcom/iLoong/launcher/Desktop3D/br;->a:Lcom/iLoong/launcher/Desktop3D/b;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->i:Lcom/iLoong/launcher/Desktop3D/br;

    iget-object v0, v0, Lcom/iLoong/launcher/Desktop3D/br;->a:Lcom/iLoong/launcher/Desktop3D/b;

    iget-object v0, v0, Lcom/iLoong/launcher/Desktop3D/b;->color:Lcom/badlogic/gdx/graphics/Color;

    iput v10, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    iget-object v8, p0, Lcom/iLoong/launcher/Desktop3D/e;->t:Laurelienribon/tweenengine/Timeline;

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->i:Lcom/iLoong/launcher/Desktop3D/br;

    iget-object v0, v0, Lcom/iLoong/launcher/Desktop3D/br;->a:Lcom/iLoong/launcher/Desktop3D/b;

    sget-object v2, Laurelienribon/tweenengine/equations/Cubic;->IN:Laurelienribon/tweenengine/equations/Cubic;

    move v1, v11

    move v4, v3

    move v5, v3

    move v6, v3

    invoke-virtual/range {v0 .. v6}, Lcom/iLoong/launcher/Desktop3D/b;->obtainTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    move-result-object v0

    invoke-virtual {v8, v0}, Laurelienribon/tweenengine/Timeline;->push(Laurelienribon/tweenengine/Tween;)Laurelienribon/tweenengine/Timeline;

    :cond_3
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->t:Laurelienribon/tweenengine/Timeline;

    invoke-virtual {v0, p0}, Laurelienribon/tweenengine/Timeline;->setCallback(Laurelienribon/tweenengine/TweenCallback;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/Timeline;

    sget-object v1, Lcom/iLoong/launcher/tween/View3DTweenAccessor;->manager:Laurelienribon/tweenengine/TweenManager;

    invoke-virtual {v0, v1}, Laurelienribon/tweenengine/Timeline;->start(Laurelienribon/tweenengine/TweenManager;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/Timeline;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Laurelienribon/tweenengine/Timeline;->setUserData(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->a:Lcom/iLoong/launcher/HotSeat3D/c;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/HotSeat3D/c;->a(I)V

    sget-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->av:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.cooee.launcher.action.show_workspace"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_4
    move v0, v7

    goto/16 :goto_1

    :cond_5
    move v4, v7

    goto/16 :goto_2
.end method

.method public f(Lcom/iLoong/launcher/UI3DEngine/View3D;)V
    .locals 1

    move-object v0, p1

    check-cast v0, Lcom/iLoong/launcher/Desktop3D/bs;

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->l:Lcom/iLoong/launcher/Desktop3D/bs;

    invoke-virtual {p0, p1}, Lcom/iLoong/launcher/Desktop3D/e;->addView(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    sget-boolean v0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->o:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->l:Lcom/iLoong/launcher/Desktop3D/bs;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/bs;->d()V

    :cond_0
    return-void
.end method

.method public g()V
    .locals 8

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->t:Laurelienribon/tweenengine/Timeline;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->t:Laurelienribon/tweenengine/Timeline;

    invoke-virtual {v0}, Laurelienribon/tweenengine/Timeline;->isStarted()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->b:Z

    if-eqz v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->aw:Z

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/e;->i:Lcom/iLoong/launcher/Desktop3D/br;

    invoke-virtual {v1}, Lcom/iLoong/launcher/Desktop3D/br;->show()V

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/e;->l:Lcom/iLoong/launcher/Desktop3D/bs;

    invoke-virtual {v1}, Lcom/iLoong/launcher/Desktop3D/bs;->hide()V

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->m:Lcom/iLoong/launcher/HotSeat3D/a;

    invoke-virtual {v0}, Lcom/iLoong/launcher/HotSeat3D/a;->hide()V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->a:Lcom/iLoong/launcher/HotSeat3D/c;

    invoke-virtual {v0}, Lcom/iLoong/launcher/HotSeat3D/c;->hide()V

    :cond_3
    sget v0, Lcom/iLoong/launcher/Desktop3D/cb;->aF:I

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->k:Lcom/iLoong/launcher/Desktop3D/y;

    const/4 v1, 0x1

    sget-object v2, Laurelienribon/tweenengine/equations/Cubic;->OUT:Laurelienribon/tweenengine/equations/Cubic;

    const v3, 0x3e99999a

    iget-object v4, p0, Lcom/iLoong/launcher/Desktop3D/e;->k:Lcom/iLoong/launcher/Desktop3D/y;

    iget v4, v4, Lcom/iLoong/launcher/Desktop3D/y;->x:F

    iget-object v5, p0, Lcom/iLoong/launcher/Desktop3D/e;->k:Lcom/iLoong/launcher/Desktop3D/y;

    iget v5, v5, Lcom/iLoong/launcher/Desktop3D/y;->height:F

    neg-float v5, v5

    const/high16 v6, 0x3fc0

    mul-float/2addr v5, v6

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/iLoong/launcher/Desktop3D/y;->startTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    :cond_4
    invoke-static {}, Laurelienribon/tweenengine/Timeline;->createParallel()Laurelienribon/tweenengine/Timeline;

    move-result-object v0

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->t:Laurelienribon/tweenengine/Timeline;

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->i:Lcom/iLoong/launcher/Desktop3D/br;

    iget-object v1, v0, Lcom/iLoong/launcher/Desktop3D/br;->b:Lcom/iLoong/launcher/Desktop3D/aw;

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->i:Lcom/iLoong/launcher/Desktop3D/br;

    iget-object v0, v0, Lcom/iLoong/launcher/Desktop3D/br;->b:Lcom/iLoong/launcher/Desktop3D/aw;

    iget v0, v0, Lcom/iLoong/launcher/Desktop3D/aw;->height:F

    neg-float v0, v0

    const/high16 v2, 0x40a0

    div-float v2, v0, v2

    sget-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->aw:Z

    if-eqz v0, :cond_8

    sget v0, Lcom/iLoong/launcher/Desktop3D/at;->bL:I

    :goto_2
    int-to-float v0, v0

    add-float/2addr v0, v2

    invoke-virtual {v1, v0}, Lcom/iLoong/launcher/Desktop3D/aw;->setUser(F)V

    iget-object v7, p0, Lcom/iLoong/launcher/Desktop3D/e;->t:Laurelienribon/tweenengine/Timeline;

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->i:Lcom/iLoong/launcher/Desktop3D/br;

    iget-object v0, v0, Lcom/iLoong/launcher/Desktop3D/br;->b:Lcom/iLoong/launcher/Desktop3D/aw;

    const/4 v1, 0x7

    sget-object v2, Laurelienribon/tweenengine/equations/Cubic;->OUT:Laurelienribon/tweenengine/equations/Cubic;

    sget v3, Lcom/iLoong/launcher/Desktop3D/e;->s:F

    sget-boolean v4, Lcom/iLoong/launcher/Desktop3D/cb;->aw:Z

    if-eqz v4, :cond_9

    sget v4, Lcom/iLoong/launcher/Desktop3D/at;->bL:I

    :goto_3
    int-to-float v4, v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/iLoong/launcher/Desktop3D/aw;->obtainTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    move-result-object v0

    sget v1, Lcom/iLoong/launcher/Desktop3D/e;->s:F

    invoke-virtual {v0, v1}, Laurelienribon/tweenengine/Tween;->delay(F)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/Tween;

    invoke-virtual {v7, v0}, Laurelienribon/tweenengine/Timeline;->push(Laurelienribon/tweenengine/Tween;)Laurelienribon/tweenengine/Timeline;

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->i:Lcom/iLoong/launcher/Desktop3D/br;

    iget-object v0, v0, Lcom/iLoong/launcher/Desktop3D/br;->b:Lcom/iLoong/launcher/Desktop3D/aw;

    iget-object v0, v0, Lcom/iLoong/launcher/Desktop3D/aw;->color:Lcom/badlogic/gdx/graphics/Color;

    const/4 v1, 0x0

    iput v1, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    iget-object v7, p0, Lcom/iLoong/launcher/Desktop3D/e;->t:Laurelienribon/tweenengine/Timeline;

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->i:Lcom/iLoong/launcher/Desktop3D/br;

    iget-object v0, v0, Lcom/iLoong/launcher/Desktop3D/br;->b:Lcom/iLoong/launcher/Desktop3D/aw;

    const/4 v1, 0x5

    sget-object v2, Laurelienribon/tweenengine/equations/Cubic;->OUT:Laurelienribon/tweenengine/equations/Cubic;

    sget v3, Lcom/iLoong/launcher/Desktop3D/e;->s:F

    const/high16 v4, 0x3f80

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/iLoong/launcher/Desktop3D/aw;->obtainTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    move-result-object v0

    sget v1, Lcom/iLoong/launcher/Desktop3D/e;->s:F

    invoke-virtual {v0, v1}, Laurelienribon/tweenengine/Tween;->delay(F)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/Tween;

    invoke-virtual {v7, v0}, Laurelienribon/tweenengine/Timeline;->push(Laurelienribon/tweenengine/Tween;)Laurelienribon/tweenengine/Timeline;

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->i:Lcom/iLoong/launcher/Desktop3D/br;

    iget-object v0, v0, Lcom/iLoong/launcher/Desktop3D/br;->b:Lcom/iLoong/launcher/Desktop3D/aw;

    const v1, 0x3f666666

    const v2, 0x3f666666

    invoke-virtual {v0, v1, v2}, Lcom/iLoong/launcher/Desktop3D/aw;->setScale(FF)V

    iget-object v7, p0, Lcom/iLoong/launcher/Desktop3D/e;->t:Laurelienribon/tweenengine/Timeline;

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->i:Lcom/iLoong/launcher/Desktop3D/br;

    iget-object v0, v0, Lcom/iLoong/launcher/Desktop3D/br;->b:Lcom/iLoong/launcher/Desktop3D/aw;

    const/4 v1, 0x3

    sget-object v2, Laurelienribon/tweenengine/equations/Cubic;->OUT:Laurelienribon/tweenengine/equations/Cubic;

    sget v3, Lcom/iLoong/launcher/Desktop3D/e;->s:F

    const/high16 v4, 0x3f80

    const/high16 v5, 0x3f80

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/iLoong/launcher/Desktop3D/aw;->obtainTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    move-result-object v0

    sget v1, Lcom/iLoong/launcher/Desktop3D/e;->s:F

    invoke-virtual {v0, v1}, Laurelienribon/tweenengine/Tween;->delay(F)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/Tween;

    invoke-virtual {v7, v0}, Laurelienribon/tweenengine/Timeline;->push(Laurelienribon/tweenengine/Tween;)Laurelienribon/tweenengine/Timeline;

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->i:Lcom/iLoong/launcher/Desktop3D/br;

    iget-object v0, v0, Lcom/iLoong/launcher/Desktop3D/br;->a:Lcom/iLoong/launcher/Desktop3D/b;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->i:Lcom/iLoong/launcher/Desktop3D/br;

    iget-object v0, v0, Lcom/iLoong/launcher/Desktop3D/br;->a:Lcom/iLoong/launcher/Desktop3D/b;

    iget-object v0, v0, Lcom/iLoong/launcher/Desktop3D/b;->color:Lcom/badlogic/gdx/graphics/Color;

    const/4 v1, 0x0

    iput v1, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    iget-object v7, p0, Lcom/iLoong/launcher/Desktop3D/e;->t:Laurelienribon/tweenengine/Timeline;

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->i:Lcom/iLoong/launcher/Desktop3D/br;

    iget-object v0, v0, Lcom/iLoong/launcher/Desktop3D/br;->a:Lcom/iLoong/launcher/Desktop3D/b;

    const/4 v1, 0x5

    sget-object v2, Laurelienribon/tweenengine/equations/Cubic;->OUT:Laurelienribon/tweenengine/equations/Cubic;

    sget v3, Lcom/iLoong/launcher/Desktop3D/e;->s:F

    const/high16 v4, 0x3f80

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/iLoong/launcher/Desktop3D/b;->obtainTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    move-result-object v0

    sget v1, Lcom/iLoong/launcher/Desktop3D/e;->s:F

    invoke-virtual {v0, v1}, Laurelienribon/tweenengine/Tween;->delay(F)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/Tween;

    invoke-virtual {v7, v0}, Laurelienribon/tweenengine/Timeline;->push(Laurelienribon/tweenengine/Tween;)Laurelienribon/tweenengine/Timeline;

    :cond_5
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->j:Lcom/iLoong/launcher/Desktop3D/bq;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/Desktop3D/bq;->setUser(F)V

    iget-object v7, p0, Lcom/iLoong/launcher/Desktop3D/e;->t:Laurelienribon/tweenengine/Timeline;

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->j:Lcom/iLoong/launcher/Desktop3D/bq;

    const/4 v1, 0x7

    sget-object v2, Laurelienribon/tweenengine/equations/Cubic;->IN:Laurelienribon/tweenengine/equations/Cubic;

    sget v3, Lcom/iLoong/launcher/Desktop3D/e;->s:F

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x5

    int-to-float v4, v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/iLoong/launcher/Desktop3D/bq;->obtainTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    move-result-object v0

    invoke-virtual {v7, v0}, Laurelienribon/tweenengine/Timeline;->push(Laurelienribon/tweenengine/Tween;)Laurelienribon/tweenengine/Timeline;

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->j:Lcom/iLoong/launcher/Desktop3D/bq;

    iget-object v0, v0, Lcom/iLoong/launcher/Desktop3D/bq;->color:Lcom/badlogic/gdx/graphics/Color;

    const/high16 v1, 0x3f80

    iput v1, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    iget-object v7, p0, Lcom/iLoong/launcher/Desktop3D/e;->t:Laurelienribon/tweenengine/Timeline;

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->j:Lcom/iLoong/launcher/Desktop3D/bq;

    const/4 v1, 0x5

    sget-object v2, Laurelienribon/tweenengine/equations/Cubic;->IN:Laurelienribon/tweenengine/equations/Cubic;

    sget v3, Lcom/iLoong/launcher/Desktop3D/e;->s:F

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/iLoong/launcher/Desktop3D/bq;->obtainTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    move-result-object v0

    invoke-virtual {v7, v0}, Laurelienribon/tweenengine/Timeline;->push(Laurelienribon/tweenengine/Tween;)Laurelienribon/tweenengine/Timeline;

    iget-object v7, p0, Lcom/iLoong/launcher/Desktop3D/e;->t:Laurelienribon/tweenengine/Timeline;

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->j:Lcom/iLoong/launcher/Desktop3D/bq;

    const/4 v1, 0x3

    sget-object v2, Laurelienribon/tweenengine/equations/Cubic;->IN:Laurelienribon/tweenengine/equations/Cubic;

    sget v3, Lcom/iLoong/launcher/Desktop3D/e;->s:F

    const v4, 0x3f666666

    const v5, 0x3f666666

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/iLoong/launcher/Desktop3D/bq;->obtainTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    move-result-object v0

    invoke-virtual {v7, v0}, Laurelienribon/tweenengine/Timeline;->push(Laurelienribon/tweenengine/Tween;)Laurelienribon/tweenengine/Timeline;

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->t:Laurelienribon/tweenengine/Timeline;

    invoke-virtual {v0, p0}, Laurelienribon/tweenengine/Timeline;->setCallback(Laurelienribon/tweenengine/TweenCallback;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/Timeline;

    sget-object v1, Lcom/iLoong/launcher/tween/View3DTweenAccessor;->manager:Laurelienribon/tweenengine/TweenManager;

    invoke-virtual {v0, v1}, Laurelienribon/tweenengine/Timeline;->start(Laurelienribon/tweenengine/TweenManager;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/Timeline;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Laurelienribon/tweenengine/Timeline;->setUserData(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->a:Lcom/iLoong/launcher/HotSeat3D/c;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/HotSeat3D/c;->a(I)V

    invoke-static {}, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->sendStartCoverMTKWidgetMsg()V

    invoke-static {}, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->sendHideWorkspaceMsg()V

    invoke-static {}, Lcom/iLoong/launcher/cling/i;->a()Lcom/iLoong/launcher/cling/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iLoong/launcher/cling/i;->g()V

    sget-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->av:Z

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.cooee.launcher.action.show_app"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->sendBroadcast(Landroid/content/Intent;)V

    :cond_6
    invoke-static {}, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->sysPlaySoundEffect()V

    goto/16 :goto_0

    :cond_7
    const/4 v0, 0x1

    goto/16 :goto_1

    :cond_8
    const/4 v0, 0x0

    goto/16 :goto_2

    :cond_9
    const/4 v4, 0x0

    goto/16 :goto_3
.end method

.method public g(Lcom/iLoong/launcher/UI3DEngine/View3D;)V
    .locals 0

    check-cast p1, Lcom/iLoong/launcher/Desktop3D/x;

    iput-object p1, p0, Lcom/iLoong/launcher/Desktop3D/e;->f:Lcom/iLoong/launcher/Desktop3D/x;

    return-void
.end method

.method public h()V
    .locals 13

    const/4 v7, 0x0

    const/4 v1, 0x1

    const v12, 0x3f666666

    const/high16 v11, 0x3f80

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->t:Laurelienribon/tweenengine/Timeline;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->t:Laurelienribon/tweenengine/Timeline;

    invoke-virtual {v0}, Laurelienribon/tweenengine/Timeline;->isStarted()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->b:Z

    if-eqz v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->aw:Z

    if-eqz v0, :cond_8

    move v0, v7

    :goto_1
    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/e;->i:Lcom/iLoong/launcher/Desktop3D/br;

    invoke-virtual {v2}, Lcom/iLoong/launcher/Desktop3D/br;->a()V

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/e;->l:Lcom/iLoong/launcher/Desktop3D/bs;

    invoke-virtual {v2}, Lcom/iLoong/launcher/Desktop3D/bs;->c()V

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->m:Lcom/iLoong/launcher/HotSeat3D/a;

    invoke-virtual {v0}, Lcom/iLoong/launcher/HotSeat3D/a;->n()V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->a:Lcom/iLoong/launcher/HotSeat3D/c;

    invoke-virtual {v0}, Lcom/iLoong/launcher/HotSeat3D/c;->e()V

    :cond_3
    sget v0, Lcom/iLoong/launcher/Desktop3D/cb;->aF:I

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->k:Lcom/iLoong/launcher/Desktop3D/y;

    sget-object v2, Laurelienribon/tweenengine/equations/Cubic;->OUT:Laurelienribon/tweenengine/equations/Cubic;

    iget-object v4, p0, Lcom/iLoong/launcher/Desktop3D/e;->k:Lcom/iLoong/launcher/Desktop3D/y;

    iget v4, v4, Lcom/iLoong/launcher/Desktop3D/y;->x:F

    iget-object v5, p0, Lcom/iLoong/launcher/Desktop3D/e;->k:Lcom/iLoong/launcher/Desktop3D/y;

    iget v5, v5, Lcom/iLoong/launcher/Desktop3D/y;->height:F

    neg-float v5, v5

    const/high16 v6, 0x3fc0

    mul-float/2addr v5, v6

    move v6, v3

    invoke-virtual/range {v0 .. v6}, Lcom/iLoong/launcher/Desktop3D/y;->startTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    :cond_4
    invoke-static {}, Laurelienribon/tweenengine/Timeline;->createParallel()Laurelienribon/tweenengine/Timeline;

    move-result-object v0

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->t:Laurelienribon/tweenengine/Timeline;

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->i:Lcom/iLoong/launcher/Desktop3D/br;

    iget-object v2, v0, Lcom/iLoong/launcher/Desktop3D/br;->b:Lcom/iLoong/launcher/Desktop3D/aw;

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->i:Lcom/iLoong/launcher/Desktop3D/br;

    iget-object v0, v0, Lcom/iLoong/launcher/Desktop3D/br;->b:Lcom/iLoong/launcher/Desktop3D/aw;

    iget v0, v0, Lcom/iLoong/launcher/Desktop3D/aw;->height:F

    neg-float v0, v0

    const/high16 v4, 0x40a0

    div-float v4, v0, v4

    sget-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->aw:Z

    if-eqz v0, :cond_9

    sget v0, Lcom/iLoong/launcher/Desktop3D/at;->bL:I

    :goto_2
    int-to-float v0, v0

    add-float/2addr v0, v4

    invoke-virtual {v2, v0}, Lcom/iLoong/launcher/Desktop3D/aw;->setUser(F)V

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/e;->t:Laurelienribon/tweenengine/Timeline;

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->i:Lcom/iLoong/launcher/Desktop3D/br;

    iget-object v4, v0, Lcom/iLoong/launcher/Desktop3D/br;->b:Lcom/iLoong/launcher/Desktop3D/aw;

    const/4 v5, 0x7

    sget-object v6, Laurelienribon/tweenengine/equations/Cubic;->OUT:Laurelienribon/tweenengine/equations/Cubic;

    sget-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->aw:Z

    if-eqz v0, :cond_5

    sget v7, Lcom/iLoong/launcher/Desktop3D/at;->bL:I

    :cond_5
    int-to-float v8, v7

    move v7, v3

    move v9, v3

    move v10, v3

    invoke-virtual/range {v4 .. v10}, Lcom/iLoong/launcher/Desktop3D/aw;->obtainTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    move-result-object v0

    invoke-virtual {v0, v3}, Laurelienribon/tweenengine/Tween;->delay(F)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/Tween;

    invoke-virtual {v2, v0}, Laurelienribon/tweenengine/Timeline;->push(Laurelienribon/tweenengine/Tween;)Laurelienribon/tweenengine/Timeline;

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->i:Lcom/iLoong/launcher/Desktop3D/br;

    iget-object v0, v0, Lcom/iLoong/launcher/Desktop3D/br;->b:Lcom/iLoong/launcher/Desktop3D/aw;

    iget-object v0, v0, Lcom/iLoong/launcher/Desktop3D/aw;->color:Lcom/badlogic/gdx/graphics/Color;

    iput v3, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/e;->t:Laurelienribon/tweenengine/Timeline;

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->i:Lcom/iLoong/launcher/Desktop3D/br;

    iget-object v4, v0, Lcom/iLoong/launcher/Desktop3D/br;->b:Lcom/iLoong/launcher/Desktop3D/aw;

    const/4 v5, 0x5

    sget-object v6, Laurelienribon/tweenengine/equations/Cubic;->OUT:Laurelienribon/tweenengine/equations/Cubic;

    move v7, v3

    move v8, v11

    move v9, v3

    move v10, v3

    invoke-virtual/range {v4 .. v10}, Lcom/iLoong/launcher/Desktop3D/aw;->obtainTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    move-result-object v0

    invoke-virtual {v0, v3}, Laurelienribon/tweenengine/Tween;->delay(F)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/Tween;

    invoke-virtual {v2, v0}, Laurelienribon/tweenengine/Timeline;->push(Laurelienribon/tweenengine/Tween;)Laurelienribon/tweenengine/Timeline;

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->i:Lcom/iLoong/launcher/Desktop3D/br;

    iget-object v0, v0, Lcom/iLoong/launcher/Desktop3D/br;->b:Lcom/iLoong/launcher/Desktop3D/aw;

    invoke-virtual {v0, v12, v12}, Lcom/iLoong/launcher/Desktop3D/aw;->setScale(FF)V

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/e;->t:Laurelienribon/tweenengine/Timeline;

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->i:Lcom/iLoong/launcher/Desktop3D/br;

    iget-object v4, v0, Lcom/iLoong/launcher/Desktop3D/br;->b:Lcom/iLoong/launcher/Desktop3D/aw;

    const/4 v5, 0x3

    sget-object v6, Laurelienribon/tweenengine/equations/Cubic;->OUT:Laurelienribon/tweenengine/equations/Cubic;

    move v7, v3

    move v8, v11

    move v9, v11

    move v10, v3

    invoke-virtual/range {v4 .. v10}, Lcom/iLoong/launcher/Desktop3D/aw;->obtainTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    move-result-object v0

    invoke-virtual {v0, v3}, Laurelienribon/tweenengine/Tween;->delay(F)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/Tween;

    invoke-virtual {v2, v0}, Laurelienribon/tweenengine/Timeline;->push(Laurelienribon/tweenengine/Tween;)Laurelienribon/tweenengine/Timeline;

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->i:Lcom/iLoong/launcher/Desktop3D/br;

    iget-object v0, v0, Lcom/iLoong/launcher/Desktop3D/br;->a:Lcom/iLoong/launcher/Desktop3D/b;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->i:Lcom/iLoong/launcher/Desktop3D/br;

    iget-object v0, v0, Lcom/iLoong/launcher/Desktop3D/br;->a:Lcom/iLoong/launcher/Desktop3D/b;

    iget-object v0, v0, Lcom/iLoong/launcher/Desktop3D/b;->color:Lcom/badlogic/gdx/graphics/Color;

    iput v3, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/e;->t:Laurelienribon/tweenengine/Timeline;

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->i:Lcom/iLoong/launcher/Desktop3D/br;

    iget-object v4, v0, Lcom/iLoong/launcher/Desktop3D/br;->a:Lcom/iLoong/launcher/Desktop3D/b;

    const/4 v5, 0x5

    sget-object v6, Laurelienribon/tweenengine/equations/Cubic;->OUT:Laurelienribon/tweenengine/equations/Cubic;

    move v7, v3

    move v8, v11

    move v9, v3

    move v10, v3

    invoke-virtual/range {v4 .. v10}, Lcom/iLoong/launcher/Desktop3D/b;->obtainTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    move-result-object v0

    invoke-virtual {v0, v3}, Laurelienribon/tweenengine/Tween;->delay(F)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/Tween;

    invoke-virtual {v2, v0}, Laurelienribon/tweenengine/Timeline;->push(Laurelienribon/tweenengine/Tween;)Laurelienribon/tweenengine/Timeline;

    :cond_6
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->j:Lcom/iLoong/launcher/Desktop3D/bq;

    invoke-virtual {v0, v3}, Lcom/iLoong/launcher/Desktop3D/bq;->setUser(F)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->t:Laurelienribon/tweenengine/Timeline;

    iget-object v4, p0, Lcom/iLoong/launcher/Desktop3D/e;->j:Lcom/iLoong/launcher/Desktop3D/bq;

    const/4 v5, 0x7

    sget-object v6, Laurelienribon/tweenengine/equations/Cubic;->IN:Laurelienribon/tweenengine/equations/Cubic;

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x5

    int-to-float v8, v2

    move v7, v3

    move v9, v3

    move v10, v3

    invoke-virtual/range {v4 .. v10}, Lcom/iLoong/launcher/Desktop3D/bq;->obtainTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    move-result-object v2

    invoke-virtual {v0, v2}, Laurelienribon/tweenengine/Timeline;->push(Laurelienribon/tweenengine/Tween;)Laurelienribon/tweenengine/Timeline;

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->j:Lcom/iLoong/launcher/Desktop3D/bq;

    iget-object v0, v0, Lcom/iLoong/launcher/Desktop3D/bq;->color:Lcom/badlogic/gdx/graphics/Color;

    iput v11, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->t:Laurelienribon/tweenengine/Timeline;

    iget-object v4, p0, Lcom/iLoong/launcher/Desktop3D/e;->j:Lcom/iLoong/launcher/Desktop3D/bq;

    const/4 v5, 0x5

    sget-object v6, Laurelienribon/tweenengine/equations/Cubic;->IN:Laurelienribon/tweenengine/equations/Cubic;

    move v7, v3

    move v8, v3

    move v9, v3

    move v10, v3

    invoke-virtual/range {v4 .. v10}, Lcom/iLoong/launcher/Desktop3D/bq;->obtainTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    move-result-object v2

    invoke-virtual {v0, v2}, Laurelienribon/tweenengine/Timeline;->push(Laurelienribon/tweenengine/Tween;)Laurelienribon/tweenengine/Timeline;

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->t:Laurelienribon/tweenengine/Timeline;

    iget-object v4, p0, Lcom/iLoong/launcher/Desktop3D/e;->j:Lcom/iLoong/launcher/Desktop3D/bq;

    const/4 v5, 0x3

    sget-object v6, Laurelienribon/tweenengine/equations/Cubic;->IN:Laurelienribon/tweenengine/equations/Cubic;

    move v7, v3

    move v8, v12

    move v9, v12

    move v10, v3

    invoke-virtual/range {v4 .. v10}, Lcom/iLoong/launcher/Desktop3D/bq;->obtainTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    move-result-object v2

    invoke-virtual {v0, v2}, Laurelienribon/tweenengine/Timeline;->push(Laurelienribon/tweenengine/Tween;)Laurelienribon/tweenengine/Timeline;

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->t:Laurelienribon/tweenengine/Timeline;

    invoke-virtual {v0, p0}, Laurelienribon/tweenengine/Timeline;->setCallback(Laurelienribon/tweenengine/TweenCallback;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/Timeline;

    sget-object v2, Lcom/iLoong/launcher/tween/View3DTweenAccessor;->manager:Laurelienribon/tweenengine/TweenManager;

    invoke-virtual {v0, v2}, Laurelienribon/tweenengine/Timeline;->start(Laurelienribon/tweenengine/TweenManager;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/Timeline;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Laurelienribon/tweenengine/Timeline;->setUserData(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->a:Lcom/iLoong/launcher/HotSeat3D/c;

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/HotSeat3D/c;->a(I)V

    invoke-static {}, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->sendStartCoverMTKWidgetMsg()V

    invoke-static {}, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->sendHideWorkspaceMsg()V

    invoke-static {}, Lcom/iLoong/launcher/cling/i;->a()Lcom/iLoong/launcher/cling/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iLoong/launcher/cling/i;->g()V

    sget-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->av:Z

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.cooee.launcher.action.show_app"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->sendBroadcast(Landroid/content/Intent;)V

    :cond_7
    invoke-static {}, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->sysPlaySoundEffect()V

    goto/16 :goto_0

    :cond_8
    move v0, v1

    goto/16 :goto_1

    :cond_9
    move v0, v7

    goto/16 :goto_2
.end method

.method public h(Lcom/iLoong/launcher/UI3DEngine/View3D;)V
    .locals 2

    sget v0, Lcom/iLoong/launcher/Desktop3D/at;->ca:I

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->D:I

    new-instance v0, Lcom/iLoong/launcher/Desktop3D/am;

    const-string v1, "hotbgView"

    invoke-direct {v0, p0, v1}, Lcom/iLoong/launcher/Desktop3D/am;-><init>(Lcom/iLoong/launcher/Desktop3D/e;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->C:Lcom/iLoong/launcher/Desktop3D/am;

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->C:Lcom/iLoong/launcher/Desktop3D/am;

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/Desktop3D/e;->addView(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->C:Lcom/iLoong/launcher/Desktop3D/am;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/am;->hide()V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->m:Lcom/iLoong/launcher/HotSeat3D/a;

    invoke-virtual {v0}, Lcom/iLoong/launcher/HotSeat3D/a;->bringToFront()V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->a:Lcom/iLoong/launcher/HotSeat3D/c;

    invoke-virtual {v0}, Lcom/iLoong/launcher/HotSeat3D/c;->bringToFront()V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->k:Lcom/iLoong/launcher/Desktop3D/y;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/y;->bringToFront()V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->f:Lcom/iLoong/launcher/Desktop3D/x;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/x;->hide()V

    invoke-virtual {p0, p1}, Lcom/iLoong/launcher/Desktop3D/e;->addView(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    return-void
.end method

.method public i()V
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->j:Lcom/iLoong/launcher/Desktop3D/bq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->j:Lcom/iLoong/launcher/Desktop3D/bq;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/bq;->B()V

    :cond_0
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->i:Lcom/iLoong/launcher/Desktop3D/br;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->i:Lcom/iLoong/launcher/Desktop3D/br;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/br;->b()V

    :cond_1
    return-void
.end method

.method public keyDown(I)Z
    .locals 1

    const/16 v0, 0x54

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
    .locals 1

    const/16 v0, 0x54

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/iLoong/launcher/Desktop3D/e;->m()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->keyUp(I)Z

    move-result v0

    goto :goto_0
.end method

.method public onCtrlEvent(Lcom/iLoong/launcher/UI3DEngine/View3D;I)Z
    .locals 13

    const v12, 0x3e99999a

    const/4 v9, 0x0

    const/high16 v11, 0x3f80

    const/4 v6, 0x0

    const/4 v10, 0x1

    instance-of v0, p1, Lcom/iLoong/launcher/HotSeat3D/a;

    if-eqz v0, :cond_0

    sparse-switch p2, :sswitch_data_0

    :cond_0
    :goto_0
    :sswitch_0
    instance-of v0, p1, Lcom/iLoong/launcher/HotSeat3D/c;

    if-eqz v0, :cond_1

    packed-switch p2, :pswitch_data_0

    :cond_1
    :goto_1
    instance-of v0, p1, Lcom/iLoong/launcher/HotSeat3D/a;

    if-eqz v0, :cond_2

    packed-switch p2, :pswitch_data_1

    :cond_2
    :goto_2
    instance-of v0, p1, Lcom/iLoong/launcher/Desktop3D/bm;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Lcom/iLoong/launcher/Desktop3D/bm;

    packed-switch p2, :pswitch_data_2

    :cond_3
    instance-of v0, p1, Lcom/iLoong/launcher/Desktop3D/aj;

    if-eqz v0, :cond_18

    check-cast p1, Lcom/iLoong/launcher/Desktop3D/aj;

    packed-switch p2, :pswitch_data_3

    :cond_4
    :goto_3
    move v9, v10

    :goto_4
    return v9

    :sswitch_1
    const-string v0, "focus"

    const-string v1, "CellLayout3D.MSG_REFRESH_PAGE"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/iLoong/launcher/UI3DEngine/View3D;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->j:Lcom/iLoong/launcher/Desktop3D/bq;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/bq;->z()Lcom/iLoong/launcher/Desktop3D/CellLayout3D;

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->m:Lcom/iLoong/launcher/HotSeat3D/a;

    invoke-virtual {v0}, Lcom/iLoong/launcher/HotSeat3D/a;->j()V

    goto :goto_1

    :pswitch_1
    const-string v0, "onCtrlEvent"

    const-string v1, "onCtrlEvent"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->j:Lcom/iLoong/launcher/Desktop3D/bq;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/bq;->z()Lcom/iLoong/launcher/Desktop3D/CellLayout3D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->m()V

    goto :goto_1

    :pswitch_2
    const-string v0, "onCtrlEvent"

    const-string v1, "onCtrlEvent"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->j:Lcom/iLoong/launcher/Desktop3D/bq;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/bq;->z()Lcom/iLoong/launcher/Desktop3D/CellLayout3D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->m()V

    goto :goto_2

    :pswitch_3
    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/e;->h:Lcom/iLoong/launcher/Desktop3D/v;

    invoke-virtual {v1}, Lcom/iLoong/launcher/Desktop3D/v;->isVisible()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-direct {p0}, Lcom/iLoong/launcher/Desktop3D/e;->l()V

    :cond_5
    invoke-interface {v0}, Lcom/iLoong/launcher/Desktop3D/bm;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lcom/badlogic/gdx/math/Vector2;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/e;->f:Lcom/iLoong/launcher/Desktop3D/x;

    invoke-virtual {v2}, Lcom/iLoong/launcher/Desktop3D/x;->show()V

    check-cast v1, Lcom/badlogic/gdx/math/Vector2;

    invoke-interface {v0}, Lcom/iLoong/launcher/Desktop3D/bm;->c()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->f:Lcom/iLoong/launcher/Desktop3D/x;

    iget v3, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v0, v2, v3, v1}, Lcom/iLoong/launcher/Desktop3D/x;->a(Ljava/util/ArrayList;FF)V

    instance-of v0, p1, Lcom/iLoong/launcher/Desktop3D/bq;

    if-nez v0, :cond_7

    instance-of v0, p1, Lcom/iLoong/launcher/HotSeat3D/a;

    if-eqz v0, :cond_d

    :cond_7
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->i:Lcom/iLoong/launcher/Desktop3D/br;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/br;->hide()V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->h:Lcom/iLoong/launcher/Desktop3D/v;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/v;->hide()V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->j:Lcom/iLoong/launcher/Desktop3D/bq;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/bq;->isVisible()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->j:Lcom/iLoong/launcher/Desktop3D/bq;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/bq;->show()V

    :cond_8
    sget v0, Lcom/iLoong/launcher/Desktop3D/cb;->al:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->k:Lcom/iLoong/launcher/Desktop3D/y;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/y;->show()V

    :cond_9
    instance-of v0, p1, Lcom/iLoong/launcher/HotSeat3D/a;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->m:Lcom/iLoong/launcher/HotSeat3D/a;

    invoke-virtual {v0}, Lcom/iLoong/launcher/HotSeat3D/a;->s()V

    :cond_a
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->a:Lcom/iLoong/launcher/HotSeat3D/c;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/HotSeat3D/c;->a(I)V

    :cond_b
    :goto_6
    sget v0, Lcom/iLoong/launcher/Desktop3D/at;->bJ:I

    invoke-static {v0}, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->vibrator(I)V

    move v9, v10

    goto/16 :goto_4

    :cond_c
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/UI3DEngine/View3D;

    instance-of v4, v0, Lcom/iLoong/launcher/Desktop3D/bd;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/iLoong/launcher/Desktop3D/e;->f:Lcom/iLoong/launcher/Desktop3D/x;

    check-cast v0, Lcom/iLoong/launcher/Desktop3D/bd;

    invoke-virtual {v4, v0}, Lcom/iLoong/launcher/Desktop3D/x;->b(Lcom/iLoong/launcher/Desktop3D/bd;)V

    goto :goto_5

    :cond_d
    instance-of v0, p1, Lcom/iLoong/launcher/Desktop3D/aw;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->i:Lcom/iLoong/launcher/Desktop3D/br;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/br;->hide()V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->h:Lcom/iLoong/launcher/Desktop3D/v;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/v;->hide()V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->j:Lcom/iLoong/launcher/Desktop3D/bq;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/bq;->show()V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->m:Lcom/iLoong/launcher/HotSeat3D/a;

    invoke-virtual {v0}, Lcom/iLoong/launcher/HotSeat3D/a;->show()V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->m:Lcom/iLoong/launcher/HotSeat3D/a;

    invoke-virtual {v0, v10}, Lcom/iLoong/launcher/HotSeat3D/a;->setVisible(Z)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->m:Lcom/iLoong/launcher/HotSeat3D/a;

    iput-boolean v10, v0, Lcom/iLoong/launcher/HotSeat3D/a;->touchable:Z

    sget-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->aS:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->m:Lcom/iLoong/launcher/HotSeat3D/a;

    const/4 v1, 0x3

    sget-object v2, Laurelienribon/tweenengine/equations/Cubic;->OUT:Laurelienribon/tweenengine/equations/Cubic;

    sget v3, Lcom/iLoong/launcher/Desktop3D/e;->s:F

    iget v4, p0, Lcom/iLoong/launcher/Desktop3D/e;->E:F

    iget v5, p0, Lcom/iLoong/launcher/Desktop3D/e;->E:F

    invoke-virtual/range {v0 .. v6}, Lcom/iLoong/launcher/HotSeat3D/a;->startTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    :cond_e
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->k:Lcom/iLoong/launcher/Desktop3D/y;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/y;->show()V

    sget v0, Lcom/iLoong/launcher/Desktop3D/cb;->aF:I

    if-eqz v0, :cond_f

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/e;->k:Lcom/iLoong/launcher/Desktop3D/y;

    sget-object v3, Laurelienribon/tweenengine/equations/Cubic;->OUT:Laurelienribon/tweenengine/equations/Cubic;

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->k:Lcom/iLoong/launcher/Desktop3D/y;

    iget v5, v0, Lcom/iLoong/launcher/Desktop3D/y;->x:F

    move v2, v10

    move v4, v12

    move v7, v6

    invoke-virtual/range {v1 .. v7}, Lcom/iLoong/launcher/Desktop3D/y;->startTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    :cond_f
    sget v0, Lcom/iLoong/launcher/Desktop3D/cb;->aF:I

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->a:Lcom/iLoong/launcher/HotSeat3D/c;

    invoke-virtual {v0}, Lcom/iLoong/launcher/HotSeat3D/c;->hide()V

    :cond_10
    sget-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->aS:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->a:Lcom/iLoong/launcher/HotSeat3D/c;

    invoke-virtual {v0}, Lcom/iLoong/launcher/HotSeat3D/c;->show()V

    :cond_11
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->l:Lcom/iLoong/launcher/Desktop3D/bs;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/bs;->show()V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->a:Lcom/iLoong/launcher/HotSeat3D/c;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/HotSeat3D/c;->a(I)V

    goto/16 :goto_6

    :cond_12
    instance-of v0, p1, Lcom/iLoong/launcher/Desktop3D/f;

    if-nez v0, :cond_b

    instance-of v0, p1, Lcom/iLoong/launcher/d/b;

    if-nez v0, :cond_b

    goto/16 :goto_6

    :pswitch_4
    invoke-virtual {p1}, Lcom/iLoong/launcher/Desktop3D/aj;->b()Lcom/iLoong/launcher/a/j;

    move-result-object v1

    instance-of v0, v1, Lcom/iLoong/launcher/a/f;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->j:Lcom/iLoong/launcher/Desktop3D/bq;

    invoke-virtual {v0, p1}, Lcom/iLoong/launcher/Desktop3D/bq;->a(Lcom/iLoong/launcher/Desktop3D/aj;)V

    new-instance v2, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v2}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    move-object v0, v1

    check-cast v0, Lcom/iLoong/launcher/a/f;

    iget-object v0, v0, Lcom/iLoong/launcher/a/f;->a:Landroid/content/Intent;

    invoke-virtual {p1, v2}, Lcom/iLoong/launcher/Desktop3D/aj;->toAbsoluteCoords(Lcom/badlogic/gdx/math/Vector2;)V

    new-instance v3, Landroid/graphics/Rect;

    iget v4, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    float-to-int v4, v4

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenHeight()I

    move-result v5

    int-to-float v5, v5

    iget v6, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v5, v6

    invoke-virtual {p1}, Lcom/iLoong/launcher/Desktop3D/aj;->getHeight()F

    move-result v6

    sub-float/2addr v5, v6

    float-to-int v5, v5

    iget v6, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-virtual {p1}, Lcom/iLoong/launcher/Desktop3D/aj;->getWidth()F

    move-result v7

    add-float/2addr v6, v7

    float-to-int v6, v6

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenHeight()I

    move-result v7

    int-to-float v7, v7

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float v2, v7, v2

    float-to-int v2, v2

    invoke-direct {v3, v4, v5, v6, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_13

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v4, "android.intent.action.CREATE_SHORTCUT"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-static {v0}, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->sendSelectShortcutMsg(Landroid/content/Intent;)V

    goto/16 :goto_3

    :cond_13
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_14

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v4, "com.android.contacts.action.QUICK_CONTACT"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    sget-object v1, Lcom/iLoong/launcher/Desktop3D/e;->c:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v1, v3, v0, v10, v2}, Landroid/provider/ContactsContract$QuickContact;->showQuickContact(Landroid/content/Context;Landroid/graphics/Rect;Landroid/net/Uri;I[Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_14
    iget-wide v2, v1, Lcom/iLoong/launcher/a/j;->m:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_16

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_16

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/iLoong/launcher/Desktop3D/e;->c:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    invoke-virtual {v3}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/iLoong/launcher/Desktop3D/e;->c:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    invoke-virtual {v3}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    sget-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->bG:Z

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/e;->f()V

    goto/16 :goto_3

    :cond_15
    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/e;->e()V

    goto/16 :goto_3

    :cond_16
    iget-wide v2, v1, Lcom/iLoong/launcher/a/j;->m:J

    const-wide/16 v4, -0x65

    cmp-long v2, v2, v4

    if-nez v2, :cond_17

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_17

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/iLoong/launcher/Desktop3D/e;->c:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    invoke-virtual {v3}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/iLoong/launcher/Desktop3D/e;->c:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    invoke-virtual {v2}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-direct {p0, v9}, Lcom/iLoong/launcher/Desktop3D/e;->a(I)Z

    goto/16 :goto_3

    :cond_17
    invoke-static {v1}, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->startActivity(Lcom/iLoong/launcher/a/j;)V

    goto/16 :goto_3

    :cond_18
    instance-of v0, p1, Lcom/iLoong/launcher/Desktop3D/x;

    if-eqz v0, :cond_19

    move-object v0, p1

    check-cast v0, Lcom/iLoong/launcher/Desktop3D/x;

    packed-switch p2, :pswitch_data_4

    :cond_19
    :goto_7
    instance-of v0, p1, Lcom/iLoong/launcher/Desktop3D/aw;

    if-eqz v0, :cond_1a

    packed-switch p2, :pswitch_data_5

    :cond_1a
    instance-of v0, p1, Lcom/iLoong/launcher/HotSeat3D/i;

    if-eqz v0, :cond_1b

    move-object v0, p1

    check-cast v0, Lcom/iLoong/launcher/HotSeat3D/i;

    packed-switch p2, :pswitch_data_6

    :cond_1b
    instance-of v0, p1, Lcom/iLoong/launcher/Desktop3D/bq;

    if-eqz v0, :cond_1c

    move-object v0, p1

    check-cast v0, Lcom/iLoong/launcher/Desktop3D/bq;

    packed-switch p2, :pswitch_data_7

    :cond_1c
    :goto_8
    instance-of v0, p1, Lcom/iLoong/launcher/Desktop3D/bs;

    if-eqz v0, :cond_1d

    packed-switch p2, :pswitch_data_8

    :cond_1d
    :pswitch_5
    instance-of v0, p1, Lcom/iLoong/launcher/Desktop3D/v;

    if-eqz v0, :cond_1e

    packed-switch p2, :pswitch_data_9

    :cond_1e
    instance-of v0, p1, Lcom/iLoong/launcher/HotSeat3D/c;

    if-eqz v0, :cond_1f

    packed-switch p2, :pswitch_data_a

    :cond_1f
    instance-of v0, p1, Lcom/iLoong/launcher/HotSeat3D/a;

    if-eqz v0, :cond_20

    move-object v0, p1

    check-cast v0, Lcom/iLoong/launcher/HotSeat3D/a;

    sparse-switch p2, :sswitch_data_1

    :cond_20
    instance-of v0, p1, Lcom/iLoong/launcher/d/a;

    if-eqz v0, :cond_21

    move-object v8, p1

    check-cast v8, Lcom/iLoong/launcher/d/a;

    packed-switch p2, :pswitch_data_b

    :cond_21
    :pswitch_6
    instance-of v0, p1, Lcom/iLoong/launcher/d/b;

    if-eqz v0, :cond_22

    move-object v0, p1

    check-cast v0, Lcom/iLoong/launcher/d/b;

    packed-switch p2, :pswitch_data_c

    :cond_22
    instance-of v0, p1, Lcom/iLoong/launcher/Desktop3D/y;

    if-eqz v0, :cond_23

    move-object v0, p1

    check-cast v0, Lcom/iLoong/launcher/Desktop3D/y;

    packed-switch p2, :pswitch_data_d

    :cond_23
    packed-switch p2, :pswitch_data_e

    goto/16 :goto_4

    :pswitch_7
    sget-object v0, Lcom/iLoong/launcher/Desktop3D/e;->c:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    invoke-virtual {v0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    check-cast p1, Lcom/iLoong/launcher/Desktop3D/af;

    if-eqz v0, :cond_24

    sget-object v1, Lcom/iLoong/launcher/Desktop3D/e;->c:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    new-instance v2, Lcom/iLoong/launcher/Desktop3D/bl;

    invoke-direct {v2, p0, p1, v0}, Lcom/iLoong/launcher/Desktop3D/bl;-><init>(Lcom/iLoong/launcher/Desktop3D/e;Lcom/iLoong/launcher/Desktop3D/af;Landroid/os/IBinder;)V

    invoke-virtual {v1, v2}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->postRunnable(Ljava/lang/Runnable;)V

    :cond_24
    move v9, v10

    goto/16 :goto_4

    :pswitch_8
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/iLoong/launcher/Desktop3D/e;->a(I)Z

    goto :goto_7

    :pswitch_9
    const v1, 0x3f4ccccd

    invoke-virtual {v0, v11, v11, v11, v1}, Lcom/iLoong/launcher/Desktop3D/x;->setColor(FFFF)V

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/e;->j:Lcom/iLoong/launcher/Desktop3D/bq;

    invoke-virtual {v1}, Lcom/iLoong/launcher/Desktop3D/bq;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/x;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iLoong/launcher/Desktop3D/bd;

    instance-of v2, v1, Lcom/iLoong/launcher/d/a;

    if-eqz v2, :cond_25

    invoke-virtual {v0, v6, v11, v6, v11}, Lcom/iLoong/launcher/Desktop3D/x;->setColor(FFFF)V

    :cond_25
    instance-of v2, v1, Lcom/iLoong/launcher/Desktop3D/y;

    if-eqz v2, :cond_28

    const/high16 v2, 0x3f00

    invoke-virtual {v0, v11, v6, v6, v2}, Lcom/iLoong/launcher/Desktop3D/x;->setColor(FFFF)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->k:Lcom/iLoong/launcher/Desktop3D/y;

    invoke-virtual {v0, v10}, Lcom/iLoong/launcher/Desktop3D/y;->a(Z)V

    :goto_9
    instance-of v0, v1, Lcom/iLoong/launcher/Desktop3D/bq;

    if-nez v0, :cond_26

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->j:Lcom/iLoong/launcher/Desktop3D/bq;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/bq;->E()V

    :cond_26
    instance-of v0, v1, Lcom/iLoong/launcher/HotSeat3D/a;

    if-nez v0, :cond_27

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->m:Lcom/iLoong/launcher/HotSeat3D/a;

    invoke-virtual {v0}, Lcom/iLoong/launcher/HotSeat3D/a;->r()V

    :cond_27
    move v9, v10

    goto/16 :goto_4

    :cond_28
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->k:Lcom/iLoong/launcher/Desktop3D/y;

    invoke-virtual {v0, v9}, Lcom/iLoong/launcher/Desktop3D/y;->a(Z)V

    goto :goto_9

    :pswitch_a
    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/x;->c()Lcom/iLoong/launcher/Desktop3D/bd;

    move-result-object v1

    instance-of v1, v1, Lcom/iLoong/launcher/Desktop3D/y;

    if-eqz v1, :cond_2a

    iput-boolean v10, p0, Lcom/iLoong/launcher/Desktop3D/e;->d:Z

    :goto_a
    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/e;->h:Lcom/iLoong/launcher/Desktop3D/v;

    invoke-virtual {v1}, Lcom/iLoong/launcher/Desktop3D/v;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_2d

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/e;->j:Lcom/iLoong/launcher/Desktop3D/bq;

    invoke-virtual {v1, v11, v11}, Lcom/iLoong/launcher/Desktop3D/bq;->setScale(FF)V

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/e;->m:Lcom/iLoong/launcher/HotSeat3D/a;

    invoke-virtual {v1, v11, v11}, Lcom/iLoong/launcher/HotSeat3D/a;->setScale(FF)V

    sput-boolean v9, Lcom/iLoong/launcher/Desktop3D/bq;->B:Z

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/e;->h:Lcom/iLoong/launcher/Desktop3D/v;

    iget-object v1, v1, Lcom/iLoong/launcher/Desktop3D/v;->a:Lcom/iLoong/launcher/Desktop3D/f;

    invoke-virtual {v1}, Lcom/iLoong/launcher/Desktop3D/f;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/x;->b()Lcom/iLoong/launcher/Desktop3D/bd;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/x;->removeAllViews()V

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/x;->hide()V

    :cond_29
    :goto_b
    move v9, v10

    goto/16 :goto_4

    :cond_2a
    iput-boolean v9, p0, Lcom/iLoong/launcher/Desktop3D/e;->d:Z

    goto :goto_a

    :cond_2b
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->h:Lcom/iLoong/launcher/Desktop3D/v;

    iget-object v0, v0, Lcom/iLoong/launcher/Desktop3D/v;->b:Lcom/iLoong/launcher/Desktop3D/ah;

    iget-boolean v0, v0, Lcom/iLoong/launcher/Desktop3D/ah;->e:Z

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->h:Lcom/iLoong/launcher/Desktop3D/v;

    iget-object v0, v0, Lcom/iLoong/launcher/Desktop3D/v;->b:Lcom/iLoong/launcher/Desktop3D/ah;

    iput-boolean v10, v0, Lcom/iLoong/launcher/Desktop3D/ah;->d:Z

    goto :goto_b

    :cond_2c
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->h:Lcom/iLoong/launcher/Desktop3D/v;

    invoke-virtual {v0, v10}, Lcom/iLoong/launcher/Desktop3D/v;->a(Z)V

    goto :goto_b

    :cond_2d
    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/e;->i:Lcom/iLoong/launcher/Desktop3D/br;

    invoke-virtual {v1}, Lcom/iLoong/launcher/Desktop3D/br;->hide()V

    iget-boolean v1, p0, Lcom/iLoong/launcher/Desktop3D/e;->b:Z

    if-nez v1, :cond_30

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/e;->j:Lcom/iLoong/launcher/Desktop3D/bq;

    invoke-virtual {v1}, Lcom/iLoong/launcher/Desktop3D/bq;->show()V

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/x;->a()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2e

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/x;->b()Lcom/iLoong/launcher/Desktop3D/bd;

    move-result-object v1

    if-nez v1, :cond_2e

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/x;->a()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/iLoong/launcher/Desktop3D/e;->c(Ljava/util/ArrayList;)V

    :cond_2e
    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/x;->removeAllViews()V

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/x;->hide()V

    sget-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->aS:Z

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->m:Lcom/iLoong/launcher/HotSeat3D/a;

    invoke-virtual {v0}, Lcom/iLoong/launcher/HotSeat3D/a;->show()V

    :cond_2f
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->l:Lcom/iLoong/launcher/Desktop3D/bs;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/bs;->show()V

    iget-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->d:Z

    invoke-direct {p0, v0}, Lcom/iLoong/launcher/Desktop3D/e;->b(Z)V

    :cond_30
    sget v0, Lcom/iLoong/launcher/Desktop3D/cb;->aF:I

    if-nez v0, :cond_29

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->k:Lcom/iLoong/launcher/Desktop3D/y;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/y;->hide()V

    goto :goto_b

    :pswitch_b
    sget-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->bG:Z

    if-eqz v0, :cond_31

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/e;->f()V

    :goto_c
    move v9, v10

    goto/16 :goto_4

    :cond_31
    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/e;->e()V

    goto :goto_c

    :pswitch_c
    sget-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->bG:Z

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->l:Lcom/iLoong/launcher/Desktop3D/bs;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/bs;->c()V

    :goto_d
    move v9, v10

    goto/16 :goto_4

    :cond_32
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->l:Lcom/iLoong/launcher/Desktop3D/bs;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/bs;->hide()V

    goto :goto_d

    :pswitch_d
    sget-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->bG:Z

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->l:Lcom/iLoong/launcher/Desktop3D/bs;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/bs;->b()V

    :goto_e
    move v9, v10

    goto/16 :goto_4

    :cond_33
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->l:Lcom/iLoong/launcher/Desktop3D/bs;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/bs;->show()V

    goto :goto_e

    :pswitch_e
    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/e;->f:Lcom/iLoong/launcher/Desktop3D/x;

    invoke-virtual {v0}, Lcom/iLoong/launcher/HotSeat3D/i;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/Desktop3D/bd;

    invoke-virtual {v1, v0}, Lcom/iLoong/launcher/Desktop3D/x;->a(Lcom/iLoong/launcher/Desktop3D/bd;)V

    move v9, v10

    goto/16 :goto_4

    :pswitch_f
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->l:Lcom/iLoong/launcher/Desktop3D/bs;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/bs;->g()V

    goto/16 :goto_8

    :pswitch_10
    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/bq;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v0, v1, Lcom/badlogic/gdx/math/Vector2;

    if-eqz v0, :cond_34

    move-object v0, v1

    check-cast v0, Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    float-to-int v0, v0

    check-cast v1, Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    float-to-int v1, v1

    invoke-static {v0, v1}, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->sendAddShortcutMsg(II)V

    :goto_f
    sget v0, Lcom/iLoong/launcher/Desktop3D/at;->bJ:I

    invoke-static {v0}, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->vibrator(I)V

    move v9, v10

    goto/16 :goto_4

    :cond_34
    invoke-static {v9, v9}, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->sendAddShortcutMsg(II)V

    goto :goto_f

    :pswitch_11
    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/e;->f:Lcom/iLoong/launcher/Desktop3D/x;

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/e;->h:Lcom/iLoong/launcher/Desktop3D/v;

    iget-object v2, v2, Lcom/iLoong/launcher/Desktop3D/v;->a:Lcom/iLoong/launcher/Desktop3D/f;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/bq;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/Desktop3D/bd;

    invoke-virtual {v1, v2, v0}, Lcom/iLoong/launcher/Desktop3D/x;->a(Lcom/iLoong/launcher/Desktop3D/bd;Lcom/iLoong/launcher/Desktop3D/bd;)V

    move v9, v10

    goto/16 :goto_4

    :pswitch_12
    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/e;->k:Lcom/iLoong/launcher/Desktop3D/y;

    invoke-virtual {v1}, Lcom/iLoong/launcher/Desktop3D/y;->show()V

    invoke-static {}, Laurelienribon/tweenengine/Timeline;->createParallel()Laurelienribon/tweenengine/Timeline;

    move-result-object v1

    iput-object v1, p0, Lcom/iLoong/launcher/Desktop3D/e;->n:Laurelienribon/tweenengine/Timeline;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/bq;->getTag()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/util/ArrayList;

    move v8, v9

    :goto_10
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v8, v0, :cond_35

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->k:Lcom/iLoong/launcher/Desktop3D/y;

    invoke-virtual {v0, v7}, Lcom/iLoong/launcher/Desktop3D/y;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->n:Laurelienribon/tweenengine/Timeline;

    invoke-virtual {v0, p0}, Laurelienribon/tweenengine/Timeline;->setCallback(Laurelienribon/tweenengine/TweenCallback;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/Timeline;

    sget-object v1, Lcom/iLoong/launcher/tween/View3DTweenAccessor;->manager:Laurelienribon/tweenengine/TweenManager;

    invoke-virtual {v0, v1}, Laurelienribon/tweenengine/Timeline;->start(Laurelienribon/tweenengine/TweenManager;)Ljava/lang/Object;

    move v9, v10

    goto/16 :goto_4

    :cond_35
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/UI3DEngine/View3D;

    iget-object v9, p0, Lcom/iLoong/launcher/Desktop3D/e;->n:Laurelienribon/tweenengine/Timeline;

    sget-object v2, Laurelienribon/tweenengine/equations/Cubic;->OUT:Laurelienribon/tweenengine/equations/Cubic;

    const/high16 v3, 0x3f00

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget-object v4, p0, Lcom/iLoong/launcher/Desktop3D/e;->k:Lcom/iLoong/launcher/Desktop3D/y;

    invoke-virtual {v4}, Lcom/iLoong/launcher/Desktop3D/y;->getWidth()F

    move-result v4

    const/high16 v5, 0x4080

    div-float/2addr v4, v5

    add-float/2addr v4, v1

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenHeight()I

    move-result v1

    int-to-float v5, v1

    move v1, v10

    invoke-virtual/range {v0 .. v6}, Lcom/iLoong/launcher/UI3DEngine/View3D;->obtainTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    move-result-object v0

    invoke-virtual {v9, v0}, Laurelienribon/tweenengine/Timeline;->push(Laurelienribon/tweenengine/Tween;)Laurelienribon/tweenengine/Timeline;

    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_10

    :pswitch_13
    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/bq;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/Desktop3D/ai;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/ai;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, [I

    if-eqz v1, :cond_36

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/ai;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    aget v2, v1, v9

    int-to-float v2, v2

    iput v2, v0, Lcom/iLoong/launcher/Desktop3D/ai;->x:F

    aget v1, v1, v10

    int-to-float v1, v1

    iput v1, v0, Lcom/iLoong/launcher/Desktop3D/ai;->y:F

    :cond_36
    iget-object v1, v0, Lcom/iLoong/launcher/Desktop3D/ai;->a:Lcom/iLoong/launcher/a/g;

    iget-object v1, v1, Lcom/iLoong/launcher/a/g;->e:Landroid/content/ComponentName;

    iget v2, v0, Lcom/iLoong/launcher/Desktop3D/ai;->x:F

    float-to-int v2, v2

    iget v0, v0, Lcom/iLoong/launcher/Desktop3D/ai;->y:F

    float-to-int v0, v0

    invoke-static {v1, v2, v0}, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->addWidgetFromAllApp(Landroid/content/ComponentName;II)V

    move v9, v10

    goto/16 :goto_4

    :pswitch_14
    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/bq;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/Desktop3D/ai;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/ai;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iget-object v0, v0, Lcom/iLoong/launcher/Desktop3D/ai;->a:Lcom/iLoong/launcher/a/g;

    iget-object v0, v0, Lcom/iLoong/launcher/a/g;->e:Landroid/content/ComponentName;

    aget v2, v1, v9

    aget v1, v1, v10

    invoke-static {v0, v2, v1}, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->addShortcutFromAllApp(Landroid/content/ComponentName;II)V

    move v9, v10

    goto/16 :goto_4

    :pswitch_15
    iget v1, v0, Lcom/iLoong/launcher/Desktop3D/bq;->scaleX:F

    cmpl-float v1, v1, v11

    if-nez v1, :cond_37

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/e;->a:Lcom/iLoong/launcher/HotSeat3D/c;

    iget v1, v1, Lcom/iLoong/launcher/HotSeat3D/c;->scaleX:F

    cmpl-float v1, v1, v11

    if-nez v1, :cond_37

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/e;->f:Lcom/iLoong/launcher/Desktop3D/x;

    invoke-virtual {v1}, Lcom/iLoong/launcher/Desktop3D/x;->isVisible()Z

    move-result v1

    if-nez v1, :cond_37

    iget v0, v0, Lcom/iLoong/launcher/Desktop3D/bq;->f:F

    cmpl-float v0, v0, v6

    if-nez v0, :cond_37

    invoke-direct {p0}, Lcom/iLoong/launcher/Desktop3D/e;->n()Z

    :cond_37
    move v9, v10

    goto/16 :goto_4

    :pswitch_16
    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/bq;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v0, v1, Lcom/badlogic/gdx/math/Vector2;

    if-eqz v0, :cond_38

    move-object v0, v1

    check-cast v0, Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    float-to-int v0, v0

    check-cast v1, Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    float-to-int v1, v1

    invoke-static {v0, v1}, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->sendClickToWallPaperMsg(II)V

    :cond_38
    move v9, v10

    goto/16 :goto_4

    :pswitch_17
    invoke-direct {p0}, Lcom/iLoong/launcher/Desktop3D/e;->m()V

    move v9, v10

    goto/16 :goto_4

    :pswitch_18
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/iLoong/launcher/Desktop3D/e;->a(I)Z

    move v9, v10

    goto/16 :goto_4

    :pswitch_19
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->j:Lcom/iLoong/launcher/Desktop3D/bq;

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/e;->h:Lcom/iLoong/launcher/Desktop3D/v;

    invoke-virtual {v1}, Lcom/iLoong/launcher/Desktop3D/v;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/Desktop3D/bq;->c(I)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->i:Lcom/iLoong/launcher/Desktop3D/br;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/br;->hide()V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->j:Lcom/iLoong/launcher/Desktop3D/bq;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/bq;->show()V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->m:Lcom/iLoong/launcher/HotSeat3D/a;

    invoke-virtual {v0}, Lcom/iLoong/launcher/HotSeat3D/a;->show()V

    sget v0, Lcom/iLoong/launcher/Desktop3D/cb;->aF:I

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->k:Lcom/iLoong/launcher/Desktop3D/y;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/y;->hide()V

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/e;->k:Lcom/iLoong/launcher/Desktop3D/y;

    sget-object v3, Laurelienribon/tweenengine/equations/Cubic;->OUT:Laurelienribon/tweenengine/equations/Cubic;

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->k:Lcom/iLoong/launcher/Desktop3D/y;

    iget v5, v0, Lcom/iLoong/launcher/Desktop3D/y;->x:F

    move v2, v10

    move v4, v12

    move v7, v6

    invoke-virtual/range {v1 .. v7}, Lcom/iLoong/launcher/Desktop3D/y;->startTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    :cond_39
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->f:Lcom/iLoong/launcher/Desktop3D/x;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/x;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->f:Lcom/iLoong/launcher/Desktop3D/x;

    iget-boolean v0, v0, Lcom/iLoong/launcher/Desktop3D/x;->e:Z

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->k:Lcom/iLoong/launcher/Desktop3D/y;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/y;->show()V

    sget v0, Lcom/iLoong/launcher/Desktop3D/cb;->aF:I

    if-eqz v0, :cond_3b

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/e;->k:Lcom/iLoong/launcher/Desktop3D/y;

    sget-object v3, Laurelienribon/tweenengine/equations/Cubic;->OUT:Laurelienribon/tweenengine/equations/Cubic;

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->k:Lcom/iLoong/launcher/Desktop3D/y;

    iget v5, v0, Lcom/iLoong/launcher/Desktop3D/y;->x:F

    move v2, v10

    move v4, v12

    move v7, v6

    invoke-virtual/range {v1 .. v7}, Lcom/iLoong/launcher/Desktop3D/y;->startTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    :goto_11
    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/e;->C:Lcom/iLoong/launcher/Desktop3D/am;

    sget-object v4, Laurelienribon/tweenengine/equations/Cubic;->OUT:Laurelienribon/tweenengine/equations/Cubic;

    move v3, v10

    move v5, v12

    move v7, v6

    move v8, v6

    invoke-virtual/range {v2 .. v8}, Lcom/iLoong/launcher/Desktop3D/am;->startTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    :goto_12
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->l:Lcom/iLoong/launcher/Desktop3D/bs;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/bs;->isVisible()Z

    move-result v0

    if-nez v0, :cond_3a

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->l:Lcom/iLoong/launcher/Desktop3D/bs;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/bs;->show()V

    :cond_3a
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->j:Lcom/iLoong/launcher/Desktop3D/bq;

    invoke-virtual {v0, v11}, Lcom/iLoong/launcher/Desktop3D/bq;->setScaleZ(F)V

    move v9, v10

    goto/16 :goto_4

    :cond_3b
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->a:Lcom/iLoong/launcher/HotSeat3D/c;

    invoke-virtual {v0}, Lcom/iLoong/launcher/HotSeat3D/c;->show()V

    goto :goto_11

    :cond_3c
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->j:Lcom/iLoong/launcher/Desktop3D/bq;

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/e;->h:Lcom/iLoong/launcher/Desktop3D/v;

    iget-object v1, v1, Lcom/iLoong/launcher/Desktop3D/v;->b:Lcom/iLoong/launcher/Desktop3D/ah;

    iget v1, v1, Lcom/iLoong/launcher/Desktop3D/ah;->a:I

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/Desktop3D/bq;->f(I)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->f:Lcom/iLoong/launcher/Desktop3D/x;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/x;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3d

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->f:Lcom/iLoong/launcher/Desktop3D/x;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/x;->b()Lcom/iLoong/launcher/Desktop3D/bd;

    move-result-object v0

    if-nez v0, :cond_3d

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->f:Lcom/iLoong/launcher/Desktop3D/x;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/x;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/iLoong/launcher/Desktop3D/e;->c(Ljava/util/ArrayList;)V

    :cond_3d
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->f:Lcom/iLoong/launcher/Desktop3D/x;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/x;->removeAllViews()V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->f:Lcom/iLoong/launcher/Desktop3D/x;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/x;->hide()V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->a:Lcom/iLoong/launcher/HotSeat3D/c;

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/e;->a:Lcom/iLoong/launcher/HotSeat3D/c;

    iget v1, v1, Lcom/iLoong/launcher/HotSeat3D/c;->x:F

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/e;->a:Lcom/iLoong/launcher/HotSeat3D/c;

    iget v2, v2, Lcom/iLoong/launcher/HotSeat3D/c;->height:F

    neg-float v2, v2

    const/high16 v3, 0x3fc0

    mul-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/iLoong/launcher/HotSeat3D/c;->setPosition(FF)V

    sget v0, Lcom/iLoong/launcher/Desktop3D/cb;->aF:I

    if-nez v0, :cond_3e

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->a:Lcom/iLoong/launcher/HotSeat3D/c;

    invoke-virtual {v0, v11, v11}, Lcom/iLoong/launcher/HotSeat3D/c;->setScale(FF)V

    :goto_13
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->a:Lcom/iLoong/launcher/HotSeat3D/c;

    invoke-virtual {v0}, Lcom/iLoong/launcher/HotSeat3D/c;->show()V

    goto :goto_12

    :cond_3e
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->k:Lcom/iLoong/launcher/Desktop3D/y;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/y;->hide()V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->k:Lcom/iLoong/launcher/Desktop3D/y;

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/e;->k:Lcom/iLoong/launcher/Desktop3D/y;

    iget v1, v1, Lcom/iLoong/launcher/Desktop3D/y;->x:F

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/e;->a:Lcom/iLoong/launcher/HotSeat3D/c;

    iget v2, v2, Lcom/iLoong/launcher/HotSeat3D/c;->height:F

    neg-float v2, v2

    const/high16 v3, 0x3fc0

    mul-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/iLoong/launcher/Desktop3D/y;->setPosition(FF)V

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/e;->k:Lcom/iLoong/launcher/Desktop3D/y;

    sget-object v3, Laurelienribon/tweenengine/equations/Cubic;->OUT:Laurelienribon/tweenengine/equations/Cubic;

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->k:Lcom/iLoong/launcher/Desktop3D/y;

    iget v5, v0, Lcom/iLoong/launcher/Desktop3D/y;->x:F

    move v2, v10

    move v4, v12

    move v7, v6

    invoke-virtual/range {v1 .. v7}, Lcom/iLoong/launcher/Desktop3D/y;->startTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    goto :goto_13

    :cond_3f
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->a:Lcom/iLoong/launcher/HotSeat3D/c;

    invoke-virtual {v0}, Lcom/iLoong/launcher/HotSeat3D/c;->show()V

    invoke-static {}, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->sendShowWorkspaceMsg()V

    goto/16 :goto_12

    :pswitch_1a
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->j:Lcom/iLoong/launcher/Desktop3D/bq;

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/e;->h:Lcom/iLoong/launcher/Desktop3D/v;

    invoke-virtual {v1}, Lcom/iLoong/launcher/Desktop3D/v;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/Desktop3D/bq;->e(I)V

    move v9, v10

    goto/16 :goto_4

    :pswitch_1b
    new-instance v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;

    const-string v1, "celllayout"

    invoke-direct {v0, v1}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/e;->j:Lcom/iLoong/launcher/Desktop3D/bq;

    invoke-virtual {v1, v0}, Lcom/iLoong/launcher/Desktop3D/bq;->a(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    const/4 v0, -0x1

    invoke-static {v0}, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->sendAddWorkspaceCellMsg(I)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->l:Lcom/iLoong/launcher/Desktop3D/bs;

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/e;->j:Lcom/iLoong/launcher/Desktop3D/bq;

    invoke-virtual {v1}, Lcom/iLoong/launcher/Desktop3D/bq;->r()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/Desktop3D/bs;->a(I)V

    move v9, v10

    goto/16 :goto_4

    :pswitch_1c
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->l:Lcom/iLoong/launcher/Desktop3D/bs;

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/e;->j:Lcom/iLoong/launcher/Desktop3D/bq;

    invoke-virtual {v1}, Lcom/iLoong/launcher/Desktop3D/bq;->r()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/Desktop3D/bs;->a(I)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->h:Lcom/iLoong/launcher/Desktop3D/v;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/v;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_40

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/e;->k:Lcom/iLoong/launcher/Desktop3D/y;

    check-cast v0, Ljava/util/ArrayList;

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenHeight()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/iLoong/launcher/Desktop3D/e;->k:Lcom/iLoong/launcher/Desktop3D/y;

    iget v4, v4, Lcom/iLoong/launcher/Desktop3D/y;->height:F

    sub-float/2addr v3, v4

    invoke-virtual {v1, v0, v2, v3}, Lcom/iLoong/launcher/Desktop3D/y;->a(Ljava/util/ArrayList;FF)Z

    :cond_40
    move v9, v10

    goto/16 :goto_4

    :pswitch_1d
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->l:Lcom/iLoong/launcher/Desktop3D/bs;

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/e;->j:Lcom/iLoong/launcher/Desktop3D/bq;

    invoke-virtual {v1}, Lcom/iLoong/launcher/Desktop3D/bq;->r()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/Desktop3D/bs;->a(I)V

    move v9, v10

    goto/16 :goto_4

    :pswitch_1e
    move v9, v10

    goto/16 :goto_4

    :pswitch_1f
    move v9, v10

    goto/16 :goto_4

    :pswitch_20
    move v9, v10

    goto/16 :goto_4

    :pswitch_21
    invoke-direct {p0}, Lcom/iLoong/launcher/Desktop3D/e;->n()Z

    move v9, v10

    goto/16 :goto_4

    :pswitch_22
    sget-boolean v0, Lcom/iLoong/launcher/Desktop3D/aw;->u:Z

    if-nez v0, :cond_41

    invoke-static {}, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->changeLoadThreadPriority()V

    :cond_41
    sget-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->bG:Z

    if-eqz v0, :cond_42

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/e;->h()V

    :goto_14
    move v9, v10

    goto/16 :goto_4

    :cond_42
    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/e;->g()V

    goto :goto_14

    :pswitch_23
    invoke-static {}, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->sysPlaySoundEffect()V

    sget-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->bG:Z

    if-eqz v0, :cond_43

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/e;->f()V

    :goto_15
    move v9, v10

    goto/16 :goto_4

    :cond_43
    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/e;->e()V

    goto :goto_15

    :pswitch_24
    invoke-direct {p0}, Lcom/iLoong/launcher/Desktop3D/e;->n()Z

    move v9, v10

    goto/16 :goto_4

    :sswitch_2
    sget-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->bG:Z

    if-eqz v0, :cond_44

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/e;->h()V

    :goto_16
    move v9, v10

    goto/16 :goto_4

    :cond_44
    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/e;->g()V

    goto :goto_16

    :sswitch_3
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->j:Lcom/iLoong/launcher/Desktop3D/bq;

    if-eqz v0, :cond_45

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->j:Lcom/iLoong/launcher/Desktop3D/bq;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/bq;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_46

    :cond_45
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->a:Lcom/iLoong/launcher/HotSeat3D/c;

    invoke-virtual {v0}, Lcom/iLoong/launcher/HotSeat3D/c;->c()V

    :cond_46
    move v9, v10

    goto/16 :goto_4

    :sswitch_4
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->j:Lcom/iLoong/launcher/Desktop3D/bq;

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->j:Lcom/iLoong/launcher/Desktop3D/bq;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/bq;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_49

    :cond_47
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->k:Lcom/iLoong/launcher/Desktop3D/y;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/y;->isVisible()Z

    move-result v0

    if-nez v0, :cond_49

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->a:Lcom/iLoong/launcher/HotSeat3D/c;

    invoke-virtual {v0}, Lcom/iLoong/launcher/HotSeat3D/c;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_48

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->a:Lcom/iLoong/launcher/HotSeat3D/c;

    iget v0, v0, Lcom/iLoong/launcher/HotSeat3D/c;->y:F

    cmpg-float v0, v0, v6

    if-gez v0, :cond_49

    :cond_48
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->a:Lcom/iLoong/launcher/HotSeat3D/c;

    invoke-virtual {v0}, Lcom/iLoong/launcher/HotSeat3D/c;->c()V

    :cond_49
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->j:Lcom/iLoong/launcher/Desktop3D/bq;

    if-eqz v0, :cond_4a

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->j:Lcom/iLoong/launcher/Desktop3D/bq;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/bq;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_4a

    invoke-static {}, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->sendShowWorkspaceMsg()V

    :cond_4a
    move v9, v10

    goto/16 :goto_4

    :sswitch_5
    invoke-virtual {v0}, Lcom/iLoong/launcher/HotSeat3D/a;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iLoong/launcher/UI3DEngine/View3D;

    new-instance v2, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v2}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    invoke-virtual {v1, v2}, Lcom/iLoong/launcher/UI3DEngine/View3D;->toAbsoluteCoords(Lcom/badlogic/gdx/math/Vector2;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/HotSeat3D/a;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->j:Lcom/iLoong/launcher/Desktop3D/bq;

    iget v1, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v0, v3, v1, v2}, Lcom/iLoong/launcher/Desktop3D/bq;->a(Ljava/util/ArrayList;FF)Z

    move v9, v10

    goto/16 :goto_4

    :pswitch_25
    invoke-virtual {v8}, Lcom/iLoong/launcher/d/a;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/iLoong/launcher/Desktop3D/e;->a(Ljava/util/ArrayList;)V

    move v9, v10

    goto/16 :goto_4

    :pswitch_26
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->i:Lcom/iLoong/launcher/Desktop3D/br;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/br;->hide()V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->m:Lcom/iLoong/launcher/HotSeat3D/a;

    invoke-virtual {v0}, Lcom/iLoong/launcher/HotSeat3D/a;->hide()V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->a:Lcom/iLoong/launcher/HotSeat3D/c;

    invoke-virtual {v0}, Lcom/iLoong/launcher/HotSeat3D/c;->hide()V

    sget v0, Lcom/iLoong/launcher/Desktop3D/cb;->aF:I

    if-eqz v0, :cond_4b

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->k:Lcom/iLoong/launcher/Desktop3D/y;

    sget-object v2, Laurelienribon/tweenengine/equations/Cubic;->OUT:Laurelienribon/tweenengine/equations/Cubic;

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/e;->k:Lcom/iLoong/launcher/Desktop3D/y;

    iget v4, v1, Lcom/iLoong/launcher/Desktop3D/y;->x:F

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/e;->k:Lcom/iLoong/launcher/Desktop3D/y;

    iget v1, v1, Lcom/iLoong/launcher/Desktop3D/y;->height:F

    neg-float v1, v1

    const/high16 v3, 0x3fc0

    mul-float v5, v1, v3

    move v1, v10

    move v3, v12

    invoke-virtual/range {v0 .. v6}, Lcom/iLoong/launcher/Desktop3D/y;->startTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    :cond_4b
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->j:Lcom/iLoong/launcher/Desktop3D/bq;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/bq;->hide()V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->l:Lcom/iLoong/launcher/Desktop3D/bs;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/bs;->hide()V

    invoke-virtual {p0, v8}, Lcom/iLoong/launcher/Desktop3D/e;->addView(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->f:Lcom/iLoong/launcher/Desktop3D/x;

    invoke-virtual {v0, v8}, Lcom/iLoong/launcher/Desktop3D/x;->b(Lcom/iLoong/launcher/Desktop3D/bd;)V

    iput-boolean v10, p0, Lcom/iLoong/launcher/Desktop3D/e;->b:Z

    iput-object v8, p0, Lcom/iLoong/launcher/Desktop3D/e;->o:Lcom/iLoong/launcher/d/a;

    move v9, v10

    goto/16 :goto_4

    :pswitch_27
    const-string v0, "test12345"

    const-string v1, "MSG_FOLDERICON_TO_CELLLAYOUT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "testdrag"

    const-string v1, " FolderIcon3D.MSG_FOLDERICON_TO_CELLLAYOUT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->j:Lcom/iLoong/launcher/Desktop3D/bq;

    invoke-virtual {v0, v6, v6}, Lcom/iLoong/launcher/Desktop3D/bq;->setScale(FF)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->j:Lcom/iLoong/launcher/Desktop3D/bq;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/bq;->show()V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->a:Lcom/iLoong/launcher/HotSeat3D/c;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/HotSeat3D/c;->a(I)V

    iget-object v0, v8, Lcom/iLoong/launcher/d/a;->a:Lcom/iLoong/launcher/d/b;

    invoke-virtual {v0}, Lcom/iLoong/launcher/d/b;->b()Z

    move-result v0

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/e;->m:Lcom/iLoong/launcher/HotSeat3D/a;

    invoke-virtual {v1}, Lcom/iLoong/launcher/HotSeat3D/a;->show()V

    sget-boolean v1, Lcom/iLoong/launcher/Desktop3D/cb;->aS:Z

    if-eqz v1, :cond_4f

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/e;->a:Lcom/iLoong/launcher/HotSeat3D/c;

    invoke-virtual {v1}, Lcom/iLoong/launcher/HotSeat3D/c;->show()V

    :cond_4c
    :goto_17
    sget v1, Lcom/iLoong/launcher/Desktop3D/cb;->aF:I

    if-eqz v1, :cond_4d

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/e;->k:Lcom/iLoong/launcher/Desktop3D/y;

    sget-object v3, Laurelienribon/tweenengine/equations/Cubic;->OUT:Laurelienribon/tweenengine/equations/Cubic;

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/e;->k:Lcom/iLoong/launcher/Desktop3D/y;

    iget v5, v2, Lcom/iLoong/launcher/Desktop3D/y;->x:F

    move v2, v10

    move v4, v12

    move v7, v6

    invoke-virtual/range {v1 .. v7}, Lcom/iLoong/launcher/Desktop3D/y;->startTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    :cond_4d
    invoke-virtual {v8}, Lcom/iLoong/launcher/d/a;->n()I

    move-result v1

    if-nez v1, :cond_50

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/e;->m:Lcom/iLoong/launcher/HotSeat3D/a;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/iLoong/launcher/HotSeat3D/a;->a(Ljava/lang/Object;)V

    :goto_18
    if-eqz v0, :cond_51

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->f:Lcom/iLoong/launcher/Desktop3D/x;

    iget-boolean v0, v0, Lcom/iLoong/launcher/Desktop3D/x;->e:Z

    if-eqz v0, :cond_51

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->j:Lcom/iLoong/launcher/Desktop3D/bq;

    const/4 v1, 0x3

    sget-object v2, Laurelienribon/tweenengine/equations/Cubic;->OUT:Laurelienribon/tweenengine/equations/Cubic;

    iget v4, p0, Lcom/iLoong/launcher/Desktop3D/e;->E:F

    iget v5, p0, Lcom/iLoong/launcher/Desktop3D/e;->E:F

    move v3, v12

    invoke-virtual/range {v0 .. v6}, Lcom/iLoong/launcher/Desktop3D/bq;->startTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    move-result-object v0

    invoke-virtual {v0, p0}, Laurelienribon/tweenengine/Tween;->setCallback(Laurelienribon/tweenengine/TweenCallback;)Ljava/lang/Object;

    :goto_19
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->j:Lcom/iLoong/launcher/Desktop3D/bq;

    invoke-virtual {v0, v8}, Lcom/iLoong/launcher/Desktop3D/bq;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->m:Lcom/iLoong/launcher/HotSeat3D/a;

    iput-boolean v9, v0, Lcom/iLoong/launcher/HotSeat3D/a;->touchable:Z

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->j:Lcom/iLoong/launcher/Desktop3D/bq;

    iput-boolean v9, v0, Lcom/iLoong/launcher/Desktop3D/bq;->touchable:Z

    invoke-virtual {v8}, Lcom/iLoong/launcher/d/a;->b()Lcom/iLoong/launcher/a/j;

    move-result-object v0

    iget-wide v0, v0, Lcom/iLoong/launcher/a/j;->m:J

    const-wide/16 v2, -0x64

    cmp-long v0, v0, v2

    if-nez v0, :cond_4e

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->j:Lcom/iLoong/launcher/Desktop3D/bq;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/bq;->z()Lcom/iLoong/launcher/Desktop3D/CellLayout3D;

    move-result-object v0

    invoke-virtual {v8}, Lcom/iLoong/launcher/d/a;->b()Lcom/iLoong/launcher/a/j;

    move-result-object v1

    iget v1, v1, Lcom/iLoong/launcher/a/j;->s:I

    invoke-virtual {v8}, Lcom/iLoong/launcher/d/a;->b()Lcom/iLoong/launcher/a/j;

    move-result-object v2

    iget v2, v2, Lcom/iLoong/launcher/a/j;->t:I

    invoke-virtual {v0, v1, v2}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->b(II)V

    :cond_4e
    sget v0, Lcom/iLoong/launcher/Desktop3D/e;->s:F

    const/high16 v1, 0x4080

    mul-float/2addr v0, v1

    const/high16 v1, 0x447a

    mul-float/2addr v0, v1

    float-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lcom/iLoong/launcher/Desktop3D/e;->a(J)V

    move v9, v10

    goto/16 :goto_4

    :cond_4f
    if-nez v0, :cond_4c

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/e;->a:Lcom/iLoong/launcher/HotSeat3D/c;

    invoke-virtual {v1}, Lcom/iLoong/launcher/HotSeat3D/c;->show()V

    goto :goto_17

    :cond_50
    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/e;->m:Lcom/iLoong/launcher/HotSeat3D/a;

    invoke-virtual {v1, v8}, Lcom/iLoong/launcher/HotSeat3D/a;->a(Ljava/lang/Object;)V

    goto :goto_18

    :cond_51
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->j:Lcom/iLoong/launcher/Desktop3D/bq;

    const/4 v1, 0x3

    sget-object v2, Laurelienribon/tweenengine/equations/Cubic;->OUT:Laurelienribon/tweenengine/equations/Cubic;

    move v3, v12

    move v4, v11

    move v5, v11

    invoke-virtual/range {v0 .. v6}, Lcom/iLoong/launcher/Desktop3D/bq;->startTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    move-result-object v0

    invoke-virtual {v0, p0}, Laurelienribon/tweenengine/Tween;->setCallback(Laurelienribon/tweenengine/TweenCallback;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/Tween;

    const-string v1, "launcher"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MSG_FOLDERICON_TO_CELLLAYOUT:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19

    :pswitch_28
    invoke-virtual {v8}, Lcom/iLoong/launcher/d/a;->getTag()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_59

    check-cast v0, Ljava/lang/String;

    :goto_1a
    invoke-virtual {v8}, Lcom/iLoong/launcher/d/a;->l()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iLoong/launcher/Desktop3D/at;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    sget-object v0, Lcom/iLoong/launcher/Desktop3D/e;->c:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    new-instance v1, Lcom/iLoong/launcher/Desktop3D/bj;

    invoke-direct {v1, p0, v8}, Lcom/iLoong/launcher/Desktop3D/bj;-><init>(Lcom/iLoong/launcher/Desktop3D/e;Lcom/iLoong/launcher/d/a;)V

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->postRunnable(Ljava/lang/Runnable;)V

    move v9, v10

    goto/16 :goto_4

    :pswitch_29
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->j:Lcom/iLoong/launcher/Desktop3D/bq;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/bq;->isVisible()Z

    move-result v9

    goto/16 :goto_4

    :pswitch_2a
    invoke-virtual {v0}, Lcom/iLoong/launcher/d/b;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/UI3DEngine/View3D;

    new-instance v1, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v1}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/UI3DEngine/View3D;->toAbsoluteCoords(Lcom/badlogic/gdx/math/Vector2;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->j:Lcom/iLoong/launcher/Desktop3D/bq;

    iget v3, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v0, v2, v3, v1}, Lcom/iLoong/launcher/Desktop3D/bq;->a(Ljava/util/ArrayList;FF)Z

    move v9, v10

    goto/16 :goto_4

    :pswitch_2b
    sget-object v1, Lcom/iLoong/launcher/Desktop3D/e;->c:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    new-instance v2, Lcom/iLoong/launcher/Desktop3D/bi;

    invoke-direct {v2, p0, v0}, Lcom/iLoong/launcher/Desktop3D/bi;-><init>(Lcom/iLoong/launcher/Desktop3D/e;Lcom/iLoong/launcher/d/b;)V

    invoke-virtual {v1, v2}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->postRunnable(Ljava/lang/Runnable;)V

    move v9, v10

    goto/16 :goto_4

    :pswitch_2c
    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/y;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    move v4, v9

    :goto_1b
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lt v4, v1, :cond_52

    invoke-interface {v0}, Ljava/util/List;->clear()V

    move v9, v10

    goto/16 :goto_4

    :cond_52
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/iLoong/launcher/Widget3D/f;

    if-eqz v1, :cond_56

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iLoong/launcher/Widget3D/f;

    invoke-static {}, Lcom/iLoong/launcher/Widget3D/g;->a()Lcom/iLoong/launcher/Widget3D/g;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/iLoong/launcher/Widget3D/g;->a(Lcom/iLoong/launcher/Widget3D/f;)V

    :cond_53
    :goto_1c
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/iLoong/launcher/Desktop3D/bd;

    if-eqz v1, :cond_54

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/e;->f:Lcom/iLoong/launcher/Desktop3D/x;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iLoong/launcher/Desktop3D/bd;

    invoke-virtual {v2, v1}, Lcom/iLoong/launcher/Desktop3D/x;->b(Lcom/iLoong/launcher/Desktop3D/bd;)V

    :cond_54
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/iLoong/launcher/d/a;

    if-eqz v1, :cond_55

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iLoong/launcher/d/a;

    invoke-virtual {v1}, Lcom/iLoong/launcher/d/a;->b()Lcom/iLoong/launcher/a/j;

    move-result-object v2

    check-cast v2, Lcom/iLoong/launcher/a/h;

    move v5, v9

    :goto_1d
    invoke-virtual {v1}, Lcom/iLoong/launcher/d/a;->getChildCount()I

    move-result v3

    if-lt v5, v3, :cond_57

    sget-object v1, Lcom/iLoong/launcher/Desktop3D/e;->c:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    invoke-virtual {v1, v2}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->a(Lcom/iLoong/launcher/a/e;)V

    :cond_55
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_1b

    :cond_56
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/iLoong/launcher/widget/c;

    if-eqz v1, :cond_53

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iLoong/launcher/widget/c;

    invoke-static {v1}, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->deleteSysWidget(Lcom/iLoong/launcher/widget/c;)V

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iLoong/launcher/widget/c;

    invoke-virtual {v1}, Lcom/iLoong/launcher/widget/c;->dispose()V

    goto :goto_1c

    :cond_57
    invoke-virtual {v1, v5}, Lcom/iLoong/launcher/d/a;->getChildAt(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v3

    instance-of v6, v3, Lcom/iLoong/launcher/Desktop3D/aj;

    if-eqz v6, :cond_58

    check-cast v3, Lcom/iLoong/launcher/Desktop3D/aj;

    invoke-virtual {v3}, Lcom/iLoong/launcher/Desktop3D/aj;->b()Lcom/iLoong/launcher/a/j;

    move-result-object v3

    invoke-static {v3}, Lcom/iLoong/launcher/Desktop3D/e;->b(Lcom/iLoong/launcher/a/j;)V

    :cond_58
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_1d

    :cond_59
    move-object v0, v1

    goto/16 :goto_1a

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_1
        0xc -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xe
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch -0x2710
        :pswitch_3
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x2
        :pswitch_4
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x5
        :pswitch_e
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x2
        :pswitch_11
        :pswitch_12
        :pswitch_10
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_17
        :pswitch_16
        :pswitch_f
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0x0
        :pswitch_18
        :pswitch_5
        :pswitch_18
        :pswitch_18
    .end packed-switch

    :pswitch_data_9
    .packed-switch 0x0
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
    .end packed-switch

    :pswitch_data_a
    .packed-switch 0x1
        :pswitch_22
        :pswitch_23
        :pswitch_24
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        0x2 -> :sswitch_5
        0x6 -> :sswitch_2
        0xa -> :sswitch_3
        0xb -> :sswitch_4
    .end sparse-switch

    :pswitch_data_b
    .packed-switch 0x3
        :pswitch_28
        :pswitch_26
        :pswitch_27
        :pswitch_29
        :pswitch_6
        :pswitch_25
    .end packed-switch

    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_2a
        :pswitch_2b
    .end packed-switch

    :pswitch_data_d
    .packed-switch 0x0
        :pswitch_2c
    .end packed-switch

    :pswitch_data_e
    .packed-switch 0x2710
        :pswitch_7
    .end packed-switch
.end method

.method public onEvent(ILaurelienribon/tweenengine/BaseTween;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/16 v4, 0x8

    const/4 v3, 0x0

    const/high16 v2, 0x3f80

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->t:Laurelienribon/tweenengine/Timeline;

    if-ne p2, v0, :cond_2

    if-ne p1, v4, :cond_2

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->t:Laurelienribon/tweenengine/Timeline;

    invoke-virtual {v0}, Laurelienribon/tweenengine/Timeline;->getUserData()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "launcher"

    const-string v1, "event:hide app"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v6, p0, Lcom/iLoong/launcher/Desktop3D/e;->t:Laurelienribon/tweenengine/Timeline;

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->i:Lcom/iLoong/launcher/Desktop3D/br;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/br;->hide()V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->i:Lcom/iLoong/launcher/Desktop3D/br;

    iget-object v0, v0, Lcom/iLoong/launcher/Desktop3D/br;->b:Lcom/iLoong/launcher/Desktop3D/aw;

    invoke-virtual {v0, v3}, Lcom/iLoong/launcher/Desktop3D/aw;->setUser(F)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->i:Lcom/iLoong/launcher/Desktop3D/br;

    iget-object v0, v0, Lcom/iLoong/launcher/Desktop3D/br;->b:Lcom/iLoong/launcher/Desktop3D/aw;

    invoke-virtual {v0, v3}, Lcom/iLoong/launcher/Desktop3D/aw;->setRotation(F)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->i:Lcom/iLoong/launcher/Desktop3D/br;

    iget-object v0, v0, Lcom/iLoong/launcher/Desktop3D/br;->b:Lcom/iLoong/launcher/Desktop3D/aw;

    iget-object v0, v0, Lcom/iLoong/launcher/Desktop3D/aw;->color:Lcom/badlogic/gdx/graphics/Color;

    iput v2, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->i:Lcom/iLoong/launcher/Desktop3D/br;

    iget-object v0, v0, Lcom/iLoong/launcher/Desktop3D/br;->b:Lcom/iLoong/launcher/Desktop3D/aw;

    invoke-virtual {v0, v2, v2}, Lcom/iLoong/launcher/Desktop3D/aw;->setScale(FF)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->i:Lcom/iLoong/launcher/Desktop3D/br;

    iget-object v0, v0, Lcom/iLoong/launcher/Desktop3D/br;->a:Lcom/iLoong/launcher/Desktop3D/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->i:Lcom/iLoong/launcher/Desktop3D/br;

    iget-object v0, v0, Lcom/iLoong/launcher/Desktop3D/br;->a:Lcom/iLoong/launcher/Desktop3D/b;

    iget-object v0, v0, Lcom/iLoong/launcher/Desktop3D/b;->color:Lcom/badlogic/gdx/graphics/Color;

    iput v2, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    :cond_0
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->i:Lcom/iLoong/launcher/Desktop3D/br;

    iget-object v0, v0, Lcom/iLoong/launcher/Desktop3D/br;->b:Lcom/iLoong/launcher/Desktop3D/aw;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/aw;->stopTween()V

    invoke-static {}, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->sendShowWorkspaceMsg()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->t:Laurelienribon/tweenengine/Timeline;

    if-ne p2, v0, :cond_3

    if-ne p1, v4, :cond_3

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->t:Laurelienribon/tweenengine/Timeline;

    invoke-virtual {v0}, Laurelienribon/tweenengine/Timeline;->getUserData()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "launcher"

    const-string v1, "event:hide workspace"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v6, p0, Lcom/iLoong/launcher/Desktop3D/e;->t:Laurelienribon/tweenengine/Timeline;

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->j:Lcom/iLoong/launcher/Desktop3D/bq;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/bq;->hide()V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->j:Lcom/iLoong/launcher/Desktop3D/bq;

    invoke-virtual {v0, v3}, Lcom/iLoong/launcher/Desktop3D/bq;->setUser(F)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->j:Lcom/iLoong/launcher/Desktop3D/bq;

    invoke-virtual {v0, v3}, Lcom/iLoong/launcher/Desktop3D/bq;->setRotation(F)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->j:Lcom/iLoong/launcher/Desktop3D/bq;

    iget-object v0, v0, Lcom/iLoong/launcher/Desktop3D/bq;->color:Lcom/badlogic/gdx/graphics/Color;

    iput v2, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->j:Lcom/iLoong/launcher/Desktop3D/bq;

    invoke-virtual {v0, v2, v2}, Lcom/iLoong/launcher/Desktop3D/bq;->setScale(FF)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->u:Laurelienribon/tweenengine/Tween;

    if-ne p2, v0, :cond_5

    if-ne p1, v4, :cond_5

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->u:Laurelienribon/tweenengine/Tween;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->u:Laurelienribon/tweenengine/Tween;

    invoke-virtual {v0}, Laurelienribon/tweenengine/Tween;->getUserData()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sput-boolean v5, Lcom/iLoong/launcher/Desktop3D/bq;->B:Z

    iput-object v6, p0, Lcom/iLoong/launcher/Desktop3D/e;->u:Laurelienribon/tweenengine/Tween;

    iget-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->d:Z

    if-eqz v0, :cond_1

    sget v0, Lcom/iLoong/launcher/Desktop3D/cb;->aF:I

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->k:Lcom/iLoong/launcher/Desktop3D/y;

    invoke-virtual {v0, v5}, Lcom/iLoong/launcher/Desktop3D/y;->a(Z)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->k:Lcom/iLoong/launcher/Desktop3D/y;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/y;->hide()V

    :cond_4
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->a:Lcom/iLoong/launcher/HotSeat3D/c;

    invoke-virtual {v0, v2, v2}, Lcom/iLoong/launcher/HotSeat3D/c;->setScale(FF)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->a:Lcom/iLoong/launcher/HotSeat3D/c;

    invoke-virtual {v0}, Lcom/iLoong/launcher/HotSeat3D/c;->c()V

    iput-boolean v5, p0, Lcom/iLoong/launcher/Desktop3D/e;->d:Z

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->j:Lcom/iLoong/launcher/Desktop3D/bq;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/bq;->getTween()Laurelienribon/tweenengine/Tween;

    move-result-object v0

    if-ne p2, v0, :cond_6

    if-ne p1, v4, :cond_6

    const-string v0, "test12345"

    const-string v1, "workspace anim finished"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/iLoong/launcher/Desktop3D/e;->o()V

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->C:Lcom/iLoong/launcher/Desktop3D/am;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/am;->getTween()Laurelienribon/tweenengine/Tween;

    move-result-object v0

    if-ne p2, v0, :cond_7

    if-ne p1, v4, :cond_7

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->C:Lcom/iLoong/launcher/Desktop3D/am;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/am;->hide()V

    goto/16 :goto_0

    :cond_7
    instance-of v0, p2, Laurelienribon/tweenengine/Timeline;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->k:Lcom/iLoong/launcher/Desktop3D/y;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/y;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/e;->k:Lcom/iLoong/launcher/Desktop3D/y;

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->k:Lcom/iLoong/launcher/Desktop3D/y;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/y;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenHeight()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/iLoong/launcher/Desktop3D/e;->k:Lcom/iLoong/launcher/Desktop3D/y;

    iget v4, v4, Lcom/iLoong/launcher/Desktop3D/y;->height:F

    sub-float/2addr v3, v4

    invoke-virtual {v1, v0, v2, v3}, Lcom/iLoong/launcher/Desktop3D/y;->a(Ljava/util/ArrayList;FF)Z

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->k:Lcom/iLoong/launcher/Desktop3D/y;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/y;->hide()V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->k:Lcom/iLoong/launcher/Desktop3D/y;

    invoke-virtual {v0, v6}, Lcom/iLoong/launcher/Desktop3D/y;->setTag(Ljava/lang/Object;)V

    invoke-static {}, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->sendShowWorkspaceMsg()V

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->B:Lcom/iLoong/launcher/UI3DEngine/View3D;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->B:Lcom/iLoong/launcher/UI3DEngine/View3D;

    iget-object v0, v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/e;->B:Lcom/iLoong/launcher/UI3DEngine/View3D;

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/Desktop3D/e;->removeView(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    goto/16 :goto_0
.end method
