.class public Lcom/iLoong/launcher/Desktop3D/aq;
.super Lcom/iLoong/launcher/UI3DEngine/View3D;


# static fields
.field private static a:Z

.field private static h:Z

.field private static i:Z


# instance fields
.field private b:Lcom/badlogic/gdx/math/Vector2;

.field private c:Lcom/badlogic/gdx/math/Vector2;

.field private d:F

.field private e:Lcom/iLoong/launcher/Desktop3D/CellLayout3D;

.field private f:Lcom/iLoong/launcher/Desktop3D/bq;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/iLoong/launcher/Desktop3D/aq;->a:Z

    sput-boolean v0, Lcom/iLoong/launcher/Desktop3D/aq;->h:Z

    sput-boolean v0, Lcom/iLoong/launcher/Desktop3D/aq;->i:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/iLoong/launcher/UI3DEngine/View3D;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aq;->b:Lcom/badlogic/gdx/math/Vector2;

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aq;->c:Lcom/badlogic/gdx/math/Vector2;

    const/4 v0, 0x0

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/aq;->d:F

    return-void
.end method

.method private a()V
    .locals 7

    const/4 v3, 0x0

    const/high16 v6, 0x3f80

    new-instance v4, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v4, v6, v6, v6, v6}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aq;->e:Lcom/iLoong/launcher/Desktop3D/CellLayout3D;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->getChildCount()I

    move-result v5

    move v2, v3

    :goto_0
    if-lt v2, v5, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aq;->e:Lcom/iLoong/launcher/Desktop3D/CellLayout3D;

    invoke-virtual {v0, v2}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->getChildAt(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v1

    iput v6, v4, Lcom/badlogic/gdx/graphics/Color;->r:F

    iput v6, v4, Lcom/badlogic/gdx/graphics/Color;->g:F

    iput v6, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    instance-of v0, v1, Lcom/iLoong/launcher/UI3DEngine/n;

    if-eqz v0, :cond_1

    move-object v0, v1

    check-cast v0, Lcom/iLoong/launcher/UI3DEngine/n;

    invoke-virtual {v0}, Lcom/iLoong/launcher/UI3DEngine/n;->u()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v1

    check-cast v0, Lcom/iLoong/launcher/UI3DEngine/n;

    invoke-virtual {v0, v3}, Lcom/iLoong/launcher/UI3DEngine/n;->b(Z)V

    invoke-virtual {v1, v4}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :cond_1
    instance-of v0, v1, Lcom/iLoong/launcher/UI3DEngine/c;

    if-eqz v0, :cond_2

    move-object v0, v1

    check-cast v0, Lcom/iLoong/launcher/UI3DEngine/c;

    invoke-virtual {v0}, Lcom/iLoong/launcher/UI3DEngine/c;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, v1

    check-cast v0, Lcom/iLoong/launcher/UI3DEngine/c;

    invoke-virtual {v0, v3}, Lcom/iLoong/launcher/UI3DEngine/c;->a(Z)V

    move-object v0, v1

    check-cast v0, Lcom/iLoong/launcher/UI3DEngine/c;

    invoke-virtual {v0, v4}, Lcom/iLoong/launcher/UI3DEngine/c;->a(Lcom/badlogic/gdx/graphics/Color;)V

    :cond_2
    instance-of v0, v1, Lcom/iLoong/launcher/Desktop3D/aj;

    if-eqz v0, :cond_3

    move-object v0, v1

    check-cast v0, Lcom/iLoong/launcher/Desktop3D/aj;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/aj;->j()Z

    move-result v0

    if-eqz v0, :cond_3

    check-cast v1, Lcom/iLoong/launcher/Desktop3D/aj;

    invoke-virtual {v1}, Lcom/iLoong/launcher/Desktop3D/aj;->h()V

    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0
.end method

.method private a(FF)V
    .locals 2

    const/4 v0, 0x2

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/aq;->height:F

    sub-float/2addr v1, p2

    invoke-static {v0, p1, v1}, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->sendOurEventMsg(IFF)V

    invoke-direct {p0}, Lcom/iLoong/launcher/Desktop3D/aq;->d()V

    return-void
.end method

.method private b()V
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aq;->viewParent:Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    check-cast v0, Lcom/iLoong/launcher/Desktop3D/bq;

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aq;->f:Lcom/iLoong/launcher/Desktop3D/bq;

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aq;->f:Lcom/iLoong/launcher/Desktop3D/bq;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/bq;->z()Lcom/iLoong/launcher/Desktop3D/CellLayout3D;

    move-result-object v0

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aq;->e:Lcom/iLoong/launcher/Desktop3D/CellLayout3D;

    return-void
.end method

.method private b(FF)V
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/aq;->height:F

    sub-float/2addr v1, p2

    invoke-static {v0, p1, v1}, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->sendOurEventMsg(IFF)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/aq;->d:F

    const/4 v0, 0x0

    sput-boolean v0, Lcom/iLoong/launcher/Desktop3D/aq;->a:Z

    return-void
.end method

.method private c(FF)V
    .locals 1

    invoke-direct {p0}, Lcom/iLoong/launcher/Desktop3D/aq;->a()V

    sget-object v0, Lcom/iLoong/launcher/Desktop3D/at;->ai:Ljava/lang/String;

    invoke-static {v0}, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->sendCircleToastMsg(Ljava/lang/String;)V

    return-void
.end method

.method private c()Z
    .locals 6

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/aq;->d:F

    float-to-double v0, v0

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/aq;->getWidth()F

    move-result v2

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/aq;->getHeight()F

    move-result v3

    add-float/2addr v2, v3

    float-to-double v2, v2

    const-wide/high16 v4, 0x4004

    mul-double/2addr v2, v4

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d()V
    .locals 8

    const/4 v7, 0x1

    const/high16 v0, 0x3f80

    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v3, v0, v0, v0, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    const v0, 0x3f333333

    iput v0, v3, Lcom/badlogic/gdx/graphics/Color;->r:F

    const/4 v0, 0x0

    iput v0, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    const v0, 0x3dcccccd

    iput v0, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v0, 0x3f4ccccd

    iput v0, v3, Lcom/badlogic/gdx/graphics/Color;->a:F

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aq;->e:Lcom/iLoong/launcher/Desktop3D/CellLayout3D;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->getChildCount()I

    move-result v4

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-lt v2, v4, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aq;->e:Lcom/iLoong/launcher/Desktop3D/CellLayout3D;

    invoke-virtual {v0, v2}, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->getChildAt(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v1

    instance-of v0, v1, Lcom/iLoong/launcher/UI3DEngine/n;

    if-eqz v0, :cond_1

    move-object v0, v1

    check-cast v0, Lcom/iLoong/launcher/UI3DEngine/n;

    invoke-virtual {v0}, Lcom/iLoong/launcher/UI3DEngine/n;->u()Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/iLoong/launcher/Desktop3D/aq;->b:Lcom/badlogic/gdx/math/Vector2;

    iget-object v6, p0, Lcom/iLoong/launcher/Desktop3D/aq;->c:Lcom/badlogic/gdx/math/Vector2;

    invoke-static {v1, v5, v6}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->lineInActor(Lcom/iLoong/launcher/UI3DEngine/View3D;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v0, v7}, Lcom/iLoong/launcher/UI3DEngine/n;->b(Z)V

    invoke-virtual {v0, v3}, Lcom/iLoong/launcher/UI3DEngine/n;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :cond_1
    instance-of v0, v1, Lcom/iLoong/launcher/UI3DEngine/c;

    if-eqz v0, :cond_2

    move-object v0, v1

    check-cast v0, Lcom/iLoong/launcher/UI3DEngine/c;

    invoke-virtual {v0}, Lcom/iLoong/launcher/UI3DEngine/c;->a()Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/iLoong/launcher/Desktop3D/aq;->b:Lcom/badlogic/gdx/math/Vector2;

    iget-object v6, p0, Lcom/iLoong/launcher/Desktop3D/aq;->c:Lcom/badlogic/gdx/math/Vector2;

    invoke-static {v1, v5, v6}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->lineInActor(Lcom/iLoong/launcher/UI3DEngine/View3D;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0, v7}, Lcom/iLoong/launcher/UI3DEngine/c;->a(Z)V

    invoke-virtual {v0, v3}, Lcom/iLoong/launcher/UI3DEngine/c;->a(Lcom/badlogic/gdx/graphics/Color;)V

    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0
.end method

.method private d(FF)V
    .locals 2

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aq;->c:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/math/Vector2;->dst(FF)F

    move-result v0

    const/high16 v1, 0x41a0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/aq;->d:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/aq;->d:F

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aq;->c:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {p0}, Lcom/iLoong/launcher/Desktop3D/aq;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/iLoong/launcher/Desktop3D/aq;->c(FF)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/iLoong/launcher/Desktop3D/aq;->a(FF)V

    goto :goto_0
.end method

.method private e()V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/aq;->b:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/aq;->height:F

    iget-object v3, p0, Lcom/iLoong/launcher/Desktop3D/aq;->b:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v2, v3

    invoke-static {v0, v1, v2}, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->sendOurEventMsg(IFF)V

    invoke-direct {p0}, Lcom/iLoong/launcher/Desktop3D/aq;->b()V

    invoke-direct {p0}, Lcom/iLoong/launcher/Desktop3D/aq;->a()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/aq;->d:F

    const-string v0, "CircleSomething"

    const-string v1, "send CIRCLE_EVENT_DOWN"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public multiTouch2(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)Z
    .locals 3

    const/4 v2, 0x1

    sput-boolean v2, Lcom/iLoong/launcher/Desktop3D/aq;->h:Z

    sput-boolean v2, Lcom/iLoong/launcher/Desktop3D/aq;->i:Z

    invoke-direct {p0}, Lcom/iLoong/launcher/Desktop3D/aq;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return v2

    :cond_0
    sget-boolean v0, Lcom/iLoong/launcher/Desktop3D/aq;->a:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/aq;->requestFocus()V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aq;->b:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, p3}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/aq;->c:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, p3}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {p0}, Lcom/iLoong/launcher/Desktop3D/aq;->e()V

    sput-boolean v2, Lcom/iLoong/launcher/Desktop3D/aq;->a:Z

    :cond_1
    iget v0, p4, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, p4, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-direct {p0, v0, v1}, Lcom/iLoong/launcher/Desktop3D/aq;->d(FF)V

    goto :goto_0
