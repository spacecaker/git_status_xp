.class public Lcom/iLoong/launcher/cling/Cling;
.super Landroid/widget/FrameLayout;


# instance fields
.field public a:Ljava/lang/String;

.field private b:Lcom/iLoong/launcher/desktop/iLoongLauncher;

.field private c:[I

.field private d:Landroid/graphics/drawable/GradientDrawable;

.field private e:Landroid/graphics/Bitmap;

.field private f:Landroid/graphics/Bitmap;

.field private g:Landroid/graphics/Bitmap;

.field private h:Landroid/graphics/Bitmap;

.field private i:Landroid/graphics/Bitmap;

.field private j:Landroid/graphics/Bitmap;

.field private k:Landroid/graphics/Bitmap;

.field private l:Landroid/graphics/BitmapFactory$Options;

.field private m:Landroid/graphics/Rect;

.field private n:Landroid/graphics/Rect;

.field private o:Landroid/graphics/Rect;

.field private p:Landroid/graphics/Rect;

.field private q:Landroid/graphics/Paint;

.field private r:Landroid/graphics/Paint;

.field private s:I

.field private t:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v3}, Lcom/iLoong/launcher/cling/Cling;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v0, p0, Lcom/iLoong/launcher/cling/Cling;->d:Landroid/graphics/drawable/GradientDrawable;

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v0, p0, Lcom/iLoong/launcher/cling/Cling;->l:Landroid/graphics/BitmapFactory$Options;

    iget-object v0, p0, Lcom/iLoong/launcher/cling/Cling;->l:Landroid/graphics/BitmapFactory$Options;

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/iLoong/launcher/cling/Cling;->m:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/iLoong/launcher/cling/Cling;->n:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/iLoong/launcher/cling/Cling;->o:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/iLoong/launcher/cling/Cling;->p:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/iLoong/launcher/cling/Cling;->q:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/iLoong/launcher/cling/Cling;->q:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object v0, p0, Lcom/iLoong/launcher/cling/Cling;->q:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/iLoong/launcher/cling/Cling;->q:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/iLoong/launcher/cling/Cling;->q:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/iLoong/launcher/cling/Cling;->q:Landroid/graphics/Paint;

    const/high16 v1, 0x4080

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/iLoong/launcher/cling/Cling;->r:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/iLoong/launcher/cling/Cling;->r:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/iLoong/launcher/cling/Cling;->r:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/iLoong/launcher/cling/Cling;->r:Landroid/graphics/Paint;

    iget v1, p0, Lcom/iLoong/launcher/cling/Cling;->s:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/iLoong/launcher/cling/Cling;->r:Landroid/graphics/Paint;

    iget v1, p0, Lcom/iLoong/launcher/cling/Cling;->t:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/iLoong/launcher/cling/Cling;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x5

    iput v0, p0, Lcom/iLoong/launcher/cling/Cling;->s:I

    const v0, -0xe74822

    iput v0, p0, Lcom/iLoong/launcher/cling/Cling;->t:I

    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/iLoong/launcher/cling/Cling;->e:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/cling/Cling;->e:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/iLoong/launcher/cling/Cling;->e:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v0, p0, Lcom/iLoong/launcher/cling/Cling;->f:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iLoong/launcher/cling/Cling;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/iLoong/launcher/cling/Cling;->f:Landroid/graphics/Bitmap;

    :cond_1
    iget-object v0, p0, Lcom/iLoong/launcher/cling/Cling;->g:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/iLoong/launcher/cling/Cling;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/iLoong/launcher/cling/Cling;->g:Landroid/graphics/Bitmap;

    :cond_2
    iget-object v0, p0, Lcom/iLoong/launcher/cling/Cling;->h:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/iLoong/launcher/cling/Cling;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/iLoong/launcher/cling/Cling;->h:Landroid/graphics/Bitmap;

    :cond_3
    iget-object v0, p0, Lcom/iLoong/launcher/cling/Cling;->i:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/iLoong/launcher/cling/Cling;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/iLoong/launcher/cling/Cling;->i:Landroid/graphics/Bitmap;

    :cond_4
    iget-object v0, p0, Lcom/iLoong/launcher/cling/Cling;->j:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/iLoong/launcher/cling/Cling;->j:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/iLoong/launcher/cling/Cling;->j:Landroid/graphics/Bitmap;

    :cond_5
    iget-object v0, p0, Lcom/iLoong/launcher/cling/Cling;->k:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/iLoong/launcher/cling/Cling;->k:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/iLoong/launcher/cling/Cling;->k:Landroid/graphics/Bitmap;

    :cond_6
    return-void
