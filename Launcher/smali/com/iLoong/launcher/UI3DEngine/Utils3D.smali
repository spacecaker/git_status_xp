.class public Lcom/iLoong/launcher/UI3DEngine/Utils3D;
.super Ljava/lang/Object;


# static fields
.field static a:Lcom/badlogic/gdx/math/Vector2;

.field static b:Ljava/lang/Object;

.field static c:[I

.field static d:[B

.field static e:F

.field private static f:I

.field private static g:I

.field public static realHeight:I

.field public static realWidth:I

.field public static statusBarHeight:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    const/high16 v1, 0x3f80

    invoke-direct {v0, v3, v1}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    sput-object v0, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->a:Lcom/badlogic/gdx/math/Vector2;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->b:Ljava/lang/Object;

    sput v2, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->f:I

    sput v2, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->g:I

    sput v2, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->statusBarHeight:I

    sput v3, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->e:F

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetBmpFromImageName(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3

    if-nez p0, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Lcom/iLoong/launcher/theme/i;->c()Lcom/iLoong/launcher/theme/i;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/iLoong/launcher/theme/i;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    sget-object v2, Lcom/iLoong/launcher/desktop/iLoongApplication;->b:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/iLoong/launcher/b/c;->a(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0
.end method

.method public static IconToPixmap3D(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, p3, v0}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->IconToPixmap3D(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static IconToPixmap3D(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;
    .locals 7

    sget v4, Lcom/iLoong/launcher/Desktop3D/at;->c:I

    sget v5, Lcom/iLoong/launcher/Desktop3D/at;->d:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v6, p4

    invoke-static/range {v0 .. v6}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->titleToBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static a(FF)Z
    .locals 6

    const/4 v0, 0x0

    const-wide/16 v4, 0x0

    const/4 v1, 0x1

    float-to-double v2, p0

    cmpg-double v2, v2, v4

    if-gez v2, :cond_2

    div-float v2, p1, p0

    sget-object v3, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->a:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    cmpl-float v3, v2, v3

    if-lez v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v0, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->a:Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    cmpl-float v0, v2, v0

    if-lez v0, :cond_4

    sget-object v0, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->a:Lcom/badlogic/gdx/math/Vector2;

    iput v2, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    move v0, v1

    goto :goto_0

    :cond_2
    float-to-double v2, p0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_3

    div-float v2, p1, p0

    sget-object v3, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->a:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    cmpg-float v3, v2, v3

    if-ltz v3, :cond_0

    sget-object v0, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->a:Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    cmpg-float v0, v2, v0

    if-gez v0, :cond_4

    sget-object v0, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->a:Lcom/badlogic/gdx/math/Vector2;

    iput v2, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    move v0, v1

    goto :goto_0

    :cond_3
    float-to-double v2, p1

    cmpg-double v2, v2, v4

    if-ltz v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public static bmp2Array(Landroid/graphics/Bitmap;)[B
    .locals 3

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public static bmp2Pixmap(Landroid/graphics/Bitmap;)Lcom/badlogic/gdx/graphics/Pixmap;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->bmp2Pixmap(Landroid/graphics/Bitmap;Z)Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized bmp2Pixmap(Landroid/graphics/Bitmap;Z)Lcom/badlogic/gdx/graphics/Pixmap;
    .locals 10

    const-class v9, Lcom/iLoong/launcher/UI3DEngine/Utils3D;

    monitor-enter v9

    :try_start_0
    sget-object v0, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->c:[I

    if-nez v0, :cond_0

    sget v0, Lcom/iLoong/launcher/Desktop3D/at;->c:I

    sget v1, Lcom/iLoong/launcher/Desktop3D/at;->d:I

    mul-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x40

    new-array v0, v0, [I

    sput-object v0, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->c:[I

    sget v0, Lcom/iLoong/launcher/Desktop3D/at;->c:I

    sget v1, Lcom/iLoong/launcher/Desktop3D/at;->d:I

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x4

    add-int/lit16 v0, v0, 0x100

    new-array v0, v0, [B

    sput-object v0, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->d:[B

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    sget v0, Lcom/iLoong/launcher/Desktop3D/at;->c:I

    if-ne v3, v0, :cond_3

    sget v0, Lcom/iLoong/launcher/Desktop3D/at;->d:I

    if-ne v7, v0, :cond_3

    sget-object v1, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->c:[I

    sget-object v0, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->d:[B

    move-object v8, v0

    :goto_0
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    invoke-static {v3, v7, v1, v8}, Lcom/iLoong/launcher/SetupMenu/cut;->bmp(II[I[B)I

    move-result v0

    new-instance v1, Lcom/badlogic/gdx/graphics/Pixmap;

    const/4 v2, 0x0

    invoke-direct {v1, v8, v2, v0}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>([BII)V

    sget-object v0, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->d:[B

    if-eq v8, v0, :cond_1

    const/4 v0, 0x0

    check-cast v0, [B

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit v9

    return-object v1

    :cond_3
    mul-int v0, v3, v7

    add-int/lit8 v0, v0, 0x40

    :try_start_1
    new-array v1, v0, [I

    mul-int v0, v3, v7

    mul-int/lit8 v0, v0, 0x4

    add-int/lit16 v0, v0, 0x100

    new-array v0, v0, [B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v8, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v9

    throw v0
.end method

.method public static calibration()V
    .locals 3

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    sput v0, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->f:I

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getStatusBarHeight()I

    move-result v0

    sub-int v0, v2, v0

    sput v0, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->g:I

    sget v0, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->f:I

    sput v0, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->realWidth:I

    sget v0, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->g:I

    sput v0, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->realHeight:I

    return-void
.end method

.method public static changeTextureRegion(Lcom/iLoong/launcher/UI3DEngine/View3D;FZ)V
    .locals 5

    const/high16 v4, 0x4000

    instance-of v0, p0, Lcom/iLoong/launcher/Desktop3D/aj;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getIconBmpHeight()F

    move-result v0

    sget v1, Lcom/iLoong/launcher/Desktop3D/at;->d:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    const-string v1, "title"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "iconHeight,iconBmp="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getIconBmpHeight()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->height:F

    sget v2, Lcom/iLoong/launcher/Desktop3D/at;->d:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-nez v1, :cond_2

    iget v1, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->height:F

    cmpl-float v1, p1, v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV()F

    move-result v1

    iget-object v2, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV2()F

    move-result v2

    iget-object v3, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV()F

    move-result v3

    sub-float/2addr v2, v3

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->setV2(F)V

    :cond_0
    :goto_0
    sget v0, Lcom/iLoong/launcher/Desktop3D/at;->c:I

    int-to-float v0, v0

    invoke-virtual {p0, v0, p1}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setSize(FF)V

    iget v0, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->width:F

    div-float/2addr v0, v4

    iget v1, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->height:F

    div-float/2addr v1, v4

    invoke-virtual {p0, v0, v1}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setOrigin(FF)V

    sget v0, Lcom/iLoong/launcher/Desktop3D/at;->bI:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    :cond_1
    return-void

    :cond_2
    iget v1, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->height:F

    sget v2, Lcom/iLoong/launcher/Desktop3D/at;->d:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->height:F

    cmpl-float v1, p1, v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV()F

    move-result v1

    iget-object v2, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV2()F

    move-result v2

    iget-object v3, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV()F

    move-result v3

    sub-float/2addr v2, v3

    div-float v0, v2, v0

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->setV2(F)V

    goto :goto_0
.end method

.method public static changeTextureRegion(Ljava/util/ArrayList;FZ)V
    .locals 3

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/UI3DEngine/View3D;

    invoke-static {v0, p1, p2}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->changeTextureRegion(Lcom/iLoong/launcher/UI3DEngine/View3D;FZ)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public static changeTextureRegionHeight(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;F)V
    .locals 3

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV()F

    move-result v0

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV2()F

    move-result v1

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV()F

    move-result v2

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->setV2(F)V

    return-void
.end method

.method public static createIconThumbnail(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;
    .locals 9

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3}, Landroid/graphics/Canvas;-><init>()V

    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    :try_start_0
    instance-of v1, p0, Landroid/graphics/drawable/PaintDrawable;

    if-eqz v1, :cond_4

    move-object v0, p0

    check-cast v0, Landroid/graphics/drawable/PaintDrawable;

    move-object v1, v0

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicWidth(I)V

    invoke-virtual {v1, p2}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicHeight(I)V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    if-lez v1, :cond_3

    if-lez v5, :cond_3

    if-lt p1, v1, :cond_1

    if-ge p2, v5, :cond_7

    :cond_1
    int-to-float v6, v1

    int-to-float v7, v5

    div-float/2addr v6, v7

    if-le v1, v5, :cond_5

    int-to-float v1, p1

    div-float/2addr v1, v6

    float-to-int p2, v1

    :cond_2
    :goto_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    const/4 v5, -0x1

    if-eq v1, v5, :cond_6

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :goto_2
    invoke-static {p1, p2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/4 v1, 0x0

    const/4 v6, 0x0

    add-int/lit8 v7, p1, 0x0

    add-int/lit8 v8, p2, 0x0

    invoke-virtual {p0, v1, v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    move-object v0, p0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object v1, v0

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    move-object v0, v2

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object v1, v0

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-object p0, v2

    :cond_3
    :goto_3
    return-object p0

    :cond_4
    :try_start_2
    instance-of v1, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_0

    move-object v0, p0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object v1, v0

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_4
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    :cond_5
    if-le v5, v1, :cond_2

    int-to-float v1, p2

    mul-float/2addr v1, v6

    float-to-int p1, v1

    goto :goto_1

    :cond_6
    :try_start_3
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_2

    :cond_7
    if-ge v1, p1, :cond_3

    if-ge v5, p2, :cond_3

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    sub-int v7, p1, v1

    div-int/lit8 v7, v7, 0x2

    sub-int v8, p2, v5

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v1, v7

    add-int/2addr v5, v8

    invoke-virtual {p0, v7, v8, v1, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    move-object v0, p0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object v1, v0

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    :try_start_4
    move-object v0, v2

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object v1, v0

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    move-object p0, v2

    goto :goto_3

    :catch_1
    move-exception v1

    move-object p0, v2

    goto :goto_4

    :catch_2
    move-exception v1

    move-object p0, v2

    goto :goto_4
.end method

.method public static dip2px(Landroid/content/Context;F)I
    .locals 5

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const-string v1, "dip2px"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "scale:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "original:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " now:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    mul-float v3, p1, v0

    const/high16 v4, 0x3f00

    add-float/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    mul-float/2addr v0, p1

    float-to-int v0, v0

    return v0
.end method

.method public static do_exec(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/iLoong/launcher/UI3DEngine/o;

    invoke-direct {v0, p0}, Lcom/iLoong/launcher/UI3DEngine/o;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/iLoong/launcher/UI3DEngine/o;->start()V

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    sget-object v5, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->b:Ljava/lang/Object;

    monitor-enter v5

    move v3, v2

    :goto_0
    const/16 v0, 0xc

    if-lt v3, v0, :cond_0

    move v0, v2

    :goto_1
    :try_start_0
    monitor-exit v5

    return v0

    :cond_0
    const-string v0, "apk"

    const-string v6, "exe_lock wait"

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object v0, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->b:Ljava/lang/Object;

    const-wide/16 v6, 0x2710

    invoke-virtual {v0, v6, v7}, Ljava/lang/Object;->wait(J)V

    const-string v0, "apk"

    const-string v6, "exe_lock wait finish"

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :try_start_2
    invoke-virtual {v4, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    const-string v0, "apk"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "has install,do not wait:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move v0, v1

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :catch_1
    move-exception v0

    :try_start_4
    const-string v0, "apk"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "wait again:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0
.end method

.method public static declared-synchronized folderTitleToBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 23

    const-class v14, Lcom/iLoong/launcher/UI3DEngine/Utils3D;

    monitor-enter v14

    :try_start_0
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget v3, Lcom/iLoong/launcher/Desktop3D/at;->l:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    sget-boolean v3, Lcom/iLoong/launcher/Desktop3D/cb;->bg:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    :cond_0
    sget v3, Lcom/iLoong/launcher/b/c;->a:I

    int-to-float v6, v3

    sget v3, Lcom/iLoong/launcher/Desktop3D/at;->d:I

    int-to-float v7, v3

    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v15

    iget v3, v15, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v4, v15, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-float v0, v3

    move/from16 v16, v0

    sget-boolean v3, Lcom/iLoong/launcher/Desktop3D/cb;->aB:Z

    if-eqz v3, :cond_4

    const/4 v5, 0x0

    sget v3, Lcom/iLoong/launcher/Desktop3D/at;->d:I

    int-to-float v3, v3

    sub-float/2addr v3, v6

    sub-float/2addr v3, v5

    const/high16 v4, 0x4000

    mul-float v4, v4, v16

    sub-float/2addr v3, v4

    const/high16 v4, 0x4000

    div-float v4, v3, v4

    if-eqz p0, :cond_3

    sget v3, Lcom/iLoong/launcher/Desktop3D/at;->l:I

    int-to-float v3, v3

    move/from16 v0, p2

    int-to-float v8, v0

    move-object/from16 v0, p0

    invoke-static {v0, v3, v8}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->splitTitle(Ljava/lang/String;FF)[Ljava/lang/String;

    move-result-object v3

    move-object v13, v3

    move v3, v4

    move v4, v5

    :goto_0
    add-float/2addr v3, v4

    add-float v4, v6, v3

    sub-float v3, v7, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    if-eqz p1, :cond_f

    sub-float v3, v7, v4

    const/high16 v4, 0x4000

    div-float v4, v16, v4

    sub-float/2addr v3, v4

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    move v12, v3

    :goto_1
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p2

    invoke-static {v0, v12, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v17

    new-instance v18, Landroid/graphics/Canvas;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const-string v3, "title"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "folder:width,height="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    const/high16 v3, 0x4000

    div-float v3, v16, v3

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x4000

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    sput v3, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->e:F

    sget v3, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->e:F

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-gez v3, :cond_6

    sget-object v3, Lcom/iLoong/launcher/Desktop3D/aj;->n:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_1
    :goto_2
    const/4 v3, 0x0

    move v11, v3

    :goto_3
    array-length v3, v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v11, v3, :cond_7

    :cond_2
    monitor-exit v14

    return-object v17

    :cond_3
    const/4 v3, 0x0

    :try_start_1
    check-cast v3, [Ljava/lang/String;

    move-object v13, v3

    move v3, v4

    move v4, v5

    goto :goto_0

    :cond_4
    const/high16 v3, 0x4120

    div-float v5, v6, v3

    sget v3, Lcom/iLoong/launcher/Desktop3D/at;->d:I

    int-to-float v3, v3

    sub-float/2addr v3, v6

    sub-float/2addr v3, v5

    sub-float v3, v3, v16

    const/high16 v4, 0x4000

    div-float v4, v3, v4

    if-eqz p0, :cond_5

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p0, v3, v8

    move-object v13, v3

    move v3, v4

    move v4, v5

    goto/16 :goto_0

    :cond_5
    const/4 v3, 0x0

    check-cast v3, [Ljava/lang/String;

    move-object v13, v3

    move v3, v4

    move v4, v5

    goto/16 :goto_0

    :cond_6
    sget-object v3, Lcom/iLoong/launcher/Desktop3D/aj;->n:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    sget v5, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->e:F

    const/4 v6, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v2

    monitor-exit v14

    throw v2

    :cond_7
    :try_start_2
    aget-object v3, v13, v11

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    aget-object v3, v13, v11

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v19

    move/from16 v0, p2

    int-to-float v3, v0

    sub-float v3, v3, v19

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    sget v4, Lcom/iLoong/launcher/Desktop3D/at;->c:I

    int-to-float v4, v4

    cmpl-float v4, v19, v4

    if-lez v4, :cond_e

    if-eqz p1, :cond_a

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x4170

    div-float v9, v3, v4

    move/from16 v0, p2

    int-to-float v3, v0

    const/high16 v4, 0x4000

    mul-float/2addr v4, v9

    sub-float/2addr v3, v4

    cmpl-float v3, v19, v3

    if-lez v3, :cond_d

    aget-object v3, v13, v11

    const/4 v4, 0x0

    aget-object v5, v13, v11

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    move/from16 v0, p2

    int-to-float v7, v0

    const/high16 v8, 0x4000

    mul-float/2addr v8, v9

    sub-float/2addr v7, v8

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Paint;->breakText(Ljava/lang/CharSequence;IIZF[F)I

    move-result v3

    aget-object v4, v13, v11

    const/4 v5, 0x0

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v4, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v13, v11

    move v4, v9

    :goto_4
    iget v3, v15, Landroid/graphics/Paint$FontMetrics;->top:F

    neg-float v3, v3

    int-to-float v5, v11

    mul-float v5, v5, v16

    add-float/2addr v3, v5

    sget v5, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->e:F

    const/4 v6, 0x0

    cmpg-float v5, v5, v6

    if-gez v5, :cond_c

    sget v5, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->e:F

    const/high16 v6, 0x4000

    div-float/2addr v5, v6

    sub-float/2addr v3, v5

    move v10, v3

    :goto_5
    if-nez p1, :cond_8

    sget-boolean v3, Lcom/iLoong/launcher/Desktop3D/cb;->aY:Z

    if-nez v3, :cond_8

    const/high16 v3, -0x5600

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v3, 0x2000

    const/high16 v5, 0x3f80

    const/high16 v6, -0x4080

    const/4 v7, 0x0

    invoke-virtual {v2, v5, v6, v7, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    aget-object v5, v13, v11

    const/high16 v6, 0x3f80

    sub-float v6, v4, v6

    move-object/from16 v0, v18

    invoke-virtual {v0, v5, v6, v10, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const/high16 v5, 0x3f80

    const/4 v6, 0x0

    const/high16 v7, -0x4080

    invoke-virtual {v2, v5, v6, v7, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    aget-object v5, v13, v11

    const/high16 v6, 0x3f80

    sub-float v6, v10, v6

    move-object/from16 v0, v18

    invoke-virtual {v0, v5, v4, v6, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const/high16 v5, 0x3f80

    const/high16 v6, 0x3f80

    const/4 v7, 0x0

    invoke-virtual {v2, v5, v6, v7, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    aget-object v5, v13, v11

    const/high16 v6, 0x3f80

    add-float/2addr v6, v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v5, v6, v10, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const/high16 v5, 0x3f80

    const/4 v6, 0x0

    const/high16 v7, 0x3f80

    invoke-virtual {v2, v5, v6, v7, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    aget-object v3, v13, v11

    const/high16 v5, 0x3f80

    add-float/2addr v5, v10

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4, v5, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_8
    invoke-virtual {v2}, Landroid/graphics/Paint;->clearShadowLayer()V

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    aget-object v3, v13, v11

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4, v10, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    move/from16 v0, p2

    int-to-float v3, v0

    cmpl-float v3, v19, v3

    if-lez v3, :cond_9

    if-nez p1, :cond_9

    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v8, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    const/4 v3, 0x1

    invoke-virtual {v8, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const-string v3, "x"

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v19

    const/high16 v3, 0x437f

    div-float v20, v3, v19

    const/4 v3, 0x0

    move v9, v3

    :goto_6
    int-to-float v3, v9

    cmpg-float v3, v3, v19

    if-ltz v3, :cond_b

    :cond_9
    add-int/lit8 v3, v11, 0x1

    move v11, v3

    goto/16 :goto_3

    :cond_a
    const/4 v3, 0x0

    move v4, v3

    goto/16 :goto_4

    :cond_b
    int-to-float v3, v9

    mul-float v3, v3, v20

    float-to-int v3, v3

    invoke-virtual {v8, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    sub-int v3, p2, v9

    add-int/lit8 v3, v3, -0x1

    int-to-float v4, v3

    float-to-double v5, v10

    iget v3, v15, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v7, v15, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v3, v7

    float-to-double v0, v3

    move-wide/from16 v21, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v21

    sub-double v5, v5, v21

    double-to-float v5, v5

    sub-int v3, p2, v9

    int-to-float v6, v3

    int-to-float v7, v12

    move-object/from16 v3, v18

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/lit8 v3, v9, 0x1

    move v9, v3

    goto :goto_6

    :cond_c
    move v10, v3

    goto/16 :goto_5

    :cond_d
    move v4, v9

    goto/16 :goto_4

    :cond_e
    move v4, v3

    goto/16 :goto_4

    :cond_f
    move v12, v3

    goto/16 :goto_1
.end method

.method public static getDensity()F
    .locals 1

    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getDensity()F

    move-result v0

    return v0
.end method

.method public static getIconBmpHeight()F
    .locals 7

    const/4 v0, 0x0

    const/high16 v6, 0x4000

    sget v1, Lcom/iLoong/launcher/b/c;->b:I

    int-to-float v3, v1

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    sget v2, Lcom/iLoong/launcher/Desktop3D/at;->l:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v1

    iget v2, v1, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float v1, v2, v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-float v4, v1

    sget-boolean v1, Lcom/iLoong/launcher/Desktop3D/cb;->aB:Z

    if-eqz v1, :cond_0

    sget v1, Lcom/iLoong/launcher/Desktop3D/at;->d:I

    int-to-float v1, v1

    sub-float/2addr v1, v3

    sub-float/2addr v1, v0

    mul-float v2, v6, v4

    sub-float/2addr v1, v2

    div-float/2addr v1, v6

    move v2, v0

    :goto_0
    cmpg-float v5, v1, v0

    if-gez v5, :cond_2

    :goto_1
    sget-boolean v1, Lcom/iLoong/launcher/Desktop3D/cb;->aA:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/iLoong/launcher/Desktop3D/aj;->n:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    add-float/2addr v0, v3

    add-float/2addr v0, v2

    sget-object v1, Lcom/iLoong/launcher/Desktop3D/aj;->n:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, v4

    div-float/2addr v1, v6

    sub-float/2addr v0, v1

    :goto_2
    return v0

    :cond_0
    const/high16 v1, 0x4120

    div-float v2, v3, v1

    sget v1, Lcom/iLoong/launcher/Desktop3D/at;->d:I

    int-to-float v1, v1

    sub-float/2addr v1, v3

    sub-float/2addr v1, v2

    sub-float/2addr v1, v4

    div-float/2addr v1, v6

    goto :goto_0

    :cond_1
    add-float/2addr v0, v3

    add-float/2addr v0, v2

    goto :goto_2

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public static getRotDegrees(FFFF)F
    .locals 9

    const/high16 v8, 0x4334

    const/4 v7, 0x0

    sub-float v1, p0, p2

    sub-float v2, p1, p3

    cmpl-float v0, p0, p2

    if-nez v0, :cond_2

    sub-float v0, p1, p3

    cmpl-float v0, v0, v7

    if-lez v0, :cond_1

    const/high16 v0, 0x42b4

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/high16 v0, 0x4387

    goto :goto_0

    :cond_2
    div-float v0, v2, v1

    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->atan(D)D

    move-result-wide v3

    double-to-float v0, v3

    mul-float/2addr v0, v8

    float-to-double v3, v0

    const-wide v5, 0x400921fb54442d18L

    div-double/2addr v3, v5

    double-to-float v0, v3

    cmpl-float v3, v1, v7

    if-lez v3, :cond_3

    cmpl-float v3, v2, v7

    if-gtz v3, :cond_0

    :cond_3
    cmpg-float v3, v1, v7

    if-gez v3, :cond_4

    cmpl-float v3, v2, v7

    if-lez v3, :cond_4

    add-float/2addr v0, v8

    goto :goto_0

    :cond_4
    cmpg-float v3, v1, v7

    if-gez v3, :cond_5

    cmpg-float v3, v2, v7

    if-gez v3, :cond_5

    add-float/2addr v0, v8

    goto :goto_0

    :cond_5
    cmpl-float v1, v1, v7

    if-lez v1, :cond_0

    cmpg-float v1, v2, v7

    if-gez v1, :cond_0

    const/high16 v1, 0x43b4

    add-float/2addr v0, v1

    goto :goto_0
.end method

.method public static getScreenHeight()I
    .locals 2

    sget v0, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->g:I

    if-eqz v0, :cond_0

    sget v0, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->g:I

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getStatusBarHeight()I

    move-result v1

    sub-int/2addr v0, v1

    sput v0, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->g:I

    sget v0, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->g:I

    goto :goto_0
.end method

.method public static getScreenWidth()I
    .locals 1

    sget v0, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->f:I

    if-eqz v0, :cond_0

    sget v0, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->f:I

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v0, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->f:I

    sget v0, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->f:I

    goto :goto_0
.end method

.method public static getStatusBarHeight()I
    .locals 4

    sget v0, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->statusBarHeight:I

    if-eqz v0, :cond_0

    sget v0, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->statusBarHeight:I

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    :try_start_0
    const-string v1, "com.android.internal.R$dimen"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "status_bar_height"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->statusBarHeight:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    sget v0, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->statusBarHeight:I

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x1020002

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget v1, v0, Landroid/graphics/Rect;->top:I

    if-lez v1, :cond_1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sput v0, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->statusBarHeight:I

    goto :goto_1
.end method

.method public static getfolderTitleFontTopping()F
    .locals 2

    const/4 v0, 0x0

    sget-object v1, Lcom/iLoong/launcher/Desktop3D/aj;->n:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    sget v1, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->e:F

    cmpg-float v1, v1, v0

    if-gez v1, :cond_0

    sget v0, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->e:F

    neg-float v0, v0

    :cond_0
    return v0
.end method

.method public static isLowMemory()Z
    .locals 7

    const-wide/16 v5, 0x400

    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v0

    const-string v2, "activity"

    invoke-virtual {v0, v2}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    const-string v0, "MemoryInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "availMem:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, v1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    div-long/2addr v3, v5

    div-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",threshold"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, v1, Landroid/app/ActivityManager$MemoryInfo;->threshold:J

    div-long/2addr v3, v5

    div-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, v1, Landroid/app/ActivityManager$MemoryInfo;->lowMemory:Z

    return v0
.end method

.method public static lineInActor(Lcom/iLoong/launcher/UI3DEngine/View3D;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)Z
    .locals 11

    iget v0, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->x:F

    float-to-int v0, v0

    iget v1, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->y:F

    float-to-int v1, v1

    iget v2, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->x:F

    iget v3, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->width:F

    add-float/2addr v2, v3

    float-to-int v2, v2

    iget v3, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->y:F

    iget v4, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->height:F

    add-float/2addr v3, v4

    float-to-int v3, v3

    iget v4, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    float-to-int v4, v4

    iget v5, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    float-to-int v5, v5

    iget v6, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    float-to-int v6, v6

    iget v7, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    float-to-int v7, v7

    const/4 v8, 0x0

    const/high16 v9, 0x3f80

    sget-object v10, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->a:Lcom/badlogic/gdx/math/Vector2;

    iput v8, v10, Lcom/badlogic/gdx/math/Vector2;->x:F

    sget-object v8, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->a:Lcom/badlogic/gdx/math/Vector2;

    iput v9, v8, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-int/2addr v6, v4

    int-to-float v6, v6

    neg-float v8, v6

    sub-int v0, v4, v0

    int-to-float v0, v0

    invoke-static {v8, v0}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->a(FF)Z

    move-result v0

    if-eqz v0, :cond_2

    sub-int v0, v2, v4

    int-to-float v0, v0

    invoke-static {v6, v0}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->a(FF)Z

    move-result v0

    if-eqz v0, :cond_2

    sub-int v0, v7, v5

    int-to-float v0, v0

    neg-float v2, v0

    sub-int v1, v5, v1

    int-to-float v1, v1

    invoke-static {v2, v1}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->a(FF)Z

    move-result v1

    if-eqz v1, :cond_2

    sub-int v1, v3, v5

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->a(FF)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->a:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    float-to-double v1, v1

    const-wide/high16 v7, 0x3ff0

    cmpg-double v1, v1, v7

    if-gez v1, :cond_0

    int-to-float v1, v4

    sget-object v2, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->a:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float/2addr v2, v6

    add-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v1, v5

    sget-object v2, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->a:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    float-to-int v1, v1

    :cond_0
    sget-object v1, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->a:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    float-to-double v1, v1

    const-wide/16 v7, 0x0

    cmpl-double v1, v1, v7

    if-lez v1, :cond_1

    int-to-float v1, v4

    sget-object v2, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->a:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float/2addr v2, v6

    add-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v1, v5

    sget-object v2, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->a:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static overlapRectangles(Lcom/iLoong/launcher/UI3DEngine/View3D;Lcom/badlogic/gdx/math/Rectangle;)Z
    .locals 3

    iget v0, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v2, p1, Lcom/badlogic/gdx/math/Rectangle;->width:F

    add-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->x:F

    iget v1, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->width:F

    add-float/2addr v0, v1

    iget v1, p1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->y:F

    iget v1, p1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v2, p1, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->y:F

    iget v1, p0, Lcom/iLoong/launcher/UI3DEngine/View3D;->height:F

    add-float/2addr v0, v1

    iget v1, p1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static pointInRectangle(Lcom/badlogic/gdx/math/Rectangle;FF)Z
    .locals 2

    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    cmpg-float v0, v0, p1

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v1, p0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    add-float/2addr v0, v1

    cmpl-float v0, v0, p1

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    cmpg-float v0, v0, p2

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v1, p0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float/2addr v0, v1

    cmpl-float v0, v0, p2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static px2dip(Landroid/content/Context;F)I
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    div-float v0, p1, v0

    float-to-int v0, v0

    return v0
.end method

.method public static resetSize()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->f:I

    sput v0, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->g:I

    return-void
.end method

.method public static setLanguage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    const-string v0, "iLoongLauncher"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setLanguage:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, p1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    return-void
.end method

.method public static showMessage(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/iLoong/launcher/desktop/iLoongApplication;->b:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static showPidMemoryInfo(Landroid/content/Context;Ljava/lang/String;)I
    .locals 5

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    aput v0, v1, v2

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object v0

    aget-object v0, v0, v2

    const-string v1, "MemoryInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MemoryInfo:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "K"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " time:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v0

    return v0
.end method

.method public static showPidMemoryInfo(Ljava/lang/String;)I
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    aput v0, v1, v3

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v0

    const-string v2, "activity"

    invoke-virtual {v0, v2}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object v0

    aget-object v0, v0, v3

    const-string v1, "MemoryInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MemoryInfo:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":pss = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "K"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,uss:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateDirty()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v0

    return v0
.end method

.method public static showTimeFromStart(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static splitTitle(Ljava/lang/String;FF)[Ljava/lang/String;
    .locals 11

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v2, 0x1

    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {v4, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v1, v5, v9

    const-string v0, ""

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    cmpl-float v3, v3, p2

    if-lez v3, :cond_1

    const/4 v3, 0x0

    invoke-virtual {v4, v1, v2, p2, v3}, Landroid/graphics/Paint;->breakText(Ljava/lang/String;ZF[F)I

    move-result v3

    invoke-virtual {v1, v9, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-array v1, v10, [Ljava/lang/String;

    aput-object v3, v1, v9

    aput-object v0, v1, v2

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    const-string v3, " "

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    move-object v3, v1

    move v1, v2

    :goto_1
    array-length v7, v5

    if-lt v1, v7, :cond_3

    :cond_2
    :goto_2
    new-array v1, v10, [Ljava/lang/String;

    aput-object v3, v1, v9

    aput-object v0, v1, v2

    move-object v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v7

    aget-object v8, v5, v1

    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v8

    add-float/2addr v7, v8

    add-float/2addr v7, v6

    cmpg-float v7, v7, p2

    if-gtz v7, :cond_4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v7, v5, v1

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_2

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method public static sync_do_exec(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-string v1, "\n"

    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :goto_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_1
    return-object v0

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    :goto_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method public static declared-synchronized titleToBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 8

    const-class v7, Lcom/iLoong/launcher/UI3DEngine/Utils3D;

    monitor-enter v7

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    :try_start_0
    invoke-static/range {v0 .. v6}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->titleToBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v7

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0
.end method

.method public static declared-synchronized titleToBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    .locals 23

    const-class v12, Lcom/iLoong/launcher/UI3DEngine/Utils3D;

    monitor-enter v12

    :try_start_0
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p4

    move/from16 v1, p5

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v13

    new-instance v14, Landroid/graphics/Canvas;

    invoke-direct {v14, v13}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    sget v2, Lcom/iLoong/launcher/b/c;->b:I

    int-to-float v8, v2

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget v3, Lcom/iLoong/launcher/Desktop3D/at;->l:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    sget-boolean v3, Lcom/iLoong/launcher/Desktop3D/cb;->bg:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    :cond_0
    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v15

    iget v3, v15, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v4, v15, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-float v0, v3

    move/from16 v16, v0

    const/4 v6, 0x0

    sget v3, Lcom/iLoong/launcher/b/c;->b:I

    sub-int v3, p4, v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v5, v3

    sget-boolean v3, Lcom/iLoong/launcher/Desktop3D/cb;->aB:Z

    if-eqz v3, :cond_9

    const/4 v7, 0x0

    sget v3, Lcom/iLoong/launcher/Desktop3D/at;->d:I

    int-to-float v3, v3

    sub-float/2addr v3, v8

    sub-float/2addr v3, v7

    const/high16 v4, 0x4000

    mul-float v4, v4, v16

    sub-float/2addr v3, v4

    const/high16 v4, 0x4000

    div-float v4, v3, v4

    if-eqz p1, :cond_8

    sget v3, Lcom/iLoong/launcher/Desktop3D/at;->l:I

    int-to-float v3, v3

    move/from16 v0, p4

    int-to-float v9, v0

    move-object/from16 v0, p1

    invoke-static {v0, v3, v9}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->splitTitle(Ljava/lang/String;FF)[Ljava/lang/String;

    move-result-object v3

    move-object v11, v3

    move v3, v7

    :goto_0
    add-float/2addr v3, v4

    add-float v17, v8, v3

    if-eqz p3, :cond_1

    const/4 v3, 0x0

    const/high16 v7, 0x4000

    div-float v7, v16, v7

    add-float v7, v7, v17

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    sub-float/2addr v7, v8

    const/4 v8, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v14, v0, v3, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_1
    if-eqz p2, :cond_c

    sget v3, Lcom/iLoong/launcher/Desktop3D/cb;->ao:I

    sget v7, Lcom/iLoong/launcher/Desktop3D/at;->c:I

    if-eq v3, v7, :cond_b

    sget v3, Lcom/iLoong/launcher/Desktop3D/cb;->ao:I

    sget v7, Lcom/iLoong/launcher/Desktop3D/at;->d:I

    if-eq v3, v7, :cond_b

    if-eqz p0, :cond_16

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sget v6, Lcom/iLoong/launcher/b/c;->b:I

    sub-int/2addr v3, v6

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float v3, v4, v3

    const/4 v6, 0x0

    cmpg-float v6, v3, v6

    if-gez v6, :cond_2

    const/4 v3, 0x0

    :cond_2
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    sub-int v6, p4, v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    const/4 v7, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v14, v0, v6, v3, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :goto_2
    if-eqz p0, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v6

    if-nez v6, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    sget v7, Lcom/iLoong/launcher/b/c;->b:I

    if-eq v6, v7, :cond_3

    if-eqz p2, :cond_d

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sget v6, Lcom/iLoong/launcher/b/c;->b:I

    sub-int/2addr v4, v6

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float v4, v3, v4

    :cond_3
    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sget v6, Lcom/iLoong/launcher/b/c;->a:I

    if-eq v3, v6, :cond_15

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sget v6, Lcom/iLoong/launcher/b/c;->a:I

    sub-int/2addr v3, v6

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float v3, v5, v3

    :goto_4
    const/4 v5, 0x0

    cmpg-float v5, v4, v5

    if-gez v5, :cond_4

    const/4 v4, 0x0

    :cond_4
    const/4 v5, 0x0

    cmpg-float v5, v3, v5

    if-gez v5, :cond_5

    const/4 v3, 0x0

    :cond_5
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v14, v0, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    if-eqz p6, :cond_6

    sget-object v3, Lcom/iLoong/launcher/app/ak;->a:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    if-eq v0, v3, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_6
    if-eqz v11, :cond_7

    array-length v3, v11

    if-lez v3, :cond_7

    const/4 v3, 0x0

    move v10, v3

    :goto_5
    array-length v3, v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v10, v3, :cond_e

    :cond_7
    monitor-exit v12

    return-object v13

    :cond_8
    const/4 v3, 0x0

    :try_start_1
    check-cast v3, [Ljava/lang/String;

    move-object v11, v3

    move v3, v7

    goto/16 :goto_0

    :cond_9
    const/high16 v3, 0x4120

    div-float v7, v8, v3

    sget v3, Lcom/iLoong/launcher/Desktop3D/at;->d:I

    int-to-float v3, v3

    sub-float/2addr v3, v8

    sub-float/2addr v3, v7

    sub-float v3, v3, v16

    const/high16 v4, 0x4000

    div-float v4, v3, v4

    if-eqz p1, :cond_a

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object p1, v3, v9

    move-object v11, v3

    move v3, v7

    goto/16 :goto_0

    :cond_a
    const/4 v3, 0x0

    check-cast v3, [Ljava/lang/String;

    move-object v11, v3

    move v3, v7

    goto/16 :goto_0

    :cond_b
    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v14, v0, v3, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_c
    move v3, v6

    goto/16 :goto_2

    :cond_d
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sget v6, Lcom/iLoong/launcher/b/c;->b:I

    sub-int/2addr v3, v6

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v4, v3

    goto :goto_3

    :cond_e
    aget-object v3, v11, v10

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    aget-object v3, v11, v10

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v18

    move/from16 v0, p4

    int-to-float v3, v0

    sub-float v3, v3, v18

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    sget v4, Lcom/iLoong/launcher/Desktop3D/at;->c:I

    int-to-float v4, v4

    cmpl-float v4, v18, v4

    if-lez v4, :cond_f

    if-eqz p3, :cond_12

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x4120

    div-float v9, v3, v4

    move/from16 v0, p4

    int-to-float v3, v0

    const/high16 v4, 0x4000

    mul-float/2addr v4, v9

    sub-float/2addr v3, v4

    cmpl-float v3, v18, v3

    if-lez v3, :cond_14

    aget-object v3, v11, v10

    const/4 v4, 0x0

    aget-object v5, v11, v10

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    move/from16 v0, p4

    int-to-float v7, v0

    const/high16 v8, 0x4000

    mul-float/2addr v8, v9

    sub-float/2addr v7, v8

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Paint;->breakText(Ljava/lang/CharSequence;IIZF[F)I

    move-result v3

    aget-object v4, v11, v10

    const/4 v5, 0x0

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v4, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v11, v10

    move v3, v9

    :cond_f
    :goto_6
    iget v4, v15, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float v4, v17, v4

    int-to-float v5, v10

    mul-float v5, v5, v16

    add-float v19, v4, v5

    if-nez p3, :cond_10

    sget-boolean v4, Lcom/iLoong/launcher/Desktop3D/cb;->aY:Z

    if-nez v4, :cond_10

    const/high16 v4, -0x5600

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v4, 0x2000

    const/high16 v5, 0x3f80

    const/high16 v6, -0x4080

    const/4 v7, 0x0

    invoke-virtual {v2, v5, v6, v7, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    aget-object v5, v11, v10

    const/high16 v6, 0x3f80

    sub-float v6, v3, v6

    move/from16 v0, v19

    invoke-virtual {v14, v5, v6, v0, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const/high16 v5, 0x3f80

    const/4 v6, 0x0

    const/high16 v7, -0x4080

    invoke-virtual {v2, v5, v6, v7, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    aget-object v5, v11, v10

    const/high16 v6, 0x3f80

    sub-float v6, v19, v6

    invoke-virtual {v14, v5, v3, v6, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const/high16 v5, 0x3f80

    const/high16 v6, 0x3f80

    const/4 v7, 0x0

    invoke-virtual {v2, v5, v6, v7, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    aget-object v5, v11, v10

    const/high16 v6, 0x3f80

    add-float/2addr v6, v3

    move/from16 v0, v19

    invoke-virtual {v14, v5, v6, v0, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const/high16 v5, 0x3f80

    const/4 v6, 0x0

    const/high16 v7, 0x3f80

    invoke-virtual {v2, v5, v6, v7, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    aget-object v4, v11, v10

    const/high16 v5, 0x3f80

    add-float v5, v5, v19

    invoke-virtual {v14, v4, v3, v5, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_10
    invoke-virtual {v2}, Landroid/graphics/Paint;->clearShadowLayer()V

    const/4 v4, -0x1

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    aget-object v4, v11, v10

    move/from16 v0, v19

    invoke-virtual {v14, v4, v3, v0, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    move/from16 v0, p4

    int-to-float v3, v0

    cmpl-float v3, v18, v3

    if-lez v3, :cond_11

    if-nez p3, :cond_11

    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v8, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    const/4 v3, 0x1

    invoke-virtual {v8, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const-string v3, "x"

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v18

    const/high16 v3, 0x437f

    div-float v20, v3, v18

    const/4 v3, 0x0

    move v9, v3

    :goto_7
    int-to-float v3, v9

    cmpg-float v3, v3, v18

    if-ltz v3, :cond_13

    :cond_11
    add-int/lit8 v3, v10, 0x1

    move v10, v3

    goto/16 :goto_5

    :cond_12
    const/4 v3, 0x0

    goto/16 :goto_6

    :cond_13
    int-to-float v3, v9

    mul-float v3, v3, v20

    float-to-int v3, v3

    invoke-virtual {v8, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    sub-int v3, p4, v9

    add-int/lit8 v3, v3, -0x1

    int-to-float v4, v3

    move/from16 v0, v19

    float-to-double v5, v0

    iget v3, v15, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v7, v15, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v3, v7

    float-to-double v0, v3

    move-wide/from16 v21, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v21

    sub-double v5, v5, v21

    double-to-float v5, v5

    sub-int v3, p4, v9

    int-to-float v6, v3

    move/from16 v0, p5

    int-to-float v7, v0

    move-object v3, v14

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v3, v9, 0x1

    move v9, v3

    goto :goto_7

    :catchall_0
    move-exception v2

    monitor-exit v12

    throw v2

    :cond_14
    move v3, v9

    goto/16 :goto_6

    :cond_15
    move v3, v5

    goto/16 :goto_4

    :cond_16
    move v3, v6

    goto/16 :goto_1
.end method
