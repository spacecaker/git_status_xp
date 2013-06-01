.class public Lcom/iLoong/launcher/Desktop3D/ah;
.super Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;


# static fields
.field private static N:F

.field private static O:F

.field public static h:F

.field public static i:F


# instance fields
.field private A:Z

.field private B:Ljava/util/Timer;

.field private C:Lcom/iLoong/launcher/Desktop3D/z;

.field private D:Z

.field private E:F

.field private F:Laurelienribon/tweenengine/Timeline;

.field private G:Laurelienribon/tweenengine/Timeline;

.field private H:Lcom/iLoong/launcher/UI3DEngine/View3D;

.field private I:Lcom/iLoong/launcher/desktop/iLoongLauncher;

.field private J:Landroid/app/WallpaperManager;

.field private K:F

.field private L:F

.field private M:Z

.field public a:I

.field public b:I

.field public c:I

.field public d:Z

.field public e:Z

.field public f:F

.field private j:Lcom/iLoong/launcher/Desktop3D/v;

.field private k:Ljava/util/ArrayList;

.field private l:Ljava/util/ArrayList;

.field private m:F

.field private n:F

.field private o:F

.field private p:F

.field private q:F

.field private r:F

.field private s:F

.field private t:F

.field private u:J

.field private v:Z

.field private w:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/high16 v0, 0x437a

    sput v0, Lcom/iLoong/launcher/Desktop3D/ah;->N:F

    const v0, 0x43988000

    sput v0, Lcom/iLoong/launcher/Desktop3D/ah;->O:F

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 6

    const/high16 v5, 0x41a0

    const/4 v3, 0x0

    const/high16 v2, -0x4080

    const/high16 v1, 0x3f80

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;-><init>()V

    iput v4, p0, Lcom/iLoong/launcher/Desktop3D/ah;->a:I

    iput v4, p0, Lcom/iLoong/launcher/Desktop3D/ah;->b:I

    iput v4, p0, Lcom/iLoong/launcher/Desktop3D/ah;->c:I

    const/high16 v0, 0x4234

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/ah;->m:F

    const/high16 v0, 0x42c8

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/ah;->n:F

    iput v5, p0, Lcom/iLoong/launcher/Desktop3D/ah;->o:F

    iput v5, p0, Lcom/iLoong/launcher/Desktop3D/ah;->p:F

    const/high16 v0, 0x42f0

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/ah;->q:F

    const/high16 v0, 0x4370

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/ah;->r:F

    const/high16 v0, 0x4396

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/ah;->s:F

    iput-boolean v4, p0, Lcom/iLoong/launcher/Desktop3D/ah;->v:Z

    iput-boolean v4, p0, Lcom/iLoong/launcher/Desktop3D/ah;->w:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/ah;->A:Z

    iput-boolean v4, p0, Lcom/iLoong/launcher/Desktop3D/ah;->d:Z

    iput-boolean v4, p0, Lcom/iLoong/launcher/Desktop3D/ah;->D:Z

    iput v2, p0, Lcom/iLoong/launcher/Desktop3D/ah;->E:F

    iput-boolean v4, p0, Lcom/iLoong/launcher/Desktop3D/ah;->e:Z

    iput v2, p0, Lcom/iLoong/launcher/Desktop3D/ah;->f:F

    iput v3, p0, Lcom/iLoong/launcher/Desktop3D/ah;->K:F

    iput v3, p0, Lcom/iLoong/launcher/Desktop3D/ah;->L:F

    iput-boolean v4, p0, Lcom/iLoong/launcher/Desktop3D/ah;->M:Z

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x43f0

    div-float v2, v0, v2

    cmpg-float v2, v2, v1

    if-gez v2, :cond_3

    const/high16 v2, 0x43f0

    div-float/2addr v0, v2

    :goto_0
    sget v2, Lcom/iLoong/launcher/Desktop3D/ah;->N:F

    mul-float/2addr v2, v0

    sput v2, Lcom/iLoong/launcher/Desktop3D/ah;->N:F

    sget v2, Lcom/iLoong/launcher/Desktop3D/ah;->O:F

    mul-float/2addr v0, v2

    sput v0, Lcom/iLoong/launcher/Desktop3D/ah;->O:F

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getDensity()F

    move-result v0

    const/high16 v2, 0x4320

    mul-float/2addr v0, v2

    const/high16 v2, 0x4370

    div-float/2addr v0, v2

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenWidth()I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/iLoong/launcher/Desktop3D/ah;->width:F

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenHeight()I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/iLoong/launcher/Desktop3D/ah;->height:F

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/ah;->width:F

    const v3, 0x40066666

    div-float/2addr v2, v3

    mul-float/2addr v2, v0

    iput v2, p0, Lcom/iLoong/launcher/Desktop3D/ah;->r:F

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/ah;->height:F

    const/high16 v3, 0x4020

    div-float/2addr v2, v3

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/ah;->s:F

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/ah;->r:F

    sget v2, Lcom/iLoong/launcher/Desktop3D/ah;->N:F

    cmpg-float v0, v0, v2

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/ah;->s:F

    sget v2, Lcom/iLoong/launcher/Desktop3D/ah;->O:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    :cond_0
    sget v0, Lcom/iLoong/launcher/Desktop3D/ah;->N:F

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/ah;->r:F

    sget v0, Lcom/iLoong/launcher/Desktop3D/ah;->O:F

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/ah;->s:F

    :cond_1
    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/ah;->r:F

    const/high16 v2, 0x41d0

    div-float/2addr v0, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/ah;->r:F

    const/high16 v2, 0x41d0

    div-float/2addr v0, v2

    :goto_1
    sput v0, Lcom/iLoong/launcher/Desktop3D/ah;->h:F

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/ah;->s:F

    const/high16 v2, 0x4214

    div-float/2addr v0, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/ah;->s:F

    const/high16 v1, 0x4214

    div-float v1, v0, v1

    :cond_2
    sput v1, Lcom/iLoong/launcher/Desktop3D/ah;->i:F

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/ah;->o:F

    sget v1, Lcom/iLoong/launcher/Desktop3D/ah;->h:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/ah;->o:F

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/ah;->p:F

    sget v1, Lcom/iLoong/launcher/Desktop3D/ah;->i:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/ah;->p:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/ah;->transform:Z

    new-instance v0, Lcom/iLoong/launcher/UI3DEngine/View3D;

    const-string v1, "anim"

    invoke-direct {v0, v1}, Lcom/iLoong/launcher/UI3DEngine/View3D;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ah;->H:Lcom/iLoong/launcher/UI3DEngine/View3D;

    iput-boolean v4, p0, Lcom/iLoong/launcher/Desktop3D/ah;->visible:Z

    return-void

    :cond_3
    move v0, v1

    goto/16 :goto_0

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method static synthetic a(Lcom/iLoong/launcher/Desktop3D/ah;Lcom/iLoong/launcher/Desktop3D/z;)V
    .locals 0

    iput-object p1, p0, Lcom/iLoong/launcher/Desktop3D/ah;->C:Lcom/iLoong/launcher/Desktop3D/z;

    return-void
.end method

.method static synthetic a(Lcom/iLoong/launcher/Desktop3D/ah;Ljava/util/Timer;)V
    .locals 0

    iput-object p1, p0, Lcom/iLoong/launcher/Desktop3D/ah;->B:Ljava/util/Timer;

    return-void
.end method

