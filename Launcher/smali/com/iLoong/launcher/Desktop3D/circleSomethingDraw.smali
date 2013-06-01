.class public Lcom/iLoong/launcher/Desktop3D/circleSomethingDraw;
.super Landroid/view/View;


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:Landroid/graphics/Path;

.field private c:[Landroid/graphics/PathEffect;

.field private d:F

.field private e:F

.field private f:F

.field private g:F

.field private h:F

.field private i:F

.field private j:F

.field private k:Landroid/graphics/Bitmap;

.field private l:Landroid/graphics/Bitmap;

.field private m:Landroid/graphics/Bitmap;

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:Z

.field private s:Landroid/graphics/Matrix;

.field private t:F

.field private u:Landroid/content/Context;

.field private v:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/circleSomethingDraw;->k:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/circleSomethingDraw;->l:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/circleSomethingDraw;->m:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/circleSomethingDraw;->r:Z

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/circleSomethingDraw;->s:Landroid/graphics/Matrix;

    const/4 v0, 0x0

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/circleSomethingDraw;->t:F

    iput-object p1, p0, Lcom/iLoong/launcher/Desktop3D/circleSomethingDraw;->u:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/circleSomethingDraw;->k:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/circleSomethingDraw;->l:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/circleSomethingDraw;->m:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/circleSomethingDraw;->r:Z

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/circleSomethingDraw;->s:Landroid/graphics/Matrix;

    const/4 v0, 0x0

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/circleSomethingDraw;->t:F

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/circleSomethingDraw;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c002a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/circleSomethingDraw;->v:Ljava/lang/String;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/circleSomethingDraw;->a:Landroid/graphics/Paint;

    iput-object p1, p0, Lcom/iLoong/launcher/Desktop3D/circleSomethingDraw;->u:Landroid/content/Context;

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/circleSomethingDraw;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/circleSomethingDraw;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setDither(Z)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/circleSomethingDraw;->a:Landroid/graphics/Paint;

    const/high16 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/circleSomethingDraw;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/circleSomethingDraw;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/circleSomethingDraw;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/circleSomethingDraw;->a:Landroid/graphics/Paint;

    const/high16 v1, 0x4060

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/circleSomethingDraw;->b:Landroid/graphics/Path;

    const/4 v0, 0x6

    new-array v0, v0, [Landroid/graphics/PathEffect;

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/circleSomethingDraw;->c:[Landroid/graphics/PathEffect;

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/circleSomethingDraw;->c:[Landroid/graphics/PathEffect;

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/circleSomethingDraw;->d:F

    invoke-direct {p0, v0, v1}, Lcom/iLoong/launcher/Desktop3D/circleSomethingDraw;->a([Landroid/graphics/PathEffect;F)V

    invoke-static {}, Lcom/iLoong/launcher/theme/i;->c()Lcom/iLoong/launcher/theme/i;

    move-result-object v0

    const-string v1, "theme/path/shell_picker_focus.png"

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/theme/i;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/circleSomethingDraw;->k:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/circleSomethingDraw;->k:Landroid/graphics/Bitmap;

    sget v1, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->mScale:F

    invoke-static {v0, v1}, Lcom/iLoong/launcher/SetupMenu/e;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/circleSomethingDraw;->k:Landroid/graphics/Bitmap;

    invoke-static {}, Lcom/iLoong/launcher/theme/i;->c()Lcom/iLoong/launcher/theme/i;

    move-result-object v0

    const-string v1, "theme/path/shell_picker_connect_point.png"

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/theme/i;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/circleSomethingDraw;->m:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/circleSomethingDraw;->m:Landroid/graphics/Bitmap;

    sget v1, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->mScale:F

    invoke-static {v0, v1}, Lcom/iLoong/launcher/SetupMenu/e;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/circleSomethingDraw;->m:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/circleSomethingDraw;->k:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/circleSomethingDraw;->n:I

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/circleSomethingDraw;->k:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/circleSomethingDraw;->o:I

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/circleSomethingDraw;->m:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/circleSomethingDraw;->p:I

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/circleSomethingDraw;->m:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/circleSomethingDraw;->q:I

    return-void
.end method

.method private a()Landroid/graphics/Path;
    .locals 5

    const/high16 v4, 0x4100

    const/high16 v1, -0x3f80

    const/high16 v3, 0x4080

    const/4 v2, 0x0

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    invoke-virtual {v0, v3, v2}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v0, v4, v1}, Landroid/graphics/Path;->lineTo(FF)V

    const/high16 v1, 0x4140

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v0, v4, v3}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    return-object v0
.end method

.method private a(FF)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/circleSomethingDraw;->b:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/circleSomethingDraw;->b:Landroid/graphics/Path;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Path;->moveTo(FF)V

    iput p1, p0, Lcom/iLoong/launcher/Desktop3D/circleSomethingDraw;->e:F

    iput p2, p0, Lcom/iLoong/launcher/Desktop3D/circleSomethingDraw;->f:F

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/circleSomethingDraw;->e:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/circleSomethingDraw;->f:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/circleSomethingDraw;->r:Z

    :cond_1
    return-void
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 12

    const/high16 v11, 0x4334

    const-wide v9, 0x400921fb54442d18L

    const/4 v8, 0x0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/circleSomethingDraw;->g:F

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/circleSomethingDraw;->n:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/circleSomethingDraw;->h:F

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/circleSomethingDraw;->o:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/circleSomethingDraw;->i:F

    iget v3, p0, Lcom/iLoong/launcher/Desktop3D/circleSomethingDraw;->p:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iget v3, p0, Lcom/iLoong/launcher/Desktop3D/circleSomethingDraw;->j:F

    iget v4, p0, Lcom/iLoong/launcher/Desktop3D/circleSomethingDraw;->q:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    iget v4, p0, Lcom/iLoong/launcher/Desktop3D/circleSomethingDraw;->i:F

    iget v5, p0, Lcom/iLoong/launcher/Desktop3D/circleSomethingDraw;->j:F

    iget v6, p0, Lcom/iLoong/launcher/Desktop3D/circleSomethingDraw;->g:F

    iget v7, p0, Lcom/iLoong/launcher/Desktop3D/circleSomethingDraw;->h:F

    invoke-static {v4, v5, v6, v7}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getRotDegrees(FFFF)F

    move-result v4

    iput v4, p0, Lcom/iLoong/launcher/Desktop3D/circleSomethingDraw;->t:F

    iget-object v4, p0, Lcom/iLoong/launcher/Desktop3D/circleSomethingDraw;->m:Landroid/graphics/Bitmap;

    iget v5, p0, Lcom/iLoong/launcher/Desktop3D/circleSomethingDraw;->g:F

    iget v6, p0, Lcom/iLoong/launcher/Desktop3D/circleSomethingDraw;->p:I

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    sub-float/2addr v5, v6

    iget v6, p0, Lcom/iLoong/launcher/Desktop3D/circleSomethingDraw;->h:F

    iget v7, p0, Lcom/iLoong/launcher/Desktop3D/circleSomethingDraw;->q:I

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    sub-float/2addr v6, v7

    invoke-virtual {p1, v4, v5, v6, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object v4, p0, Lcom/iLoong/launcher/Desktop3D/circleSomethingDraw;->k:Landroid/graphics/Bitmap;

    int-to-float v0, v0

    int-to-float v1, v1

    invoke-virtual {p1, v4, v0, v1, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/circleSomethingDraw;->m:Landroid/graphics/Bitmap;

    int-to-float v1, v2

    int-to-float v2, v3

    invoke-virtual {p1, v0, v1, v2, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/circleSomethingDraw;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/circleSomethingDraw;->a:Landroid/graphics/Paint;

    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/circleSomethingDraw;->g:F

    float-to-double v0, v0

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/circleSomethingDraw;->p:I

    div-int/lit8 v2, v2, 0x2

    int-to-double v2, v2

    iget v4, p0, Lcom/iLoong/launcher/Desktop3D/circleSomethingDraw;->t:F

    div-float/2addr v4, v11

    float-to-double v4, v4

    mul-double/2addr v4, v9

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-float v1, v0

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/circleSomethingDraw;->h:F

    float-to-double v2, v0

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/circleSomethingDraw;->p:I

    div-int/lit8 v0, v0, 0x2

    int-to-double v4, v0

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/circleSomethingDraw;->t:F

    div-float/2addr v0, v11

    float-to-double v6, v0

    mul-double/2addr v6, v9

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-float v2, v2

    iget v3, p0, Lcom/iLoong/launcher/Desktop3D/circleSomethingDraw;->i:F

    iget v4, p0, Lcom/iLoong/launcher/Desktop3D/circleSomethingDraw;->j:F

    iget-object v5, p0, Lcom/iLoong/launcher/Desktop3D/circleSomethingDraw;->a:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/circleSomethingDraw;->c:[Landroid/graphics/PathEffect;

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/circleSomethingDraw;->d:F

    invoke-direct {p0, v0, v1}, Lcom/iLoong/launcher/Desktop3D/circleSomethingDraw;->a([Landroid/graphics/PathEffect;F)V

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/circleSomethingDraw;->d:F

    const/high16 v1, 0x3f80

    add-float/2addr v0, v1

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/circleSomethingDraw;->d:F

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/circleSomethingDraw;->invalidate()V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/circleSomethingDraw;->a:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/circleSomethingDraw;->c:[Landroid/graphics/PathEffect;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/circleSomethingDraw;->a:Landroid/graphics/Paint;

    const/high16 v1, 0x4080

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/circleSomethingDraw;->b:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/circleSomethingDraw;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private a([Landroid/graphics/PathEffect;F)V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    aput-object v1, p1, v0

    new-instance v0, Landroid/graphics/CornerPathEffect;

    const/high16 v1, 0x4248

    invoke-direct {v0, v1}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    aput-object v0, p1, v4

    new-instance v0, Landroid/graphics/DashPathEffect;

    new-array v1, v7, [F

    fill-array-data v1, :array_0

    invoke-direct {v0, v1, p2}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    aput-object v0, p1, v5

    new-instance v0, Landroid/graphics/PathDashPathEffect;

    invoke-direct {p0}, Lcom/iLoong/launcher/Desktop3D/circleSomethingDraw;->a()Landroid/graphics/Path;

    move-result-object v1

    const/high16 v2, 0x4140

    sget-object v3, Landroid/graphics/PathDashPathEffect$Style;->ROTATE:Landroid/graphics/PathDashPathEffect$Style;

    invoke-direct {v0, v1, v2, p2, v3}, Landroid/graphics/PathDashPathEffect;-><init>(Landroid/graphics/Path;FFLandroid/graphics/PathDashPathEffect$Style;)V

    aput-object v0, p1, v6

    new-instance v0, Landroid/graphics/ComposePathEffect;

    aget-object v1, p1, v5

    aget-object v2, p1, v4

    invoke-direct {v0, v1, v2}, Landroid/graphics/ComposePathEffect;-><init>(Landroid/graphics/PathEffect;Landroid/graphics/PathEffect;)V

    aput-object v0, p1, v7

    const/4 v0, 0x5

    new-instance v1, Landroid/graphics/ComposePathEffect;

    aget-object v2, p1, v6

    aget-object v3, p1, v4

    invoke-direct {v1, v2, v3}, Landroid/graphics/ComposePathEffect;-><init>(Landroid/graphics/PathEffect;Landroid/graphics/PathEffect;)V

    aput-object v1, p1, v0

    return-void

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x40t 0x41t
        0x0t 0x0t 0x40t 0x41t
        0x0t 0x0t 0x80t 0x40t
        0x0t 0x0t 0x40t 0x41t
    .end array-data
.end method

.method private b()V
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/circleSomethingDraw;->b:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    return-void
.end method

.method private b(FF)V
    .locals 6

    const/high16 v2, 0x4080

    const/high16 v5, 0x4000

    iget v0, p0, Lcom/iLoong/launcher/Desktop3D/circleSomethingDraw;->e:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/circleSomethingDraw;->f:F

    sub-float v1, p2, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iput p1, p0, Lcom/iLoong/launcher/Desktop3D/circleSomethingDraw;->i:F

    iput p2, p0, Lcom/iLoong/launcher/Desktop3D/circleSomethingDraw;->j:F

    cmpl-float v0, v0, v2

    if-gez v0, :cond_0

    cmpl-float v0, v1, v2

    if-ltz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/circleSomethingDraw;->b:Landroid/graphics/Path;

    iget v1, p0, Lcom/iLoong/launcher/Desktop3D/circleSomethingDraw;->e:F

    iget v2, p0, Lcom/iLoong/launcher/Desktop3D/circleSomethingDraw;->f:F

    iget v3, p0, Lcom/iLoong/launcher/Desktop3D/circleSomethingDraw;->e:F

    add-float/2addr v3, p1

    div-float/2addr v3, v5

    iget v4, p0, Lcom/iLoong/launcher/Desktop3D/circleSomethingDraw;->f:F

    add-float/2addr v4, p2

    div-float/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Path;->quadTo(FFFF)V

    iput p1, p0, Lcom/iLoong/launcher/Desktop3D/circleSomethingDraw;->e:F

    iput p2, p0, Lcom/iLoong/launcher/Desktop3D/circleSomethingDraw;->f:F

    :cond_1
    return-void
.end method


# virtual methods
.method public a(IFFLjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-direct {p0, p2, p3}, Lcom/iLoong/launcher/Desktop3D/circleSomethingDraw;->a(FF)V

    iput p2, p0, Lcom/iLoong/launcher/Desktop3D/circleSomethingDraw;->g:F

    iput p3, p0, Lcom/iLoong/launcher/Desktop3D/circleSomethingDraw;->h:F

    iput-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/circleSomethingDraw;->r:Z

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/iLoong/launcher/Desktop3D/circleSomethingDraw;->b()V

    iput-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/circleSomethingDraw;->r:Z

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/circleSomethingDraw;->invalidate()V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, p2, p3}, Lcom/iLoong/launcher/Desktop3D/circleSomethingDraw;->b(FF)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/circleSomethingDraw;->r:Z

    invoke-virtual {p0}, Lcom/iLoong/launcher/Desktop3D/circleSomethingDraw;->invalidate()V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0, p4}, Lcom/iLoong/launcher/Desktop3D/circleSomethingDraw;->a(Ljava/lang/String;)V

    iput-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/circleSomethingDraw;->r:Z

    goto :goto_0

    :pswitch_5
    invoke-direct {p0}, Lcom/iLoong/launcher/Desktop3D/circleSomethingDraw;->b()V

    invoke-virtual {p0, p4}, Lcom/iLoong/launcher/Desktop3D/circleSomethingDraw;->a(Ljava/lang/String;)V

    iput-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/circleSomethingDraw;->r:Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/circleSomethingDraw;->u:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    iget-boolean v0, p0, Lcom/iLoong/launcher/Desktop3D/circleSomethingDraw;->r:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/iLoong/launcher/Desktop3D/circleSomethingDraw;->a(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method