.end method

.method public onTouchDragged(FFI)Z
    .locals 2

    const/4 v1, 0x1

    if-ne p3, v1, :cond_0

    sget-boolean v0, Lcom/iLoong/launcher/Desktop3D/aq;->i:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/iLoong/launcher/Desktop3D/aq;->a:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/iLoong/launcher/Desktop3D/aq;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/iLoong/launcher/Desktop3D/aq;->d(FF)V

    goto :goto_0
.end method

.method public onTouchUp(FFI)Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-nez p3, :cond_0

    sput-boolean v0, Lcom/iLoong/launcher/Desktop3D/aq;->h:Z

    :cond_0
    if-ne p3, v1, :cond_1

    sput-boolean v0, Lcom/iLoong/launcher/Desktop3D/aq;->i:Z

    :cond_1
    sget-boolean v2, Lcom/iLoong/launcher/Desktop3D/aq;->a:Z

    if-eqz v2, :cond_2

    sget-boolean v2, Lcom/iLoong/launcher/Desktop3D/aq;->i:Z

    if-nez v2, :cond_2

    invoke-direct {p0, p1, p2}, Lcom/iLoong/launcher/Desktop3D/aq;->b(FF)V

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/aq;->releaseFocus()V

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/aq;->f:Lcom/iLoong/launcher/Desktop3D/bq;

    invoke-virtual {v1, p1, p2}, Lcom/iLoong/launcher/Desktop3D/bq;->b(FF)V

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/aq;->hide()V

    :goto_0
    return v0

    :cond_2
    sget-boolean v2, Lcom/iLoong/launcher/Desktop3D/aq;->h:Z

    if-nez v2, :cond_3

    sget-boolean v2, Lcom/iLoong/launcher/Desktop3D/aq;->i:Z

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/aq;->hide()V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method