.method static synthetic a(Lcom/iLoong/launcher/Desktop3D/ah;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/iLoong/launcher/Desktop3D/ah;->w:Z

    return-void
.end method

.method private a(Lcom/iLoong/launcher/UI3DEngine/View3D;)V
    .locals 1

    invoke-virtual {p1}, Lcom/iLoong/launcher/UI3DEngine/View3D;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/Desktop3D/au;

    iget-object v0, v0, Lcom/iLoong/launcher/Desktop3D/au;->a:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->addView(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/iLoong/launcher/Desktop3D/ah;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/ah;->A:Z

    return v0
.end method

.method static synthetic b(Lcom/iLoong/launcher/Desktop3D/ah;)Ljava/util/Timer;
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ah;->B:Ljava/util/Timer;

    return-object v0
.end method

.method private b(Z)V
    .locals 9

    const v8, 0x3fa66666

    const/4 v1, 0x1

    const/high16 v7, 0x4000

    const v3, 0x3e99999a

    const/4 v6, 0x0

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/ah;->width:F

    iput v6, p0, Lcom/iLoong/launcher/Desktop3D/ah;->x:F

    iput v6, p0, Lcom/iLoong/launcher/Desktop3D/ah;->y:F

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ah;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/ah;->r:F

    const v4, 0x40466666

    div-float/2addr v2, v4

    iput v2, p0, Lcom/iLoong/launcher/Desktop3D/ah;->n:F

    const-string v2, "page-controlle-a"

    invoke-static {v2}, Lcom/iLoong/launcher/Desktop3D/at;->c(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->getRegionHeight()I

    move-result v2

    int-to-float v2, v2

    sget v4, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->mScreenScale:F

    mul-float/2addr v2, v4

    const/high16 v4, 0x4270

    sub-float/2addr v2, v4

    iput v2, p0, Lcom/iLoong/launcher/Desktop3D/ah;->q:F

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/ah;->height:F

    iget v4, p0, Lcom/iLoong/launcher/Desktop3D/ah;->q:F

    mul-float/2addr v4, v8

    sub-float/2addr v2, v4

    iget v4, p0, Lcom/iLoong/launcher/Desktop3D/ah;->s:F

    sub-float/2addr v2, v4

    add-int/lit8 v4, v0, -0x1

    int-to-float v4, v4

    div-float/2addr v2, v4

    iput v2, p0, Lcom/iLoong/launcher/Desktop3D/ah;->m:F

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/ah;->m:F

    const/high16 v4, 0x41f0

    cmpg-float v2, v2, v4

    if-gez v2, :cond_2

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/ah;->height:F

    iget v4, p0, Lcom/iLoong/launcher/Desktop3D/ah;->q:F

    sub-float/2addr v2, v4

    iget v4, p0, Lcom/iLoong/launcher/Desktop3D/ah;->s:F

    sub-float/2addr v2, v4

    add-int/lit8 v4, v0, -0x1

    int-to-float v4, v4

    div-float/2addr v2, v4

    iput v2, p0, Lcom/iLoong/launcher/Desktop3D/ah;->m:F

    :cond_0
    :goto_0
    if-lez v0, :cond_1

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/ah;->n:F

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    mul-float/2addr v0, v2

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/ah;->r:F

    add-float/2addr v0, v2

    const/high16 v2, 0x41a0

    add-float/2addr v0, v2

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/ah;->width:F

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/ah;->width:F

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenWidth()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_3

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/ah;->width:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v7

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/ah;->x:F

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/ah;->x:F

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/ah;->E:F

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/ah;->width:F

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/ah;->m:F

    const/high16 v4, 0x42a0

    cmpl-float v2, v2, v4

    if-lez v2, :cond_0

    const/high16 v2, 0x42a0

    iput v2, p0, Lcom/iLoong/launcher/Desktop3D/ah;->m:F

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/ah;->height:F

    iget v4, p0, Lcom/iLoong/launcher/Desktop3D/ah;->m:F

    add-int/lit8 v5, v0, -0x1

    int-to-float v5, v5

    mul-float/2addr v4, v5

    sub-float/2addr v2, v4

    iget v4, p0, Lcom/iLoong/launcher/Desktop3D/ah;->s:F

    sub-float/2addr v2, v4

    div-float/2addr v2, v8

    iput v2, p0, Lcom/iLoong/launcher/Desktop3D/ah;->q:F

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/ah;->n:F

    iget v4, p0, Lcom/iLoong/launcher/Desktop3D/ah;->a:I

    int-to-float v4, v4

    mul-float/2addr v2, v4

    sub-float/2addr v0, v2

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/ah;->r:F

    div-float/2addr v2, v7

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/ah;->x:F

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/ah;->a:I

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/ah;->b:I

    if-eq v0, v2, :cond_6

    if-eqz p1, :cond_6

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/ah;->n:F

    iget v4, p0, Lcom/iLoong/launcher/Desktop3D/ah;->b:I

    int-to-float v4, v4

    mul-float/2addr v2, v4

    sub-float/2addr v0, v2

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/ah;->r:F

    div-float/2addr v2, v7

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/ah;->E:F

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/ah;->E:F

    cmpl-float v0, v0, v6

    if-lez v0, :cond_4

    iput v6, p0, Lcom/iLoong/launcher/Desktop3D/ah;->E:F

    :cond_4
    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/ah;->E:F

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenWidth()I

    move-result v2

    int-to-float v2, v2

    iget v4, p0, Lcom/iLoong/launcher/Desktop3D/ah;->width:F

    sub-float/2addr v2, v4

    cmpg-float v0, v0, v2

    if-gez v0, :cond_5

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenWidth()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/ah;->width:F

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/ah;->E:F

    :cond_5
    iget-object v7, p0, Lcom/iLoong/launcher/Desktop3D/ah;->F:Laurelienribon/tweenengine/Timeline;

    sget-object v2, Laurelienribon/tweenengine/equations/Quad;->IN:Laurelienribon/tweenengine/equations/Quad;

    iget v4, p0, Lcom/iLoong/launcher/Desktop3D/ah;->E:F

    iget v5, p0, Lcom/iLoong/launcher/Desktop3D/ah;->y:F

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/iLoong/launcher/Desktop3D/ah;->obtainTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    move-result-object v0

    invoke-virtual {v7, v0}, Laurelienribon/tweenengine/Timeline;->push(Laurelienribon/tweenengine/Tween;)Laurelienribon/tweenengine/Timeline;

    goto :goto_1

    :cond_6
    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/ah;->x:F

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/ah;->E:F

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/ah;->x:F

    cmpl-float v0, v0, v6

    if-lez v0, :cond_7

    iput v6, p0, Lcom/iLoong/launcher/Desktop3D/ah;->E:F

    if-eqz p1, :cond_8

    iget-object v7, p0, Lcom/iLoong/launcher/Desktop3D/ah;->F:Laurelienribon/tweenengine/Timeline;

    sget-object v2, Laurelienribon/tweenengine/equations/Quad;->OUT:Laurelienribon/tweenengine/equations/Quad;

    iget v4, p0, Lcom/iLoong/launcher/Desktop3D/ah;->E:F

    iget v5, p0, Lcom/iLoong/launcher/Desktop3D/ah;->y:F

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/iLoong/launcher/Desktop3D/ah;->obtainTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    move-result-object v0

    invoke-virtual {v7, v0}, Laurelienribon/tweenengine/Timeline;->push(Laurelienribon/tweenengine/Tween;)Laurelienribon/tweenengine/Timeline;

    :cond_7
    :goto_2
    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/ah;->x:F

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenWidth()I

    move-result v2

    int-to-float v2, v2

    iget v4, p0, Lcom/iLoong/launcher/Desktop3D/ah;->width:F

    sub-float/2addr v2, v4

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenWidth()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/ah;->width:F

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/ah;->E:F

    if-eqz p1, :cond_9

    iget-object v7, p0, Lcom/iLoong/launcher/Desktop3D/ah;->F:Laurelienribon/tweenengine/Timeline;

    sget-object v2, Laurelienribon/tweenengine/equations/Quad;->OUT:Laurelienribon/tweenengine/equations/Quad;

    iget v4, p0, Lcom/iLoong/launcher/Desktop3D/ah;->E:F

    iget v5, p0, Lcom/iLoong/launcher/Desktop3D/ah;->y:F

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/iLoong/launcher/Desktop3D/ah;->obtainTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    move-result-object v0

    invoke-virtual {v7, v0}, Laurelienribon/tweenengine/Timeline;->push(Laurelienribon/tweenengine/Tween;)Laurelienribon/tweenengine/Timeline;

    goto/16 :goto_1

    :cond_8
    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/ah;->E:F

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/ah;->x:F

    goto :goto_2

    :cond_9
    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/ah;->E:F

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/ah;->x:F

    goto/16 :goto_1
.end method

.method static synthetic c(Lcom/iLoong/launcher/Desktop3D/ah;)Lcom/iLoong/launcher/Desktop3D/z;
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ah;->C:Lcom/iLoong/launcher/Desktop3D/z;

    return-object v0
.end method

.method static synthetic d(Lcom/iLoong/launcher/Desktop3D/ah;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/ah;->w:Z

    return v0
.end method

.method static synthetic e(Lcom/iLoong/launcher/Desktop3D/ah;)J
    .locals 2

    iget-wide v0, p0, Lcom/iLoong/launcher/Desktop3D/ah;->u:J

    return-wide v0
.end method

.method static synthetic f(Lcom/iLoong/launcher/Desktop3D/ah;)Lcom/iLoong/launcher/Desktop3D/v;
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ah;->j:Lcom/iLoong/launcher/Desktop3D/v;

    return-object v0
.end method

.method private f()V
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ah;->B:Ljava/util/Timer;

    new-instance v0, Lcom/iLoong/launcher/Desktop3D/z;

    invoke-direct {v0, p0}, Lcom/iLoong/launcher/Desktop3D/z;-><init>(Lcom/iLoong/launcher/Desktop3D/ah;)V

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ah;->C:Lcom/iLoong/launcher/Desktop3D/z;

    iput-boolean v1, p0, Lcom/iLoong/launcher/Desktop3D/ah;->v:Z

    iput-boolean v1, p0, Lcom/iLoong/launcher/Desktop3D/ah;->w:Z

    return-void
.end method

.method private g()V
    .locals 3

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/ah;->a:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/ah;->l:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/ah;->f:F

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ah;->H:Lcom/iLoong/launcher/UI3DEngine/View3D;

    const/4 v1, 0x7

    const/high16 v2, 0x3f00

    invoke-static {v0, v1, v2}, Laurelienribon/tweenengine/Tween;->to(Ljava/lang/Object;IF)Laurelienribon/tweenengine/Tween;

    move-result-object v0

    sget-object v1, Laurelienribon/tweenengine/equations/Cubic;->OUT:Laurelienribon/tweenengine/equations/Cubic;

    invoke-virtual {v0, v1}, Laurelienribon/tweenengine/Tween;->ease(Laurelienribon/tweenengine/TweenEquation;)Laurelienribon/tweenengine/Tween;

    move-result-object v0

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/ah;->f:F

    invoke-virtual {v0, v1}, Laurelienribon/tweenengine/Tween;->target(F)Laurelienribon/tweenengine/Tween;

    move-result-object v0

    sget-object v1, Lcom/iLoong/launcher/tween/View3DTweenAccessor;->manager:Laurelienribon/tweenengine/TweenManager;

    invoke-virtual {v0, v1}, Laurelienribon/tweenengine/Tween;->start(Laurelienribon/tweenengine/TweenManager;)Ljava/lang/Object;

    return-void
.end method

.method private h()V
    .locals 4

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ah;->H:Lcom/iLoong/launcher/UI3DEngine/View3D;

    invoke-virtual {v0}, Lcom/iLoong/launcher/UI3DEngine/View3D;->getUser()F

    move-result v0

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/ah;->f:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ah;->I:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    invoke-virtual {v0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/ah;->J:Landroid/app/WallpaperManager;

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/ah;->H:Lcom/iLoong/launcher/UI3DEngine/View3D;

    invoke-virtual {v2}, Lcom/iLoong/launcher/UI3DEngine/View3D;->getUser()F

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/app/WallpaperManager;->setWallpaperOffsets(Landroid/os/IBinder;FF)V

    goto :goto_0
.end method


# virtual methods
.method public a(F)I
    .locals 1

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/ah;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/Desktop3D/ah;->getChildAt(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/iLoong/launcher/Desktop3D/ah;->a(Lcom/iLoong/launcher/UI3DEngine/View3D;F)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/ah;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public a(Lcom/iLoong/launcher/UI3DEngine/View3D;IZ)Lcom/iLoong/launcher/UI3DEngine/View3D;
    .locals 10

    new-instance v0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    const-string v1, "page_select"

    invoke-direct {v0, v1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->transform:Z

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/ah;->r:F

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/ah;->s:F

    invoke-virtual {v0, v1, v2}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->setSize(FF)V

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/ah;->r:F

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/ah;->s:F

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->setOrigin(FF)V

    const/high16 v1, 0x4120

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/ah;->n:F

    int-to-float v3, p2

    mul-float/2addr v2, v3

    add-float v4, v1, v2

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/ah;->q:F

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/ah;->m:F

    int-to-float v3, p2

    mul-float/2addr v2, v3

    add-float v5, v1, v2

    if-nez p3, :cond_1

    iput v4, v0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->x:F

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/ah;->height:F

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/ah;->s:F

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->y:F

    iget-object v7, p0, Lcom/iLoong/launcher/Desktop3D/ah;->F:Laurelienribon/tweenengine/Timeline;

    const/4 v1, 0x1

    sget-object v2, Laurelienribon/tweenengine/equations/Quad;->OUT:Laurelienribon/tweenengine/equations/Quad;

    const v3, 0x3e99999a

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->obtainTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    move-result-object v1

    invoke-virtual {v7, v1}, Laurelienribon/tweenengine/Timeline;->push(Laurelienribon/tweenengine/Tween;)Laurelienribon/tweenengine/Timeline;

    :goto_0
    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/ah;->b:I

    if-eq p2, v1, :cond_3

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->DARK_GRAY:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Lcom/iLoong/launcher/Desktop3D/v;->i:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->setBackgroud(Lcom/badlogic/gdx/graphics/g2d/NinePatch;)V

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->setRotationVector(FFF)V

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/ah;->a:I

    if-ne p2, v1, :cond_2

    const/4 v1, 0x4

    sget-object v2, Laurelienribon/tweenengine/equations/Quad;->IN:Laurelienribon/tweenengine/equations/Quad;

    const v3, 0x3e99999a

    const/high16 v4, 0x425c

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->startTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    :goto_1
    if-eqz p3, :cond_0

    new-instance v1, Lcom/iLoong/launcher/Desktop3D/au;

    invoke-direct {v1, p0}, Lcom/iLoong/launcher/Desktop3D/au;-><init>(Lcom/iLoong/launcher/Desktop3D/ah;)V

    invoke-virtual {v1, p1}, Lcom/iLoong/launcher/Desktop3D/au;->a(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    invoke-virtual {p1, v1}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setTag(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p1}, Lcom/iLoong/launcher/UI3DEngine/View3D;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iLoong/launcher/Desktop3D/au;

    invoke-virtual {p1}, Lcom/iLoong/launcher/UI3DEngine/View3D;->getParent()Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    move-result-object v2

    iput-object v2, v1, Lcom/iLoong/launcher/Desktop3D/au;->a:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    invoke-virtual {v0, p1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->addView(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/ah;->r:F

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/ah;->o:F

    const/high16 v3, 0x4000

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget v2, p1, Lcom/iLoong/launcher/UI3DEngine/View3D;->width:F

    div-float/2addr v1, v2

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/ah;->s:F

    iget v3, p0, Lcom/iLoong/launcher/Desktop3D/ah;->p:F

    const/high16 v4, 0x4000

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget v3, p1, Lcom/iLoong/launcher/UI3DEngine/View3D;->height:F

    div-float/2addr v2, v3

    cmpg-float v3, v1, v2

    if-gez v3, :cond_5

    move v8, v1

    :goto_2
    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/ah;->a:I

    if-ne p2, v1, :cond_a

    if-nez p3, :cond_a

    iget v1, v0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->x:F

    neg-float v1, v1

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/ah;->x:F

    sub-float/2addr v1, v2

    iput v1, p1, Lcom/iLoong/launcher/UI3DEngine/View3D;->x:F

    iget v1, v0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->y:F

    neg-float v1, v1

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/ah;->y:F

    sub-float/2addr v1, v2

    iput v1, p1, Lcom/iLoong/launcher/UI3DEngine/View3D;->y:F

    iget-object v9, p0, Lcom/iLoong/launcher/Desktop3D/ah;->F:Laurelienribon/tweenengine/Timeline;

    const/4 v2, 0x1

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/ah;->b:I

    iget v3, p0, Lcom/iLoong/launcher/Desktop3D/ah;->a:I

    if-eq v1, v3, :cond_6

    sget-object v3, Laurelienribon/tweenengine/equations/Quad;->IN:Laurelienribon/tweenengine/equations/Quad;

    :goto_3
    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/ah;->b:I

    iget v4, p0, Lcom/iLoong/launcher/Desktop3D/ah;->a:I

    if-eq v1, v4, :cond_7

    const v4, 0x3e99999a

    :goto_4
    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/ah;->r:F

    iget v5, p1, Lcom/iLoong/launcher/UI3DEngine/View3D;->width:F

    mul-float/2addr v5, v8

    sub-float/2addr v1, v5

    const/high16 v5, 0x4000

    div-float v5, v1, v5

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/ah;->s:F

    iget v6, p1, Lcom/iLoong/launcher/UI3DEngine/View3D;->height:F

    mul-float/2addr v6, v8

    sub-float/2addr v1, v6

    const/high16 v6, 0x4000

    div-float v6, v1, v6

    const/4 v7, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v7}, Lcom/iLoong/launcher/UI3DEngine/View3D;->obtainTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    move-result-object v1

    invoke-virtual {v9, v1}, Laurelienribon/tweenengine/Timeline;->push(Laurelienribon/tweenengine/Tween;)Laurelienribon/tweenengine/Timeline;

    iget-object v9, p0, Lcom/iLoong/launcher/Desktop3D/ah;->F:Laurelienribon/tweenengine/Timeline;

    const/4 v2, 0x3

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/ah;->b:I

    iget v3, p0, Lcom/iLoong/launcher/Desktop3D/ah;->a:I

    if-eq v1, v3, :cond_8

    sget-object v3, Laurelienribon/tweenengine/equations/Quad;->IN:Laurelienribon/tweenengine/equations/Quad;

    :goto_5
    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/ah;->b:I

    iget v4, p0, Lcom/iLoong/launcher/Desktop3D/ah;->a:I

    if-eq v1, v4, :cond_9

    const v4, 0x3e99999a

    :goto_6
    const/4 v7, 0x0

    move-object v1, p1

    move v5, v8

    move v6, v8

    invoke-virtual/range {v1 .. v7}, Lcom/iLoong/launcher/UI3DEngine/View3D;->obtainTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    move-result-object v1

    invoke-virtual {v9, v1}, Laurelienribon/tweenengine/Timeline;->push(Laurelienribon/tweenengine/Tween;)Laurelienribon/tweenengine/Timeline;

    :goto_7
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setOrigin(FF)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setRotation(F)V

    invoke-virtual {p1}, Lcom/iLoong/launcher/UI3DEngine/View3D;->show()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->touchable:Z

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/Desktop3D/ah;->addView(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    return-object v0

    :cond_1
    iput v4, v0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->x:F

    iput v5, v0, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->y:F

    goto/16 :goto_0

    :cond_2
    const/high16 v1, 0x425c

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->setRotation(F)V

    goto/16 :goto_1

    :cond_3
    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/ah;->a:I

    if-eq p2, v1, :cond_4

    sget-object v1, Lcom/iLoong/launcher/Desktop3D/v;->i:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->setBackgroud(Lcom/badlogic/gdx/graphics/g2d/NinePatch;)V

    goto/16 :goto_1

    :cond_4
    sget-object v1, Lcom/iLoong/launcher/Desktop3D/v;->j:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->setBackgroud(Lcom/badlogic/gdx/graphics/g2d/NinePatch;)V

    goto/16 :goto_1

    :cond_5
    move v8, v2

    goto/16 :goto_2

    :cond_6
    sget-object v3, Laurelienribon/tweenengine/equations/Cubic;->OUT:Laurelienribon/tweenengine/equations/Cubic;

    goto :goto_3

    :cond_7
    const v4, 0x3ecccccd

    goto :goto_4

    :cond_8
    sget-object v3, Laurelienribon/tweenengine/equations/Cubic;->OUT:Laurelienribon/tweenengine/equations/Cubic;

    goto :goto_5

    :cond_9
    const v4, 0x3ecccccd

    goto :goto_6

    :cond_a
    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/ah;->r:F

    iget v2, p1, Lcom/iLoong/launcher/UI3DEngine/View3D;->width:F

    mul-float/2addr v2, v8

    sub-float/2addr v1, v2

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    iput v1, p1, Lcom/iLoong/launcher/UI3DEngine/View3D;->x:F

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/ah;->s:F

    iget v2, p1, Lcom/iLoong/launcher/UI3DEngine/View3D;->height:F

    mul-float/2addr v2, v8

    sub-float/2addr v1, v2

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    iput v1, p1, Lcom/iLoong/launcher/UI3DEngine/View3D;->y:F

    invoke-virtual {p1, v8, v8}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setScale(FF)V

    goto :goto_7
.end method

.method public a()V
    .locals 5

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/iLoong/launcher/Desktop3D/ah;->b(Z)V

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ah;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ah;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/UI3DEngine/View3D;

    invoke-virtual {v0}, Lcom/iLoong/launcher/UI3DEngine/View3D;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/Desktop3D/au;

    const/high16 v2, 0x4120

    iget v3, p0, Lcom/iLoong/launcher/Desktop3D/ah;->n:F

    int-to-float v4, v1

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, v0, Lcom/iLoong/launcher/Desktop3D/au;->g:F

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ah;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/UI3DEngine/View3D;

    invoke-virtual {v0}, Lcom/iLoong/launcher/UI3DEngine/View3D;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/Desktop3D/au;

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/ah;->q:F

    iget v3, p0, Lcom/iLoong/launcher/Desktop3D/ah;->m:F

    int-to-float v4, v1

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, v0, Lcom/iLoong/launcher/Desktop3D/au;->h:F

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/ah;->a:I

    if-eq v1, v0, :cond_1

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ah;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/UI3DEngine/View3D;

    invoke-virtual {v0}, Lcom/iLoong/launcher/UI3DEngine/View3D;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/Desktop3D/au;

    const/high16 v2, 0x425c

    iput v2, v0, Lcom/iLoong/launcher/Desktop3D/au;->b:F

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ah;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/UI3DEngine/View3D;

    invoke-virtual {v0}, Lcom/iLoong/launcher/UI3DEngine/View3D;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/Desktop3D/au;

    const/4 v2, 0x0

    iput v2, v0, Lcom/iLoong/launcher/Desktop3D/au;->b:F

    goto :goto_1
.end method

.method public a(I)V
    .locals 7

    const/4 v6, 0x0

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/ah;->D:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/ah;->e:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/ah;->a:I

    if-ne v0, p1, :cond_2

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ah;->j:Lcom/iLoong/launcher/Desktop3D/v;

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/Desktop3D/v;->a(Z)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/ah;->width:F

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenWidth()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_5

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/ah;->n:F

    int-to-float v3, p1

    mul-float/2addr v2, v3

    sub-float/2addr v0, v2

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/ah;->r:F

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/ah;->E:F

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/ah;->E:F

    cmpl-float v0, v0, v6

    if-lez v0, :cond_3

    iput v6, p0, Lcom/iLoong/launcher/Desktop3D/ah;->E:F

    :cond_3
    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/ah;->E:F

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/iLoong/launcher/Desktop3D/ah;->width:F

    sub-float/2addr v2, v3

    cmpg-float v0, v0, v2

    if-gez v0, :cond_4

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenWidth()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/ah;->width:F

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/ah;->E:F

    :cond_4
    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/ah;->stopTween()V

    sget-object v2, Laurelienribon/tweenengine/equations/Circ;->OUT:Laurelienribon/tweenengine/equations/Circ;

    const/high16 v3, 0x3fc0

    iget v4, p0, Lcom/iLoong/launcher/Desktop3D/ah;->E:F

    iget v5, p0, Lcom/iLoong/launcher/Desktop3D/ah;->y:F

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/iLoong/launcher/Desktop3D/ah;->startTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    :cond_5
    iget-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/ah;->v:Z

    if-eqz v0, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/iLoong/launcher/Desktop3D/ah;->u:J

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/ah;->x:F

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/ah;->t:F

    iput-boolean v1, p0, Lcom/iLoong/launcher/Desktop3D/ah;->w:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/ah;->A:Z

    :cond_6
    iget-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/ah;->v:Z

    if-nez v0, :cond_7

    iput-boolean v1, p0, Lcom/iLoong/launcher/Desktop3D/ah;->v:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/iLoong/launcher/Desktop3D/ah;->u:J

    new-instance v0, Lcom/iLoong/launcher/Desktop3D/z;

    invoke-direct {v0, p0}, Lcom/iLoong/launcher/Desktop3D/z;-><init>(Lcom/iLoong/launcher/Desktop3D/ah;)V

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ah;->C:Lcom/iLoong/launcher/Desktop3D/z;

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ah;->B:Ljava/util/Timer;

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ah;->B:Ljava/util/Timer;

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/ah;->C:Lcom/iLoong/launcher/Desktop3D/z;

    const-wide/16 v3, 0x320

    invoke-virtual {v0, v2, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/ah;->x:F

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/ah;->t:F

    :cond_7
    invoke-virtual {p0, p1}, Lcom/iLoong/launcher/Desktop3D/ah;->b(I)V

    iput-boolean v1, p0, Lcom/iLoong/launcher/Desktop3D/ah;->d:Z

    goto/16 :goto_0
.end method

.method public a(Lcom/iLoong/launcher/Desktop3D/v;)V
    .locals 0

    iput-object p1, p0, Lcom/iLoong/launcher/Desktop3D/ah;->j:Lcom/iLoong/launcher/Desktop3D/v;

    return-void
.end method

.method public a(Lcom/iLoong/launcher/desktop/iLoongLauncher;)V
    .locals 1

    iput-object p1, p0, Lcom/iLoong/launcher/Desktop3D/ah;->I:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ah;->J:Landroid/app/WallpaperManager;

    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 10

    const/4 v2, 0x0

    const/4 v9, 0x0

    const/high16 v8, 0x4000

    iput-object p1, p0, Lcom/iLoong/launcher/Desktop3D/ah;->l:Ljava/util/ArrayList;

    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ah;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/ah;->removeAllViews()V

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/ah;->width:F

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ah;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v4, v2

    :goto_1
    if-lt v4, v5, :cond_1

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/ah;->a:I

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/Desktop3D/ah;->getChildAt(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iLoong/launcher/UI3DEngine/View3D;->remove()V

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/Desktop3D/ah;->addView(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ah;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/UI3DEngine/View3D;

    new-instance v3, Lcom/iLoong/launcher/Desktop3D/au;

    invoke-direct {v3, p0}, Lcom/iLoong/launcher/Desktop3D/au;-><init>(Lcom/iLoong/launcher/Desktop3D/ah;)V

    invoke-virtual {v3, v0}, Lcom/iLoong/launcher/Desktop3D/au;->a(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    invoke-virtual {v0, v3}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setTag(Ljava/lang/Object;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ah;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/UI3DEngine/View3D;

    new-instance v6, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    const-string v1, "page_select"

    invoke-direct {v6, v1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    iput-boolean v1, v6, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->transform:Z

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/ah;->r:F

    iget v3, p0, Lcom/iLoong/launcher/Desktop3D/ah;->s:F

    invoke-virtual {v6, v1, v3}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->setSize(FF)V

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/ah;->r:F

    div-float/2addr v1, v8

    iget v3, p0, Lcom/iLoong/launcher/Desktop3D/ah;->s:F

    div-float/2addr v3, v8

    invoke-virtual {v6, v1, v3}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->setOrigin(FF)V

    const/high16 v1, 0x3f80

    invoke-virtual {v6, v9, v1, v9}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->setRotationVector(FFF)V

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/ah;->a:I

    if-eq v4, v1, :cond_2

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->DARK_GRAY:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v6, v1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Lcom/iLoong/launcher/Desktop3D/v;->i:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    invoke-virtual {v6, v1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->setBackgroud(Lcom/badlogic/gdx/graphics/g2d/NinePatch;)V

    :goto_2
    invoke-virtual {v0}, Lcom/iLoong/launcher/UI3DEngine/View3D;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iLoong/launcher/Desktop3D/au;

    invoke-virtual {v0}, Lcom/iLoong/launcher/UI3DEngine/View3D;->getParent()Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    move-result-object v3

    iput-object v3, v1, Lcom/iLoong/launcher/Desktop3D/au;->a:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    invoke-virtual {v6, v0}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->addView(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/ah;->r:F

    iget v3, p0, Lcom/iLoong/launcher/Desktop3D/ah;->o:F

    mul-float/2addr v3, v8

    sub-float/2addr v1, v3

    iget v3, v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->width:F

    div-float/2addr v1, v3

    iget v3, p0, Lcom/iLoong/launcher/Desktop3D/ah;->s:F

    iget v7, p0, Lcom/iLoong/launcher/Desktop3D/ah;->p:F

    mul-float/2addr v7, v8

    sub-float/2addr v3, v7

    iget v7, v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->height:F

    div-float/2addr v3, v7

    cmpg-float v7, v1, v3

    if-gez v7, :cond_3

    :goto_3
    iget v3, p0, Lcom/iLoong/launcher/Desktop3D/ah;->r:F

    iget v7, v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->width:F

    mul-float/2addr v7, v1

    sub-float/2addr v3, v7

    div-float/2addr v3, v8

    iput v3, v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->x:F

    iget v3, p0, Lcom/iLoong/launcher/Desktop3D/ah;->s:F

    iget v7, v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->height:F

    mul-float/2addr v7, v1

    sub-float/2addr v3, v7

    div-float/2addr v3, v8

    iput v3, v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->y:F

    invoke-virtual {v0, v1, v1}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setScale(FF)V

    invoke-virtual {v0, v9, v9}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setOrigin(FF)V

    invoke-virtual {v0, v9}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setRotation(F)V

    invoke-virtual {v0}, Lcom/iLoong/launcher/UI3DEngine/View3D;->show()V

    iput-boolean v2, v6, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->touchable:Z

    invoke-virtual {p0, v6}, Lcom/iLoong/launcher/Desktop3D/ah;->addView(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto/16 :goto_1

    :cond_2
    sget-object v1, Lcom/iLoong/launcher/Desktop3D/v;->j:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    invoke-virtual {v6, v1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->setBackgroud(Lcom/badlogic/gdx/graphics/g2d/NinePatch;)V

    goto :goto_2

    :cond_3
    move v1, v3

    goto :goto_3
.end method

.method public a(Lcom/iLoong/launcher/UI3DEngine/View3D;F)Z
    .locals 4

    const/high16 v3, 0x4040

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ah;->point:Lcom/badlogic/gdx/math/Vector2;

    iget v1, p1, Lcom/iLoong/launcher/UI3DEngine/View3D;->x:F

    sub-float v1, p2, v1

    iput v1, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ah;->point:Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/ah;->r:F

    div-float/2addr v1, v3

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ah;->point:Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, p1, Lcom/iLoong/launcher/UI3DEngine/View3D;->width:F

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/ah;->r:F

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Z)Z
    .locals 11

    const/4 v0, 0x0

    const v3, 0x3ecccccd

    const/4 v6, 0x0

    const/4 v9, 0x1

    iget-boolean v1, p0, Lcom/iLoong/launcher/Desktop3D/ah;->D:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/iLoong/launcher/Desktop3D/ah;->e:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/ah;->stopTween()V

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/ah;->d()V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ah;->B:Ljava/util/Timer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ah;->B:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_2
    invoke-super {p0}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->hide()V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ah;->j:Lcom/iLoong/launcher/Desktop3D/v;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/v;->g()V

    move v0, v9

    goto :goto_0

    :cond_3
    iput-boolean v9, p0, Lcom/iLoong/launcher/Desktop3D/ah;->D:Z

    invoke-static {}, Laurelienribon/tweenengine/Timeline;->createParallel()Laurelienribon/tweenengine/Timeline;

    move-result-object v1

    iput-object v1, p0, Lcom/iLoong/launcher/Desktop3D/ah;->G:Laurelienribon/tweenengine/Timeline;

    move v8, v0

    :goto_1
    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/ah;->getChildCount()I

    move-result v0

    if-lt v8, v0, :cond_4

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ah;->G:Laurelienribon/tweenengine/Timeline;

    invoke-virtual {v0, p0}, Laurelienribon/tweenengine/Timeline;->setCallback(Laurelienribon/tweenengine/TweenCallback;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/Timeline;

    sget-object v1, Lcom/iLoong/launcher/tween/View3DTweenAccessor;->manager:Laurelienribon/tweenengine/TweenManager;

    invoke-virtual {v0, v1}, Laurelienribon/tweenengine/Timeline;->start(Laurelienribon/tweenengine/TweenManager;)Ljava/lang/Object;

    move v0, v9

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v8}, Lcom/iLoong/launcher/Desktop3D/ah;->getChildAt(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/ah;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne v8, v0, :cond_6

    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->setBackgroud(Lcom/badlogic/gdx/graphics/g2d/NinePatch;)V

    const-string v0, "home_icon"

    invoke-virtual {v7, v0}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->findView(Ljava/lang/String;)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v7, v0}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->removeView(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    :cond_5
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ah;->l:Ljava/util/ArrayList;

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/ah;->a:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/UI3DEngine/View3D;

    invoke-virtual {v0}, Lcom/iLoong/launcher/UI3DEngine/View3D;->getTag()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/iLoong/launcher/Desktop3D/au;

    iget-object v10, p0, Lcom/iLoong/launcher/Desktop3D/ah;->G:Laurelienribon/tweenengine/Timeline;

    const/4 v1, 0x3

    sget-object v2, Laurelienribon/tweenengine/equations/Quad;->OUT:Laurelienribon/tweenengine/equations/Quad;

    iget v4, v5, Lcom/iLoong/launcher/Desktop3D/au;->c:F

    iget v5, v5, Lcom/iLoong/launcher/Desktop3D/au;->d:F

    invoke-virtual/range {v0 .. v6}, Lcom/iLoong/launcher/UI3DEngine/View3D;->obtainTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    move-result-object v1

    invoke-virtual {v10, v1}, Laurelienribon/tweenengine/Timeline;->push(Laurelienribon/tweenengine/Tween;)Laurelienribon/tweenengine/Timeline;

    iget-object v10, p0, Lcom/iLoong/launcher/Desktop3D/ah;->G:Laurelienribon/tweenengine/Timeline;

    sget-object v2, Laurelienribon/tweenengine/equations/Quad;->OUT:Laurelienribon/tweenengine/equations/Quad;

    iget v1, v7, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->x:F

    neg-float v1, v1

    iget v4, p0, Lcom/iLoong/launcher/Desktop3D/ah;->x:F

    sub-float v4, v1, v4

    iget v1, v7, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->y:F

    neg-float v1, v1

    iget v5, p0, Lcom/iLoong/launcher/Desktop3D/ah;->y:F

    sub-float v5, v1, v5

    move v1, v9

    invoke-virtual/range {v0 .. v6}, Lcom/iLoong/launcher/UI3DEngine/View3D;->obtainTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    move-result-object v0

    invoke-virtual {v10, v0}, Laurelienribon/tweenengine/Timeline;->push(Laurelienribon/tweenengine/Tween;)Laurelienribon/tweenengine/Timeline;

    :goto_2
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_1

    :cond_6
    iget-object v10, p0, Lcom/iLoong/launcher/Desktop3D/ah;->G:Laurelienribon/tweenengine/Timeline;

    sget-object v2, Laurelienribon/tweenengine/equations/Cubic;->OUT:Laurelienribon/tweenengine/equations/Cubic;

    iget v4, v7, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->x:F

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/ah;->s:F

    neg-float v5, v0

    move-object v0, v7

    move v1, v9

    invoke-virtual/range {v0 .. v6}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->obtainTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    move-result-object v0

    invoke-virtual {v10, v0}, Laurelienribon/tweenengine/Timeline;->push(Laurelienribon/tweenengine/Tween;)Laurelienribon/tweenengine/Timeline;

    goto :goto_2
.end method

.method public b(F)I
    .locals 2

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/ah;->a:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-gez v0, :cond_1

    const/4 v0, -0x1

    :cond_0
    return v0

    :cond_1
    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/Desktop3D/ah;->getChildAt(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lcom/iLoong/launcher/Desktop3D/ah;->a(Lcom/iLoong/launcher/UI3DEngine/View3D;F)Z

    move-result v1

    if-nez v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public b(I)V
    .locals 10

    const/4 v1, 0x4

    const/high16 v4, 0x425c

    const/high16 v9, 0x3f80

    const/high16 v3, 0x3f00

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/ah;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/Desktop3D/ah;->getChildAt(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/iLoong/launcher/Desktop3D/ah;->getChildAt(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v0

    iget v6, p0, Lcom/iLoong/launcher/Desktop3D/ah;->a:I

    if-le p1, v6, :cond_3

    add-int/lit8 v0, p1, -0x1

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/Desktop3D/ah;->getChildAt(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v0

    move-object v7, v0

    :goto_0
    invoke-virtual {p0, v2}, Lcom/iLoong/launcher/Desktop3D/ah;->removeView(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/ah;->a:I

    invoke-virtual {p0, v0, v2}, Lcom/iLoong/launcher/Desktop3D/ah;->addViewAt(ILcom/iLoong/launcher/UI3DEngine/View3D;)V

    invoke-virtual {p0, v7}, Lcom/iLoong/launcher/Desktop3D/ah;->removeView(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    invoke-virtual {p0, v7}, Lcom/iLoong/launcher/Desktop3D/ah;->addView(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ah;->j:Lcom/iLoong/launcher/Desktop3D/v;

    invoke-virtual {v0, p1}, Lcom/iLoong/launcher/Desktop3D/v;->b(I)V

    invoke-direct {p0}, Lcom/iLoong/launcher/Desktop3D/ah;->g()V

    const/4 v0, 0x0

    move v8, v0

    :goto_1
    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/ah;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-lt v8, v0, :cond_1

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v7, v0}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v0, Lcom/iLoong/launcher/Desktop3D/v;->j:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    invoke-virtual {v7, v0}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setBackgroud(Lcom/badlogic/gdx/graphics/g2d/NinePatch;)V

    invoke-virtual {v7}, Lcom/iLoong/launcher/UI3DEngine/View3D;->stopTween()V

    iget v0, v7, Lcom/iLoong/launcher/UI3DEngine/View3D;->rotation:F

    cmpl-float v0, v0, v5

    if-eqz v0, :cond_0

    invoke-virtual {v7, v5, v9, v5}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setRotationVector(FFF)V

    sget-object v2, Laurelienribon/tweenengine/equations/Cubic;->OUT:Laurelienribon/tweenengine/equations/Cubic;

    move-object v0, v7

    move v4, v5

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/iLoong/launcher/UI3DEngine/View3D;->startTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    move-result-object v0

    invoke-virtual {v0, p0}, Laurelienribon/tweenengine/Tween;->setCallback(Laurelienribon/tweenengine/TweenCallback;)Ljava/lang/Object;

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0, v8}, Lcom/iLoong/launcher/Desktop3D/ah;->getChildAt(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v0

    sget-object v2, Lcom/badlogic/gdx/graphics/Color;->DARK_GRAY:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v2}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v2, Lcom/iLoong/launcher/Desktop3D/v;->i:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    invoke-virtual {v0, v2}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setBackgroud(Lcom/badlogic/gdx/graphics/g2d/NinePatch;)V

    invoke-virtual {v0}, Lcom/iLoong/launcher/UI3DEngine/View3D;->stopTween()V

    iget v2, v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->rotation:F

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_2

    invoke-virtual {v0, v5, v9, v5}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setRotationVector(FFF)V

    sget-object v2, Laurelienribon/tweenengine/equations/Cubic;->OUT:Laurelienribon/tweenengine/equations/Cubic;

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/iLoong/launcher/UI3DEngine/View3D;->startTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    :cond_2
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_1

    :cond_3
    move-object v7, v0

    goto :goto_0
.end method

.method public b(Ljava/util/ArrayList;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/iLoong/launcher/Desktop3D/ah;->l:Ljava/util/ArrayList;

    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ah;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/ah;->removeAllViews()V

    iput-boolean v4, p0, Lcom/iLoong/launcher/Desktop3D/ah;->e:Z

    invoke-static {}, Laurelienribon/tweenengine/Timeline;->createParallel()Laurelienribon/tweenengine/Timeline;

    move-result-object v0

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ah;->F:Laurelienribon/tweenengine/Timeline;

    invoke-direct {p0, v4}, Lcom/iLoong/launcher/Desktop3D/ah;->b(Z)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ah;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v2

    :goto_1
    if-lt v1, v3, :cond_1

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ah;->l:Ljava/util/ArrayList;

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/ah;->b:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/UI3DEngine/View3D;

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/ah;->b:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/iLoong/launcher/Desktop3D/ah;->a(Lcom/iLoong/launcher/UI3DEngine/View3D;IZ)Lcom/iLoong/launcher/UI3DEngine/View3D;

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ah;->F:Laurelienribon/tweenengine/Timeline;

    invoke-virtual {v0, p0}, Laurelienribon/tweenengine/Timeline;->setCallback(Laurelienribon/tweenengine/TweenCallback;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/Timeline;

    sget-object v1, Lcom/iLoong/launcher/tween/View3DTweenAccessor;->manager:Laurelienribon/tweenengine/TweenManager;

    invoke-virtual {v0, v1}, Laurelienribon/tweenengine/Timeline;->start(Laurelienribon/tweenengine/TweenManager;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/ah;->show()V

    const/high16 v0, -0x4080

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/ah;->f:F

    return-void

    :cond_0
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ah;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/UI3DEngine/View3D;

    new-instance v3, Lcom/iLoong/launcher/Desktop3D/au;

    invoke-direct {v3, p0}, Lcom/iLoong/launcher/Desktop3D/au;-><init>(Lcom/iLoong/launcher/Desktop3D/ah;)V

    invoke-virtual {v3, v0}, Lcom/iLoong/launcher/Desktop3D/au;->a(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    invoke-virtual {v0, v3}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setTag(Ljava/lang/Object;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/ah;->b:I

    if-eq v1, v0, :cond_2

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ah;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/UI3DEngine/View3D;

    invoke-virtual {p0, v0, v1, v2}, Lcom/iLoong/launcher/Desktop3D/ah;->a(Lcom/iLoong/launcher/UI3DEngine/View3D;IZ)Lcom/iLoong/launcher/UI3DEngine/View3D;

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/ah;->D:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/ah;->e:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/ah;->stopTween()V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ah;->B:Ljava/util/Timer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ah;->B:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_2
    invoke-super {p0}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->hide()V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b(Lcom/iLoong/launcher/UI3DEngine/View3D;F)Z
    .locals 2

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ah;->point:Lcom/badlogic/gdx/math/Vector2;

    iget v1, p1, Lcom/iLoong/launcher/UI3DEngine/View3D;->y:F

    sub-float v1, p2, v1

    iput v1, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ah;->point:Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ah;->point:Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v1, p1, Lcom/iLoong/launcher/UI3DEngine/View3D;->height:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(F)I
    .locals 2

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/ah;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    :goto_0
    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/ah;->a:I

    if-ge v0, v1, :cond_1

    const/4 v0, -0x1

    :cond_0
    return v0

    :cond_1
    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/Desktop3D/ah;->getChildAt(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lcom/iLoong/launcher/Desktop3D/ah;->a(Lcom/iLoong/launcher/UI3DEngine/View3D;F)Z

    move-result v1

    if-nez v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public c(I)V
    .locals 0

    return-void
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/ah;->D:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/ah;->e:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()V
    .locals 3

    const-string v0, "launcher"

    const-string v1, "prepareHide"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ah;->l:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ah;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v2, v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/ah;->removeAllViews()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ah;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/UI3DEngine/View3D;

    invoke-direct {p0, v0}, Lcom/iLoong/launcher/Desktop3D/ah;->a(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    invoke-virtual {v0}, Lcom/iLoong/launcher/UI3DEngine/View3D;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iLoong/launcher/Desktop3D/au;

    invoke-virtual {v1, v0}, Lcom/iLoong/launcher/Desktop3D/au;->b(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 0

    invoke-direct {p0}, Lcom/iLoong/launcher/Desktop3D/ah;->h()V

    invoke-super {p0, p1, p2}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    return-void
.end method

.method protected drawChildren(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 11

    const/high16 v10, 0x3f80

    const/4 v9, 0x0

    iget-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/ah;->transform:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move v7, v0

    :goto_0
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ah;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v7, v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ah;->children:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/iLoong/launcher/UI3DEngine/View3D;

    iget-boolean v0, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->visible:Z

    if-nez v0, :cond_3

    :cond_2
    :goto_1
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/ah;->x:F

    iget v1, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->x:F

    add-float/2addr v0, v1

    iget v1, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->width:F

    add-float/2addr v0, v1

    cmpg-float v0, v0, v9

    if-ltz v0, :cond_2

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/ah;->x:F

    iget v1, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->x:F

    add-float/2addr v0, v1

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenWidth()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_2

    invoke-virtual {v6, p1}, Lcom/iLoong/launcher/UI3DEngine/View3D;->applyTransformChild(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    iget-object v0, v6, Lcom/iLoong/launcher/UI3DEngine/View3D;->background9:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    if-eqz v0, :cond_4

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

    :cond_4
    invoke-virtual {v6, p1, p2}, Lcom/iLoong/launcher/UI3DEngine/View3D;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    invoke-virtual {v6, p1}, Lcom/iLoong/launcher/UI3DEngine/View3D;->resetTransformChild(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    goto/16 :goto_1
.end method

.method public e()Ljava/util/List;
    .locals 5

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ah;->k:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ah;->k:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ah;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ah;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v2, :cond_1

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ah;->k:Ljava/util/ArrayList;

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ah;->children:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/UI3DEngine/View3D;

    new-instance v3, Lcom/iLoong/launcher/Desktop3D/au;

    invoke-direct {v3, p0}, Lcom/iLoong/launcher/Desktop3D/au;-><init>(Lcom/iLoong/launcher/Desktop3D/ah;)V

    invoke-virtual {v3, v0}, Lcom/iLoong/launcher/Desktop3D/au;->a(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    invoke-virtual {v0, v3}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setTag(Ljava/lang/Object;)V

    add-int/lit8 v3, v2, -0x1

    if-ne v1, v3, :cond_2

    iget-object v3, p0, Lcom/iLoong/launcher/Desktop3D/ah;->k:Ljava/util/ArrayList;

    iget v4, p0, Lcom/iLoong/launcher/Desktop3D/ah;->a:I

    invoke-virtual {v3, v4, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/iLoong/launcher/Desktop3D/ah;->k:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public fling(FF)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public hide()V
    .locals 2

    const-string v0, "launcher"

    const-string v1, "hide"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->hide()V

    return-void
.end method

.method public keyUp(I)Z
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ah;->j:Lcom/iLoong/launcher/Desktop3D/v;

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/Desktop3D/v;->a(Z)V

    :cond_0
    return v1
.end method

.method public onEvent(ILaurelienribon/tweenengine/BaseTween;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    instance-of v0, p2, Laurelienribon/tweenengine/Tween;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/ah;->d:Z

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lcom/iLoong/launcher/Desktop3D/ah;->d:Z

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ah;->j:Lcom/iLoong/launcher/Desktop3D/v;

    invoke-virtual {v0, v3}, Lcom/iLoong/launcher/Desktop3D/v;->a(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    instance-of v0, p2, Laurelienribon/tweenengine/Timeline;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/ah;->D:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/ah;->d()V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ah;->B:Ljava/util/Timer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ah;->B:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_2
    iput-boolean v2, p0, Lcom/iLoong/launcher/Desktop3D/ah;->D:Z

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ah;->j:Lcom/iLoong/launcher/Desktop3D/v;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/v;->g()V

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/ah;->e:Z

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lcom/iLoong/launcher/Desktop3D/ah;->e:Z

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/ah;->b:I

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/ah;->a:I

    if-eq v0, v1, :cond_4

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/ah;->b:I

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/ah;->a:I

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ah;->j:Lcom/iLoong/launcher/Desktop3D/v;

    invoke-virtual {v0, v3}, Lcom/iLoong/launcher/Desktop3D/v;->a(Z)V

    goto :goto_0

    :cond_4
    iget-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/ah;->d:Z

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lcom/iLoong/launcher/Desktop3D/ah;->d:Z

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ah;->j:Lcom/iLoong/launcher/Desktop3D/v;

    invoke-virtual {v0, v3}, Lcom/iLoong/launcher/Desktop3D/v;->a(Z)V

    goto :goto_0
.end method

.method public onTouchDown(FFI)Z
    .locals 2

    iput p1, p0, Lcom/iLoong/launcher/Desktop3D/ah;->K:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-float v0, v0

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/ah;->L:F

    const/4 v0, 0x1

    return v0
.end method

.method public onTouchUp(FFI)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v0, "launcher"

    const-string v1, "onTouchUp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p3, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-float v0, v0

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/ah;->L:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x43fa

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/ah;->K:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x4220

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    iput-boolean v3, p0, Lcom/iLoong/launcher/Desktop3D/ah;->M:Z

    iput-boolean v3, p0, Lcom/iLoong/launcher/Desktop3D/ah;->d:Z

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/ah;->r:F

    const/high16 v1, 0x40c0

    div-float/2addr v0, v1

    add-float/2addr v0, p1

    invoke-virtual {p0, v0, p2, v2, v2}, Lcom/iLoong/launcher/Desktop3D/ah;->scroll(FFFF)Z

    :cond_0
    :goto_0
    iput v2, p0, Lcom/iLoong/launcher/Desktop3D/ah;->K:F

    iput v2, p0, Lcom/iLoong/launcher/Desktop3D/ah;->L:F

    return v3

    :cond_1
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/ah;->j:Lcom/iLoong/launcher/Desktop3D/v;

    invoke-virtual {v0, v3}, Lcom/iLoong/launcher/Desktop3D/v;->a(Z)V

    goto :goto_0
.end method

.method public scroll(FFFF)Z
    .locals 9

    const/4 v8, 0x0

    const/4 v1, 0x1

    const/4 v5, 0x0

    const/4 v7, -0x1

    iget-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/ah;->D:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/ah;->e:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    cmpl-float v0, p3, v5

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/ah;->width:F

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenWidth()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_5

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/ah;->x:F

    add-float/2addr v0, p1

    cmpl-float v2, p3, v5

    if-lez v2, :cond_b

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/ah;->E:F

    iget v3, p0, Lcom/iLoong/launcher/Desktop3D/ah;->width:F

    iget v4, p0, Lcom/iLoong/launcher/Desktop3D/ah;->E:F

    add-float/2addr v3, v4

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenWidth()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    mul-float/2addr v3, p3

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenWidth()I

    move-result v4

    int-to-float v4, v4

    sub-float v0, v4, v0

    div-float v0, v3, v0

    sub-float v0, v2, v0

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/ah;->E:F

    :cond_2
    :goto_1
    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/ah;->E:F

    neg-float v0, v0

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenWidth()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v0, v2

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/ah;->width:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_3

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenWidth()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/ah;->width:F

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/ah;->E:F

    :cond_3
    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/ah;->E:F

    cmpl-float v0, v0, v5

    if-lez v0, :cond_4

    iput v5, p0, Lcom/iLoong/launcher/Desktop3D/ah;->E:F

    :cond_4
    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/ah;->stopTween()V

    sget-object v2, Laurelienribon/tweenengine/equations/Circ;->OUT:Laurelienribon/tweenengine/equations/Circ;

    const/high16 v3, 0x3f80

    iget v4, p0, Lcom/iLoong/launcher/Desktop3D/ah;->E:F

    move-object v0, p0

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/iLoong/launcher/Desktop3D/ah;->startTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    :cond_5
    cmpl-float v0, p3, v5

    if-lez v0, :cond_c

    invoke-virtual {p0, p1}, Lcom/iLoong/launcher/Desktop3D/ah;->c(F)I

    move-result v0

    if-ne v0, v7, :cond_6

    invoke-virtual {p0, p1}, Lcom/iLoong/launcher/Desktop3D/ah;->a(F)I

    move-result v0

    :cond_6
    if-ne v0, v7, :cond_7

    invoke-virtual {p0, p1}, Lcom/iLoong/launcher/Desktop3D/ah;->b(F)I

    move-result v0

    :cond_7
    :goto_2
    iget-boolean v2, p0, Lcom/iLoong/launcher/Desktop3D/ah;->v:Z

    if-eqz v2, :cond_8

    if-ne v0, v7, :cond_14

    iput-boolean v8, p0, Lcom/iLoong/launcher/Desktop3D/ah;->A:Z

    :cond_8
    :goto_3
    if-eq v0, v7, :cond_0

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/ah;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq v0, v2, :cond_0

    iget-boolean v2, p0, Lcom/iLoong/launcher/Desktop3D/ah;->v:Z

    if-nez v2, :cond_9

    iput-boolean v1, p0, Lcom/iLoong/launcher/Desktop3D/ah;->v:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/iLoong/launcher/Desktop3D/ah;->u:J

    new-instance v2, Lcom/iLoong/launcher/Desktop3D/z;

    invoke-direct {v2, p0}, Lcom/iLoong/launcher/Desktop3D/z;-><init>(Lcom/iLoong/launcher/Desktop3D/ah;)V

    iput-object v2, p0, Lcom/iLoong/launcher/Desktop3D/ah;->C:Lcom/iLoong/launcher/Desktop3D/z;

    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    iput-object v2, p0, Lcom/iLoong/launcher/Desktop3D/ah;->B:Ljava/util/Timer;

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/ah;->B:Ljava/util/Timer;

    iget-object v3, p0, Lcom/iLoong/launcher/Desktop3D/ah;->C:Lcom/iLoong/launcher/Desktop3D/z;

    const-wide/16 v4, 0x320

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    iput p1, p0, Lcom/iLoong/launcher/Desktop3D/ah;->t:F

    :cond_9
    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/ah;->a:I

    if-lt v0, v2, :cond_a

    add-int/lit8 v0, v0, 0x1

    :cond_a
    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/Desktop3D/ah;->b(I)V

    goto/16 :goto_0

    :cond_b
    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/ah;->E:F

    cmpl-float v2, v2, v5

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/ah;->E:F

    iget v3, p0, Lcom/iLoong/launcher/Desktop3D/ah;->E:F

    mul-float/2addr v3, p3

    div-float v0, v3, v0

    add-float/2addr v0, v2

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/ah;->E:F

    goto/16 :goto_1

    :cond_c
    cmpg-float v0, p3, v5

    if-gez v0, :cond_e

    invoke-virtual {p0, p1}, Lcom/iLoong/launcher/Desktop3D/ah;->a(F)I

    move-result v0

    if-ne v0, v7, :cond_d

    invoke-virtual {p0, p1}, Lcom/iLoong/launcher/Desktop3D/ah;->b(F)I

    move-result v0

    :cond_d
    if-ne v0, v7, :cond_7

    invoke-virtual {p0, p1}, Lcom/iLoong/launcher/Desktop3D/ah;->c(F)I

    move-result v0

    goto :goto_2

    :cond_e
    iget-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/ah;->M:Z

    if-eqz v0, :cond_12

    iput-boolean v8, p0, Lcom/iLoong/launcher/Desktop3D/ah;->M:Z

    invoke-virtual {p0, p1}, Lcom/iLoong/launcher/Desktop3D/ah;->c(F)I

    move-result v0

    if-ne v0, v7, :cond_f

    invoke-virtual {p0, p1}, Lcom/iLoong/launcher/Desktop3D/ah;->a(F)I

    move-result v0

    :cond_f
    if-ne v0, v7, :cond_10

    invoke-virtual {p0, p1}, Lcom/iLoong/launcher/Desktop3D/ah;->b(F)I

    move-result v0

    :cond_10
    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/ah;->a:I

    if-ne v0, v2, :cond_11

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/ah;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :cond_11
    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/ah;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v0, v2, :cond_7

    iget-boolean v2, p0, Lcom/iLoong/launcher/Desktop3D/ah;->d:Z

    if-eqz v2, :cond_7

    iput-boolean v8, p0, Lcom/iLoong/launcher/Desktop3D/ah;->d:Z

    iget-object v2, p0, Lcom/iLoong/launcher/Desktop3D/ah;->j:Lcom/iLoong/launcher/Desktop3D/v;

    invoke-virtual {v2, v1}, Lcom/iLoong/launcher/Desktop3D/v;->a(Z)V

    goto/16 :goto_2

    :cond_12
    invoke-virtual {p0, p1}, Lcom/iLoong/launcher/Desktop3D/ah;->a(F)I

    move-result v0

    if-ne v0, v7, :cond_13

    invoke-virtual {p0, p1}, Lcom/iLoong/launcher/Desktop3D/ah;->b(F)I

    move-result v0

    :cond_13
    if-ne v0, v7, :cond_7

    invoke-virtual {p0, p1}, Lcom/iLoong/launcher/Desktop3D/ah;->c(F)I

    move-result v0

    goto/16 :goto_2

    :cond_14
    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/ah;->t:F

    sub-float/2addr v2, p1

    const/high16 v3, 0x41a0

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_15

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/ah;->t:F

    sub-float/2addr v2, p1

    const/high16 v3, -0x3e60

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_15

    iget-boolean v2, p0, Lcom/iLoong/launcher/Desktop3D/ah;->A:Z

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/Desktop3D/ah;->getChildAt(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v3

    invoke-virtual {p0, v3, p2}, Lcom/iLoong/launcher/Desktop3D/ah;->b(Lcom/iLoong/launcher/UI3DEngine/View3D;F)Z

    move-result v3

    if-ne v2, v3, :cond_15

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/ah;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq v0, v2, :cond_8

    :cond_15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/iLoong/launcher/Desktop3D/ah;->u:J

    iput p1, p0, Lcom/iLoong/launcher/Desktop3D/ah;->t:F

    iput-boolean v1, p0, Lcom/iLoong/launcher/Desktop3D/ah;->w:Z

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/Desktop3D/ah;->getChildAt(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lcom/iLoong/launcher/Desktop3D/ah;->b(Lcom/iLoong/launcher/UI3DEngine/View3D;F)Z

    move-result v2

    iput-boolean v2, p0, Lcom/iLoong/launcher/Desktop3D/ah;->A:Z

    goto/16 :goto_3
.end method

.method public show()V
    .locals 0

    invoke-super {p0}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->show()V

    invoke-direct {p0}, Lcom/iLoong/launcher/Desktop3D/ah;->f()V

    return-void
.end method
