.class public Lcom/iLoong/launcher/HotSeat3D/g;
.super Lcom/iLoong/launcher/UI3DEngine/p;


# instance fields
.field public a:Z

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:F

.field private h:Lcom/iLoong/launcher/Desktop3D/c;

.field private i:Lcom/iLoong/launcher/Desktop3D/c;

.field private j:I

.field private k:Z

.field private l:F

.field private m:Laurelienribon/tweenengine/Tween;

.field private n:Z

.field private o:Z

.field private p:Lcom/iLoong/launcher/Desktop3D/bq;

.field private q:F


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/iLoong/launcher/UI3DEngine/p;-><init>(Ljava/lang/String;)V

    iput v1, p0, Lcom/iLoong/launcher/HotSeat3D/g;->b:I

    iput v2, p0, Lcom/iLoong/launcher/HotSeat3D/g;->c:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/iLoong/launcher/HotSeat3D/g;->d:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/iLoong/launcher/HotSeat3D/g;->e:I

    const/high16 v0, 0x41f0

    iput v0, p0, Lcom/iLoong/launcher/HotSeat3D/g;->f:F

    const/4 v0, -0x1

    iput v0, p0, Lcom/iLoong/launcher/HotSeat3D/g;->j:I

    iput-boolean v1, p0, Lcom/iLoong/launcher/HotSeat3D/g;->k:Z

    iput v3, p0, Lcom/iLoong/launcher/HotSeat3D/g;->l:F

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/g;->m:Laurelienribon/tweenengine/Tween;

    iput-boolean v2, p0, Lcom/iLoong/launcher/HotSeat3D/g;->n:Z

    iput-boolean v2, p0, Lcom/iLoong/launcher/HotSeat3D/g;->a:Z

    iput-boolean v1, p0, Lcom/iLoong/launcher/HotSeat3D/g;->o:Z

    iput v3, p0, Lcom/iLoong/launcher/HotSeat3D/g;->q:F

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 9

    const/4 v5, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    invoke-direct {p0, p1}, Lcom/iLoong/launcher/UI3DEngine/p;-><init>(Ljava/lang/String;)V

    iput v7, p0, Lcom/iLoong/launcher/HotSeat3D/g;->b:I

    iput v5, p0, Lcom/iLoong/launcher/HotSeat3D/g;->c:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/iLoong/launcher/HotSeat3D/g;->d:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/iLoong/launcher/HotSeat3D/g;->e:I

    const/high16 v0, 0x41f0

    iput v0, p0, Lcom/iLoong/launcher/HotSeat3D/g;->f:F

    const/4 v0, -0x1

    iput v0, p0, Lcom/iLoong/launcher/HotSeat3D/g;->j:I

    iput-boolean v7, p0, Lcom/iLoong/launcher/HotSeat3D/g;->k:Z

    iput v8, p0, Lcom/iLoong/launcher/HotSeat3D/g;->l:F

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/g;->m:Laurelienribon/tweenengine/Tween;

    iput-boolean v5, p0, Lcom/iLoong/launcher/HotSeat3D/g;->n:Z

    iput-boolean v5, p0, Lcom/iLoong/launcher/HotSeat3D/g;->a:Z

    iput-boolean v7, p0, Lcom/iLoong/launcher/HotSeat3D/g;->o:Z

    iput v8, p0, Lcom/iLoong/launcher/HotSeat3D/g;->q:F

    sget v0, Lcom/iLoong/launcher/Desktop3D/at;->d:I

    sub-int v0, p3, v0

    div-int/lit8 v0, v0, 0x2

    if-gez v0, :cond_0

    move v6, v7

    :goto_0
    sget v0, Lcom/iLoong/launcher/Desktop3D/at;->c:I

    add-int/2addr v0, v6

    int-to-float v0, v0

    iput v0, p0, Lcom/iLoong/launcher/HotSeat3D/g;->q:F

    new-instance v0, Lcom/iLoong/launcher/Desktop3D/c;

    const-string v1, "shortcutview"

    iget v2, p0, Lcom/iLoong/launcher/HotSeat3D/g;->q:F

    const/high16 v3, 0x41a0

    mul-float/2addr v2, v3

    int-to-float v3, p3

    const/16 v4, 0x14

    invoke-direct/range {v0 .. v5}, Lcom/iLoong/launcher/Desktop3D/c;-><init>(Ljava/lang/String;FFII)V

    iput-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/g;->h:Lcom/iLoong/launcher/Desktop3D/c;

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/g;->h:Lcom/iLoong/launcher/Desktop3D/c;

    sget v1, Lcom/iLoong/launcher/Desktop3D/at;->bQ:I

    sget v2, Lcom/iLoong/launcher/Desktop3D/at;->bQ:I

    sget v3, Lcom/iLoong/launcher/Desktop3D/at;->bV:I

    invoke-virtual {v0, v1, v2, v3, v6}, Lcom/iLoong/launcher/Desktop3D/c;->a(IIII)V

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/g;->h:Lcom/iLoong/launcher/Desktop3D/c;

    invoke-virtual {v0, v8, v8}, Lcom/iLoong/launcher/Desktop3D/c;->setPosition(FF)V

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/g;->h:Lcom/iLoong/launcher/Desktop3D/c;

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/HotSeat3D/g;->addView(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    invoke-virtual {p0, v7}, Lcom/iLoong/launcher/HotSeat3D/g;->a(I)V

    int-to-float v0, p2

    int-to-float v1, p3

    invoke-virtual {p0, v0, v1}, Lcom/iLoong/launcher/HotSeat3D/g;->setSize(FF)V

    div-int/lit8 v0, p2, 0x2

    int-to-float v0, v0

    div-int/lit8 v1, p3, 0x2

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/iLoong/launcher/HotSeat3D/g;->setOrigin(FF)V

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/g;->h:Lcom/iLoong/launcher/Desktop3D/c;

    iput-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/g;->i:Lcom/iLoong/launcher/Desktop3D/c;

    return-void

    :cond_0
    move v6, v0

    goto :goto_0
.end method

.method private f()Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/iLoong/launcher/HotSeat3D/g;->i:Lcom/iLoong/launcher/Desktop3D/c;

    invoke-virtual {v1}, Lcom/iLoong/launcher/Desktop3D/c;->getChildCount()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/iLoong/launcher/HotSeat3D/g;->i:Lcom/iLoong/launcher/Desktop3D/c;

    iget v1, v1, Lcom/iLoong/launcher/Desktop3D/c;->x:F

    iget-object v2, p0, Lcom/iLoong/launcher/HotSeat3D/g;->i:Lcom/iLoong/launcher/Desktop3D/c;

    invoke-virtual {v2}, Lcom/iLoong/launcher/Desktop3D/c;->g()F

    move-result v2

    add-float/2addr v2, v1

    iget v3, p0, Lcom/iLoong/launcher/HotSeat3D/g;->width:F

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_2

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private g()V
    .locals 13

    const/4 v1, 0x1

    const/high16 v3, 0x3f80

    const/4 v12, 0x0

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/iLoong/launcher/HotSeat3D/g;->n:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/g;->i:Lcom/iLoong/launcher/Desktop3D/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/g;->i:Lcom/iLoong/launcher/Desktop3D/c;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/c;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/g;->i:Lcom/iLoong/launcher/Desktop3D/c;

    iget v0, v0, Lcom/iLoong/launcher/Desktop3D/c;->x:F

    iget-object v2, p0, Lcom/iLoong/launcher/HotSeat3D/g;->i:Lcom/iLoong/launcher/Desktop3D/c;

    invoke-virtual {v2}, Lcom/iLoong/launcher/Desktop3D/c;->g()F

    move-result v2

    const-string v5, "scroll"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, " startScrollTween scrollDir :"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, p0, Lcom/iLoong/launcher/HotSeat3D/g;->j:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mFocusViewX,mFocusViewWidth:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v12, p0, Lcom/iLoong/launcher/HotSeat3D/g;->k:Z

    iget v5, p0, Lcom/iLoong/launcher/HotSeat3D/g;->width:F

    cmpg-float v5, v2, v5

    if-gtz v5, :cond_2

    invoke-direct {p0}, Lcom/iLoong/launcher/HotSeat3D/g;->f()Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "scroll"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, " 222 startScrollTween scrollDir :"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, p0, Lcom/iLoong/launcher/HotSeat3D/g;->j:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mFocusViewX,mFocusViewWidth:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/g;->i:Lcom/iLoong/launcher/Desktop3D/c;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/c;->stopTween()V

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/g;->i:Lcom/iLoong/launcher/Desktop3D/c;

    sget-object v2, Laurelienribon/tweenengine/equations/Cubic;->OUT:Laurelienribon/tweenengine/equations/Cubic;

    iget-object v5, p0, Lcom/iLoong/launcher/HotSeat3D/g;->i:Lcom/iLoong/launcher/Desktop3D/c;

    iget v5, v5, Lcom/iLoong/launcher/Desktop3D/c;->y:F

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Lcom/iLoong/launcher/Desktop3D/c;->startTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    iput-boolean v12, p0, Lcom/iLoong/launcher/HotSeat3D/g;->k:Z

    goto :goto_0

    :cond_2
    cmpg-float v5, v0, v4

    if-ltz v5, :cond_3

    add-float v5, v0, v2

    iget v6, p0, Lcom/iLoong/launcher/HotSeat3D/g;->width:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_0

    :cond_3
    invoke-direct {p0}, Lcom/iLoong/launcher/HotSeat3D/g;->f()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "scroll"

    const-string v6, "scrollEnd"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v5, p0, Lcom/iLoong/launcher/HotSeat3D/g;->j:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_4

    const-string v5, "scroll"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "333 startScrollTween scrollDir :"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, p0, Lcom/iLoong/launcher/HotSeat3D/g;->j:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mFocusViewX,mFocusViewWidth:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/g;->i:Lcom/iLoong/launcher/Desktop3D/c;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/c;->stopTween()V

    iget-object v5, p0, Lcom/iLoong/launcher/HotSeat3D/g;->i:Lcom/iLoong/launcher/Desktop3D/c;

    sget-object v7, Laurelienribon/tweenengine/equations/Cubic;->OUT:Laurelienribon/tweenengine/equations/Cubic;

    iget v0, p0, Lcom/iLoong/launcher/HotSeat3D/g;->width:F

    sub-float v9, v0, v2

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/g;->i:Lcom/iLoong/launcher/Desktop3D/c;

    iget v10, v0, Lcom/iLoong/launcher/Desktop3D/c;->y:F

    move v6, v1

    move v8, v3

    move v11, v4

    invoke-virtual/range {v5 .. v11}, Lcom/iLoong/launcher/Desktop3D/c;->startTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    iput-boolean v12, p0, Lcom/iLoong/launcher/HotSeat3D/g;->k:Z

    goto/16 :goto_0

    :cond_4
    iget v5, p0, Lcom/iLoong/launcher/HotSeat3D/g;->j:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_0

    const-string v5, "scroll"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, " 444 startScrollTween scrollDir :"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, p0, Lcom/iLoong/launcher/HotSeat3D/g;->j:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mFocusViewX,mFocusViewWidth:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/g;->i:Lcom/iLoong/launcher/Desktop3D/c;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/c;->stopTween()V

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/g;->i:Lcom/iLoong/launcher/Desktop3D/c;

    sget-object v2, Laurelienribon/tweenengine/equations/Cubic;->OUT:Laurelienribon/tweenengine/equations/Cubic;

    iget-object v5, p0, Lcom/iLoong/launcher/HotSeat3D/g;->i:Lcom/iLoong/launcher/Desktop3D/c;

    iget v5, v5, Lcom/iLoong/launcher/Desktop3D/c;->y:F

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Lcom/iLoong/launcher/Desktop3D/c;->startTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    iput-boolean v12, p0, Lcom/iLoong/launcher/HotSeat3D/g;->k:Z

    goto/16 :goto_0
.end method


# virtual methods
.method public a()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/g;->i:Lcom/iLoong/launcher/Desktop3D/c;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/g;->i:Lcom/iLoong/launcher/Desktop3D/c;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/c;->g()F

    move-result v0

    iget v1, p0, Lcom/iLoong/launcher/HotSeat3D/g;->width:F

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_2

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/g;->i:Lcom/iLoong/launcher/Desktop3D/c;

    iput v3, v0, Lcom/iLoong/launcher/Desktop3D/c;->x:F

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/iLoong/launcher/HotSeat3D/g;->j:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/iLoong/launcher/HotSeat3D/g;->i:Lcom/iLoong/launcher/Desktop3D/c;

    iget v2, p0, Lcom/iLoong/launcher/HotSeat3D/g;->width:F

    sub-float v0, v2, v0

    iput v0, v1, Lcom/iLoong/launcher/Desktop3D/c;->x:F

    :cond_3
    iget v0, p0, Lcom/iLoong/launcher/HotSeat3D/g;->j:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/g;->i:Lcom/iLoong/launcher/Desktop3D/c;

    iput v3, v0, Lcom/iLoong/launcher/Desktop3D/c;->x:F

    goto :goto_0
.end method

.method public a(I)V
    .locals 0

    return-void
.end method

.method public a(Lcom/iLoong/launcher/UI3DEngine/View3D;)V
    .locals 0

    check-cast p1, Lcom/iLoong/launcher/Desktop3D/bq;

    iput-object p1, p0, Lcom/iLoong/launcher/HotSeat3D/g;->p:Lcom/iLoong/launcher/Desktop3D/bq;

    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 12

    const-wide/16 v10, -0x64

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {p1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/UI3DEngine/View3D;

    iget-object v1, p0, Lcom/iLoong/launcher/HotSeat3D/g;->i:Lcom/iLoong/launcher/Desktop3D/c;

    invoke-virtual {v1, v0}, Lcom/iLoong/launcher/Desktop3D/c;->calcCoordinate(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    move v8, v9

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v8, v1, :cond_0

    return-void

    :cond_0
    instance-of v1, v0, Lcom/iLoong/launcher/d/a;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/iLoong/launcher/d/a;

    invoke-virtual {v1, v9}, Lcom/iLoong/launcher/d/a;->c(Z)V

    :cond_1
    invoke-virtual {v0}, Lcom/iLoong/launcher/UI3DEngine/View3D;->stopTween()V

    move-object v1, v0

    check-cast v1, Lcom/iLoong/launcher/Desktop3D/u;

    invoke-interface {v1}, Lcom/iLoong/launcher/Desktop3D/u;->b()Lcom/iLoong/launcher/a/j;

    move-result-object v5

    iget-wide v1, v5, Lcom/iLoong/launcher/a/j;->m:J

    cmp-long v1, v1, v10

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/iLoong/launcher/HotSeat3D/g;->p:Lcom/iLoong/launcher/Desktop3D/bq;

    iget v2, v5, Lcom/iLoong/launcher/a/j;->p:I

    iget v3, v5, Lcom/iLoong/launcher/a/j;->q:I

    invoke-virtual {v1, v0, v2, v3}, Lcom/iLoong/launcher/Desktop3D/bq;->a(Lcom/iLoong/launcher/UI3DEngine/View3D;II)Z

    const/4 v1, 0x1

    sget-object v2, Laurelienribon/tweenengine/equations/Cubic;->OUT:Laurelienribon/tweenengine/equations/Cubic;

    const/high16 v3, 0x3f00

    iget v4, v5, Lcom/iLoong/launcher/a/j;->p:I

    int-to-float v4, v4

    iget v5, v5, Lcom/iLoong/launcher/a/j;->q:I

    int-to-float v5, v5

    invoke-virtual/range {v0 .. v6}, Lcom/iLoong/launcher/UI3DEngine/View3D;->startTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    move-object v2, v7

    :cond_2
    :goto_1
    add-int/lit8 v1, v8, 0x1

    move v8, v1

    move-object v7, v2

    goto :goto_0

    :cond_3
    iget-wide v1, v5, Lcom/iLoong/launcher/a/j;->m:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-ltz v1, :cond_5

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v1

    iget-wide v2, v5, Lcom/iLoong/launcher/a/j;->m:J

    invoke-virtual {v1, v2, v3}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->a(J)Lcom/iLoong/launcher/a/h;

    move-result-object v1

    iget-wide v2, v1, Lcom/iLoong/launcher/a/h;->m:J

    cmp-long v2, v2, v10

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/iLoong/launcher/HotSeat3D/g;->p:Lcom/iLoong/launcher/Desktop3D/bq;

    invoke-virtual {v2, v1}, Lcom/iLoong/launcher/Desktop3D/bq;->a(Lcom/iLoong/launcher/a/j;)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v2

    :goto_2
    if-eqz v2, :cond_2

    instance-of v1, v2, Lcom/iLoong/launcher/d/a;

    if-eqz v1, :cond_2

    move-object v1, v2

    check-cast v1, Lcom/iLoong/launcher/d/a;

    invoke-virtual {v1, p1, v6, v6}, Lcom/iLoong/launcher/d/a;->a(Ljava/util/ArrayList;FF)Z

    goto :goto_1

    :cond_4
    move-object v2, v7

    goto :goto_2

    :cond_5
    move-object v2, v7

    goto :goto_1
.end method

.method public a(Ljava/util/List;)V
    .locals 5

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/UI3DEngine/View3D;

    instance-of v1, v0, Lcom/iLoong/launcher/Desktop3D/aj;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/iLoong/launcher/HotSeat3D/g;->i:Lcom/iLoong/launcher/Desktop3D/c;

    invoke-virtual {v1, v0}, Lcom/iLoong/launcher/Desktop3D/c;->calcCoordinate(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    iget-object v1, p0, Lcom/iLoong/launcher/HotSeat3D/g;->i:Lcom/iLoong/launcher/Desktop3D/c;

    iget v3, v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->x:F

    iget v4, v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->width:F

    add-float/2addr v3, v4

    float-to-int v3, v3

    iget-object v4, p0, Lcom/iLoong/launcher/HotSeat3D/g;->i:Lcom/iLoong/launcher/Desktop3D/c;

    iget v4, v4, Lcom/iLoong/launcher/Desktop3D/c;->height:F

    float-to-int v4, v4

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v1, v3, v4}, Lcom/iLoong/launcher/Desktop3D/c;->c(II)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_2

    iget-object v3, p0, Lcom/iLoong/launcher/HotSeat3D/g;->i:Lcom/iLoong/launcher/Desktop3D/c;

    invoke-virtual {v3}, Lcom/iLoong/launcher/Desktop3D/c;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_2

    iget-object v3, p0, Lcom/iLoong/launcher/HotSeat3D/g;->i:Lcom/iLoong/launcher/Desktop3D/c;

    invoke-virtual {v3, v0, v1}, Lcom/iLoong/launcher/Desktop3D/c;->a(Lcom/iLoong/launcher/UI3DEngine/View3D;I)V

    :goto_1
    move-object v1, v0

    check-cast v1, Lcom/iLoong/launcher/Desktop3D/aj;

    invoke-virtual {v1}, Lcom/iLoong/launcher/Desktop3D/aj;->b()Lcom/iLoong/launcher/a/j;

    move-result-object v1

    invoke-virtual {v0}, Lcom/iLoong/launcher/UI3DEngine/View3D;->getIndexInParent()I

    move-result v0

    iput v0, v1, Lcom/iLoong/launcher/a/j;->n:I

    const/4 v0, 0x0

    iput v0, v1, Lcom/iLoong/launcher/a/j;->r:I

    const-wide/16 v3, -0x65

    invoke-static {v1, v3, v4}, Lcom/iLoong/launcher/Desktop3D/e;->a(Lcom/iLoong/launcher/a/j;J)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/iLoong/launcher/HotSeat3D/g;->i:Lcom/iLoong/launcher/Desktop3D/c;

    invoke-virtual {v1, v0}, Lcom/iLoong/launcher/Desktop3D/c;->a(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    goto :goto_1
.end method

.method public b()Lcom/iLoong/launcher/UI3DEngine/View3D;
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/g;->i:Lcom/iLoong/launcher/Desktop3D/c;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/c;->f()Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/iLoong/launcher/UI3DEngine/View3D;)V
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/g;->h:Lcom/iLoong/launcher/Desktop3D/c;

    invoke-virtual {v0, p1}, Lcom/iLoong/launcher/Desktop3D/c;->a(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    return-void
.end method

.method public c()V
    .locals 12

    const/4 v1, 0x1

    const/high16 v3, 0x3f80

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/g;->i:Lcom/iLoong/launcher/Desktop3D/c;

    iget v0, v0, Lcom/iLoong/launcher/Desktop3D/c;->x:F

    iget-object v2, p0, Lcom/iLoong/launcher/HotSeat3D/g;->i:Lcom/iLoong/launcher/Desktop3D/c;

    invoke-virtual {v2}, Lcom/iLoong/launcher/Desktop3D/c;->g()F

    move-result v2

    iget v5, p0, Lcom/iLoong/launcher/HotSeat3D/g;->width:F

    cmpg-float v5, v2, v5

    if-gtz v5, :cond_1

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/g;->i:Lcom/iLoong/launcher/Desktop3D/c;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/c;->stopTween()V

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/g;->i:Lcom/iLoong/launcher/Desktop3D/c;

    sget-object v2, Laurelienribon/tweenengine/equations/Cubic;->OUT:Laurelienribon/tweenengine/equations/Cubic;

    iget-object v5, p0, Lcom/iLoong/launcher/HotSeat3D/g;->i:Lcom/iLoong/launcher/Desktop3D/c;

    iget v5, v5, Lcom/iLoong/launcher/Desktop3D/c;->y:F

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Lcom/iLoong/launcher/Desktop3D/c;->startTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    :cond_0
    :goto_0
    return-void

    :cond_1
    cmpg-float v5, v0, v4

    if-ltz v5, :cond_2

    add-float/2addr v0, v2

    iget v5, p0, Lcom/iLoong/launcher/HotSeat3D/g;->width:F

    cmpl-float v0, v0, v5

    if-lez v0, :cond_0

    :cond_2
    invoke-direct {p0}, Lcom/iLoong/launcher/HotSeat3D/g;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "scroll"

    const-string v5, "scrollEnd"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/iLoong/launcher/HotSeat3D/g;->j:I

    const/4 v5, 0x2

    if-ne v0, v5, :cond_3

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/g;->i:Lcom/iLoong/launcher/Desktop3D/c;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/c;->stopTween()V

    iget-object v5, p0, Lcom/iLoong/launcher/HotSeat3D/g;->i:Lcom/iLoong/launcher/Desktop3D/c;

    sget-object v7, Laurelienribon/tweenengine/equations/Cubic;->OUT:Laurelienribon/tweenengine/equations/Cubic;

    iget v0, p0, Lcom/iLoong/launcher/HotSeat3D/g;->width:F

    sub-float v9, v0, v2

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/g;->i:Lcom/iLoong/launcher/Desktop3D/c;

    iget v10, v0, Lcom/iLoong/launcher/Desktop3D/c;->y:F

    move v6, v1

    move v8, v3

    move v11, v4

    invoke-virtual/range {v5 .. v11}, Lcom/iLoong/launcher/Desktop3D/c;->startTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/iLoong/launcher/HotSeat3D/g;->j:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/g;->i:Lcom/iLoong/launcher/Desktop3D/c;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/c;->stopTween()V

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/g;->i:Lcom/iLoong/launcher/Desktop3D/c;

    sget-object v2, Laurelienribon/tweenengine/equations/Cubic;->OUT:Laurelienribon/tweenengine/equations/Cubic;

    iget-object v5, p0, Lcom/iLoong/launcher/HotSeat3D/g;->i:Lcom/iLoong/launcher/Desktop3D/c;

    iget v5, v5, Lcom/iLoong/launcher/Desktop3D/c;->y:F

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Lcom/iLoong/launcher/Desktop3D/c;->startTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    goto :goto_0
.end method

.method public c(Lcom/iLoong/launcher/UI3DEngine/View3D;)V
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/g;->h:Lcom/iLoong/launcher/Desktop3D/c;

    invoke-virtual {v0, p1}, Lcom/iLoong/launcher/Desktop3D/c;->removeView(Lcom/iLoong/launcher/UI3DEngine/View3D;)V

    return-void
.end method

.method public d()I
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/g;->i:Lcom/iLoong/launcher/Desktop3D/c;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/c;->getChildCount()I

    move-result v0

    return v0
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 7

    const/4 v4, 0x0

    invoke-super {p0, p1, p2}, Lcom/iLoong/launcher/UI3DEngine/p;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    invoke-direct {p0}, Lcom/iLoong/launcher/HotSeat3D/g;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/g;->m:Laurelienribon/tweenengine/Tween;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/g;->m:Laurelienribon/tweenengine/Tween;

    invoke-virtual {v0}, Laurelienribon/tweenengine/Tween;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/g;->i:Lcom/iLoong/launcher/Desktop3D/c;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/c;->stopTween()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/g;->m:Laurelienribon/tweenengine/Tween;

    :cond_0
    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/g;->i:Lcom/iLoong/launcher/Desktop3D/c;

    iget-boolean v0, v0, Lcom/iLoong/launcher/Desktop3D/c;->c:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/g;->i:Lcom/iLoong/launcher/Desktop3D/c;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/c;->getTween()Laurelienribon/tweenengine/Tween;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/g;->i:Lcom/iLoong/launcher/Desktop3D/c;

    const/4 v1, 0x7

    sget-object v2, Laurelienribon/tweenengine/equations/Cubic;->OUT:Laurelienribon/tweenengine/equations/Cubic;

    const/high16 v3, 0x3f00

    move v5, v4

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Lcom/iLoong/launcher/Desktop3D/c;->startTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    :cond_1
    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/g;->i:Lcom/iLoong/launcher/Desktop3D/c;

    iget-boolean v0, v0, Lcom/iLoong/launcher/Desktop3D/c;->c:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/g;->i:Lcom/iLoong/launcher/Desktop3D/c;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/c;->f()Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/g;->i:Lcom/iLoong/launcher/Desktop3D/c;

    iget-object v1, p0, Lcom/iLoong/launcher/HotSeat3D/g;->i:Lcom/iLoong/launcher/Desktop3D/c;

    invoke-virtual {v1}, Lcom/iLoong/launcher/Desktop3D/c;->getUser()F

    move-result v1

    float-to-int v1, v1

    neg-int v1, v1

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/Desktop3D/c;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/g;->i:Lcom/iLoong/launcher/Desktop3D/c;

    iget v1, v0, Lcom/iLoong/launcher/Desktop3D/c;->x:F

    iget-object v2, p0, Lcom/iLoong/launcher/HotSeat3D/g;->i:Lcom/iLoong/launcher/Desktop3D/c;

    invoke-virtual {v2}, Lcom/iLoong/launcher/Desktop3D/c;->getUser()F

    move-result v2

    add-float/2addr v1, v2

    iput v1, v0, Lcom/iLoong/launcher/Desktop3D/c;->x:F

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/g;->i:Lcom/iLoong/launcher/Desktop3D/c;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/c;->f()Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v0

    iget v1, v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->x:F

    iget-object v2, p0, Lcom/iLoong/launcher/HotSeat3D/g;->i:Lcom/iLoong/launcher/Desktop3D/c;

    invoke-virtual {v2}, Lcom/iLoong/launcher/Desktop3D/c;->getUser()F

    move-result v2

    neg-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Lcom/iLoong/launcher/UI3DEngine/View3D;->x:F

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/g;->i:Lcom/iLoong/launcher/Desktop3D/c;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/c;->getUser()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x4000

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/g;->i:Lcom/iLoong/launcher/Desktop3D/c;

    iget v1, v0, Lcom/iLoong/launcher/Desktop3D/c;->x:F

    iget-object v2, p0, Lcom/iLoong/launcher/HotSeat3D/g;->i:Lcom/iLoong/launcher/Desktop3D/c;

    invoke-virtual {v2}, Lcom/iLoong/launcher/Desktop3D/c;->getUser()F

    move-result v2

    add-float/2addr v1, v2

    iput v1, v0, Lcom/iLoong/launcher/Desktop3D/c;->x:F

    goto :goto_0

    :cond_4
    iget-boolean v0, p0, Lcom/iLoong/launcher/HotSeat3D/g;->k:Z

    if-eqz v0, :cond_2

    const-string v0, "scroll"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " 111 draw    scrollDir="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/iLoong/launcher/HotSeat3D/g;->j:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mFocusGridView.x="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/iLoong/launcher/HotSeat3D/g;->i:Lcom/iLoong/launcher/Desktop3D/c;

    iget v2, v2, Lcom/iLoong/launcher/Desktop3D/c;->x:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/iLoong/launcher/HotSeat3D/g;->g()V

    goto :goto_0
.end method

.method public e()Lcom/iLoong/launcher/Desktop3D/c;
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/g;->h:Lcom/iLoong/launcher/Desktop3D/c;

    return-object v0
.end method

.method public fling(FF)Z
    .locals 8

    const/4 v7, 0x1

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/iLoong/launcher/HotSeat3D/g;->n:Z

    if-nez v0, :cond_1

    const/4 v0, -0x1

    iput v0, p0, Lcom/iLoong/launcher/HotSeat3D/g;->j:I

    :cond_0
    :goto_0
    return v7

    :cond_1
    cmpl-float v0, p1, v4

    if-lez v0, :cond_3

    const/4 v0, 0x3

    iput v0, p0, Lcom/iLoong/launcher/HotSeat3D/g;->j:I

    :cond_2
    :goto_1
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x4270

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    iput-boolean v7, p0, Lcom/iLoong/launcher/HotSeat3D/g;->k:Z

    const-string v0, "scroll"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " 222 fling name:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/iLoong/launcher/HotSeat3D/g;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isFling="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/iLoong/launcher/HotSeat3D/g;->k:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v0, 0x41f0

    div-float v0, p1, v0

    iput v0, p0, Lcom/iLoong/launcher/HotSeat3D/g;->l:F

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/g;->i:Lcom/iLoong/launcher/Desktop3D/c;

    iget v1, p0, Lcom/iLoong/launcher/HotSeat3D/g;->l:F

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/Desktop3D/c;->setUser(F)V

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/g;->i:Lcom/iLoong/launcher/Desktop3D/c;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/c;->stopTween()V

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/g;->i:Lcom/iLoong/launcher/Desktop3D/c;

    const/4 v1, 0x7

    sget-object v2, Laurelienribon/tweenengine/equations/Cubic;->OUT:Laurelienribon/tweenengine/equations/Cubic;

    const/high16 v3, 0x4020

    move v5, v4

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Lcom/iLoong/launcher/Desktop3D/c;->startTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    move-result-object v0

    iput-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/g;->m:Laurelienribon/tweenengine/Tween;

    goto :goto_0

    :cond_3
    cmpg-float v0, p1, v4

    if-gez v0, :cond_2

    const/4 v0, 0x2

    iput v0, p0, Lcom/iLoong/launcher/HotSeat3D/g;->j:I

    goto :goto_1
.end method

.method public onClick(FF)Z
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/iLoong/launcher/UI3DEngine/p;->onClick(FF)Z

    move-result v0

    return v0
.end method

.method public onCtrlEvent(Lcom/iLoong/launcher/UI3DEngine/View3D;I)Z
    .locals 5

    const/4 v2, 0x0

    instance-of v0, p1, Lcom/iLoong/launcher/Desktop3D/c;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/iLoong/launcher/Desktop3D/c;

    packed-switch p2, :pswitch_data_0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/iLoong/launcher/UI3DEngine/p;->onCtrlEvent(Lcom/iLoong/launcher/UI3DEngine/View3D;I)Z

    move-result v2

    :cond_1
    :goto_0
    return v2

    :pswitch_0
    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/g;->viewParent:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->onCtrlEvent(Lcom/iLoong/launcher/UI3DEngine/View3D;I)Z

    move-result v2

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/iLoong/launcher/HotSeat3D/g;->h:Lcom/iLoong/launcher/Desktop3D/c;

    if-ne v0, v1, :cond_1

    move v1, v2

    :goto_1
    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/g;->h:Lcom/iLoong/launcher/Desktop3D/c;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/c;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/g;->h:Lcom/iLoong/launcher/Desktop3D/c;

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/Desktop3D/c;->getChildAt(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v0

    instance-of v3, v0, Lcom/iLoong/launcher/Desktop3D/aj;

    if-eqz v3, :cond_2

    check-cast v0, Lcom/iLoong/launcher/Desktop3D/aj;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/aj;->b()Lcom/iLoong/launcher/a/j;

    move-result-object v0

    iget v3, v0, Lcom/iLoong/launcher/a/j;->n:I

    if-eq v3, v1, :cond_2

    iput v1, v0, Lcom/iLoong/launcher/a/j;->n:I

    const-wide/16 v3, -0x65

    invoke-static {v0, v3, v4}, Lcom/iLoong/launcher/Desktop3D/e;->a(Lcom/iLoong/launcher/a/j;J)V

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onDoubleClick(FF)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onEvent(ILaurelienribon/tweenengine/BaseTween;)V
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/g;->m:Laurelienribon/tweenengine/Tween;

    if-ne p2, v0, :cond_0

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/iLoong/launcher/HotSeat3D/g;->g()V

    :cond_0
    return-void
.end method

.method public onLongClick(FF)Z
    .locals 3

    invoke-static {}, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->sendHideWorkspaceMsg()V

    iget-boolean v0, p0, Lcom/iLoong/launcher/HotSeat3D/g;->a:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/g;->i:Lcom/iLoong/launcher/Desktop3D/c;

    iget-object v1, p0, Lcom/iLoong/launcher/HotSeat3D/g;->h:Lcom/iLoong/launcher/Desktop3D/c;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/g;->i:Lcom/iLoong/launcher/Desktop3D/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/Desktop3D/c;->b(Z)V

    :cond_0
    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/g;->viewParent:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    const/4 v1, 0x3

    invoke-virtual {v0, p0, v1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->onCtrlEvent(Lcom/iLoong/launcher/UI3DEngine/View3D;I)Z

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/iLoong/launcher/UI3DEngine/p;->onLongClick(FF)Z

    move-result v0

    iget-boolean v1, p0, Lcom/iLoong/launcher/HotSeat3D/g;->a:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/iLoong/launcher/HotSeat3D/g;->i:Lcom/iLoong/launcher/Desktop3D/c;

    iget-object v2, p0, Lcom/iLoong/launcher/HotSeat3D/g;->h:Lcom/iLoong/launcher/Desktop3D/c;

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/iLoong/launcher/HotSeat3D/g;->i:Lcom/iLoong/launcher/Desktop3D/c;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/iLoong/launcher/Desktop3D/c;->b(Z)V

    :cond_2
    return v0
.end method

.method public onTouchDown(FFI)Z
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/g;->i:Lcom/iLoong/launcher/Desktop3D/c;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/c;->stopTween()V

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/g;->i:Lcom/iLoong/launcher/Desktop3D/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/Desktop3D/c;->setUser(F)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iLoong/launcher/HotSeat3D/g;->k:Z

    iput-boolean v2, p0, Lcom/iLoong/launcher/HotSeat3D/g;->n:Z

    invoke-virtual {p0}, Lcom/iLoong/launcher/HotSeat3D/g;->requestFocus()V

    return v2
.end method

.method public onTouchDragged(FFI)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onTouchUp(FFI)Z
    .locals 1

    iget-boolean v0, p0, Lcom/iLoong/launcher/HotSeat3D/g;->k:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/iLoong/launcher/HotSeat3D/g;->g()V

    :cond_0
    invoke-virtual {p0}, Lcom/iLoong/launcher/HotSeat3D/g;->releaseFocus()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iLoong/launcher/HotSeat3D/g;->o:Z

    invoke-super {p0, p1, p2, p3}, Lcom/iLoong/launcher/UI3DEngine/p;->onTouchUp(FFI)Z

    move-result v0

    return v0
.end method

.method public removeAllViews()V
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/g;->i:Lcom/iLoong/launcher/Desktop3D/c;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/c;->removeAllViews()V

    return-void
.end method

.method public scroll(FFFF)Z
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v5, 0x0

    iput-boolean v0, p0, Lcom/iLoong/launcher/HotSeat3D/g;->n:Z

    iget-object v2, p0, Lcom/iLoong/launcher/HotSeat3D/g;->i:Lcom/iLoong/launcher/Desktop3D/c;

    invoke-virtual {v2}, Lcom/iLoong/launcher/Desktop3D/c;->g()F

    move-result v2

    iget-boolean v3, p0, Lcom/iLoong/launcher/HotSeat3D/g;->o:Z

    if-nez v3, :cond_5

    cmpl-float v3, p3, v5

    if-eqz v3, :cond_0

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    div-float/2addr v3, v4

    const/high16 v4, 0x3f80

    cmpl-float v3, v3, v4

    if-lez v3, :cond_5

    :cond_0
    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/HotSeat3D/g;->setTag(Ljava/lang/Object;)V

    iput-boolean v1, p0, Lcom/iLoong/launcher/HotSeat3D/g;->n:Z

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/g;->i:Lcom/iLoong/launcher/Desktop3D/c;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/c;->stopTween()V

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/g;->i:Lcom/iLoong/launcher/Desktop3D/c;

    invoke-virtual {v0, v5}, Lcom/iLoong/launcher/Desktop3D/c;->setUser(F)V

    iput-boolean v1, p0, Lcom/iLoong/launcher/HotSeat3D/g;->k:Z

    const-string v0, "scroll"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, " scroll 333 mFocusViewWidth="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "  scrollDir="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/iLoong/launcher/HotSeat3D/g;->j:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " mFocusGridView.x="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/iLoong/launcher/HotSeat3D/g;->i:Lcom/iLoong/launcher/Desktop3D/c;

    iget v3, v3, Lcom/iLoong/launcher/Desktop3D/c;->x:F

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/iLoong/launcher/HotSeat3D/g;->width:F

    cmpg-float v0, v2, v0

    if-gtz v0, :cond_2

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/g;->i:Lcom/iLoong/launcher/Desktop3D/c;

    iput v5, v0, Lcom/iLoong/launcher/Desktop3D/c;->x:F

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/g;->viewParent:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    const/4 v1, 0x4

    invoke-virtual {v0, p0, v1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->onCtrlEvent(Lcom/iLoong/launcher/UI3DEngine/View3D;I)Z

    move-result v0

    :goto_1
    return v0

    :cond_2
    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/g;->i:Lcom/iLoong/launcher/Desktop3D/c;

    iget v0, v0, Lcom/iLoong/launcher/Desktop3D/c;->x:F

    cmpg-float v0, v0, v5

    if-ltz v0, :cond_3

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/g;->i:Lcom/iLoong/launcher/Desktop3D/c;

    iget v0, v0, Lcom/iLoong/launcher/Desktop3D/c;->x:F

    add-float/2addr v0, v2

    iget v1, p0, Lcom/iLoong/launcher/HotSeat3D/g;->width:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    :cond_3
    iget v0, p0, Lcom/iLoong/launcher/HotSeat3D/g;->j:I

    if-ne v0, v6, :cond_4

    const-string v0, "scroll"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, " scroll 111  mFocusViewWidth="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "  scrollDir="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/iLoong/launcher/HotSeat3D/g;->j:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " mFocusGridView.x="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/iLoong/launcher/HotSeat3D/g;->i:Lcom/iLoong/launcher/Desktop3D/c;

    iget v3, v3, Lcom/iLoong/launcher/Desktop3D/c;->x:F

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/g;->i:Lcom/iLoong/launcher/Desktop3D/c;

    iget v1, p0, Lcom/iLoong/launcher/HotSeat3D/g;->width:F

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/iLoong/launcher/Desktop3D/c;->x:F

    :cond_4
    iget v0, p0, Lcom/iLoong/launcher/HotSeat3D/g;->j:I

    if-ne v0, v7, :cond_1

    const-string v0, "scroll"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, " scroll 222  mFocusViewWidth="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  scrollDir="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/iLoong/launcher/HotSeat3D/g;->j:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mFocusGridView.x="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/iLoong/launcher/HotSeat3D/g;->i:Lcom/iLoong/launcher/Desktop3D/c;

    iget v2, v2, Lcom/iLoong/launcher/Desktop3D/c;->x:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/g;->i:Lcom/iLoong/launcher/Desktop3D/c;

    iput v5, v0, Lcom/iLoong/launcher/Desktop3D/c;->x:F

    goto/16 :goto_0

    :cond_5
    invoke-super {p0, p1, p2, p3, p4}, Lcom/iLoong/launcher/UI3DEngine/p;->scroll(FFFF)Z

    move-result v2

    if-nez v2, :cond_8

    iput-boolean v0, p0, Lcom/iLoong/launcher/HotSeat3D/g;->o:Z

    cmpl-float v2, p3, v5

    if-lez v2, :cond_7

    iput v7, p0, Lcom/iLoong/launcher/HotSeat3D/g;->j:I

    :cond_6
    :goto_2
    iget-object v2, p0, Lcom/iLoong/launcher/HotSeat3D/g;->i:Lcom/iLoong/launcher/Desktop3D/c;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/iLoong/launcher/HotSeat3D/g;->i:Lcom/iLoong/launcher/Desktop3D/c;

    invoke-virtual {v2}, Lcom/iLoong/launcher/Desktop3D/c;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v1, p0, Lcom/iLoong/launcher/HotSeat3D/g;->i:Lcom/iLoong/launcher/Desktop3D/c;

    iget v2, v1, Lcom/iLoong/launcher/Desktop3D/c;->x:F

    add-float/2addr v2, p3

    iput v2, v1, Lcom/iLoong/launcher/Desktop3D/c;->x:F

    goto/16 :goto_1

    :cond_7
    cmpg-float v2, p3, v5

    if-gez v2, :cond_6

    iput v6, p0, Lcom/iLoong/launcher/HotSeat3D/g;->j:I

    goto :goto_2

    :cond_8
    move v0, v1

    goto/16 :goto_1
.end method