.end method

.method a(Lcom/iLoong/launcher/desktop/iLoongLauncher;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iLoong/launcher/cling/Cling;->b:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    iput-object p2, p0, Lcom/iLoong/launcher/cling/Cling;->a:Ljava/lang/String;

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 14

    const/4 v13, 0x0

    const/4 v12, 0x3

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x2

    const/high16 v0, -0x3400

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    iget-object v0, p0, Lcom/iLoong/launcher/cling/Cling;->c:[I

    aget v0, v0, v10

    int-to-float v0, v0

    iget-object v1, p0, Lcom/iLoong/launcher/cling/Cling;->c:[I

    aget v1, v1, v11

    int-to-float v1, v1

    iget-object v2, p0, Lcom/iLoong/launcher/cling/Cling;->c:[I

    aget v2, v2, v9

    int-to-float v2, v2

    iget-object v3, p0, Lcom/iLoong/launcher/cling/Cling;->q:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/iLoong/launcher/cling/Cling;->c:[I

    aget v0, v0, v10

    int-to-float v0, v0

    iget-object v1, p0, Lcom/iLoong/launcher/cling/Cling;->c:[I

    aget v1, v1, v11

    int-to-float v1, v1

    iget-object v2, p0, Lcom/iLoong/launcher/cling/Cling;->c:[I

    aget v2, v2, v9

    int-to-float v2, v2

    iget-object v3, p0, Lcom/iLoong/launcher/cling/Cling;->r:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual {p0}, Lcom/iLoong/launcher/cling/Cling;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/iLoong/launcher/cling/Cling;->getMeasuredHeight()I

    int-to-float v0, v0

    const/high16 v1, 0x43f0

    div-float/2addr v0, v1

    const/high16 v0, 0x3f80

    iget-object v1, p0, Lcom/iLoong/launcher/cling/Cling;->a:Ljava/lang/String;

    sget-object v2, Lcom/iLoong/launcher/cling/i;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/iLoong/launcher/cling/Cling;->e:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/iLoong/launcher/cling/Cling;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020007

    iget-object v3, p0, Lcom/iLoong/launcher/cling/Cling;->l:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/iLoong/launcher/cling/Cling;->e:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v1, p0, Lcom/iLoong/launcher/cling/Cling;->f:Landroid/graphics/Bitmap;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/iLoong/launcher/cling/Cling;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020008

    iget-object v3, p0, Lcom/iLoong/launcher/cling/Cling;->l:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/iLoong/launcher/cling/Cling;->f:Landroid/graphics/Bitmap;

    :cond_1
    iget-object v1, p0, Lcom/iLoong/launcher/cling/Cling;->e:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iget-object v2, p0, Lcom/iLoong/launcher/cling/Cling;->e:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    iget-object v3, p0, Lcom/iLoong/launcher/cling/Cling;->m:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/iLoong/launcher/cling/Cling;->e:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/iLoong/launcher/cling/Cling;->e:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v3, v10, v10, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v3, p0, Lcom/iLoong/launcher/cling/Cling;->n:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/iLoong/launcher/cling/Cling;->c:[I

    aget v4, v4, v10

    iget-object v5, p0, Lcom/iLoong/launcher/cling/Cling;->c:[I

    aget v5, v5, v9

    sub-int/2addr v4, v5

    int-to-float v4, v4

    const/high16 v5, 0x4304

    sget v6, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->mScreenScale:F

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    float-to-int v4, v4

    iget-object v5, p0, Lcom/iLoong/launcher/cling/Cling;->c:[I

    aget v5, v5, v11

    iget-object v6, p0, Lcom/iLoong/launcher/cling/Cling;->c:[I

    aget v6, v6, v9

    sub-int/2addr v5, v6

    int-to-float v5, v5

    const/high16 v6, 0x42c6

    sget v7, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->mScreenScale:F

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    float-to-int v5, v5

    iget-object v6, p0, Lcom/iLoong/launcher/cling/Cling;->c:[I

    aget v6, v6, v10

    iget-object v7, p0, Lcom/iLoong/launcher/cling/Cling;->c:[I

    aget v7, v7, v9

    sub-int/2addr v6, v7

    int-to-float v6, v6

    const/high16 v7, 0x4304

    sget v8, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->mScreenScale:F

    mul-float/2addr v7, v8

    sub-float/2addr v6, v7

    int-to-float v1, v1

    add-float/2addr v1, v6

    float-to-int v1, v1

    iget-object v6, p0, Lcom/iLoong/launcher/cling/Cling;->c:[I

    aget v6, v6, v11

    iget-object v7, p0, Lcom/iLoong/launcher/cling/Cling;->c:[I

    aget v7, v7, v9

    sub-int/2addr v6, v7

    int-to-float v6, v6

    const/high16 v7, 0x42c6

    sget v8, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->mScreenScale:F

    mul-float/2addr v7, v8

    sub-float/2addr v6, v7

    int-to-float v2, v2

    add-float/2addr v2, v6

    float-to-int v2, v2

    invoke-virtual {v3, v4, v5, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v1, p0, Lcom/iLoong/launcher/cling/Cling;->e:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/iLoong/launcher/cling/Cling;->m:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/iLoong/launcher/cling/Cling;->n:Landroid/graphics/Rect;

    invoke-virtual {p1, v1, v2, v3, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/iLoong/launcher/cling/Cling;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iget-object v2, p0, Lcom/iLoong/launcher/cling/Cling;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iget-object v2, p0, Lcom/iLoong/launcher/cling/Cling;->o:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/iLoong/launcher/cling/Cling;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/iLoong/launcher/cling/Cling;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v2, v10, v10, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v2, p0, Lcom/iLoong/launcher/cling/Cling;->p:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/iLoong/launcher/cling/Cling;->c:[I

    aget v3, v3, v10

    iget-object v4, p0, Lcom/iLoong/launcher/cling/Cling;->c:[I

    aget v4, v4, v9

    sub-int/2addr v3, v4

    int-to-float v3, v3

    const/high16 v4, 0x4238

    sget v5, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->mScreenScale:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-int v3, v3

    iget-object v4, p0, Lcom/iLoong/launcher/cling/Cling;->c:[I

    aget v4, v4, v11

    iget-object v5, p0, Lcom/iLoong/launcher/cling/Cling;->c:[I

    aget v5, v5, v9

    sub-int/2addr v4, v5

    int-to-float v4, v4

    const/high16 v5, 0x4290

    sget v6, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->mScreenScale:F

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    float-to-int v4, v4

    iget-object v5, p0, Lcom/iLoong/launcher/cling/Cling;->c:[I

    aget v5, v5, v10

    iget-object v6, p0, Lcom/iLoong/launcher/cling/Cling;->c:[I

    aget v6, v6, v9

    sub-int/2addr v5, v6

    int-to-float v5, v5

    const/high16 v6, 0x4238

    sget v7, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->mScreenScale:F

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    int-to-float v1, v1

    add-float/2addr v1, v5

    float-to-int v1, v1

    iget-object v5, p0, Lcom/iLoong/launcher/cling/Cling;->c:[I

    aget v5, v5, v11

    iget-object v6, p0, Lcom/iLoong/launcher/cling/Cling;->c:[I

    aget v6, v6, v9

    sub-int/2addr v5, v6

    int-to-float v5, v5

    const/high16 v6, 0x4290

    sget v7, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->mScreenScale:F

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    int-to-float v0, v0

    add-float/2addr v0, v5

    float-to-int v0, v0

    invoke-virtual {v2, v3, v4, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/iLoong/launcher/cling/Cling;->f:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/iLoong/launcher/cling/Cling;->o:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/iLoong/launcher/cling/Cling;->p:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v1, v2, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void

    :cond_3
    iget-object v1, p0, Lcom/iLoong/launcher/cling/Cling;->a:Ljava/lang/String;

    sget-object v2, Lcom/iLoong/launcher/cling/i;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/iLoong/launcher/cling/Cling;->g:Landroid/graphics/Bitmap;

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lcom/iLoong/launcher/cling/Cling;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02000b

    iget-object v3, p0, Lcom/iLoong/launcher/cling/Cling;->l:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/iLoong/launcher/cling/Cling;->g:Landroid/graphics/Bitmap;

    :cond_4
    iget-object v1, p0, Lcom/iLoong/launcher/cling/Cling;->h:Landroid/graphics/Bitmap;

    if-nez v1, :cond_5

    invoke-virtual {p0}, Lcom/iLoong/launcher/cling/Cling;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02000c

    iget-object v3, p0, Lcom/iLoong/launcher/cling/Cling;->l:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/iLoong/launcher/cling/Cling;->h:Landroid/graphics/Bitmap;

    :cond_5
    iget-object v1, p0, Lcom/iLoong/launcher/cling/Cling;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iget-object v2, p0, Lcom/iLoong/launcher/cling/Cling;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    iget-object v3, p0, Lcom/iLoong/launcher/cling/Cling;->m:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/iLoong/launcher/cling/Cling;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/iLoong/launcher/cling/Cling;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v3, v10, v10, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v3, p0, Lcom/iLoong/launcher/cling/Cling;->n:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/iLoong/launcher/cling/Cling;->c:[I

    aget v4, v4, v10

    iget-object v5, p0, Lcom/iLoong/launcher/cling/Cling;->c:[I

    aget v5, v5, v9

    sub-int/2addr v4, v5

    int-to-float v4, v4

    const/high16 v5, 0x42c6

    sget v6, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->mScreenScale:F

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    float-to-int v4, v4

    iget-object v5, p0, Lcom/iLoong/launcher/cling/Cling;->c:[I

    aget v5, v5, v11

    iget-object v6, p0, Lcom/iLoong/launcher/cling/Cling;->c:[I

    aget v6, v6, v9

    sub-int/2addr v5, v6

    int-to-float v5, v5

    const/high16 v6, 0x4280

    sget v7, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->mScreenScale:F

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    float-to-int v5, v5

    iget-object v6, p0, Lcom/iLoong/launcher/cling/Cling;->c:[I

    aget v6, v6, v10

    iget-object v7, p0, Lcom/iLoong/launcher/cling/Cling;->c:[I

    aget v7, v7, v9

    sub-int/2addr v6, v7

    int-to-float v6, v6

    const/high16 v7, 0x42c6

    sget v8, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->mScreenScale:F

    mul-float/2addr v7, v8

    sub-float/2addr v6, v7

    int-to-float v1, v1

    add-float/2addr v1, v6

    float-to-int v1, v1

    iget-object v6, p0, Lcom/iLoong/launcher/cling/Cling;->c:[I

    aget v6, v6, v11

    iget-object v7, p0, Lcom/iLoong/launcher/cling/Cling;->c:[I

    aget v7, v7, v9

    sub-int/2addr v6, v7

    int-to-float v6, v6

    const/high16 v7, 0x4280

    sget v8, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->mScreenScale:F

    mul-float/2addr v7, v8

    sub-float/2addr v6, v7

    int-to-float v2, v2

    add-float/2addr v2, v6

    float-to-int v2, v2

    invoke-virtual {v3, v4, v5, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v1, p0, Lcom/iLoong/launcher/cling/Cling;->g:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/iLoong/launcher/cling/Cling;->m:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/iLoong/launcher/cling/Cling;->n:Landroid/graphics/Rect;

    invoke-virtual {p1, v1, v2, v3, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/iLoong/launcher/cling/Cling;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iget-object v2, p0, Lcom/iLoong/launcher/cling/Cling;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iget-object v2, p0, Lcom/iLoong/launcher/cling/Cling;->o:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/iLoong/launcher/cling/Cling;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/iLoong/launcher/cling/Cling;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v2, v10, v10, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v2, p0, Lcom/iLoong/launcher/cling/Cling;->p:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/iLoong/launcher/cling/Cling;->c:[I

    aget v3, v3, v10

    iget-object v4, p0, Lcom/iLoong/launcher/cling/Cling;->c:[I

    aget v4, v4, v9

    sub-int/2addr v3, v4

    int-to-float v3, v3

    const/high16 v4, 0x4244

    sget v5, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->mScreenScale:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-int v3, v3

    iget-object v4, p0, Lcom/iLoong/launcher/cling/Cling;->c:[I

    aget v4, v4, v11

    iget-object v5, p0, Lcom/iLoong/launcher/cling/Cling;->c:[I

    aget v5, v5, v9

    sub-int/2addr v4, v5

    int-to-float v4, v4

    const/high16 v5, 0x4280

    sget v6, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->mScreenScale:F

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    float-to-int v4, v4

    iget-object v5, p0, Lcom/iLoong/launcher/cling/Cling;->c:[I

    aget v5, v5, v10

    iget-object v6, p0, Lcom/iLoong/launcher/cling/Cling;->c:[I

    aget v6, v6, v9

    sub-int/2addr v5, v6

    int-to-float v5, v5

    const/high16 v6, 0x4244

    sget v7, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->mScreenScale:F

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    int-to-float v1, v1

    add-float/2addr v1, v5

    float-to-int v1, v1

    iget-object v5, p0, Lcom/iLoong/launcher/cling/Cling;->c:[I

    aget v5, v5, v11

    iget-object v6, p0, Lcom/iLoong/launcher/cling/Cling;->c:[I

    aget v6, v6, v9

    sub-int/2addr v5, v6

    int-to-float v5, v5

    const/high16 v6, 0x4280

    sget v7, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->mScreenScale:F

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    int-to-float v0, v0

    add-float/2addr v0, v5

    float-to-int v0, v0

    invoke-virtual {v2, v3, v4, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/iLoong/launcher/cling/Cling;->h:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/iLoong/launcher/cling/Cling;->o:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/iLoong/launcher/cling/Cling;->p:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v1, v2, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    :cond_6
    iget-object v1, p0, Lcom/iLoong/launcher/cling/Cling;->a:Ljava/lang/String;

    sget-object v2, Lcom/iLoong/launcher/cling/i;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/iLoong/launcher/cling/Cling;->c:[I

    aget v1, v1, v10

    iget-object v2, p0, Lcom/iLoong/launcher/cling/Cling;->c:[I

    aget v2, v2, v12

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/iLoong/launcher/cling/Cling;->c:[I

    aget v2, v2, v11

    int-to-float v2, v2

    iget-object v3, p0, Lcom/iLoong/launcher/cling/Cling;->c:[I

    aget v3, v3, v9

    int-to-float v3, v3

    iget-object v4, p0, Lcom/iLoong/launcher/cling/Cling;->q:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/iLoong/launcher/cling/Cling;->c:[I

    aget v1, v1, v10

    iget-object v2, p0, Lcom/iLoong/launcher/cling/Cling;->c:[I

    aget v2, v2, v12

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/iLoong/launcher/cling/Cling;->c:[I

    aget v2, v2, v11

    int-to-float v2, v2

    iget-object v3, p0, Lcom/iLoong/launcher/cling/Cling;->c:[I

    aget v3, v3, v9

    int-to-float v3, v3

    iget-object v4, p0, Lcom/iLoong/launcher/cling/Cling;->r:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/iLoong/launcher/cling/Cling;->c:[I

    aget v1, v1, v10

    iget-object v2, p0, Lcom/iLoong/launcher/cling/Cling;->c:[I

    aget v2, v2, v12

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/iLoong/launcher/cling/Cling;->c:[I

    aget v2, v2, v11

    int-to-float v2, v2

    iget-object v3, p0, Lcom/iLoong/launcher/cling/Cling;->c:[I

    aget v3, v3, v9

    int-to-float v3, v3

    iget-object v4, p0, Lcom/iLoong/launcher/cling/Cling;->q:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/iLoong/launcher/cling/Cling;->c:[I

    aget v1, v1, v10

    iget-object v2, p0, Lcom/iLoong/launcher/cling/Cling;->c:[I

    aget v2, v2, v12

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/iLoong/launcher/cling/Cling;->c:[I

    aget v2, v2, v11

    int-to-float v2, v2

    iget-object v3, p0, Lcom/iLoong/launcher/cling/Cling;->c:[I

    aget v3, v3, v9

    int-to-float v3, v3

    iget-object v4, p0, Lcom/iLoong/launcher/cling/Cling;->r:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/iLoong/launcher/cling/Cling;->j:Landroid/graphics/Bitmap;

    if-nez v1, :cond_7

    invoke-virtual {p0}, Lcom/iLoong/launcher/cling/Cling;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02000d

    iget-object v3, p0, Lcom/iLoong/launcher/cling/Cling;->l:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/iLoong/launcher/cling/Cling;->j:Landroid/graphics/Bitmap;

    :cond_7
    iget-object v1, p0, Lcom/iLoong/launcher/cling/Cling;->k:Landroid/graphics/Bitmap;

    if-nez v1, :cond_8

    invoke-virtual {p0}, Lcom/iLoong/launcher/cling/Cling;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02000e

    iget-object v3, p0, Lcom/iLoong/launcher/cling/Cling;->l:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/iLoong/launcher/cling/Cling;->k:Landroid/graphics/Bitmap;

    :cond_8
    iget-object v1, p0, Lcom/iLoong/launcher/cling/Cling;->j:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iget-object v2, p0, Lcom/iLoong/launcher/cling/Cling;->j:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    iget-object v3, p0, Lcom/iLoong/launcher/cling/Cling;->m:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/iLoong/launcher/cling/Cling;->j:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/iLoong/launcher/cling/Cling;->j:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v3, v10, v10, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v3, p0, Lcom/iLoong/launcher/cling/Cling;->n:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/iLoong/launcher/cling/Cling;->c:[I

    aget v4, v4, v10

    iget-object v5, p0, Lcom/iLoong/launcher/cling/Cling;->c:[I

    aget v5, v5, v9

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/iLoong/launcher/cling/Cling;->j:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/iLoong/launcher/cling/Cling;->c:[I

    aget v5, v5, v11

    iget-object v6, p0, Lcom/iLoong/launcher/cling/Cling;->c:[I

    aget v6, v6, v9

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/iLoong/launcher/cling/Cling;->c:[I

    aget v6, v6, v10

    iget-object v7, p0, Lcom/iLoong/launcher/cling/Cling;->c:[I

    aget v7, v7, v9

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/iLoong/launcher/cling/Cling;->j:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    sub-int/2addr v6, v7

    add-int/2addr v6, v1

    iget-object v7, p0, Lcom/iLoong/launcher/cling/Cling;->c:[I

    aget v7, v7, v11

    iget-object v8, p0, Lcom/iLoong/launcher/cling/Cling;->c:[I

    aget v8, v8, v9

    sub-int/2addr v7, v8

    add-int/2addr v7, v2

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v3, p0, Lcom/iLoong/launcher/cling/Cling;->j:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/iLoong/launcher/cling/Cling;->m:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/iLoong/launcher/cling/Cling;->n:Landroid/graphics/Rect;

    invoke-virtual {p1, v3, v4, v5, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget-object v3, p0, Lcom/iLoong/launcher/cling/Cling;->n:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/iLoong/launcher/cling/Cling;->c:[I

    aget v4, v4, v10

    iget-object v5, p0, Lcom/iLoong/launcher/cling/Cling;->c:[I

    aget v5, v5, v9

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/iLoong/launcher/cling/Cling;->c:[I

    aget v5, v5, v12

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/iLoong/launcher/cling/Cling;->j:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/iLoong/launcher/cling/Cling;->c:[I

    aget v5, v5, v11

    iget-object v6, p0, Lcom/iLoong/launcher/cling/Cling;->c:[I

    aget v6, v6, v9

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/iLoong/launcher/cling/Cling;->c:[I

    aget v6, v6, v10

    iget-object v7, p0, Lcom/iLoong/launcher/cling/Cling;->c:[I

    aget v7, v7, v9

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/iLoong/launcher/cling/Cling;->c:[I

    aget v7, v7, v12

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/iLoong/launcher/cling/Cling;->j:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    sub-int/2addr v6, v7

    add-int/2addr v1, v6

    iget-object v6, p0, Lcom/iLoong/launcher/cling/Cling;->c:[I

    aget v6, v6, v11

    iget-object v7, p0, Lcom/iLoong/launcher/cling/Cling;->c:[I

    aget v7, v7, v9

    sub-int/2addr v6, v7

    add-int/2addr v2, v6

    invoke-virtual {v3, v4, v5, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v1, p0, Lcom/iLoong/launcher/cling/Cling;->j:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/iLoong/launcher/cling/Cling;->m:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/iLoong/launcher/cling/Cling;->n:Landroid/graphics/Rect;

    invoke-virtual {p1, v1, v2, v3, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/iLoong/launcher/cling/Cling;->k:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iget-object v2, p0, Lcom/iLoong/launcher/cling/Cling;->k:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iget-object v2, p0, Lcom/iLoong/launcher/cling/Cling;->o:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/iLoong/launcher/cling/Cling;->k:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/iLoong/launcher/cling/Cling;->k:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v2, v10, v10, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v2, p0, Lcom/iLoong/launcher/cling/Cling;->p:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/iLoong/launcher/cling/Cling;->c:[I

    aget v3, v3, v10

    iget-object v4, p0, Lcom/iLoong/launcher/cling/Cling;->c:[I

    aget v4, v4, v9

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/iLoong/launcher/cling/Cling;->c:[I

    aget v4, v4, v12

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    int-to-float v3, v3

    const/high16 v4, 0x430c

    sget v5, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->mScreenScale:F

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    float-to-int v3, v3

    iget-object v4, p0, Lcom/iLoong/launcher/cling/Cling;->c:[I

    aget v4, v4, v11

    iget-object v5, p0, Lcom/iLoong/launcher/cling/Cling;->c:[I

    aget v5, v5, v9

    sub-int/2addr v4, v5

    int-to-float v4, v4

    const/high16 v5, 0x41e8

    sget v6, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->mScreenScale:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-int v4, v4

    iget-object v5, p0, Lcom/iLoong/launcher/cling/Cling;->c:[I

    aget v5, v5, v10

    iget-object v6, p0, Lcom/iLoong/launcher/cling/Cling;->c:[I

    aget v6, v6, v9

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/iLoong/launcher/cling/Cling;->c:[I

    aget v6, v6, v12

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    int-to-float v5, v5

    const/high16 v6, 0x430c

    sget v7, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->mScreenScale:F

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    int-to-float v1, v1

    add-float/2addr v1, v5

    float-to-int v1, v1

    iget-object v5, p0, Lcom/iLoong/launcher/cling/Cling;->c:[I

    aget v5, v5, v11

    iget-object v6, p0, Lcom/iLoong/launcher/cling/Cling;->c:[I

    aget v6, v6, v9

    sub-int/2addr v5, v6

    int-to-float v5, v5

    const/high16 v6, 0x41e8

    sget v7, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->mScreenScale:F

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    int-to-float v0, v0

    add-float/2addr v0, v5

    float-to-int v0, v0

    invoke-virtual {v2, v3, v4, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/iLoong/launcher/cling/Cling;->k:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/iLoong/launcher/cling/Cling;->o:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/iLoong/launcher/cling/Cling;->p:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v1, v2, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    :cond_9
    iget-object v1, p0, Lcom/iLoong/launcher/cling/Cling;->a:Ljava/lang/String;

    sget-object v2, Lcom/iLoong/launcher/cling/i;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/iLoong/launcher/cling/Cling;->i:Landroid/graphics/Bitmap;

    if-nez v1, :cond_a

    invoke-virtual {p0}, Lcom/iLoong/launcher/cling/Cling;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020009

    iget-object v3, p0, Lcom/iLoong/launcher/cling/Cling;->l:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/iLoong/launcher/cling/Cling;->i:Landroid/graphics/Bitmap;

    :cond_a
    iget-object v1, p0, Lcom/iLoong/launcher/cling/Cling;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iget-object v2, p0, Lcom/iLoong/launcher/cling/Cling;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iget-object v2, p0, Lcom/iLoong/launcher/cling/Cling;->m:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/iLoong/launcher/cling/Cling;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/iLoong/launcher/cling/Cling;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v2, v10, v10, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v2, p0, Lcom/iLoong/launcher/cling/Cling;->n:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/iLoong/launcher/cling/Cling;->c:[I

    aget v3, v3, v10

    iget-object v4, p0, Lcom/iLoong/launcher/cling/Cling;->c:[I

    aget v4, v4, v9

    sub-int/2addr v3, v4

    int-to-float v3, v3

    const/high16 v4, 0x41a8

    sget v5, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->mScreenScale:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-int v3, v3

    iget-object v4, p0, Lcom/iLoong/launcher/cling/Cling;->c:[I

    aget v4, v4, v11

    iget-object v5, p0, Lcom/iLoong/launcher/cling/Cling;->c:[I

    aget v5, v5, v9

    sub-int/2addr v4, v5

    int-to-float v4, v4

    const/high16 v5, 0x42d2

    sget v6, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->mScreenScale:F

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    float-to-int v4, v4

    iget-object v5, p0, Lcom/iLoong/launcher/cling/Cling;->c:[I

    aget v5, v5, v10

    iget-object v6, p0, Lcom/iLoong/launcher/cling/Cling;->c:[I

    aget v6, v6, v9

    sub-int/2addr v5, v6

    int-to-float v5, v5

    const/high16 v6, 0x41a8

    sget v7, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->mScreenScale:F

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    int-to-float v1, v1

    add-float/2addr v1, v5

    float-to-int v1, v1

    iget-object v5, p0, Lcom/iLoong/launcher/cling/Cling;->c:[I

    aget v5, v5, v11

    iget-object v6, p0, Lcom/iLoong/launcher/cling/Cling;->c:[I

    aget v6, v6, v9

    sub-int/2addr v5, v6

    int-to-float v5, v5

    const/high16 v6, 0x42d2

    sget v7, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->mScreenScale:F

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    int-to-float v0, v0

    add-float/2addr v0, v5

    float-to-int v0, v0

    invoke-virtual {v2, v3, v4, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/iLoong/launcher/cling/Cling;->i:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/iLoong/launcher/cling/Cling;->m:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/iLoong/launcher/cling/Cling;->n:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v1, v2, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setPosition([I)V
    .locals 0

    iput-object p1, p0, Lcom/iLoong/launcher/cling/Cling;->c:[I

    return-void
.end method
